import Text "mo:base/Text";
import Nat "mo:base/Nat";

// https://github.com/dfinity/examples/blob/master/motoko/counter/src/Main.mo


// https://github.com/mix-labs/IC-demo-11-30-21/blob/master/demo_mo/src/demo_mo/main.mo

actor Counter {

    type HeaderField = (Text, Text);
    type HttpResponse = {
        status_code: Nat16;
        headers: [HeaderField];
        body: Blob;
    };

    stable var currentValue : Nat = 0;

    public func increment() : async () {
        currentValue += 1;
    };

    public query func get() : async Nat {
        currentValue
    };

    public func set(n: Nat) : async () {
        currentValue := n;
    };


    public query func http_request() : async HttpResponse {
        var result = "<html><head><title>Canister http_request demo</title></head><body><h1>Counter: " # Nat.toText(currentValue) # "</h1></body></html>";

        {
            status_code = 200;
            headers = [("content-type", "text/html")];
            body = Text.encodeUtf8 (result);
        }
    };


};
