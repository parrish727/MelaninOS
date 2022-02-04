#!/bin/bash -e
clear
                                           
echo " _     _        __                               ___  _____  "
echo "| \   / |  ___ |  |  ____    _  __  (_) _  __   / _ \/ ____| "
echo "|  \_/  | / _ \|  | / _   \ | |/_ \ | || |/_ \ / | | \____ \  "
echo "| |___| ||  __/|  || (_)   ||  / | || ||  / | |\ |_| /____) | "
echo "|_|   |_| \___/|__| \___/|_||_|  |_||_||_|  |_| \___/|_____/  "
echo "                                                              "
echo "By using this script, and by running MelaninOS, you are agreeing to the terms outlined in the LICENSE."
echo "Installing rustup..."
if ! rustc --version; then
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
else
echo "Rust already installed"
fi
echo "Installing the bootimage crate..."
cargo install bootimage
echo "Your system should now be correctly configured to build and run MelaninOS."
echo "To launch the kernel in a VM, use the cargo run command (requires QEMU)"
echo "To compile MelaninOS, for use in another VM software, or to run MelaninOS on real hardware, simply use the cargo build command."
echo "To test the kernel, use the cargo test command."
echo "If you encounter any issues, please open an issue on the main repository."
echo "https://github.com/parrish727/MelaninOS/kernel"
