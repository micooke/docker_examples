#!/bin/bash
program_list="${@:-update}"
apt-get install -y ${program_list}