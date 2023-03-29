import { LightningElement } from 'lwc';
import getExternalLinks from '@salesforce/apex/External_Links_Controller.getExternalLinks' 
export default class ExternalLinksComponent extends LightningElement {

    linkList;
    connectedCallback()
    {
        getExternalLinks().then(
         result =>
         {
            this.linkList = result;
         }

    ).catch( error => 
        {
        console.error('This is the error ::: '+ error);
        
    });
    }
}