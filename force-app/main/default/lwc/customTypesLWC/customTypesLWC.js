import LightningDatatable from 'lightning/datatable';
import customPicklist from './customPicklist.html';

export default class CustomTypesLWC extends LightningDatatable{
    static customTypes = {
        statusPicklist: {
            template: customPicklist,
            standardCellLayout: true,
            typeAttributes: ['label','value', 'placeholder', 'options']
        }
    }
   /* static customTypes1 = {
        statePicklist: {
            template: customPicklist,
            standardCellLayout: true,
            typeAttributes: ['label','value', 'placeholder', 'options']
        }
    }*/
}