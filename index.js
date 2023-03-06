const express = require('express')
const app = express() 
const port = 2000


app.get('/', (req, res) => {
    res.status(201).send({
        message: "API running in container Docker",
    });  
})

app.listen(port, () => {
    console.log(`Server listening at http://localhost:${port}`)
})