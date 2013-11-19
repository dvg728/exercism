var Bob = function() {
  function isAskingAQuestion(phrase) {
    return phrase[phrase.length-1] == "?";
  };

  function isShouting(phrase) {
    return phrase.toUpperCase() == phrase;
  };

  function isSilent(phrase) {
    return phrase.replace(/\s+/g, '') == "";
  };

  function containsAnyAlphabetChars(phrase) {
    return phrase.search(/[a-zA-Z]/) !== -1;
  }

  this.hey = function(input){
    if(isSilent(input)){
      return "Fine. Be that way!";
    } else if(isShouting(input) && containsAnyAlphabetChars(input)) {
      return "Woah, chill out!";
    } else if(isAskingAQuestion(input)) {
      return "Sure.";
    } else {
      return "Whatever.";
    };
  };
};

exports.Bob = Bob;
