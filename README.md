# Homebrew Tap for tui-delta

This is the official Homebrew tap for [tui-delta](https://github.com/JeffreyUrban/tui-delta), Wraps a TUI (terminal user interface) applicatvel content.

## Installation

### Quick Install

```bash
brew tap JeffreyUrban/tui-delta
brew install tui-delta
```

### One-Line Install

```bash
brew install JeffreyUrban/tui-delta/tui-delta
```

## What Gets Installed

When you install `tui-delta` via Homebrew, you get:

- ✅ **tui-delta** - Wraps a TUI (terminal user interface) applicatvel content
- ✅ **Python dependencies** - All Python packages in an isolated virtualenv

## Features

- **Isolated environment** - Python packages don't conflict with your system Python
- **Easy updates** - `brew upgrade tui-delta` to get the latest version
- **Automatic formula updates** - New releases are published automatically

## Usage

After installation, the `tui-delta` command is available in your PATH:

```bash
# Check version
tui-delta --version

# Get help
tui-delta --help
```

## Updating

```bash
# Update Homebrew
brew update

# Upgrade tui-delta
brew upgrade tui-delta
```

## Uninstalling

```bash
# Remove tui-delta
brew uninstall tui-delta

# Remove the tap
brew untap JeffreyUrban/tui-delta
```

## Documentation

- **Main Project**: https://github.com/JeffreyUrban/tui-delta
- **PyPI**: https://pypi.org/project/tui_delta/

## Requirements

- **macOS** 11.0+ (Big Sur) or **Linux**
- **Python** 3.9+ (provided by Homebrew)

## Troubleshooting

### Command not found after installation

```bash
# Ensure Homebrew's bin is in your PATH
echo 'export PATH="/opt/homebrew/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
```

### Check installation

```bash
# Verify tui-delta is installed
brew list tui-delta

# Test basic functionality
tui-delta --version
```

### Reinstall

```bash
brew reinstall tui-delta
```

## Development

This tap uses automated workflows to update the formula when new versions are released:

1. A new release is created in the main repository
2. The release workflow triggers this repository via `repository_dispatch`
3. The update workflow waits for the PyPI release
4. A pull request is automatically created with the updated formula
5. After review, the PR is merged to publish the update

For more details, see [`.github/workflows/update-formula.yml`](.github/workflows/update-formula.yml).

## Contributing

Issues and pull requests should be submitted to the main repository:
https://github.com/JeffreyUrban/tui-delta/issues

Formula-specific issues can be reported here:
https://github.com/JeffreyUrban/homebrew-tui-delta/issues

## License

The formula in this repository is licensed under the MIT License.

The tui-delta software itself is also MIT licensed. See the [main repository](https://github.com/JeffreyUrban/tui-delta) for details.
