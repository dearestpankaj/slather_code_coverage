#!/bin/bash
set -ex

gem install slather

slather coverage --html -s --scheme 'Vivy Staging' --workspace Vivy.xcworkspace Vivy.xcodeproj
