#!/usr/bin/env bash

case "$1" in
        all)
                echo "building all"
                ;;
        clean)
                echo "cleaning..."
                ;;
        examples)
                echo "building examples"
                ;;
        -h|--help)
                echo "Usage"
                ;;
        *)
                echo "Usage"
                echo "or maybe just lib"
                ;;
esac
