X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/03/30/2
Message-ID: <0ab0448134c222126b15f32246bc73d308836933.camel@doppel-helix.eu>
Date: Sun, 29 Mar 2020 22:56:10 +0200
From: Matthias Bläsing <mblaesing@...pel-helix.eu>
To: dev@...beans.apache.org, oss-security@...ts.openwall.com,  security@...che.org
Subject: [CVE-2019-17561] "Apache NetBeans" autoupdate system does not fully validate code signatures.
Content-Type: text/plain; charset=utf-8

CVE-ID
------
CVE-2019-17561

Summary
-------
The "Apache NetBeans" autoupdate system does not fully validate
code signatures.

Versions Affected: 
------------------
- All Apache NetBeans versions up to and including 11.2
- NetBeans releases before the Apache transition started may be
  also affected

Description:
------------
The "Apache NetBeans" autoupdate system does not fully validate
code signatures. An attacker could modify the downloaded nbm and
include additional code.

Mitigation:
-----------
- Disable autoupdates
- Install only plugins from trusted sources and validate the
  downloads by checking signatures and/or comparing checksums
  from trusted sources
- Update to NetBeans 11.3 by downloading the release, verifying the
  signature and manually installing it

Credit:
-------
The investigation was triggered by a proof-of-concept submitted by
Emilian Bold

Download attachment "signature.asc" of type "application/pgp-signature" (834 bytes)
