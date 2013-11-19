function Words(input) {

  function SplitSentenceIntoWordsWithoutPunctuation(input) {
    var lowerCase = input.toLowerCase()
    var result = lowerCase.match(/[a-zA-Z\d]+/g);
    return result;
  };

  function countedWords(input) {
    var result = {};
    for (i = 0; i < input.length; i++) {
      if (result[input[i]] === undefined) {
        result[input[i]] = 0;
      };
      result[input[i]] += 1;
    };
    return result
  };

  this.count = function(){
    var individualWords    = SplitSentenceIntoWordsWithoutPunctuation(input);
    var wordsCountsInAHash = countedWords(individualWords);
    return wordsCountsInAHash;
  }();

};

exports.Words = Words;
