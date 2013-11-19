var Words = require('./word_count').Words;

describe("Words", function() {

  it("counts one word", function() {
    var words = new Words("word");
    var expectedCounts = { "word" : 1 };
    expect(words.count).toEqual(expectedCounts);
  });

  it("counts one of each", function() {
    var words = new Words("one of each");
    var expectedCounts = { "one": 1, "of": 1, "each": 1 };
    expect(words.count).toEqual(expectedCounts);
  });

  it("counts multiple occurrences", function() {
    var words = new Words("one fish two fish red fish blue fish");
    var expectedCounts = { "one" : 1, "fish" : 4, "two" : 1, "red" : 1, "blue" : 1 };
    expect(words.count).toEqual(expectedCounts);
  });

  it("ignores punctuation", function() {
    var words = new Words("car : carpet as java : javascript!!&@$%^&");
    var expectedCounts = { "car" : 1, "carpet" : 1, "as" : 1, "java" : 1, "javascript" : 1 };
    expect(words.count).toEqual(expectedCounts);
  });

  it("handles cramped lists", function() {
    var words = new Words("one,two,three");
    var expectedCounts = { "one" : 1, "two" : 1, "three" : 1 };
    expect(words.count).toEqual(expectedCounts);
  });

  it("includes numbers", function() {
    var words = new Words("testing, 1, 2 testing");
    var expectedCounts = { "testing" : 2, "1" : 1, "2" : 1 };
    expect(words.count).toEqual(expectedCounts);
  });

  it("normalizes case", function() {
    var words = new Words("go Go GO gO");
    var expectedCounts = { "go" : 4 };
    expect(words.count).toEqual(expectedCounts);
  });


});

