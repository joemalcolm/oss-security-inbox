X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/05/24/7
Message-ID: <0A7B7D99-48F7-44B2-9E0A-C18C9EB9E2FA@oracle.com>
Date: Tue, 24 May 2022 17:10:40 +0000
From: John Haxby <john.haxby@...cle.com>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: CVE-2022-21499: trivial lockdown break
Content-Type: text/plain; charset=utf-8

Hello All,

CVE-2022-21499: trivial lockdown break

We recently discovered that it is trivial to break lockdown (and secureboot) using the kernel debugger: you can use the debugger to write zero into a location of your choice ...

I originally posted this with a preliminary patch on linux-distros.   Since then we have developed a better patch that takes into account the differences between integrity and confidentiality modes.

The updated patch will be available in the Linux mainline kernel at almost the same time as I'm sending this email.  I'll reply with the commit ID as soon as I have it.   If anyone wants the simpler patch that I posted to linux-bistros, please let me know, but I would encourage you to take the full patch.

jch

Download attachment "signature.asc" of type "application/pgp-signature" (229 bytes)
