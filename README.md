This is a modified clone of [github.com/augustoroman/v8](https://github.com/augustoroman/v8).

Where the original repository comes with two problems

1. It does not work well with `go module`
2. It includes manual setup script, which can be confusing when try to build this package with `bazel`


So. I did the following

1. `setup.sh` it grabs compiled `v8` from `rubygems` as mentioned [here](https://github.com/augustoroman/v8#using-a-pre-compiled-v8)
2. include the compiled library and headers as part of the repo, so you can do `go get github.com/joesonw/js8`
3. It works for both `amd64` and `darwin64` since I grabbed both files.



Current V8 version si `6.3.292.48.1`. I tried `6.7`, It does not quite work without any further investigation.
