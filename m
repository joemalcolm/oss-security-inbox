X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/08/17/9
Message-ID: <CAKG8Do5ebwd1h2XAEYntLh0k4oes5pLRR0UOw2nEVwNFLhk3dg@mail.gmail.com>
Date: Wed, 17 Aug 2016 19:30:10 +0200
From: Cedric Buissart <cbuissar@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2016-5404 freeipa: Insufficient privileges check in certificate revocation
Content-Type: text/plain; charset=utf-8

Hi,

This is to disclose the following CVE:

CVE-2016-5404 freeipa: Insufficient privileges check in certificate
revocation

Description :
An insufficient permission check issue was found in the way IPA server
treats certificate revocation requests. An attacker logged in with the
'retrieve certificate' permission enabled could use this flaw to revoke
certificates, possibly triggering a denial of service attack.

All versions are affected.

Patches can be found on the corresponding Red Hat Bugzilla:
https://bugzilla.redhat.com/show_bug.cgi?id=CVE-2016-5404

Impact: Moderate
CVSS3 scoring : 4.3 CVSS:3.0/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:L

Reported by: Fraser Tweedale (Red Hat)

Best Regards,

-- 
Cedric Buissart,
Product Security

