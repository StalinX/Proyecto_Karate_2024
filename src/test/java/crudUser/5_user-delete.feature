Feature: Delete user https://petstore.swagger.io
  @Exercise5
  Scenario Outline: Delete user
    Given url 'https://petstore.swagger.io/v2/user/<Vusername>'
    When method DELETE
    Then status <statuscode>
    Examples:
      |idcase5     |Vusername|statuscode|
      |successful  |stalin123|200       |
      |Not found   |noexisto |404       |