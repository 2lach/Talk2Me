const server = require('./server');

const port = process.env.PORT || 3000;

server.create()
    .then(app => {
        app.listen(port, () => {
            console.log('\nTalk2Me has started\n');
            console.log(`http://localhost:${port}`);
        });
    }).catch(err => console.log(err));