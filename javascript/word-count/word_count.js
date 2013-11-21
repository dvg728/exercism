var Words = function(input) {

  this.count = function(){
    var individualWords   = cleanSentence(input);
    var wordCountsInAHash = countOfWords(individualWords);
    return wordCountsInAHash;
  }();

  function cleanSentence(input) {
    var lowerCase = input.toLowerCase()
    var removingPunctuation = lowerCase.match(/[\w]+/g);
    return removingPunctuation;
  };

  function countOfWords(input) {
    var result = {};
    for (i = 0; i < input.length; i++) {
      doesWordExist(result, i, input)
    };
    return result
  };

  function doesWordExist(result, i, input) {
    if (result[input[i]] === undefined) {
      result[input[i]] = 0;
    };
    result = result[input[i]] += 1;
    return result
  };
};

exports.Words = Words;
