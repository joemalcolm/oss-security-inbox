X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/03/17/4
Message-ID: <alpine.DEB.2.00.1403171504460.28147@tvnag.unkk.fr>
Date: Mon, 17 Mar 2014 15:16:12 +0100 (CET)
From: Daniel Stenberg <daniel@...x.se>
To: oss-security@...ts.openwall.com
Subject: CVE request: flaw in curl's Windows SSL backend
Content-Type: text/plain; charset=utf-8

Hi

I'd like to ask for a CVE for a newly discovered problem in curl's 
functionality that verifies server certificates. The problem is present in 
code only runnning on Windows when using the schannel SSL backend. It is very 
similar to the Mac-specific curl problem Apple registered CVE-2014-1263 for, 
but for another backend and platform.

I don't think it is a good idea to "pile up" another bug on an existing CVE so 
a new one is probably needed.

For this reason, I do not request this on distros@ or linux-distros@ since 
this problem does not affect any opensource distro. This is for an open source 
product executing on Windows.

We intend to announce the full details in sync the pending curl release on 
March 26.

-- 

  / daniel.haxx.se
