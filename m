X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/01/02/3
Message-ID: <52C52013.3060608@redhat.com>
Date: Thu, 02 Jan 2014 09:15:15 +0100
From: Florian Weimer <fweimer@...hat.com>
To: oss-security@...ts.openwall.com
CC: security@....org
Subject: kwallet crypto misuse
Content-Type: text/plain; charset=utf-8

I just noticed this is now public:

<http://gaganpreet.in/blog/2013/07/24/kwallet-security-analysis/>

Short summary: kwallet uses Blowfish to encrypt its password store, and 
despite an attempt at implementing CBC mode (in a file called cbc.cc no 
less), it's actually ECB mode.  UTF-16 encoding combined with Blowfish's 
64 bit block size means there are just four password characters per 
block.  Encryption is convergent as well.  This may enable recovery of 
passwords through codebook attacks.

Should we treat this as a minor vulnerability?

-- 
Florian Weimer / Red Hat Product Security Team
