const express = require('express');

const app = express();

app.get('/', (req, res) => {
  res.send(`<h2>Oh hey bud</h2>`);
});

const port = process.env.PORT || 3000;

app.listen(port, () => console.log(`Listening on ${port}`));
