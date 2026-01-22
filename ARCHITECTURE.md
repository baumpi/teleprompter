# Teleprompter Architecture & Refactoring Plan

## Current Structure (Single File)
All code is in `index.html` - good for simplicity and easy deployment.

## When to Refactor
Only split into modules if:
- Adding complex new features
- Multiple developers working on it
- File exceeds 2000 lines
- Need unit testing

## Recommended Module Split (If Needed)

```
/teleprompter
├── index.html          # Main HTML structure only
├── css/
│   ├── base.css        # Reset, variables, body styles
│   ├── controls.css    # Header, buttons, sliders
│   ├── teleprompter.css # Main text area, words
│   ├── settings.css    # Settings panel
│   └── responsive.css  # iPhone media queries
├── js/
│   ├── main.js         # App initialization
│   ├── Teleprompter.js # Main class
│   ├── SpeechEngine.js # Voice recognition wrapper
│   ├── ScrollEngine.js # Auto scroll logic
│   ├── ThemeManager.js # Theme handling
│   └── Storage.js      # LocalStorage wrapper
├── Dockerfile
├── docker-compose.yml
└── README.md
```

## Module Responsibilities

### SpeechEngine.js
- Initialize Web Speech API
- Handle recognition events
- Emit word match events
- Language switching

### ScrollEngine.js
- Auto scroll animation loop
- Manual scroll handling
- Flip transform calculations
- Word position tracking

### ThemeManager.js
- Theme definitions
- Apply theme to DOM
- Dynamic style injection
- Meta tag updates

### Storage.js
- Save/load settings
- Save/load script
- Clear data
- Migration handling

## Keep Single File For Now
Current ~1500 lines is manageable. The Teleprompter class is well-organized with clear sections. Split only when adding significant new features.

## Future Feature Ideas (Low Priority)
- [ ] Multiple script support
- [ ] Script import from Notion/Google Docs
- [ ] Remote control via second device
- [ ] Recording timer with countdown
- [ ] Word count / estimated read time
