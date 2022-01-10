# Counter http_request Demo

##  local
```

dfx start
dfx deploy
dfx canister call my_counter get
dfx canister call my_counter increment
dfx canister call my_counter get
dfx canister call my_counter set '(100)'
dfx canister call my_counter get

local http_request demo:
http://rkp4c-7iaaa-aaaaa-aaaca-cai.localhost:8000/
```

## network IC
```
dfx deploy --network ic
dfx canister --network ic call 3h5dd-fiaaa-aaaai-qblaq-cai get
dfx canister --network ic call 3h5dd-fiaaa-aaaai-qblaq-cai increment
dfx canister --network ic call 3h5dd-fiaaa-aaaai-qblaq-cai get
dfx canister --network ic call 3h5dd-fiaaa-aaaai-qblaq-cai set '(100)'
dfx canister --network ic call 3h5dd-fiaaa-aaaai-qblaq-cai get

network IC  http_request demo:
https://3h5dd-fiaaa-aaaai-qblaq-cai.raw.ic0.app/
```