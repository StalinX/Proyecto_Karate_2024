Feature: Update user https://petstore.swagger.io
  @Exercise3
  Scenario Outline: Update user <idcase>
    Given url 'https://petstore.swagger.io/v2/user/<Vusername>'
    When request
    """
    {"<id>": <Vid>,
  "<username>": "<Vusername>",
  "<email>": "<Vemail>"
    }
    """
    And method PUT
    Then status <statuscode>
    Examples:
      |idcase     |id|Vid||username|Vusername    |email       |Vemail                    |statuscode|
      |successful |id|100||username|stalin123    |email       |sprtactualizado@gmail.com |200       |
      |not found |id|   ||username|             |email       |sprtactualizado@gmail.com |405       |