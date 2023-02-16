import { LightningElement,wire,track, api } from 'lwc';

    import arrowzip from "@salesforce/resourceUrl/ArrowStyle";
    import { loadStyle } from "lightning/platformResourceLoader";
    import getKavRecords from '@salesforce/apex/FAQControllerDynamic.getFAQArticle';
    
export default class FAQ_CMP extends LightningElement {

    @api type;
    @api rec;
    @track activeSections = [];
    @track Type1 = [];
    @track mapval=[];
    @track mapknow=[];
    @track mapOfValues=[];
    @track Knowledgelist = [];
    @track allSections = true; 
    @track showlist = false; 
    handleSectionToggle(event) {
        const openSections = event.detail.openSections;

        allSections = false; 
        if (openSections.length !== 0) {
            //this.activeSections=[];
            //this.activeSections.push(openSections);
        }
    }    


   /*get typematch(){
        if(this.type == this.rec.Question__c)
        console.log(`true `)
            return true;
        return false;
    }*/
    @wire(getKavRecords)
    wiredKav({ error, data }) {
    //alert(JSON.stringify(data));
    console.log(data);
   //It get FAQ records key:type in FAQ value:Records which have that type
        if (data) {
            for(let key in data.mapknowledgeList) 
            {
                //Here it map into JS variable
                    this.mapOfValues.push({ key:key,value:data.mapknowledgeList[key]});
                
               
            }
            console.log(JSON.stringify(this.mapOfValues));
            //this.showlist=true;
            //alert(JSON.stringify(this.mapOfValues));
        } else if (error) {

        }
    }


    renderedCallback() 
    {
    Promise.all([loadStyle(this,  arrowzip + "/ArrowStyle.css")])
        .then(() => {
            console.log("Static Resource Loaded");
        })
        .catch(error => {
            console.log("error-", error);
        });
    }

    handleExpandCollapse(event) {
        //It get the current  record id
        const targetId = event.currentTarget.dataset.header;
        this.updateStyleOnExpandCollapse(targetId);
    }
    
    updateStyleOnExpandCollapse(targetId) {
        const headerClassList = this.template.querySelector(`[data-header="${targetId}"]`).classList;
        const bodyClassList = this.template.querySelector(`[data-body="${targetId}"]`).classList;
        const isCollapsed = bodyClassList.contains('collapsed');
        headerClassList.add(isCollapsed ? 'accordion-icon-expanded' : 'accordion-icon-collapsed');
        headerClassList.remove(isCollapsed ? 'accordion-icon-collapsed' : 'accordion-icon-expanded');
        bodyClassList.add(isCollapsed ? 'expanded' : 'collapsed');
        bodyClassList.remove(isCollapsed ? 'collapsed' : 'expanded');
    }
}