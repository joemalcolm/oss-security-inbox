X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2701" "Wednesday" "18" "November" "2015" "12:15:41" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151118171541.3A12B6C0188@smtpvmsrv1.mitre.org>" "61" "[oss-security] Re: CVE request for path traversal / info leak bug in Spiffy web server" nil nil nil "11" "2015111817:15:41" "[oss-security] Re: CVE request for path traversal / info leak bug in Spiffy web server" (number mark "U       cve-assign@m Nov 18   61/2701  " thread-indent "\"[oss-security] Re: CVE request for path traversal / info leak bug in Spiffy web server\"\n") "<20151117165117.GB2631@more-magic.net>" ("<20151117165117.GB2631@more-magic.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5210 invoked by uid 550); 18 Nov 2015 17:15:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5181 invoked from network); 18 Nov 2015 17:15:52 -0000
From: cve-assign@mitre.org
To: peter@more-magic.net
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20151117165117.GB2631@more-magic.net>
Message-Id: <20151118171541.3A12B6C0188@smtpvmsrv1.mitre.org>
Date: Wed, 18 Nov 2015 12:15:41 -0500 (EST)
Subject: [oss-security] Re: CVE request for path traversal / info leak bug in Spiffy web server

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> http://lists.gnu.org/archive/html/chicken-announce/2015-11/msg00000.html

> if you are using awful,
> chickadee, pastiche, qwiki, websockets or any other egg that uses Spiffy
> as HTTP server, your server is vulnerable as well.

> Spiffy 5.4 eliminates the
> vulnerability without requiring the fix for the CHICKEN core.

Use CVE-2015-8235 for the Spiffy vulnerability.


> The unfortunate cause of this is that some CHICKEN core
> procedures are misbehaving: when passed a file that starts with a
> backslash, some path manipulation procedures incorrectly
> *replace* the backslash with a slash. This has the effect of
> injecting a path separator into a path component that was
> supposed to be "atomic". This results in the path component
> being reinterpretated as two components.
> 
> The issue with the CHICKEN core procedures has been addressed by
> edd4926bb4f4c97760a0e03b0d0e8210398fe967 in the git repository, but it
> is not in any stable release yet.
> 
> http://code.call-cc.org/cgi-bin/gitweb.cgi?p=chicken-core.git;a=commit;h=edd4926bb4f4c97760a0e03b0d0e8210398fe967

If this is a CHICKEN core vulnerability, it needs a separate CVE ID.
The description above -- especially the 'supposed to be "atomic"'
comment -- suggests that the code is unambiguously wrong, but the
commit message presents the issue differently. Also, it appears that
introducing '/' characters into strings is a general problem for any
program that prohibits only '/' characters in user-supplied filenames
(e.g., because the program, for whatever reason, can only be used on
UNIX platforms). Is there a rationale for not considering this a
CHICKEN vulnerability?

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWTLHmAAoJEL54rhJi8gl5sVQP/RNAF0urGXCKfGnigPmyHtDK
7hDILbfND4iaMAS+o3avt+Nhfml1MuLMKwRWp31uHaAGnglbIQWp6eMC2JOlSSci
Q3g7QsV4s/x7FMvBXrvv0jLDkxJpL8mtCZ8pah9qXPr5CLr6KZzA499NvoUVlyqb
5c5kL8ERmrm0mmHgRAyt8hcb4Zv6wuzOCGBwmzhVLDe+rx7Nr68WBL1oJdcBzfJE
tYuV4RwF/iqyxfRKa5xxEkirawdiGRMo3D0MRVIyuaJoj70Cmy2pWJjChi0mgGfV
hNLREKlg60e7NXWYdtzAJE9w4KkM/emHdFLth9JNGr9AryLu32VTdqJQ9E9JKiK5
+veMNE4U2TzsKNqUTx1Li2UnogLhSNlO/ZetujG76QC97qBYfrFpiMIntf/kyox1
5IrhOAjZohUoH07Rm0bF6HXiVvteOvJg9NJAymFc7GdAZJvYuNfIsV3rFJNl2gHI
ybAVNlNApmuiOXh+umvCzAqUi3flaNev6Xuti98rbqi3aaxutCSwdS7xnWmvSaSy
HDNFVELLcyqSrTAI1P8StFHlV4FR4zJzq30T5N/aGfl+obMmLDpVpNbNVChSzdfU
x2te+gBcM7lZjKM8QOjqogcVSvUUPHQ9cvAtfmjCgH1IGigBmaejtBW1gzELykIp
nqmUX0Ef4QyYg8ylidBx
=u0rD
-----END PGP SIGNATURE-----
