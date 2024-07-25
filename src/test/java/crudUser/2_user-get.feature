Feature: Get user https://petstore.swagger.io
  @Exercise2
   Scenario Outline: Search user <idcase>
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
      |Not found   |username|NoExisto |404        |
      |Invalid     |username|         |405        |

