@create
Feature: Test update book entry

  Scenario Outline: Verify update book entry
    Given table bookDetails
      | req_id | req_title | req_author |
      | <id>   | <title>   | <author>   |
    When call read('update_request.feature') bookDetails
    Then response.id == <id>
    Then response.title == <title>
    And response.author == <author>

    Examples: 
      | id | title                         | author           |
      |  6 | "Tell Me Your Dreams"         | "Sydney Sheldon" |
      |  7 | "Shall We Tell The President" | "Jeffrey Archer" |
