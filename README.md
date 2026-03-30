# Roco Minimal

A minimalist analog watch face for the Garmin Forerunner 965.

Roco Minimal reduces time to two visual elements only:
- one black hand for minutes
- one black dot for hours

No numerals, no complications, no labels, no visual noise.

## Concept

The design is intentionally stripped down to its essentials:
- a flat mustard background
- a black minute hand rotating from the center
- a black hour dot moving along an inner orbit

The goal is a clean, geometric, high-contrast watch face inspired by minimalist industrial and Bauhaus-style design.

## Features

- Minimal analog time display
- Continuous hour-dot movement based on hour + minute
- High-contrast color palette
- Designed for round Garmin watch displays
- Targeted for Garmin Forerunner 965

## Visual Design

- **Background:** mustard (`#C89B2B`)
- **Foreground:** near-black (`#111111`)
- **Minutes:** single black hand
- **Hours:** single black dot
- **Style:** quiet, geometric, uncluttered

![Roco Minimal preview]("/mostaza jpeg.jpg")



## Target Device

- Garmin Forerunner 965 (`fr965`)

## Project Structure

- `manifest.xml` — Connect IQ app manifest
- `monkey.jungle` — project build configuration
- `source/RocoMinimalApp.mc` — app entry point
- `source/RocoMinimalView.mc` — watch face rendering logic
- `resources/strings.xml` — app name
- `resources/drawables.xml` — launcher icon mapping
- `resources/launcher_icon.svg` — source icon artwork
- `resources/launcher_icon.png` — launcher icon asset

## Tech Stack

- Garmin Connect IQ
- Monkey C

## Build Requirements

To build and test this project locally, you will need Garmin’s official development tools:

- Connect IQ SDK
- Monkey C tooling / VS Code extension
- Connect IQ Simulator
- Java (depending on your setup)

## Current Status

The core watch face concept and rendering logic are implemented.

The next steps are:
1. Build the project for `fr965`
2. Test in the Connect IQ Simulator
3. Fine-tune proportions on the real device if needed
4. Add screenshots and prepare for release

## Notes

Possible future refinements:
- adjust minute-hand thickness
- adjust hour-dot size and orbit radius
- add a simplified always-on display mode
- optimize battery behavior
