X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/08/1
Message-ID: <CAAbv5GYjCWdvALZHZ5B-ep4p7tvMDYrQWKexjM2fLM+htGyVGg@mail.gmail.com>
Date: Mon, 8 Jun 2026 02:15:02 -0400
From: Andrew Tridgell <tridge60@...il.com>
To: oss-security@...ts.openwall.com
Subject: rsync 3.4.4 released, regression fixes
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

I've released rsync 3.4.4 which has regression fixes for the rsync 3.4.3
security release. The release is available from https://rsync.samba.org/ -
it is not embargoed as it contains no new security issues, just fixes for
the regressions that 3.4.3 introduced.
As part of the release I have created 3.2.7 and 3.4.1 backport patch sets
to aid distros with LTS releases that use those versions. The backport
patch sets and their signatures are on https://rsync.samba.org/. For each
backport I have created two sets of patches:
 - one against the original release (so v3.2.7 and v3.4.1)
 - and another one against the last security update for easy addition to
existing security releases

I would also note that there will be a 3.5.0 rsync release soon with a lot
more security updates.

As part of the 3.5.0 release update I have created a
rsync-security@...ts.samba.org mailing list for anyone who is willing to do
testing of the 3.5.0 release. The idea is to try to reduce the chance of
more regressions by expanding the set of testers of this release. I have
seeded it with people who were involved in past rsync security issues. If
you want to join this list then the easiest way would be for you to be
vouched for by someone on the distros@...openwall.org list or someone else
I already trust.

My apologies for the regressions in the 3.4.3 release and I hope future
security updates for rsync will have less issues. The greatly expanded test
suite in rsync 3.5 combined with the rsync-security mailing list should
help.

Andrew Tridgell
rsync maintainer
-----BEGIN PGP SIGNATURE-----
Version: FlowCrypt Email Encryption 8.5.13
Comment: Seamlessly send and receive encrypted email

wsG5BAEBCgBtBYJqJl3lCRAbskmXqFNfb0UUAAAAAAAcACBzYWx0QG5vdGF0
aW9ucy5vcGVucGdwanMub3Jn8M9+D7RakZWFVKNLrCgGw69BM3jUlgbHvrx9
KQbWSH8WIQSf7xEtzhmg3H6ILLgbskmXqFNfbwAAmAcQAJ10haM7QtOQmpq5
62x0fCA+71a8PqhTH+YICs940EnthjY8WlkxSxzEXGgPpTLWcdQrbpgZvOdr
vwozmwNTSJRgfklKuWDNNttrwBa3KclaT7p3ymN5xNirU+I8yDN+Csh5CpUE
eeqvZrugqNNlipwDiyGhXntuy8NtVJU4w71MNAbXcV/MU/vzZ2kGml0GRXgr
d+6MXKon85mkMZJhRC48h/W90NTuc2BUKtkBVf3bYyzeqJtvS88Ar/iLA8/+
tj02z5tw/FOgGcrMU5t3KwAhiuzpXoo9uTPMim0Nupil2LiJeZNc+bHB4xKY
XlPOjveylZe+HYsGerwNOgN76bBlTebXiRR03MaGPiLNdwTx4QyE+6tdaFF4
VvwCjXLHursH5tX0Q0O9OgHVzeX++TGcmUi20ozgthVbPnW43sVxEV1w+XAN
oEuchE+akM0rt1qifPmwbd/qLCD7oV/784UTq8SCQ1jMOyA8emJbkRd5QLD0
VixSl7L1LRBoirWxiSQgzy5C7yFGgZB8MKa0T8eKjLi17w7WxtpwOlYuMDCS
miCLP3/tUIcd9TCYMLJ0BZWQv01DUUBu90UEnZT5yu2HQ2X0gYeP8xXK3j/9
/ABuDxEHQl19UQgKG6rOgQ93JssSRqvIgIBeW3v7pn1vm2B0mnJ61gT/xtqw
5EmzaYXc
=nOpH
-----END PGP SIGNATURE-----
