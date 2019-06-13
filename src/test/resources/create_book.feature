@create
Feature: Test create book entry

  Scenario Outline: Verify create book entry
    Given table bookDetails
      | req_title | req_author |
      | <title>   | <author>   |
    When call read('create_request.feature') bookDetails
    Then response.title == <title>
    And response.author == <author>

    Examples: 
      | title                         | author           |
      | "Tell me your dreams"         | "Sydney Sheldon" |
      | "Shall we tell the president" | "Jeffrey Archer" |
      
    
    