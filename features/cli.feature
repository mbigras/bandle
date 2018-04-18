Feature: Basic command line interface

  Scenario: Happy path: Running with one argument
      When I run `bandle world`
      Then it should pass with:
        """
        hello world!
        """

  Scenario: Unhappy path: running with no arguments
    When I run `bandle`
    Then it should fail matching:
      """
      parse error
      """