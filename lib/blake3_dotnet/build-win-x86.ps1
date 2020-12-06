#!/bin/sh
$TARGET="i686-pc-windows-msvc"
$BUILD="win-x86"
rustup target add $TARGET
cargo build --release --target $TARGET
New-Item -ItemType Directory -Force -Path build/$BUILD/native
cp target/$TARGET/release/blake3_dotnet.dll build/$BUILD/native