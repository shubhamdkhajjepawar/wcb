import { LightningElement,track } from 'lwc';
import doLogin from '@salesforce/apex/CommunityAuthController.doLogin';
import pageUrl from '@salesforce/resourceUrl/CaptchaCopy2';

export default class Testval extends LightningElement 
{
    @track navigateTo;
 
    constructor(){
        super();
        this.navigateTo = pageUrl;
        window.addEventListener("message", this.listenForMessage);//add event listener for message that we post in our recaptchaV2 static resource html file.
    }

    captchaLoaded(event)
    {
        if(event.target.getAttribute('src') == pageUrl)
        {
            console.log('------------------   Google reCAPTCHA is loaded.    ----------------------');
        } 
    }
 
    listenForMessage(message){
        console.log('message data : ' + message.data);//message.data - The object passed from the other window.
        console.log('message origin : ' + message.origin);//message.origin - The origin of the window that sent the message at the time postMessage was called.
    }

    username;
    password;
    @track errorCheck;
    @track errorMessage;

    connectedCallback(){

        var meta = document.createElement("meta");
        meta.setAttribute("name", "viewport");
        meta.setAttribute("content", "width=device-width, initial-scale=1.0");
        document.getElementsByTagName('head')[0].appendChild(meta);
    }

    handleUserNameChange(event){

        this.username = event.target.value;
    }

    handlePasswordChange(event){
        
        this.password = event.target.value;
    }

    handleLogin(event)
    {

       if(this.username && this.password){

        event.preventDefault();

        doLogin({ username: this.username, password: this.password })
            .then((result) => {
                
                window.location.href = 'https://cube84dev-testcustomer.cs171.force.com/s/';
            })
            .catch((error) => {
                console.log(this.username, this.password);
               
                // window.location.href = 'https://cube84dev-testcustomer.cs171.force.com/s/';
                this.error = error;      
                this.errorCheck = true;
                this.errorMessage = error.body.message;
            });

        }

    }

}