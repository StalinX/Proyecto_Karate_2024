Feature: Post user https://petstore.swagger.io

  Background:
    * url "https://petstore.swagger.io"
    * path "/v2/user/"
    #* request {"<username>": "<Vusername>", "<firstName>": "<VfirstName>","<lastName>": "<VlastName>","<email>": "<Vemail>","<password>": "<Vpassword>","<phone>": "<Vphone>"}
  @Exercise1
  Scenario Outline: Create user <idcase>
    When request
    """
    {
  "<id>": <Vid>,
  "<username>": "<Vusername>",
  "<firstName>": "<VfirstName>",
  "<lastName>": "<VlastName>",
  "<email>": "<Vemail>",
  "<password>": "<Vpassword>",
  "<phone>": "<Vphone>",
  "<userStatus>": <VuserStatus>
    }
    """
    And method POST
    Then status <statuscode>
    Examples:
      |idcase|id|Vid      |username|Vusername   |firstName|VfirstName|lastName |VlastName |email          |Vemail         |password  |Vpassword|phone    |Vphone   |userStatus|VuserStatus|statuscode|
      |case 1|id|100      |username|stalin123     |firstName|stalin1      |lastName |riofrio1   |email          |sprt1@gmail.com | password |123456789|phone    |0993488568|userStatus|       1   | 200 |
      |case 2|id|-*//-*   |username|stalin2     |firstName|stalin2      |lastName |riofrio2   |email          |sprt2@gmail.com | password |123456789|phone    |0993488569|userStatus|       0   |   500 |

