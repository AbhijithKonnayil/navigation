fastlane documentation
----

# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```sh
xcode-select --install
```

For _fastlane_ installation instructions, see [Installing _fastlane_](https://docs.fastlane.tools/#installing-fastlane)

# Available Actions

## Android

### android test1

```sh
[bundle exec] fastlane android test1
```

Runs all the tests

### android test

```sh
[bundle exec] fastlane android test
```



### android increment_version

```sh
[bundle exec] fastlane android increment_version
```

Increment Version

### android beta

```sh
[bundle exec] fastlane android beta
```

Submit a new Beta Build to Crashlytics Beta

### android deploy

```sh
[bundle exec] fastlane android deploy
```

Deploy a new version to the Google Play

### android beta1

```sh
[bundle exec] fastlane android beta1
```



### android build

```sh
[bundle exec] fastlane android build
```

Build

### android increment_version_firebase

```sh
[bundle exec] fastlane android increment_version_firebase
```

Increment Version

### android beta2

```sh
[bundle exec] fastlane android beta2
```

Submit a new Beta Build to Firebase App Distribution

----

This README.md is auto-generated and will be re-generated every time [_fastlane_](https://fastlane.tools) is run.

More information about _fastlane_ can be found on [fastlane.tools](https://fastlane.tools).

The documentation of _fastlane_ can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
