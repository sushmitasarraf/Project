import { LightningElement, api } from 'lwc';
/*import getUserInfo from '@salesforce/apex/c/Information.getUserInfo';
import Id from '@salesforce/user/Id';
import findContactByAccountId from '@salesforce/apex/ContactController.findContactByAccountId';*/

export default class ContactRecordsList extends LightningElement {
    /*@wire(getUserInfo, { userId: Id }) 
    userData;
    @api accountId;
    @wire(findContactByAccountId,{accountId:'$accountId'}) contacts;*/
    @api
    info
}