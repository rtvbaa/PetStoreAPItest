#!/bin/bash
rm openapi-generator-cli.jar;
echo +++++++++++ wget openapi-generator-cli-5.0.0-beta2.jar +++++++++++
wget https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/5.0.0-beta2/openapi-generator-cli-5.0.0-beta2.jar -O openapi-generator-cli.jar;
echo +++++++++++ java -jar openapi-generator-cli.jar generate +++++++++++
java -jar openapi-generator-cli.jar generate -i https://petstore.swagger.io/v2/swagger.json -g java --library webclient -o ./;
