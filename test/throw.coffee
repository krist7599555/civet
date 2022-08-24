{testCase} = require "./helper"

describe "throw", ->
  testCase """
    throw value
    ---
    throw x
    ---
    throw x;
  """

  testCase """
    throw nested object
    ---
    throw
      a: b
    ---
    throw {
      a: b,
    };
  """