Feature: Basic command line interface
  Scenario: Running with no arguments
    When I run `bandle`
    Then it should pass with:
      """
      hello world!
      """