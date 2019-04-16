#!/usr/bin/env bash

for x in samples/*.tar.gz; do
  _file_tar_gz="$(basename $x)"
  _file_tar="${_file_tar_gz%.*}"
  _file="${_file_tar%.*}"
  _target="extracts/$_file"
  echo "$_file_tar_gz"
  echo "$_file_tar"
  echo "$_file"
  rm -rf "$_target"
  mkdir -p "$_target"
done
