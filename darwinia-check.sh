
set -e

echo ">>> Start compile process"

crates=(
    moonbeam-evm-tracer
    evm-tracing-events
    moonbeam-primitives-ext
    moonbeam-rpc-core-debug
    moonbeam-rpc-core-trace
    moonbeam-rpc-core-types
    moonbeam-rpc-primitives-debug
    moonbeam-client-evm-tracing
    moonbeam-rpc-debug
    moonbeam-rpc-trace
)

for c in ${crates[@]}
do
    echo ">>>>>>>> Start $c"
    cargo check -p $c
    echo ">>>>>>>> End $c"

done 
