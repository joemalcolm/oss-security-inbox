X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/03/30/1
Message-ID: <24afb6093cb0de9e0f652ed5252e6aa97f34fd30.camel@doppel-helix.eu>
Date: Sun, 29 Mar 2020 22:52:38 +0200
From: Matthias Bläsing <mblaesing@...pel-helix.eu>
To: dev@...beans.apache.org, announce@...beans.apache.org, security@...che.org,  oss-security@...ts.openwall.com
Subject: [CVE-2019-17560] "Apache NetBeans" autoupdate cert validation
Content-Type: text/plain; charset=utf-8

CVE-ID
------
CVE-2019-17560

Summary
-------
The "Apache NetBeans" autoupdate system does not validate SSL 
certificates and hostnames for https based downloads.

Versions Affected: 
------------------
- All Apache NetBeans versions up to and including 11.2
- NetBeans releases before the Apache transition started may be
  also affected

Description:
------------
The "Apache NetBeans" autoupdate system does not validate SSL 
certificates and hostnames for https based downloads. This allows
an attacker to intercept downloads of autoupdates and modify the
download, potentially injecting malicious code.

Mitigation:
-----------
- Disable autoupdates
- Manually download plugins to installed with a web browser
- Update to NetBeans 11.3 by downloading the release, verifying the
  signature and manually installing it

Credit:
-------
The investigation was triggered by a proof-of-concept submitted by
Emilian Bold

Download attachment "signature.asc" of type "application/pgp-signature" (834 bytes)
