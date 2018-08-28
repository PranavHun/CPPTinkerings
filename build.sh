#!/usr/bin/env bash

case "$1" in
        all)
                printf "building all\n"
                printf "building include/lib\n"
                cd include/
                rm -rf *
                cd ../lib
                rm -rf *
                cd ../CPPTinkerings/build/
                rm -rf *
                cmake ../
                cmake --build . --target install

                printf "building examples\n"
                cd ../../examples/bin/
                rm -rf *
                cd ../build
                rm -rf *
                cmake ../
                cmake --build . --target install
                ;;
        clean)
                printf "deleting all builds\n"
                printf "deleting include/lib builds\n"
                cd include/
                rm -rf *
                cd ../lib
                rm -rf *
                cd ../CPPTinkerings/build/
                rm -rf *
                printf "deleting examples builds\n"
                cd ../../examples/bin/
                rm -rf *
                cd ../build
                rm -rf *
                ;;
        examples)
                printf "building examples\n"
                ;;
        -h|--help)
                printf "Usage: sh build.sh [option]\n"
                printf "option\n"
                printf "all\t\tclean and build libs and examples\n"
                printf "clean\t\tdelete all the build folders\n"
                printf -- "-h --help\tthis message\n"
                printf "no option given\tincremental builds\n"
                ;;
        *)
                printf "building all incrementally\n"
                printf "building include/lib incrementally\n"
                cd CPPTinkerings/build/
                cmake ../
                cmake --build . --target install

                printf "building examples incrementally\n"
                cd examples/build/
                cmake ../
                cmake --build . --target install
              ;;
esac
