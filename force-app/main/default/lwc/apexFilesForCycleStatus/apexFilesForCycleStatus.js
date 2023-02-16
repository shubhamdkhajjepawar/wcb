/*import { LightningElement } from 'lwc';
export default class ApexFilesForCycleStatus extends LightningElement {

}*/

import { LightningElement, wire, api } from 'lwc';
import getCon from '@salesforce/apex/contentVersionController.getConVersion';
import { refreshApex } from '@salesforce/apex';
import { updateRecord } from 'lightning/uiRecordApi';

import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import Title_FIELD from '@salesforce/schema/ContentVersion.Title';
import Test_FIELD from '@salesforce/schema/ContentVersion.Share_to_community_user__c';
import ID_FIELD from '@salesforce/schema/ContentVersion.Id';

const COLS = [
    {
        label: 'Title_FIELD',
        fieldName: Title_FIELD.fieldApiName,
        editable: true
    },
    {
        label:'Share to community user',
        fieldName: Test_FIELD.fieldApiName,
        type: 'boolean',
        editable: true
    }
];
export default class ApexFilesForCycleStatus extends LightningElement {
    @api recordId;
    columns = COLS;
    draftValues = [];

    @wire(getCon, { accId: '$recordId' })
    conv;

    async handleSave(event) {
        // Convert datatable draft values into record objects
        const records = event.detail.draftValues.slice().map((draftValue) => {
            const fields = Object.assign({}, draftValue);
            return { fields };
        });

        // Clear all datatable draft values
        this.draftValues = [];

        try {
            // Update all records in parallel thanks to the UI API
            const recordUpdatePromises = records.map((record) =>
                updateRecord(record)
            );
            await Promise.all(recordUpdatePromises);

            // Report success with a toast
            this.dispatchEvent(
                new ShowToastEvent({
                    title: 'Success',
                    message: 'Files updated',
                    variant: 'success'
                })
            );

            // Display fresh data in the datatable
            await refreshApex(this.conv);
        } catch (error) {
            this.dispatchEvent(
                new ShowToastEvent({
                    title: 'Error updating or reloading Files',
                    message: error.body.message,
                    variant: 'error'
                })
            );
        }
    }
}