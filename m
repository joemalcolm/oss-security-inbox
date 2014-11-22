X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/22/5
Message-Id: <201411221706.19838.tmb@65535.com>
Date: Sat, 22 Nov 2014 17:06:02 +0000
From: Tim Brown <tmb@...35.com>
To: oss-security@...ts.openwall.com
Subject: Running Java across a privilege boundry
Content-Type: text/plain; charset=utf-8

All,

Does anyone know of any obvious cases where Java is executed across a 
privilege boundary? I'm specifically thinking of cases where it might be 
executed via sudo, via another set[ug]id binary or where it gets called from 
an untrusted working directory i.e. one not owned by the calling user? FWIW, 
I'm looking at openjdk as it is distributed by various F/OSS distros which is 
why I'm emailing this list in particular.

Tim
-- 
Tim Brown
<mailto:tmb@...35.com>

Download attachment "signature.asc " of type "application/pgp-signature" (820 bytes)
