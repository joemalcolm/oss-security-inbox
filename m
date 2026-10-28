X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/28/19
Message-ID: <d9e1d0ba-d12c-4feb-9511-7d74e556a685@oracle.com>
Date: Wed, 28 Oct 2026 11:13:12 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-102479: Request smuggling in Eclipse Vert.x HTTP/1.x decoder
Content-Type: text/plain; charset=utf-8

https://github.com/eclipse-vertx/vert.x/security/advisories/GHSA-ch7p-g5pm-3gqx
advises:
> Vert.x HTTP/1.x decoder does not correctly handle canonicalized headers
> leading to request smuggling
> 
> vietj published GHSA-ch7p-g5pm-3gqx 3 weeks ago
> 
> Package:                io.vertx:vertx-core (Maven)
> Affected versions:      >= 5.0.0, <= 5.1.8
>                         5.2.0
> Patched versions:       5.1.10
>                         5.2.1
> 
> Description
> -----------
> 
> Vert.x HTTP/1.x decoder uses a canonicalization for well known HTTP headers,
> the canonicalization process interprets well crafted headers as headers of
> this list, allowing for instance Content-Xength to be interpeted as
> Content-Length.
> 
> This can be exploited for request smuggling purpose.
> 
> Severity:       High 7.5 / 10   CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:H/A:N
> CVE ID:         CVE-2026-102479
> Credits:        @Michael-JRead Reporter

https://research.jfrog.com/post/byte-debt-vertx-header-typo-session-fixation/
explores how this can be exploited and says that "vertx-core has around 2,100
Maven dependents and north of 300 million cumulative downloads, but those
figures span the entire history of the project. The actual exposure window is
narrow: three minor release branches shipped over a few months (5.0.0–5.0.12,
5.1.0–5.1.9, and 5.2.0), patched in 5.1.10 and 5.2.1. The takeaway isn't that
Vert.x as a whole is broken, it is that if you deployed the modern 5.x line
during that window, you are potentially vulnerable." and that "Our team was able
to POC this vulnerability on several popular open source projects that use
Vert.x webserver in the vulnerable version, in certain setups behind a frontend
proxies such as: TechEmpower/FrameworkBenchmarks, strimzi/strimzi-kafka-bridge
(0.33.0), apache/camel-quarkus".
