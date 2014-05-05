X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/05/05/5
Message-Id: <201405050344.s453ibX1000717@linus.mitre.org>
Date: Sun, 4 May 2014 23:44:37 -0400 (EDT)
From: cve-assign@...re.org
To: oss-security@...ts.openwall.com, argos83@...il.com
Cc: cve-assign@...re.org
Subject: Re: Erlang OTP's httpc module Denial of Service
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

>   I've reported this issue to erlang-bugs mailing list:
> http://erlang.org/pipermail/erlang-bugs/2014-May/004369.html

> Using httpc to connect to a malicious server can cause the system to run
> out of memory and crash.

There doesn't seem to be a vendor response yet. Also, it seems that
this might be described as a process crash, not a "system" crash.

Failure of client code to consider resource consumption, including
resources consumed only when facing a malicious server, does not
always result in a CVE assignment. For example, client application
code isn't always responsible for deciding when a server seems to be
sending it an infinitely large file. One case in which a CVE can be
assigned is a client that expresses specific goals for abandoning
server communication based on elapsed time, data rate, amount of data,
etc., but has an implementation error in achieving those goals.

The main question at this point is whether an exception has to be made
for Erlang. In other words, because of a "reliability model" or
something similar in Erlang, is it always a vulnerability if an Erlang
module lacks reasonable restrictions on resource consumption?

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJTZwjYAAoJEKllVAevmvmse6AIAMIk/SEd3QPfkELk9W6cTIU/
XLHOw+1/cPW3V8RMozO5gyWCOfSIUEPr/L9VnvzSswiE5iwvuOyE6IGihvp1S18U
N4TomxN9HGy18YAhZKmhv/zgZsJJkEMqOBIRroL/qjAmBNwY/M7YnikBhXJiu/9n
oIAxPRBUNEjU1Hfx8SjDgssZyCNrLM/n7M7WUEoHfTlXZQFylzJ699RCMRyRDCG7
vxD8c9zkMm1yJI+sa3CJZfS3k64Zn40L5rFzvTIMu8K1ZOldFuFm+MVP+rqzqj+p
ql2ZX8IcV5Im+CWMXzhUnT2aeV5baq0ECKh2FJPYNH7a9VKjBm9wZbQpowj6jGA=
=Wlpm
-----END PGP SIGNATURE-----
