# The Only Good Makefile
This repository contains the only good way to write a `Makefile`, which enforces the use of `Justfile` and suggests installing it if it is not already installed.

This approach allows for the use of a more modern and convenient tool for task management (`Justfile`), while maintaining compatibility with traditional `Makefile`.

## How It Works
If `just` is installed, the `Makefile` redirects all commands to the `Justfile`.
If `just` is not installed, the `Makefile` will automatically install it using the official installation script and then execute the command.

## Usage
Simply copy the Makefile into your repository.

## License
This project is distributed under the **GNU General Public License v3.0** (GNU/GPL).

The full text of the license is available in the [LICENSE](LICENSE) file or on the [official GNU website](https://www.gnu.org/licenses/gpl-3.0.html).
