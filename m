X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/27/1
Message-ID: <CAKUNu1eJF5GZpfdB_BiCqzBnCbK5fDhGEG2e5QtJXWbsTxH9sQ@mail.gmail.com>
Date: Wed, 26 Aug 2026 18:19:44 -0700
From: Syed <anasmohiddinsyed@...il.com>
To: oss-security@...ts.openwall.com
Subject: Reporter attribution is absent from GitHub's machine-readable vulnerability records, and from the NVD entirely
Content-Type: text/plain; charset=utf-8

This is a measurement, not a vulnerability report.

The CVE v5 format defines a `credits` container naming who found or
reported an
issue, with typed roles. The OSV schema defines an equivalent field. GitHub
collects credit from reporters, requires them to accept it before display,
shows
it on the advisory page, and serves it through its advisories REST API. It
emits
it into neither standardized format.

Measured 26 August 2026, public APIs only:

238 GitHub-assigned CVE records whose linked advisory publicly credits a
party
0 carry `credits`
those same 238 records carry `metrics` and `problemTypes`
both optional in the CVE schema, exactly as `credits` is

302 GitHub OSV export files for those same advisories
0 carry `credits`, which the OSV schema does define

4,889 published CVE records, census of a two-week window, no sampling
2,294 carry `credits` (46.9%)
GitHub 0/570, Microsoft 0/438, Linux 0/416, MITRE 0/86
VulnCheck 434/473, WPScan 342/342, VulDB 290/291
Red Hat 82/143, Apache 60/96

43 credit-bearing records traced into NVD API 2.0
all 43 present, 0 retained credits, 14 with vulnStatus "Analyzed"
the NVD API 2.0 schema defines no credits field

The gap was reported in January 2023, github/advisory-database#1580. GitHub
replied in March 2023 that "displaying credit information in the JSON files
would have made this epic 2-3x as much work, so we cut that part for now,"
and
said it would be prioritized in a future quarter. The issue is still open.

The advisory named in that original 2023 report, GHSA-c653-6hhg-9x92, still
returns a credit in the REST API today (user hacdias, type analyst). Its OSV
file has no credits key. Its record CVE-2023-22460 has no credits container,
while carrying metrics and problemTypes.

For contrast, the Erlang Ecosystem Foundation emits full typed credits on
18 of
18 records in the same pool, using cvelib, the free CLI for CVE Services
maintained by Red Hat Product Security. The format imposes no barrier.

Two things follow that are actionable rather than rhetorical. CNAs already
holding structured credit data can emit it with no format change; this is
what
#1580 asked for. And the NVD schema carrying the field would be an additive
change, without which credits that diligent CNAs do emit are dropped at the
second hop regardless of anything upstream.

What I am not claiming: I cannot show intent, and I did not measure GitHub's
integration cost. Severity and weakness are ordinary steps in GitHub's
advisory
flow while its docs introduce credit with the word "optionally," so an
exporter
mapping only always-populated fields would produce the same pattern. What
the
data does establish is that the omission is not explained by a thin export,
that
it spans both machine-readable surfaces, and that it is unchanged three
years
and seven months after being identified and costed.

Scripts, identifier lists and verbatim API responses, CC0:

https://www.google.com/url?q=https://doi.org/10.5281/zenodo.22119153&source=gmail&ust=1787879984616000&sa=E
swh:1:dir:e6945752ec3131c20fe7dd297bb4e29a2d98264c
https://www.google.com/url?q=https://github.com/SyedAnas01/cve-credits-attribution&source=gmail&ust=1787879984616000&sa=E

The package includes cve-credit-check, which reports whether a given CVE
identifier carries attribution in its CVE record, its OSV export and its NVD
copy. Corrections welcome; the raw responses are there to check me against.

Anas Mohiuddin Syed
ORCID 0009-0005-3736-6430

