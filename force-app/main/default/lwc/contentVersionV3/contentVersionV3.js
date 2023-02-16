import { LightningElement,api,wire,track } from 'lwc';
import cvRecords2 from '@salesforce/apex/contenVersionFilePreview.cvRecords2';
import { updateRecord } from 'lightning/uiRecordApi';
import { getObjectInfo, getPicklistValues} from 'lightning/uiObjectInfoApi';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import { refreshApex } from '@salesforce/apex';
import TIME_ZONE  from '@salesforce/i18n/timeZone';
import REGISTRATION_OBJECT from '@salesforce/schema/Registration__c';
import CYCLE_STATUS_FIELD from '@salesforce/schema/Registration__c.Status__c';
import STATE_FIELD from '@salesforce/schema/Registration__c.State__c';
//import LightningDatatable from 'lightining/datatable';

const columns = [
    {
        label: 'Registration Name', 
        fieldName: 'recordLink', 
        type: 'url',
        typeAttributes: {
            label: {
                fieldName: 'Name'
            }
        }
    },
      /*fieldName: 'ConName',
        type: 'url',
        typeAttributes: {label: { fieldName: 'Name' }, target: '_blank'}
    },*/

    {
        label: 'Cycle Status', 
        type: 'statusPicklist', 
        fieldname: 'Status__c', 
        wrapText: true,
       // editable: true,
        typeAttributes: {
            options: { fieldName: 'picklistOptions'},
            value:{ fieldName: 'Status__c'},
            placeholder: 'Choose Cycle Status',
        },
        //added new code
        cellAttributes: {
            class: { fieldName: 'statusClass' }
        }
        //ended new code
    },
    /*
    {
        label: 'Cycle Status',
        fieldName:'Status__c',
        type: 'picklist',
        editable: true,

    },*/  /*{
        label: 'Registration Health',
        fieldName: 'Registration_Health__c',
        type: "richText",
        wrapText: true,

    },*/
    {
        label: 'Owner',
        fieldName: 'Owner_Name__c',
        type: 'text',

    },
     {
        label: 'Start Date',
        fieldName: 'Start_Date__c',
        type: 'date-local',
        typeAttributes: {
            day:'2-digit',month:'2-digit',year:'numeric'},
        editable: true,
    }, {
        label: 'End Date',
        fieldName: 'End_Date__c',
        type: 'date-local',
        typeAttributes: {
            day:'2-digit',month:'2-digit',year:'numeric'},
        editable: true,
    },
    {
        label: 'State',
        fieldName: 'State__c',
        //type: 'statePicklist', 
        type: 'picklist',
        //editable: true
        /*wrapText: true,
        typeAttributes: {
            options: { fieldName: 'picklistOptions'},
            value:{ fieldName: 'State__c'},
            placeholder: 'Choose State',
        }*/
    }
    
];

export default class ContentVersionV3 extends LightningElement {
    @api recordId;
    wiredActivities;
    @track resObj =[];
    error;
    filesList =[];
    @track  columns = columns;
    cycleStatus = [];
    

    //@wire(cvRecords2, {recId: '$recordId'})

	@wire(getObjectInfo, {objectApiName: REGISTRATION_OBJECT})
	RegObjMetadata;

	@wire (getPicklistValues, { recordTypeId: '$RegObjMetadata.data.defaultRecordTypeId', fieldApiName: CYCLE_STATUS_FIELD })
	cycleStatusPicklist({data, error}){
		if (data){
			this.cycleStatus = data.values;
            this.getRecordDetails();
		}
		else if (error){
			//
		}
	}

    getRecordDetails(){
        cvRecords2({ recId: this.recordId })
            .then((result) => {
                console.log('this.cycleStatus>>'+JSON.stringify(this.cycleStatus));
				let options = [];
				for(var key in this.cycleStatus){
					options.push({label: this.cycleStatus[key].label, value: this.cycleStatus[key].value});
				}
				
				this.resObj = result.map((record) =>{
					return {
						...record,
						'picklistOptions': options
					}
				});

                console.log('resObj0>>'+JSON.stringify(this.resObj));
                let finalList = []; 
                
                this.resObj.forEach((record) => {
                    let tempResRec = Object.assign({}, record);
                    console.log('IN New1-');
                    tempResRec.recordLink = '/' + tempResRec.Id;
                    finalList.push(tempResRec);          
                });
    
                console.log('finalList>>');
                this.resObj = finalList;
                console.log('resObj>>'+JSON.stringify(this.resObj));
            })
            .catch((error) => {
                this.error = error;
                this.resObj = undefined;
            });
    }
    /*
    @wire(cvRecords2, {recId: '$recordId'})
    //cons(result) {
    regData({ error, data }) {
        if(data){
            let finalList = []; 
                
            data.forEach((record) => {
                let tempResRec = Object.assign({}, record);
                console.log('IN New1-'+JSON.stringify(tempResRec));
                tempResRec.recordLink = '/' + tempResRec.Id;
                finalList.push(tempResRec);          
            });

            console.log('finalList>>'+JSON.stringify(finalList));
            this.resObj = finalList;
            console.log('resObj>>'+JSON.stringify(this.resObj));
        }
        if(error){
            this.resObj = undefined;
        }
    };
*/
//added new code
handleValueChange(event) {
    event.stopPropagation();
    let dataRecieved = event.detail.data;
    let updatedItem;
    switch (dataRecieved.label) {
        case 'Stage':
            updatedItem = {
                Id: dataRecieved.context,
                StageName: dataRecieved.value
            };
            // Set the cell edit class to edited to mark it as value changed.
            this.setClassesOnData(
                dataRecieved.context,
                'statusClass'
                
            );
            break;
        default:
            this.setClassesOnData(dataRecieved.context, '', '');
            break;
    }
    this.updateDraftValues(updatedItem);
    this.updateDataValues(updatedItem);
}

updateDataValues(updateItem) {
    let copyData = JSON.parse(JSON.stringify(this.records));
    copyData.forEach((item) => {
        if (item.Id === updateItem.Id) {
            for (let field in updateItem) {
                item[field] = updateItem[field];
            }
        }
    });
    this.records = [...copyData];
}

updateDraftValues(updateItem) {
    let draftValueChanged = false;
    let copyDraftValues = JSON.parse(JSON.stringify(this.draftValues));
    copyDraftValues.forEach((item) => {
        if (item.Id === updateItem.Id) {
            for (let field in updateItem) {
                item[field] = updateItem[field];
            }
            draftValueChanged = true;
        }
    });
    if (draftValueChanged) {
        this.draftValues = [...copyDraftValues];
    } else {
        this.draftValues = [...copyDraftValues, updateItem];
    }
}

handleEdit(event) {
    event.preventDefault();
    let dataRecieved = event.detail.data;
    this.handleWindowOnclick(dataRecieved.context);
    switch (dataRecieved.label) {
        case 'Stage':
            this.setClassesOnData(
                dataRecieved.context,
                'statusClass'
                
            );
            break;
        default:
            this.setClassesOnData(dataRecieved.context, '', '');
            break;
    };
}

setClassesOnData(id, fieldName, fieldValue) {
    this.records = JSON.parse(JSON.stringify(this.records));
    this.records.forEach((detail) => {
        if (detail.Id === id) {
            detail[fieldName] = fieldValue;
        }
    });
}

//ended new code
    saveHandleAction(event) {
        this.filesList = event.detail.draftValues;
        const inputsItems = this.filesList.slice().map(draft => {
            const fields = Object.assign({}, draft);
            return { fields };
        });

       
        const promises = inputsItems.map(recordInput => updateRecord(recordInput));
        Promise.all(promises).then(res => {
            this.dispatchEvent(
                new ShowToastEvent({
                    title: 'Success',
                    message: 'Records Updated Successfully!!',
                    variant: 'success'
                })
            );
            this.filesList = [];
            return this.refresh();
        }).catch(error => {
            this.dispatchEvent(
                new ShowToastEvent({
                    title: 'Error',
                    message: 'An Error Occured!!',
                    variant: 'error'
                })
            );
        }).finally(() => {
            this.filesList = [];
        });
    }

   
    async refresh() {
        await refreshApex(this.resObj);
    }

    /*wiredclass(value){
        this.wiredActivities = value;
        const { data, error } = value;
        if (data) { 
            console.log(data)
            this.filesList = data;
            console.log('Data========> '+JSON.stringify(this.filesList));
        }
        if(error){ 
            console.log(error);
        } 
    }*/


}


/*export default class ContentVersionV3 extends LightningElement {
    @track lstAccounts;
    lstColumns = COLUMNS;
    @api recordId;
    wiredActivities;
    filesList =[];

    @wire(cvRecords2, {recId: '$recordId'})

    connectedCallback(){
        fetchAccounts().then(response => {
            this.lstAccounts = response;
            if(this.lstAccounts){
                this.lstAccounts.forEach(item => item['AccountURL'] = '/lightning/r/Account/' +item['Id'] +'/view');
                
            }
        }).catch(error => {
            console.log('Error: ' +error);
        });
    }
}*/