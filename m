X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5117" "Saturday" "28" "November" "2015" "23:01:03" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151129040103.E8DA86C018F@smtpvmsrv1.mitre.org>" "122" "[oss-security] Re: Heap Overflow in PCRE" "^Cc:" nil nil "11" "2015112904:01:03" "[oss-security] Re: Heap Overflow in PCRE" (number mark "        cve-assign@m Nov 28  122/5117  " thread-indent "\"[oss-security] Re: Heap Overflow in PCRE\"\n") "<20151124113343.4382bed3@pc1>" ("<20151124113343.4382bed3@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21998 invoked by uid 550); 29 Nov 2015 04:01:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21960 invoked from network); 29 Nov 2015 04:01:16 -0000
In-Reply-To: <20151124113343.4382bed3@pc1>
Message-Id: <20151129040103.E8DA86C018F@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Sat, 28 Nov 2015 23:01:03 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Heap Overflow in PCRE
To: hanno@hboeck.de

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

This is a somewhat complex situation for several reasons, including
previously assigned CVE IDs that may be related to duplicate
discoveries, and the nature of the findings themselves.

Most PCRE findings have a requirement that the attacker is able to
provide an arbitrary regular expression in a way that crosses a
privilege boundary.
http://www.pcre.org/current/doc/html/pcre2pattern.html implies that
this is relevant to the PCRE security model, i.e., the reference to
"applications that allow their users to supply patterns." We've
mentioned this before in
http://www.openwall.com/lists/oss-security/2015/09/08/8 but we're
still unaware of any specific application that meets this requirement
(the closest we found was http://stackoverflow.com/questions/2371445).
Also, these PCRE problems are not the same as a "regex injection"
problem within an application (see IDS08-J on the
securecoding.cert.org web site); they are cases where the legitimate
user is supposed to know what a regular expression is, and is expected
to construct a useful one. Accordingly, CVE IDs might have little
practical value.

Because mitigating the CVEs is rarely necessary, it might be reasonable
to restrict CVE ID assignments to cases with certain types of impacts.

Another factor that is relevant here is that some PCRE CVEs have been
based on information that wasn't public at the time of CVE ID
assignments.

> https://blog.fuzzing-project.org/29-Heap-Overflow-in-PCRE.html

This report relates to the PCRE changelog:

   http://vcs.pcre.org/pcre/code/trunk/ChangeLog?view=markup

> Fuzzing the pcretest tool uncovered an input leading to a heap
> overflow in the function pcre_exec. This bug was found with
> the help of american fuzzy lop and address sanitizer.
> Upstream bug #1637

This seems to be changelog item 10 in 8.38.

> Apart from that a couple of other vulnerabilities found by
> other people have been fixed in this release:

> Heap overflow in compile_regex (bug #1667)
> Heap overflow in compile_regex (bug #1672)

Both of these seem to be changelog item 7 in 8.38.

> Stack overflow in compile_regex (bug #1515)

Another one from a similar time was bug #1503.

Although 8.38 has these fixed, it seems that they are earlier bugs
that were originally fixed in 8.36: 1503 is changelog item 19 in 8.36,
whereas 1515 is changelog item 20 in 8.36. MITRE happens to have
received multiple credible reports of discovering these issues. 1503
was assigned CVE-2015-2327 months ago, and 1515 was assigned
CVE-2015-2328 at the same time. These CVE IDs are used, at least, in:

  http://www.fortiguard.com/advisory/FG-VD-15-010/
  http://www.fortiguard.com/advisory/FG-VD-15-014/

Several other 8.38 changelog entries appear to meet an arbitrary
cutoff of impact specificity that might be reasonable for this type of
the-input-might-be-untrusted-but-usually-isn't scenario:

  3, 4, 5, 6, 8, 18, 21, 22, 23, 27, 28, 31, 36

28 is unlike the others. A possible threat model is that "pcregrep -q"
is called from a CGI script, and the attacker is able to provide a
binary file in an attempt to learn details about what the script is
looking for. (This isn't expected to be very common, but may be more
common than an attacker who is able to provide an arbitrary regular
expression.)

Finally, here are two other PCRE issues that have been discussed on
oss-security recently:

 - https://bugs.exim.org/show_bug.cgi?id=1537 (this is changelog item
   1 in 8.37)

 - https://bugs.php.net/bug.php?id=70345 [2015-08-25 11:10 UTC] says
   "the PCRE dev does not consider this a bug. So it probably hasn't
   been/won't be changed in PCRE."

We think what would be reasonable is for us to assign CVE IDs soon so
that there is coverage of all of the PCRE issues listed above, i.e.,

  8.38 changelog items:  3, 4, 5, 6, 7, 8, 10, 18, 21, 22, 23, 27, 28, 31, 36

  8.37 changelog item:  1

(It is possible that we may need to change the strategy for PCRE CVE
coverage in the future.) If there's something wrong -- especially if
1503 or 1515 wasn't fixed in 8.36 -- please let us know.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWWndbAAoJEL54rhJi8gl5Ki8QAMXLzwar3Bn+C8nCnU6WNgKg
QyeOOXjnDrXxUAFlw5SsMgKMecEPBLyXjav6Zr7d4b29VmvT3Y1lbiimXC1Funkd
dtT/UOlMmrWhcW8PvetbgS4YMc/YOIa+XDHoEka+fUafzEdXOQXilNH5xoMQJb0+
uoFNjrtoo/sXzG9tuuZ6NxGNsUrC3c/sdGboAImQWhFBG3pl98dHyJdIkURNVVaY
iYH+m+wDuija8tcq0U+sX7SKyh/gGOho07oYK7Cpe2grXQpbeEU+bhrTD4BL//SQ
f+hvXJMrdVUVdvd6/owMvDVOdGMN9WBq/+azRY3sN8de+nGxpNv3yy7NcDyScDQg
SUevQbp9WyPJWJOtvvB0Dsx9XL0EWgW0wMqBFx/35CtSxbgVwEJczd1T6sqDE3w7
6EUCmxirhjJFE+ppgr9Q17E4V5Jtsh3Wf7L+R8dVvRMMFmFvIjtqHmbAu9MkDukP
/trl//ApdrntKykhVxrkqROTmTS5OZX3nQ3G49VR+eAHwWXfHLIV09DXOi9YbEo6
efmaB1cLyN6C6vvLHewwytpFzLdjX9Mtd1mCaCETDCKd/m4ak425XHfQIVd9OOPv
gVsGSETPyI3wNyginhnqnUe9QY8ygI9Til9HSl58Q3zX3L+95ZGiTjICPagO1guL
MoiX6BkJiBSD+aCt3Olh
=HdYk
-----END PGP SIGNATURE-----
