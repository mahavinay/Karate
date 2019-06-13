
Feature: Test the book api

Background:
    * url 'http://localhost:8081'

Scenario: Test get books api
Given path 'api/books'
When method GET
Then status 200
And assert response.length == 4
And assert response[0].id == 1
And assert response[1].title == "Angels And Demons"
And match response[*].id == [1,2,3,4]
#And match $ == [{"id":1,"title":"angles and demons","author":"dan brown"},{"id":3,"title":"Da Vinci Code","author":"dan brown"}]

Scenario: Test get book by id
Given path 'api/books/1'
When method GET
Then status 200
And assert response.title == "Da vinci code"
And assert response.author == "Dan Brown"


Scenario: Test get book by title
Given path 'api/books/title/Angels And Demons'
When method GET
Then status 200
And print response[0].title
And assert response[0].id == "2"
And assert response[0].author == "Dan Brown"



