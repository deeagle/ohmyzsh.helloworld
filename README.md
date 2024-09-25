# Hello World Oh My Zsh-Plugin

Welcome to the **Hello World Oh My Zsh Plugin**!
This is a simple example of how to create a custom plugin for [Oh My Zsh](https://ohmyz.sh/)
that prints a "Hello World" message to both stdout and syslog when activated.

## Features

- Outputs "Hello, World!" message to the terminal.
- Logs the message to syslog.
- Easily customizable for your own use case.

## Installation

Follow these simple steps and take note of a few important details to get the plugin up and running,
so you can quickly see it in action.

### Prerequisites

- You must have [Oh My Zsh](https://ohmyz.sh/) installed on your system.
- Ensure your `zsh` shell is set as the default.

### Steps

1. Clone the repository into the Oh My Zsh custom plugins directory:

   **Renaming is important!** Oh My Zsh identifies plugins by their folder name,
   so ensuring the correct naming will ensure the plugin is recognized and works properly.

   ```bash
   git clone https://github.com/deeagle/ohmyzsh.helloworld.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/helloworld
   ```

2. Edit your .zshrc file to include the plugin:

   ```bash
   plugins=(... helloworld)
   ```

3. Save your changes and restart your terminal or run:

   ```bash
   source ~/.zshrc
   ```

### Usage

Once the plugin is installed and enabled, it will print a hello-world message each time
you open a new terminal session, as well as log the same message to syslog.

To manually trigger these messages open a new terminal or source the config:

- stdout
  ```bash
  hej from helloworld.plugin.zsh
  ```
- syslog
  ```bash
  2024-09-25T09:57:21.108876+02:00 system helloworld.plugin.zsh: hej from helloworld.plugin.zsh
  ```

## Important Note while startup

If you see the following warning: `[WARNING]: Console output during zsh initialization detected.`,
it is expected behavior for this demo project. The plugin prints to stdout and syslog, which can trigger this warning.

For production or real-world projects, it is recommended to avoid printing to the console
during Zsh initialization or log output to files/syslog to prevent this warning from appearing.

## Customization

Feel free to modify the `helloworld` function in the `helloworld.plugin.zsh` file to fit your needs.
This can be as simple as changing the output message or adding additional functionality.

## License

This project is licensed under the MIT License. See the LICENSE file for details.

## Weblinks

- [ohmyzsh Customizations](https://github.com/ohmyzsh/ohmyzsh/wiki/Customization)
