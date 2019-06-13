Feature: Delete book

Background:
    * url 'http://localhost:8081'
    
Scenario Outline: Test deleting a book entry
Given path 'api/books/' + <id>
When method DELETE
Then status 200

 
    Examples: 
      | id | 
      |  6 | 
      |  7 | 