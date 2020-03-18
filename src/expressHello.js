import express from 'express';
const app = express();
app.get('/', (req, res) => res.send("Hello to the browser!"));
const server = app.listen(3000, ()=> 0);
