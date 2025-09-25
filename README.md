# Cross Device Data Transfer

Ability to send .zip files from anywhere in the world with an internet connection.

## Building the Project

This project uses **CMake** for cross-platform builds and automatic dependency management.

### Prerequisites

Make sure you have the following installed:

- CMake >= 3.16
- A C++17 compatible compiler (e.g., clang++, g++)
- Git
- Optional system libraries (CMake will download them if missing):
  - zlib
  - libzip
  - wxWidgets

### Build Steps

1. **Clone the repository** (if not already done):

```bash
git clone https://github.com/dzobamain/cross-device-data-transfer
cd cross-device-data-transfer
````

2. **Create the build directory** (out-of-source build):

```bash
mkdir -p build
````

3. **Configure the project with CMake**:

```bash
cmake -S . -B build
```

- -S . points to the source directory (project root)
- -B build points to the build directory

4. **Compile the project**:

```bash
cmake --build build -j4
```

- The compiled executable will be in build/bin/cross-device-data-transfer.

5. **Run the application**:

```bash
./build/cross-device-data-transfer
```

The log file will be created at var/debug.log. Make sure the var/ directory exists and is writable.

### Notes

- Dependencies like `zlib`, `libzip`, `wxWidgets` will be automatically downloaded if not present in the system.
- `json.hpp` is included in the project under `lib/json/json.hpp`, so no extra download is needed.
- Temporary files, logs, and build artifacts are ignored in the repository thanks to `.gitignore`.
