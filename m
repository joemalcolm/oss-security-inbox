X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/09/08/6
Message-ID: <Pine.GSO.4.51.0909081256490.13179@faron.mitre.org>
Date: Tue, 8 Sep 2009 13:00:00 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE for recent cyrus-imap issue
Content-Type: text/plain; charset=utf-8


CVE-2009-2628 has been clearly and publicly associated with VU#444513
which is for a VMware AVI codec heap overflow.  So it's not for cyrus-imap
at all.  (This may have been a typo somewhere down the line, and it's not
"live"  on the CVE site which didn't help things.)

As Nico said, CVE-2009-2632 appears to be the proper ID for the cyrus-imap
problem.  I am associating it with the SIEVE component overflow as
released in DEBIAN:DSA-1881.  If there's another bug floating around,
we'll have to use a different CVE.

- Steve
