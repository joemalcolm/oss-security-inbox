X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/09/29
Message-ID: <8b5dc420-7367-2994-3cf5-b360792d0bf2@apache.org>
Date: Mon, 09 Nov 2026 20:06:14 +0000
From: "Gary D. Gregory" <ggregory@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-119078: Apache Commons Codec: Blake3 doFinalize is stateless; the documented KDF example derives identical keys 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Commons Codec 1.16.0 before 1.23.0

Description:

Apache Commons Codec's Blake3 class documented the output of its doFinalize methods as depending on any previously finalized bytes, so that consecutive calls would return different output. In fact, doFinalize does not change the hash state: calling it again without supplying more input returns the same bytes. The key-derivation example in the class Javadoc, shipped since 1.16.0, derives two keys with two consecutive doFinalize calls. Code that follows it gets identical keys, so the separation between the derived keys is lost. The same applies to any application that calls doFinalize more than once on one instance and expects new output each time.



This issue affects Apache Commons Codec from 1.16.0 before 1.23.0.



Version 1.23.0 corrects the documentation, but the behavior of doFinalize is unchanged. Upgrading alone does not fix affected code. Users should check their applications for repeated doFinalize calls on the same Blake3 instance and derive multiple keys by requesting the combined length in one call and splitting the output, as the updated Javadoc shows.

Credit:

Claude Security (tool)
Gary D. Gregory (remediation developer)

References:

https://commons.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-119078

