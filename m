X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2964" "Monday" "20" "April" "2015" "12:26:29" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150420162629.CBFB4B2E066@smtpvbsrv1.mitre.org>" "62" "[oss-security] Re: redcarpet <=3.2.2 (and related ruby gems) allow for possible XSS via autolinking of untrusted markdown" nil nil nil "4" "2015042016:26:29" "[oss-security] Re: redcarpet <=3.2.2 (and related ruby gems) allow for possible XSS via autolinking of untrusted markdown" (number mark "        cve-assign@m Apr 20   62/2964  " thread-indent "\"[oss-security] Re: redcarpet <=3.2.2 (and related ruby gems) allow for possible XSS via autolinking of untrusted markdown\"\n") "<CALPTtNXNV1db_gPgPZgwvFWGReUZiBDouXE+CoWa1au1h1xJbg@mail.gmail.com>" ("<CALPTtNXNV1db_gPgPZgwvFWGReUZiBDouXE+CoWa1au1h1xJbg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3351 invoked by uid 550); 20 Apr 2015 16:26:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3295 invoked from network); 20 Apr 2015 16:26:41 -0000
In-Reply-To: <CALPTtNXNV1db_gPgPZgwvFWGReUZiBDouXE+CoWa1au1h1xJbg@mail.gmail.com>
Message-Id: <20150420162629.CBFB4B2E066@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Mon, 20 Apr 2015 12:26:29 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: redcarpet <=3.2.2 (and related ruby gems) allow for possible XSS via autolinking of untrusted markdown
To: reed@reedloden.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> https://github.com/vmg/redcarpet/commit/e5a10516d07114d582d13b9125b733008c61c242
> http://danlec.com/blog/bug-in-sundown-and-redcarpet
> https://hackerone.com/reports/46916

This appears to be a complex situation because of the various codebase
relationships, including the relationship between the
Sundown/Redcarpet codebase and the site-specific codebase for the
hackerone.com website.

There's no doubt that there was an interesting bug found (i.e., the
"rewind into previous inline" bug) and that the bug had a real-world
impact on some Redcarpet users. However, that's not necessarily enough
to have a CVE ID.

One issue in question is "in the meantime we've hardened our HTML
postprocessor, which also eliminates this bug" in the
https://hackerone.com/reports/46916#activity-357722 post. This is
perhaps similar to what was mentioned about remarkable in the
http://openwall.com/lists/oss-security/2015/04/10/10 post.

Basically, we're not convinced that anyone should have been relying on
Redcarpet as having the security property that it would prevent XSS
attacks. In that sense, the "rewind into previous inline" bug would
not be categorized as a vulnerability. Apparently hackerone.com had an
unspecified HTML postprocessor that might be interpreted as having
either some responsibility or all responsibility for preventing XSS
attacks. Similarly, in the case of a PHP-based site elsewhere, the
overall site design might include both a Markdown implementation and
also HTML Purifier. Also,
https://github.com/vmg/redcarpet/blob/master/CHANGELOG.md didn't
announce 3.2.3 as a security update. We realize that Redcarpet has a
:filter_html flag, but the level of focus toward addressing XSS seems
small compared to something like HTML Purifier, suggesting different
design goals.

So, at this point, the available information suggests categorizing
https://hackerone.com/reports/46916 as a site-specific problem on
hackerone.com and on other sites that were relying on Redcarpet in
ways that went beyond the Redcarpet design goals. If there is other
information suggesting that the only reasonable interpretation is that
it is a Redcarpet vulnerability that must have a CVE assigned against
the Sundown/Redcarpet codebase, please let us know.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVNShAAAoJEKllVAevmvmskmQH/1t19aXHmosS8wHgXMwAqJjj
X8NcrZSscNZ3uEM8x5MsigwtoBYOJNGHsQjy06dtse/bNi8EtNiK+e0Kjq6TKMTL
+39dI728sBPgstqpSWl8+kKiwe4qysdL/SP+aCp+PO7P36eOpaFGMtg2OE6T1YmO
9cBbR5NzcNTsBG+6+EuHcPm3JJPgZpim5M3tnHc4kO1oq9nC5mlx86f8mPvQZG2c
EBi+j5sSt3WodHecTxu8LkCjWdVk0TBkPhx4GuvlyXdt/f/cXxAbLvx4JpM3/DHd
efBs+nApiB6ycA7oxZohBEneZaGXL8fgrD+hhQioyZgoth8KcRovV+fqDHLSIl8=
=nvFY
-----END PGP SIGNATURE-----
