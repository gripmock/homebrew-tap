# Homebrew Tap

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/bavix/homebrew-gripmock/blob/master/LICENSE)

This is a Homebrew tap repository for **GripMock** and other tools, a mock server for gRPC services. GripMock uses `.proto` files or compiled `.pb` descriptors to generate implementations of gRPC services. It is ideal for setting up end-to-end testing or as a dummy server during software development.

## Features

- **Cross-platform support**: macOS (Intel & Apple Silicon) and Linux (Intel & ARM).
- **Easy installation**: Install GripMock with a single command using Homebrew.
- **Lightweight**: No dependencies, just download and run.

## Installation GripMock

### Step 1: Tap the Repository

To install GripMock, first tap this repository:

```bash
brew tap gripmock/homebrew
```

### Step 2: Install GripMock

Once the tap is added, install GripMock using the following command:

```bash
brew install gripmock
```

### Step 3: Verify Installation

After installation, verify that GripMock is installed correctly by checking its version:

```bash
gripmock --version
```

You should see output similar to:

```
gripmock v3.2.4
```

## Usage

GripMock is ready to use once installed. Here are some common commands:

- Start GripMock with a `.proto` file:
  ```bash
  gripmock path/to/your/service.proto
  ```

- Start GripMock with a compiled `.pb` descriptor:
  ```bash
  gripmock path/to/your/descriptor.pb
  ```

For more details, refer to the [official documentation](https://bavix.github.io/gripmock/).

## Supported Platforms

This formula supports the following platforms and architectures:

- **macOS**:
  - Intel (`darwin-amd64`)
  - Apple Silicon (`darwin-arm64`)
- **Linux**:
  - Intel (`linux-amd64`)
  - ARM (`linux-arm64`)

## License

This project is licensed under the **MIT License**. See the [LICENSE](https://github.com/bavix/homebrew-gripmock/blob/master/LICENSE) file for details.

## Acknowledgments

- Thanks to the [Homebrew](https://brew.sh/) team for creating such a powerful package manager.
