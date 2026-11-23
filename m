X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/23/21
Message-ID: <1c8e276c-5040-903f-e082-15d9813c7ce0@apache.org>
Date: Mon, 23 Nov 2026 18:08:26 +0000
From: Richard Zowalla <rzo1@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-82442: Apache StormCrawler: HostURLFilter Domain Scoping Silently Disabled by a Wrong Variable Check 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache StormCrawler (org.apache.stormcrawler:stormcrawler-core) 3.0.0 before 4.0.0

Description:

Description

`HostURLFilter.configure` reads the `ignoreOutsideDomain` parameter but tests the node belonging to
`ignoreOutsideHost` when deciding whether the domain mode was configured. A filter configuration that
names only `ignoreOutsideDomain`, which the class documentation presents as an independent mode, is
therefore discarded: the flag is forced to false, `filter` short-circuits on its guard and every URL is
returned unchanged. The filter enforces nothing while appearing to be configured, and the failure is
silent. The mirror-image configuration, naming only `ignoreOutsideHost`, fails with a
`NullPointerException` while the topology is starting.

The effect is the loss of a scope control the operator configured, so a crawled page's outlinks are
followed to hosts the operator intended to exclude. Impact beyond crawl scope depends on what the
crawler then fetches and is not claimed here. Projects generated from the StormCrawler Maven archetypes
are not affected, because all three shipped filter configurations set both parameters.

Mitigation

Upgrade to 4.0.0, where each parameter is tested independently. Operators whose configuration sets only
`ignoreOutsideDomain` will find the crawl restricted to the source domain, as configured, which may
reduce the number of outlinks accepted.

Users who cannot upgrade immediately should set both `ignoreOutsideHost` and `ignoreOutsideDomain`
explicitly in the `HostURLFilter` configuration, which produces the intended behaviour on affected
versions.

Credit

Independently reported to the Apache StormCrawler PMC by n0mi1k, with a proof of concept.

Also found by the ASF -- using Claude agents to study the security of open-source projects, validated
and reported by Apache StormCrawler.

Credit:

n0mi1k (finder)
The ASF using Claude Agents (finder)

References:

https://stormcrawler.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-82442

