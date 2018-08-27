# C++ Tinkerings

I am learning C++ and am using this repository to collect various ideas that I come up with.

## Getting Started

The repository is divided into two parts.
1. Code in src/ folder which builds into the include/ and lib/ folders.
2. Code in test/ folder which tests all the features.

## Installing

After the directory is cloned, you execute the following commands.

cd build && cmake ../
cmake --build . --target install

These commands build the source into include and lib.

From the root directory.

cd test/build && cmake ../
cmake --build . --target install

This will create an executable in test/bin directory,

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
