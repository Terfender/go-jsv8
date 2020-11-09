This is a modified clone of [github.com/joesonw/js8](https://github.com/joesonw/js8).

The oriinal repo use V8 `6.3.292.48.1` and this repo upgraded it to `8.4.255.0`.

> To reduce the size of this repo, V8 static library is not included in this repo. Run `seetup.sh` to download the static binary libraries.

Because V8 API keeps changing, there are a lot of change in `v8_c_bridge.cc`

To upgrade to a newer V8 version in the future, modify the var definition in `setup.sh`, run the script to download the newest version and do some work in `v8_c_bridge.cc` `v8_{arch}.go` and `v8_create_{arch}.go`. 

Since the gem package layout may be change, if `setup.sh` run into error, you should also change that script.