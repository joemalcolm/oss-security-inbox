X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/05/06/1
Message-ID: <20130506060617.GA27494@kludge.henri.nerv.fi>
Date: Mon, 6 May 2013 09:06:17 +0300
From: Henri Salo <henri@...v.fi>
To: oss-security@...ts.openwall.com
Cc: Elites0ft <admin@...tes0ft.com>
Subject: CVE request: WordPress advanced-xml-reader XXE
Content-Type: text/plain; charset=utf-8

Can I get 2013 CVE for issue:

Advanced XML Reader Plugin for WordPress contains an XXE (Xml eXternal Entity)
injection flaw that is triggered during the parsing of XML data. The issue is
due to an incorrectly configured XML parser accepting XML external entities from
an untrusted source. By sending specially crafted XML data, a remote attacker
can gain access to arbitrary files.

http://osvdb.org/92904

This issue is not yet fixed.

---
Henri Salo

Download attachment "signature.asc" of type "application/pgp-signature" (199 bytes)
