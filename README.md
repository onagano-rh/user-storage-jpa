user-storage-jpa: User Storage Provider with JPA
========================================================

Merging ../../pom.xml and keycloak-test-helper for simplicity.

- Original source code
  - <https://github.com/redhat-developer/rhbk-quickstarts/tree/26.x/extension/user-storage-jpa>

## How to build and test

```
# Building
mvn clean package

# Deploying
cp target/user-storage-jpa-example.jar $KC_HOME/providers/
cat conf/keycloak.conf >> $KC_HOME/conf/keycloak.conf

# Start Keycloak/RHBK 26.4
$KC_HOME/bin/kc.sh start-dev --http-port 8180

# Testing
mvn verify
```

Edit [arquillian.xml](src/test/resources/arquillian.xml) for WebDriver configuration.

Restart Keycloak server when the following error happens:
```
[ERROR] Tests run: 1, Failures: 0, Errors: 1, Skipped: 0, Time elapsed: 2.021 s <<< FAILURE! - in org.keycloak.quickstart.ArquillianJpaStorageTest
[ERROR] org.keycloak.quickstart.ArquillianJpaStorageTest.testCreateUserInStorage  Time elapsed: 1.214 s  <<< ERROR!
jakarta.ws.rs.WebApplicationException: Create method returned status Conflict (Code: 409); expected status: Created (201)
        at org.keycloak.quickstart.test.FluentTestsHelper.getCreatedId(FluentTestsHelper.java:410)
        (...)
```

## Links

- [RHBK 26.4, サーバー開発者ガイド, 第5章 ユーザーストレージ SPI](https://docs.redhat.com/ja/documentation/red_hat_build_of_keycloak/26.4/html/server_developer_guide/user-storage-spi)
- [Arquillian Drone](https://arquillian.org/arquillian-extension-drone/)
- For `FluentTestsHelper`
  - <https://github.com/keycloak/keycloak/tree/release/24.0/misc/keycloak-test-helper>
  - Though this library will be replaced by [a new test framework](https://github.com/keycloak/keycloak/tree/release/26.0/test-framework)
