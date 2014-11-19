X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/19/6
Message-ID: <546C3AA0.4040301@redhat.com>
Date: Tue, 18 Nov 2014 23:37:20 -0700
From: Kurt Seifried <kseifried@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: RE: [security-vendor] Re: Fuzzing findings (and maybe CVE requests) - Image/GraphicsMagick, elfutils, GIMP, gdk-pixbuf, file, ndisasm, less
Content-Type: text/plain; charset=utf-8

Speaking of fuzzing so that clamav issue, was triggered by a file that
existed in public since 2010 or so (at least that's what virustotal had
for the first submission date). So you'd think based on what people use
clamav for it would have been heavily fuzzed by now (scanning all sorts
of random/malicious input) but I guess people don't report stuff upstream.

Perhaps if we could get people to report crashes in stuff like this more
reliably that would be a good start "your program crashed when I
processed this file, here's a copy of the file, thanks" (assuming the
file doesn't contain sensitive info of course).

-- 
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993


Download attachment "signature.asc" of type "application/pgp-signature" (820 bytes)
