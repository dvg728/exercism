var Bob = new Person();

function Person() {

  this.hey = function(input){
    if(isSilent(input)){
      return Responses.silent();
    } else if(isShouting(input) && containsAnyAlphabetChars(input)) {
      return Responses.shouting();
    } else if(askingAQuestion(input)) {
      return Responses.questions();
    } else {
      return Responses.anythingElse();
    };
  };

  function askingAQuestion(phrase) {
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
