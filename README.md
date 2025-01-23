# Custom OpenAPI Generator - Clerk Ruby

This project provides a custom OpenAPI Generator that extends the default Ruby generator to output model names in snake_case format.

## Building the Project

To build the project, run:

```bash
mvn clean install
mvn clean package
```

## Generating the Client

```bash
bin/generate
```

## Using the Generator ()

After building, you can use the generator with the following command:

```bash
java -jar target/custom-openapi-generator-1.0-SNAPSHOT.jar generate \
    -g clerk-ruby \
    -i https://raw.githubusercontent.com/clerk/openapi-specs/refs/heads/main/bapi/2021-02-05.yml \
    -o ./.generated
```

Or with Maven plugin:

```xml
<plugin>
    <groupId>org.openapitools</groupId>
    <artifactId>openapi-generator-maven-plugin</artifactId>
    <version>7.3.0</version>
    <executions>
        <execution>
            <goals>
                <goal>generate</goal>
            </goals>
            <configuration>
                <inputSpec>${project.basedir}/src/main/resources/openapi.yaml</inputSpec>
                <generatorName>clerk-ruby</generatorName>
                <output>${project.build.directory}/generated-sources</output>
            </configuration>
        </execution>
    </executions>
    <dependencies>
        <dependency>
            <groupId>org.example</groupId>
            <artifactId>custom-openapi-generator</artifactId>
            <version>1.0-SNAPSHOT</version>
        </dependency>
    </dependencies>
</plugin>
```

## Features

- Extends the default Ruby generator
- Converts model names to snake_case format
- Maintains all other Ruby generator features
- Handles acronyms and camelCase appropriately

## Example

If your OpenAPI specification has a model named `UserAccount`, it will be generated as `user_account.rb` instead of `UserAccount.rb`.
