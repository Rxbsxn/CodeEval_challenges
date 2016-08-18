var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().toLowerCase().split('\n').forEach(function (line) {
    if (line !== "") {
      console.log(line);
    }
});
