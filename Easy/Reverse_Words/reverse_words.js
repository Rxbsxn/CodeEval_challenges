function reverseWords(input) {
  output = input.split(' ')
  output = output.reverse().join(' ')
    return output;
}

var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line !== "") {
      console.log(reverseWords(line));
    }
});
