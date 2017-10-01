#! /bin/sh

bower update
polymer build --preset es6-bundled
ssh recycle.cs.washington.edu "rm /cse/web/homes/jstn/* -r"
scp -r build/es6-bundled/* recycle.cs.washington.edu:/cse/web/homes/jstn
