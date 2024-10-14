user-storage-jpa: User Storage Provider with JPA
========================================================

Merging pom.xml and ../../pom.xml for simplicity.

- Original source code
  - <https://github.com/keycloak/keycloak-quickstarts/tree/release/24.0/extension/user-storage-jpa>

## How to build and test

```
# Start Keycloak/RHBK 24 in prior
$KC_HOME/bin/kc.sh start-dev --http-port 8180

# Building
mvn clean install

# Or just testing
mvn integration-test
```

Edit [arquillian.xml](src/test/resources/arquillian.xml) for WebDriver configuration.

## Links

- [Arquillian Drone](https://arquillian.org/arquillian-extension-drone/)
- For `FluentTestsHelper`
  - <https://github.com/keycloak/keycloak/tree/release/24.0/misc/keycloak-test-helper>
  - Though this library will be replaced by [a new test framework](https://github.com/keycloak/keycloak/tree/release/26.0/test-framework)
