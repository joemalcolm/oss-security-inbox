X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/05/14/1
Message-ID: <5372F9AE.90509@redhat.com>
Date: Wed, 14 May 2014 15:05:50 +1000
From: Murray McAllister <mmcallis@...hat.com>
To: oss-security@...ts.openwall.com
CC: 736066@...s.debian.org
Subject: A number of EncFS issues
Content-Type: text/plain; charset=utf-8

Hi,

https://defuse.ca/audits/encfs.htm discusses a number of issues in EncFS:

"Same Key Used for Encryption and Authentication"

"Stream Cipher Used to Encrypt Last File Block"

"Generating Block IV by XORing Block Number"

"File Holes are Not Authenticated"

"MACs Not Compared in Constant Time"

"64-bit MACs"

"Editing Configuration File Disables MACs"

There are currently no patches.

I am not familiar enough with cryptography to know if they need CVEs, or 
are considered hardening (the last one sounds CVE worthy though)

Cheers,

--
Murray McAllister / Red Hat Security Response Team

https://bugzilla.redhat.com/show_bug.cgi?id=1097537
