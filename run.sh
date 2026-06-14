#!/bin/bash

DATA_DIR="$(pwd)/data"
LOCAL_DATA_DIR="$(pwd)/local_data"

case "$1" in

  build_generator)
    docker build -t generator ./generator
    ;;

  run_generator)
    docker run --rm -v "$DATA_DIR":/data generator
    ;;

  create_local_data)
    python3 generator/generate.py "$LOCAL_DATA_DIR"
    ;;

  build_reporter)
    docker build -t reporter ./anlytics
    ;;

  run_reporter)
    docker run --rm -v "$DATA_DIR":/data reporter
    ;;

  structure)
    find . -not -path './.git/*' | sort
    ;;

  clear_data)
    docker run --rm -v "$DATA_DIR":/data alpine sh -c "rm -f /data/*.csv /data/*.html"
    ;;

  inside_generator)
    docker run --rm -v "$DATA_DIR":/data generator ls -lh /data
    ;;

  inside_reporter)
    docker run --rm -v "$DATA_DIR":/data --entrypoint ls reporter -lh /data
    ;;

  report_server)
    docker run --rm -d --name report_server -v "$DATA_DIR":/usr/share/nginx/html:ro -p 8080:80 nginx:alpine
    ;;

esac