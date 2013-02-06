@numerology
Feature: Formatting a number
  In order to format numbers
  the format_like method
  formats a number with a human readable example.

  @integer @wip
  Scenario Outline: Format integers by example
    Given the integer 123456
    When I format using the example "<example>"
    Then I produce "<output>"

    Examples:
      | example            | output             |
      | 1,111              | 123,456            |
      | 1.111              | 123.456            |
      | 1 111              | 123 456            |