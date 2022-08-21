{testCase} = require "../helper"

describe "[TS] class", ->
  testCase """
    example
    ---
    class UserAccount {
      name: string;
      id: number;

      constructor(name: string, id: number) {
        this.name = name;
        this.id = id;
      }
    }
    ---
    class UserAccount {
      name: string;
      id: number;

      constructor(name: string, id: number) {
        this.name = name;
        this.id = id;
      };
    };
  """

  testCase """
    nested
    ---
    class UserAccount
      name: string
      id: number

      constructor(name: string, id: number)
        @name = name
        @id = id
    ---
    class UserAccount {
      name: string;
      id: number;

      constructor(name: string, id: number) {
        this.name = name;
        this.id = id;
      };
    };
  """
