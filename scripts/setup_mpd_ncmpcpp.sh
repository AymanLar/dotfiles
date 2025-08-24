#!/bin/bash

# Install MPD and ncmpcpp
echo "Installing MPD and ncmpcpp..."
sudo pacman -Syu mpd ncmpcpp --noconfirm

# Create config directories
echo "Creating configuration directories..."
mkdir -p ~/.config/mpd
mkdir -p ~/.config/ncmpcpp
mkdir -p ~/.config/mpd/playlists

# Copy basic configs (replace with your actual paths)
echo "Writing MPD config..."
cat > ~/.config/mpd/mpd.conf <<EOL
music_directory    "/home/ayman/sd/music"
playlist_directory "~/.config/mpd/playlists"
db_file            "~/.config/mpd/mpd.db"
log_file           "~/.config/mpd/mpd.log"
pid_file           "~/.config/mpd/mpd.pid"
state_file         "~/.config/mpd/mpdstate"

audio_output {
    type        "alsa"
    name        "My ALSA Device"
    mixer_type  "hardware"
}
EOL

echo "Writing ncmpcpp config..."
cat > ~/.config/ncmpcpp/config <<EOL
mpd_host = "localhost"
mpd_port = "6600"
ncmpcpp_directory = "~/.config/ncmpcpp"
song_browser_format = "%a - %t"
statusbar_format = "%artist% - %title% [%elapsed%/%total%]"
visualizer_fifo_path = "/tmp/mpd.fifo"
startup_view = "playlist"
EOL

# Start MPD
echo "Starting MPD..."
mpd --kill
mpd

echo "Setup complete! You can now run ncmpcpp."