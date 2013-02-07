@numerology
Feature: Formatting a number
  In order to format numbers
  the format_like method
  formats a number with a human readable example.

  @integer
  Scenario Outline: Format integers by example
    Given the integer "<value>"
    When I format using the example "<example>"
    Then I produce "<output>"

    Examples:
      | value              | example            | output             |
      | 123456             | 1,111              | 123,456            |
      | 123456             | 1.111              | 123.456            |
      | 123456             | 1 111              | 123 456            |
      | 1234567            | 1,111              | 1,234,567          |
      | 1234567            | 1.111              | 1.234.567          |