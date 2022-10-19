# Create new Azure App service in Visual Studio Code

1) From the command palette (Ctrl+Shift+P), type "create web" and select Azure App Service: Create New Web App...Advanced.

You use the advanced command to have full control over the deployment including resource group, App Service Plan, and operating system rather than use Linux defaults.

2) Respond to the prompts as follows:

* Select your Subscription account.
* For Enter a globally unique name like my-text-to-speech-app.
* Enter a name that's unique across all of Azure. Use only alphanumeric characters ('A-Z', 'a-z', and '0-9') and hyphens ('-')
* Select tutorial-resource-group-eastus for the resource group.
* Select a runtime stack of a version that includes Node and LTS.
* Select the Linux operating system.
* Select Create a new App Service plan, provide a name like my-text-to-speech-app-plan.
* Select the F1 free pricing tier. If your subscription already has a free web app, select the Basic tier.
* Select Skip for now for the Application Insights resource.
* Select the eastus location.
* After a short time, Visual Studio Code notifies you that creation is complete. 
* Close the notification with the X button.

* Deploy local Express.js app to remote App service in Visual Studio Code
* With the web app in place, deploy your code from the local computer. * Select the Azure icon to open the Azure App Service explorer, expand your subscription node, right-click the name of the web app you just created, and select Deploy to Web App.

* If there are deployment prompts, select the root folder of the Express.js app, select your subscription account again and then select the name of the web app, my-text-to-speech-app, created earlier.

If prompted to run npm install when deploying to Linux, select Yes if prompted to update your configuration to run npm install on the target server.

Prompt to update configuration on the target Linux server

Once deployment is complete, select Browse Website in the prompt to view your freshly deployed web app.

(Optional): You can make changes to your code files, then use the Deploy to Web App, in the Azure App service extension, to update the web app.

Stream remote service logs in Visual Studio Code
View (tail) any output that the running app generates through calls to console.log. This output appears in the Output window in Visual Studio Code.

In the Azure App Service explorer, right-click your new app node and choose Start Streaming Logs.
```
 Starting Live Log Stream ---
 ```
Refresh the web page a few times in the browser to see additional log output.


Text-to-speech REST API
https://learn.microsoft

microsoft-cognitiveservices-speech-sdk package
Reference
https://learn.microsoft.com/en-us/javascript/api/microsoft-cognitiveservices-speech-sdk/?source=recommendations&view=azure-node-latest