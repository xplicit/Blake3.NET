#!/bin/sh
TARGET="aarch64-unknown-linux-gnu"
BUILD="linux-arm64"
rustup target add $TARGET
cargo build --release --target $TARGET
mkdir -p build/$BUILD/native
cp target/$TARGET/release/libblake3_dotnet.so build/$BUILD/native
aarch64-linux-gnu-strip build/$BUILD/native/*.so