#!/usr/bin/env bash
 flutter pub get
 flutter packages pub run build_runner build --delete-conflicting-outputs
 find . -name "*.inject.summary" -type f -delete
 find . -name "*.g.inject.summary" -type f -delete
 injected=$(find . -name "*.inject.dart" -type f)

 for i in $injected; do
    if [ "$i" == "./lib/src/common/di/injector/name_injector.inject.dart" ]
    then
        echo "./lib/src/common/di/injector/name_injector.inject.dart == $i"
        echo "Saving the injector file"
    else
        echo "./lib/src/common/di/injector/name_injector.inject.dart != $i"
    rm -rf "$i"
    # echo "deleted :$i"
    fi
 done