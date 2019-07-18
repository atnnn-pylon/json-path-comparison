#!/bin/bash
set -euo pipefail

readonly script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
readonly runner="${script_dir}/build/Rust_jsonpath_lib"

"$runner" "$@"
