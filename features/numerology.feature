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
      | 1234               | 01111              | 01234              |
      | 123                | 01111              | 00123              |
      | 12                 | 01111              | 00012              |
      | 12345              | 01111              | 12345              |
      | 12345              | 01,111             | 12,345             |
      | 1234               | 01,111             | 01,234             |
      | 123                | 01,111             | 00,123             |
      | 123                | 100                | 100                |
      | 12345              | 11000              | 12000              |
      | 12345              | 11,000             | 12,000             |
      | 15555              | 11,000             | 16,000             |