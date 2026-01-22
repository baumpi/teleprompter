# Voice Teleprompter

A simple, iPhone-optimized voice-activated teleprompter for recording e-learning videos.

## Features

- **Voice Mode**: Follows your speech using Web Speech API
- **Auto Mode**: Constant speed scrolling
- **Horizontal/Vertical Flip**: For beam-splitter mirror setups
- **Color Themes**: Orange, White, Green on black + Black on white
- **Text Margin Control**: Adjust text width for narrow displays
- **German Language Default**: Optimized for German speech recognition
- **Offline Capable**: Works without internet (except voice recognition)

## Quick Start

### Local Development
```bash
# Python 3
python -m http.server 8080

# Then open http://localhost:8080
```

### Docker (Unraid/NAS)
```bash
# Build and run
docker-compose up -d

# Access at http://your-nas-ip:9900
```

### Manual Docker
```bash
docker build -t teleprompter .
docker run -d -p 9900:80 --name teleprompter teleprompter
```

## iPhone Setup

1. Open in **Chrome** (Safari doesn't support Web Speech API)
2. Add to Home Screen for fullscreen mode
3. Allow microphone access when prompted

## Keyboard Shortcuts

- `Space` - Play/Pause
- `Arrow Up/Down` - Font size
- `Arrow Left/Right` - Scroll speed
- `Escape` - Rewind

## License

MIT
