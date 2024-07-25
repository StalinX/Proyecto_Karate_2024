Feature: Get user https://petstore.swagger.io
  @Exercise4
   Scenario Outline: Search user nuevo<idcase>
    Given url 'https://petstore.swagger.io/v2/user/<Vusername>'
    When request
    """
    {
  "<username>": "<Vusername>"
    }
    """
    And method GET
    Then status <statuscode>
    Examples:
      |idcase      |username|Vusername|statuscode |
      |successful  |username|stalin123  |200        |


