#!/bin/bash
#git-fatfiles by Vi from https://stackoverflow.com/questions/1029969/why-is-my-git-repository-so-big
git rev-list --all --objects | \
    sed -n $(git rev-list --objects --all | \
    cut -f1 -d' ' | \
    git cat-file --batch-check | \
    grep blob | \
    sort -n -k 3 | \
    tail -n40 | \
    while read hash type size; do 
         echo -n "-e s/$hash/$size/p ";
    done) | \
    sort -n -k1
