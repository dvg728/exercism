var Bob = new Person();
function Person() {

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
      return Responses.silent();
    } else if(isShouting(input) && containsAnyAlphabetChars(input)) {
      return Responses.shouting();
    } else if(isAskingAQuestion(input)) {
      return Responses.questions();
    } else {
      return Responses.anythingElse();
    };
  };
};

exports.Person = Person;

var Responses = {

  silent: function() {
    return "Fine. Be that way!"
  },

  shouting: function() {
    return "Woah, chill out!"
  },

  questions: function() {
    return "Sure."
  },

  anythingElse: function() {
    return "Whatever."
  }
};
