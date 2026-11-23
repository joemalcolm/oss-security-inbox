X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/23/24
Message-ID: <cd834ba8-b989-2a8c-4f0c-4c9ed7d6f3c2@apache.org>
Date: Mon, 23 Nov 2026 18:09:53 +0000
From: Richard Zowalla <rzo1@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-82446: Apache StormCrawler: Server-Side Request Forgery and Cross-Origin Credential Disclosure via robots.txt Redirect Handling 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache StormCrawler (org.apache.stormcrawler:stormcrawler-core) 3.0.0 before 4.0.0

Description:

Description

When StormCrawler fetches a host's `/robots.txt` and receives a redirect, `HttpRobotRulesParser`
resolves the `Location` header and re-fetches the target for up to five hops. The loop checks neither
the scheme, the host nor the port of the resolved target, and it is not governed by
`http.allow.redirects`, which only affects the page fetch. A crawled site can therefore point the
robots.txt fetch at any address reachable from the fetcher worker, including loopback interfaces,
private ranges and cloud metadata endpoints. Every crawled URL triggers a robots.txt fetch on a cache
miss, so no unusual configuration is required to reach the loop.

The fetched body is only parsed as robots rules and is not returned to the caller, so the read itself
is blind. The more direct impact is on credentials: the okhttp protocol applies its configured request
headers, including the `Authorization` header built from `http.basicauth.user` and
`http.basicauth.password` and anything in `http.custom.headers`, to every request it makes. Because
StormCrawler follows the redirect itself and issues a new request, okhttp's own removal of the
`Authorization` header across a host change does not apply, and the operator's crawl credentials are
delivered to the host the redirect names.

The connection-time IP filter, `http.filter.ipaddress.include` and `http.filter.ipaddress.exclude`, is
installed as an okhttp network interceptor on the same client and does apply to these hops when it is
configured. It ships with no rules, which is why the path is reachable in a default configuration. URL
filtering never applies, because the robots.txt fetch does not pass through the outlink filter chain.

Mitigation

Upgrade to 4.0.0, where a robots.txt redirect is followed only when the target uses http or https and
shares scheme, host and port with the URL it was reached from. Deployments that legitimately serve
robots.txt through a cross-host redirect can restore the previous behaviour with
`http.robots.redirect.crosshost.allow`.

Users who cannot upgrade immediately should set `http.filter.ipaddress.exclude` to cover loopback,
private, link-local and CGNAT ranges, which is enforced after DNS resolution and therefore also on
redirect hops. Operators who configure `http.basicauth.*` or `http.custom.headers` for a crawl should
assume those credentials may have been sent to third-party hosts and rotate them, and should scope
credentials by running a separate topology per origin.

Credit

Independently reported to the Apache StormCrawler PMC by n0mi1k, with a proof of concept.

Also found by the ASF -- using Claude agents to study the security of open-source projects, validated
and reported by Apache StormCrawler.

Credit:

n0mi1k (finder)
The ASF using Claude Agents (finder)

References:

https://stormcrawler.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-82446

