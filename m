X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/06/11/3
Message-ID: <20130611135539.GA17091@kludge.henri.nerv.fi>
Date: Tue, 11 Jun 2013 16:55:39 +0300
From: Henri Salo <henri@...v.fi>
To: oss-security@...ts.openwall.com
Cc: vnd@...h.net, security@...dpress.org
Subject: CVE request: WordPress 3.5.1 denial of service vulnerability
Content-Type: text/plain; charset=utf-8

There is denial of service vulnerability (CWE-400) in WordPress 3.5.1. Could you
assign CVE identifier, thanks.

Advisory URL: https://vndh.net/note:wordpress-351-denial-service
PoC: https://vndh.net/snippet:wordpress-351-denial-service:wordpress-py
Status: Reported to vendor by founder. No reply.
Reproduced: https://github.com/wpscanteam/wpscan/issues/219
Note: "Exploitation of this vulnerability is possible only when there is at
least one password protected post on the blog."

I have no idea how many uses password protected blog posts and there isn't easy
way to find out. This might also affect multisite installations. There is patch
in advisory, which I did not verify.

---
Henri Salo

Download attachment "signature.asc" of type "application/pgp-signature" (199 bytes)
