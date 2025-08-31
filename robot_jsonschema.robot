*** Settings ***
Library    RequestsLibrary
Library    JSONLibrary

*** Variables ***
${BASE_URL}      https://jsonplaceholder.typicode.com
${SCHEMA_FILE}   ${CURDIR}\\response_schema.json

*** Test Cases ***
Validate JSON Schema (From File)
    Create Session    api    ${BASE_URL}    disable_warnings=True
    ${resp}=    GET On Session    api    /posts/1    verify=${False}
    Should Be Equal As Integers    ${resp.status_code}    200
    Validate Json By Schema File    ${resp.json()}    ${SCHEMA_FILE}
