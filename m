X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/22/12
Message-ID: <20261022131502.1fd3dc3d@hboeck.de>
Date: Thu, 22 Oct 2026 13:15:02 +0200
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: Comodo AAA Services Root and S/MIME
Content-Type: text/plain; charset=utf-8

Hi,

Deep in the eMudhra discussion thread, Solar Designer pointed out that
the Comodo AAA Services Root, which cross-signed the vulnerable eMudhra
certs, is still part of NSS:
https://www.openwall.com/lists/oss-security/2026/10/21/4
And Jakub pointed out that the web trust bit has been turned off:
https://www.openwall.com/lists/oss-security/2026/10/21/31


I was unsure what exactly that means, and reached out to someone from
Mozilla. Here's what I learned: It has "CKA_TRUST_EMAIL_PROTECTION" set,
which means it is still trusted for S/MIME (in Thunderbird):
https://searchfox.org/firefox-main/source/security/nss/lib/ckfw/builtins/certdata.txt#643

The eMudhra intermediates should not be able to sign S/MIME
certificates. (They have an EKU extension for TLS server+client.) That
is: if every S/MIME implementation out there properly checks that.

My interest in S/MIME is limited, I'm probably not gonna investigate
this much further. If anyone wants to look into this, the following
questions may be a good starting point:

* Are there other e-mail applications that source the NSS/Thunderbird
  cert store as their trust anchor for S/MIME?

* Do they properly check X.509 paths and validate everything, or are
  there ones that would accept a web/TLS intermediate to sign an S/MIME
  cert?

-- 
Hanno Böck
https://hboeck.de/
