#!/bin/bash
echo "Starting build process..."

# Define the build directory
BUILD_DIR="build"

# Get the current script directory to handle relative paths correctly
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Create the build directory if it doesn't exist
if [ ! -d "$BUILD_DIR" ]; then
    mkdir "$BUILD_DIR"
    echo "Created build directory: $BUILD_DIR"
fi

# Compile individual files with correct paths
echo "Compiling modules..."
g++ -I"$SCRIPT_DIR/../../assets/animations/characters" -I"$SCRIPT_DIR/../../core/modules/scene_renderer" -I"$SCRIPT_DIR/../../core/modules/sound_fx" -I"$SCRIPT_DIR/../../core" -I"$SCRIPT_DIR/../../visuals" \
    -c "$SCRIPT_DIR/../../core/main.cpp" -o "$SCRIPT_DIR/../../$BUILD_DIR/main.o"
g++ -I"$SCRIPT_DIR/../../assets/animations/characters" -I"$SCRIPT_DIR/../../core/modules/scene_renderer" -I"$SCRIPT_DIR/../../core/modules/sound_fx" -I"$SCRIPT_DIR/../../core" -I"$SCRIPT_DIR/../../visuals" \
    -c "$SCRIPT_DIR/../../core/modules/scene_renderer/scene_manager.cpp" -o "$SCRIPT_DIR/../../$BUILD_DIR/scene_manager.o"
g++ -I"$SCRIPT_DIR/../../assets/animations/characters" -I"$SCRIPT_DIR/../../core/modules/scene_renderer" -I"$SCRIPT_DIR/../../core/modules/sound_fx" -I"$SCRIPT_DIR/../../core" -I"$SCRIPT_DIR/../../visuals" \
    -c "$SCRIPT_DIR/../../core/modules/scene_renderer/scene_renderer.cpp" -o "$SCRIPT_DIR/../../$BUILD_DIR/scene_renderer.o"
g++ -I"$SCRIPT_DIR/../../assets/animations/characters" -I"$SCRIPT_DIR/../../core/modules/scene_renderer" -I"$SCRIPT_DIR/../../core/modules/sound_fx" -I"$SCRIPT_DIR/../../core" -I"$SCRIPT_DIR/../../visuals" \
    -c "$SCRIPT_DIR/../../core/nova.cpp" -o "$SCRIPT_DIR/../../$BUILD_DIR/nova.o"
g++ -I"$SCRIPT_DIR/../../assets/animations/characters" -I"$SCRIPT_DIR/../../core/modules/scene_renderer" -I"$SCRIPT_DIR/../../core/modules/sound_fx" -I"$SCRIPT_DIR/../../core" -I"$SCRIPT_DIR/../../visuals" \
    -c "$SCRIPT_DIR/../../assets/animations/characters/robot.cpp" -o "$SCRIPT_DIR/../../$BUILD_DIR/robot.o"
g++ -I"$SCRIPT_DIR/../../assets/animations/characters" -I"$SCRIPT_DIR/../../core/modules/scene_renderer" -I"$SCRIPT_DIR/../../core/modules/sound_fx" -I"$SCRIPT_DIR/../../core" -I"$SCRIPT_DIR/../../visuals" \
    -c "$SCRIPT_DIR/../../assets/animations/characters/human.cpp" -o "$SCRIPT_DIR/../../$BUILD_DIR/human.o"

# Link object files into an executable
echo "Linking object files..."
g++ "$SCRIPT_DIR/../../$BUILD_DIR/main.o" "$SCRIPT_DIR/../../$BUILD_DIR/scene_manager.o" "$SCRIPT_DIR/../../$BUILD_DIR/scene_renderer.o" \
    "$SCRIPT_DIR/../../$BUILD_DIR/nova.o" "$SCRIPT_DIR/../../$BUILD_DIR/robot.o" "$SCRIPT_DIR/../../$BUILD_DIR/human.o" -o "$SCRIPT_DIR/../../$BUILD_DIR/nova_app"

echo "Build complete."

# Optionally run the executable
if [ -f "$SCRIPT_DIR/../../$BUILD_DIR/nova_app" ]; then
    echo "Running the application..."
    "$SCRIPT_DIR/../../$BUILD_DIR/nova_app"
else
    echo "Executable not found. Something went wrong."
fi