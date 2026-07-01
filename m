X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/01/8
Message-ID: <a102fc94-7a31-4b01-a2c9-469e85960b97@oracle.com>
Date: Wed, 1 Jul 2026 09:53:22 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Fwd: libevent 2.1.13-stable contains several security fixes
Content-Type: text/plain; charset=utf-8

[None of the GHSA's list CVE id's at this time.  -alan-]


-------- Forwarded Message --------
Subject: libevent 2.1.13-stable
Date: Wed, 1 Jul 2026 05:31:52 -0700
From: Kevin Bowling <kevin.bowling@...009.com>
To: distributions@...ts.linux.dev

https://github.com/libevent/libevent/releases/tag/release-2.1.13-stable
(and https://github.com/libevent/libevent/releases/tag/release-2.2.2-alpha)
are primarily security releases and a re-priming the release process.

Changes in version 2.1.13-stable (01 July 2026)

This release contains several security fixes, affecting users of the
following modules: evbuffer, bufferevent, evtag, evrpc, evdns, evhttp.
If you have a program that uses one of those modules,
or if you distribute libevent, you should upgrade.

Additionally, this release backports some small modernizations to
the libevent codebase, to aid in compiling with the compilers
released over the last few years.

Security Fixes (evtag, evrpc):

Fix an out-of-bounds read in decode_tag_internal.
(Found by @Brubbish. GHSA-fj29-64w6-73h6)
Fix an integer overflow in evtag_unmarshal_header.
(Found by @Brubbish. GHSA-45c6-qx49-89m8)

Security Fixes (evhttp):

Discard HTTP trailers, to prevent header smuggling attacks.
(Found by @sebastianosrt. GHSA-2gmv-p5m7-98p6)
Restrict HTTP header parsing to prevent request smuggling.
(Originally reported by @xclow3n; and then by @kodareef5,
@nstaller0490, @AsafMeizneer, and @yaotushaozhu.
GHSA-q39v-w2g7-gr8j.)
Treat CRLF and %00 more strictly in HTTP headers, to prevent
parser mismatch attacks.
(Reported by @xclow3n and @AsafMeizner. See GHSA-q39v-w2g7-gr8j,
GHSA-jcwh-pvf2-73p2.)
Fix a heap out-of-bound write that could occur when using
AF_UNIX sockets and compiling libevent with -DNDEBUG.
(Found by @mat-mo. GHSA-cvq5-vrvr-j338)

Security fixes (evbuffer, bufferevent):

Fixed a dangling pointer in evbuffer_add_reference.
(Found by @DarkaMaul. GHSA-c2pj-cg4r-88c8)

Security fixes (evdns):

Fix an out-of-bounds write in dnsname_to_labels
when building a DNS response of 2^16 bytes.
(Found by @sectroyer. GHSA-58rx-7448-jw47)

Security fixes (example code):

Avoid using strcpy() in sample/http-server.c.
(Reported by @sectroyer. GHSA-5rgj-2c58-7jrc.)

Other fixes:

Backport fixes for numerous compiler warnings.
Backport fixes for compilation with openssl 3 and later.

Regards,
Kevin Bowling (co-maintainer)

