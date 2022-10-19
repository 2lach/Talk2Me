TTS

This is a basic Express.js server used for JS Dev Experience documentation, in place of the previously used express generator. 

1. Clone repo.

1. Install dependencies: 

    ```bash
    npm install
    ```

1. Start project: 

    ```bash
    npm start
    ```


    Så denna har potential men är fett trasig i sitt nuvarande tillstånd
    Började här:
    https://learn.microsoft.com/en-us/azure/developer/javascript/tutorial/convert-text-to-speech-cognitive-services

    skapade en .secrets fil
    lagade ett flertal problem som dem på microsoft inte gjort/löst

    Dock bra documenterad kod

    Största issue är att `microsoft-cognitiveservices-speech-sdk` som är main paktet i node inte lirar med npm install
    Det jag gjorde var en `nom` och sen lyckades jag få den att lira med yarn och nodejs v16.18.0
    
i den main filen jag jobbade i la jag till   
```
// kill telemetry
sdk.Recognizer.enableTelemetry(false);
```
vilket känns som en bra grej ;) 

gjorde om launch.json från pwa till node