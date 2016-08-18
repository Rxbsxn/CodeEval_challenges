function compareWords(a, b) {
    return b.length - a.length
}

function lineWork(string) {
  output = string.split(' ');
  return output.sort(compareWords).shift()

}

var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line !== "") {
      console.log(lineWork(line));
    }
});
