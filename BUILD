package(default_visibility = ["//visibility:public"])
load("@io_bazel_rules_go//go:def.bzl", "go_library", "go_test")
load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "libv8",
    srcs = select({
        "@io_bazel_rules_go//go/platform:darwin": glob(["libv8-darwin/libv8/*.a"]),
        "@io_bazel_rules_go//go/platform:linux": glob(["libv8-linux/libv8/*.a"]),
        "//conditions:default": [],
    }),
    hdrs = select({
       "@io_bazel_rules_go//go/platform:darwin": glob(["libv8-darwin/include/*.h", "libv8-darwin/include/libplatform/*.h"]),
       "@io_bazel_rules_go//go/platform:linux": glob(["libv8-linux/include/*.h", "libv8-linux/include/libplatform/*.h"]),
       "//conditions:default": [],
   }),
)

go_library(
    name = "go_default_library",
    srcs = [
        "doc.go",
        "kind.go",
        "v8_c_bridge.cc",
        "v8_c_bridge.h",
        "v8_create_darwin.go",
        "v8_create_linux.go",
        "v8_darwin.go",
        "v8_linux.go",
    ] + select({
        "@io_bazel_rules_go//go/platform:darwin": glob(["libv8-darwin/include/*.h", "libv8-darwin/include/libplatform/*.h"]),
        "@io_bazel_rules_go//go/platform:linux": glob(["libv8-linux/include/*.h", "libv8-linux/include/libplatform/*.h"]),
        "//conditions:default": [],
    }),
    cdeps = [":libv8"],
    cgo = True,
    importpath = "github.com/joesonw/js8",
)

go_test(
    name = "go_default_test",
    srcs = [
        "benchmarks_test.go",
        "example_bind_test.go",
        "examples_test.go",
        "kind_test.go",
        "v8_test.go",
    ],
    embed = [":go_default_library"],
)
