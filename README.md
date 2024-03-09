# Automatic Environment Install

This script is create by cycl0n3-ga, automates the setup of a development environment on Ubuntu systems. It includes the installation of essential packages and tools for development.

## Installation

1. Clone the repository:
   ```sh
   git clone https://github.com/Cycl0n3-ga/env-setup.git
   ```
   (You must have Git installed, you can install it via `sudo apt update && sudo apt install git` if not already installed.)

2. Navigate to the cloned directory:
   ```sh
   cd env-setup
   ```

3. Run the setup script:
   ```sh
   sh run.sh
   ```

## Included Packages and Tools

- **vim**: Text editor with line numbers enabled.
- **Zsh**: A powerful shell.
- **Oh My Zsh**: A framework for managing Zsh configurations.
- **Powerlevel10k**: A Zsh theme.

## Additional Packages Installed

- snap
- tmux
- neofetch
- htop
- curl
- powertop
- speedtest-cli
- wget
- gcc
- iotop
- cron
- tree
- ca-certificates
- Docker & Docker-compose
- 

## Description of .vimrc

The `.vimrc` file included in this setup is a configuration file for Vim, a highly customizable text editor. It contains settings and customizations that enhance the Vim experience for developers. Here are some of its notable features:

1.  **System-wide Defaults**: The file mentions that system-wide defaults are sourced from `/etc/vim/vimrc`, ensuring consistency across the system.
    
2.  **Syntax Highlighting**: Syntax highlighting is enabled by default, making code easier to read and understand.
    
3.  **Key Mappings**: Custom key mappings are defined for common tasks, such as saving and compiling code with F8, running Python scripts with F7, and saving files with elevated permissions using F2.
    
4.  **Indentation and Auto-Formatting**: Settings for indentation and auto-formatting are configured to improve code readability and maintainability.
    
5.  **Search Highlighting**: Search highlighting is enabled to visually identify search matches within the text.
    
6.  **Plugin Support**: Vim loads indentation rules and plugins based on detected filetypes, providing additional functionality tailored to specific types of files.
    
7.  **Customization**: The file allows for further customization and personalization of Vim's behavior, including Vi compatibility, mouse support, and more.
    

Overall, the `.vimrc` file enhances the Vim editing experience by providing a tailored environment for coding and text editing, improving productivity and workflow efficiency.

## Usage

Once the installation is complete, you can start using the configured environment immediately. If you encounter any issues during the installation or have suggestions for improvements, feel free to open an issue or create a pull request on GitHub.

Happy coding!

