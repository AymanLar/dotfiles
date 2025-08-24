# Dotfiles for Arch Linux

A comprehensive dotfiles setup for Arch Linux with Sway, Alacritty, Zsh, Dunst, and Dmenu.

## Features

- **Window Manager**: Sway (Wayland-based tiling window manager)
- **Terminal**: Alacritty with Gruvbox Dark theme
- **Shell**: Zsh with Oh My Zsh and custom configurations
- **Notifications**: Dunst
- **Application Launcher**: Dmenu
- **Package Management**: Automated installation scripts
- **Simple Deployment**: Direct symlinks without stow

## Quick Start

### Fresh Arch Install

1. **Install base packages**:
```bash
sudo pacman -S git zsh alacritty sway dunst dmenu
```

2. **Clone this repository**:
```bash
git clone https://github.com/yourusername/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

3. **Run the installation script**:
```bash
./install.sh
```

### Existing System

If you already have dotfiles, backup first:
```bash
./scripts/backup.sh
```

Then run the installation script.

## Structure

```
dotfiles/
├── config/                    # Configuration files
│   ├── alacritty/            # Terminal configuration
│   ├── zsh/                  # Shell configuration
│   ├── sway/                 # Window manager
│   ├── dunst/                # Notifications
│   ├── dmenu/                # Application launcher
│   └── fonts/                # Font installation
├── scripts/                   # Installation and utility scripts
├── machine/                   # Machine-specific overrides
└── install.sh                # Main installation script
```

## Machine-Specific Overrides

Create machine-specific configurations in `machine/hostname/`:
```bash
mkdir -p machine/$(hostname)
# Add machine-specific configs here
```

## Maintenance

### Adding new configurations:
1. Add configuration files to `config/`
2. Update the deployment script to include the new config
3. Run `./install.sh` to deploy

### Updating configurations:
1. Edit files in `config/`
2. Run `./scripts/update.sh` to redeploy

### Removing configurations:
1. Remove files from `config/`
2. Update deployment script
3. Run `./install.sh` to redeploy

## Scripts

- `install.sh` - Main installation script
- `scripts/update.sh` - Update and redeploy dotfiles
- `scripts/backup.sh` - Backup existing dotfiles

## Troubleshooting

### Symlink conflicts
If you get symlink conflicts during installation:
```bash
./scripts/backup.sh
rm -rf ~/.config/alacritty ~/.config/sway ~/.config/dunst ~/.config/dmenu
./install.sh
```

### Manual deployment
To manually deploy specific configurations:
```bash
# Alacritty
ln -sf ~/.dotfiles/config/alacritty ~/.config/alacritty

# Sway
ln -sf ~/.dotfiles/config/sway ~/.config/sway

# Zsh
ln -sf ~/.dotfiles/config/zsh/.zshrc ~/.zshrc
```

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test on a fresh install
5. Submit a pull request

## License

MIT License - feel free to use and modify as needed.
