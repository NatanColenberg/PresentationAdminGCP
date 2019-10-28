var express = require('express');
var app = express();

// Serve all the files in root directory
app.use(express.static('./build'));

app.listen(8080, function () {
  console.log('Example app listening on port 8080!');
});