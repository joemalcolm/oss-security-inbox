X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/08/14/4
Message-ID: <3081339.jO4PGzo31U@debian>
Date: Sun, 14 Aug 2016 21:24:49 +0200
From: Tim Rühsen <tim.ruehsen@....de>
To: bug-wget@....org
Cc: "Misra, Deapesh" <dmisra@...isign.com>, "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>, "dawid@...alhackers.com" <dawid@...alhackers.com>
Subject: Re: [Bug-wget] CVE Request - Gnu Wget 1.17 - Design Error Vulnerability
Content-Type: text/plain; charset=utf-8

Hi,

here is a patch to limit the file modes to u+rw for temp. downloaded files.

Not sure if your proof of concept still works or not - but it seems a good 
thing anyways.

Regards, Tim

View attachment "0001-Limit-file-mode-to-u-rw-on-temp.-downloaded-files.patch" of type "text/x-patch" (1811 bytes)

Download attachment "signature.asc" of type "application/pgp-signature" (802 bytes)
