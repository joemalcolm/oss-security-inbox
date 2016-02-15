X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/02/15/9
Message-ID: <20160215191330.GA11450@gremlin.ru>
Date: Mon, 15 Feb 2016 22:13:30 +0300
From: gremlin@...mlin.ru
To: oss-security@...ts.openwall.com
Subject: Re: Browser Security Tool: HTTPS Only (Why, How, Open Source, Python)
Content-Type: text/plain; charset=utf-8

On 2016-02-14 22:07:21 -0500, David Leo wrote:

 > This tool completely locks browser - just HTTPS, nothing else.

That means, it causes effective DoS with "ssl_error_no_cypher_overlap"
(as it's called by Firefox) for approx. 60% of all sites.

In most cases, HTTPS is either misused or abused. But the ${subject}
does both misuse and abuse: it forces HTTPS even for unauthenticated
connections (are there any real reasons to use HTTPS instead of E2EE
for protecting the information which is publicly available?), while
not making any use of a clients' certificates.

Ds: PoS
Rp: >& /dev/null


-- 
Alexey V. Vissarionov aka Gremlin from Kremlin
GPG: 8832FE9FA791F7968AC96E4E909DAC45EF3B1FA8
