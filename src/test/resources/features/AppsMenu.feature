Feature:User should be able to display the new applications
  Background: Login
    Given user can logged in webpage
    When user clicks the left menu
    Then user navigates to "Applications"

  Scenario: App display
    Then verify the page title

  Scenario: Send a request
      When user send a request
      Then verify to sended request

  Scenario Outline: verify the <appNAme> App features
        Given user clicks the <appNAme>
    Examples:
    |<appName>|
    |US Telephony24|
    |Edward. CRM assistant|
    | Bizimhesap to CRM|
    | HubSpot|
    |Bitrix24 Right Signature Plugin|
    |Dinas (Digital Signature by Askarasoft)|
    | Verimor24|
    | MicroEDA - Tool for Electronic Document Approval|
    |Zadarma Free PBX|
    |RingCentral Telephony|
    |Integration with IP-PBX Yeastar|
    |Vonage Unified Communications|
    |Plivo SMS|
    |Twilio SMS to CRM|
    |Asterisk integration: connector Itgrix|
    |MCN telecom|
      When verify the display description, versions, support and installation

    Scenario: display 'Marketplace','Installed' and 'Webhooks'  menu options
      Given display menu options
      |Marketplace|
      |Installed|
      |Webhooks|