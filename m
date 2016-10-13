X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1237" "Thursday" "13" "October" "2016" "12:12:27" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161013161227.DCB286C4FDC@smtpvmsrv1.mitre.org>" "34" "[oss-security] Re: CVE request: kernel - local DoS due to a page lock order bug in the XFS seek hole/data implementation" nil nil nil "10" "2016101316:12:27" "[oss-security] Re: CVE request: kernel - local DoS due to a page lock order bug in the XFS seek hole/data implementation" (number mark "U       cve-assign@m Oct 13   34/1237  " thread-indent "\"[oss-security] Re: CVE request: kernel - local DoS due to a page lock order bug in the XFS seek hole/data implementation\"\n") "<1215560150.734283.1476367628231.JavaMail.zimbra@redhat.com>" ("<1215560150.734283.1476367628231.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3674 invoked by uid 550); 13 Oct 2016 16:12:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3653 invoked from network); 13 Oct 2016 16:12:39 -0000
From: cve-assign@mitre.org
To: caiqian@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <1215560150.734283.1476367628231.JavaMail.zimbra@redhat.com>
Message-Id: <20161013161227.DCB286C4FDC@smtpvmsrv1.mitre.org>
Date: Thu, 13 Oct 2016 12:12:27 -0400 (EDT)
Subject: [oss-security] Re: CVE request: kernel - local DoS due to a page lock order bug in the XFS seek hole/data implementation

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> trinity syscall fuzzer

> always trigger a deadlock/hang at the fdatasync() syscall

> diagnosed as a page lock order bug
> in the XFS seek hole/data implementation

Use CVE-2016-8660.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX/7HXAAoJEHb/MwWLVhi2L14QALYZjH8BXahbcIAhmFqjaZoI
/OuQXX01GrInM0Oiy0gOAHSicfuEIZciBafpwbvFrYWqEulZaEn8QgfYnpObMPy6
RTchZX02eqPE12o8jp2C/nL09TW5iAaseduinfmWsq0A4AtEfGMVX6mSpsYUBkvi
MCkdvo3zceAb3CFpZspF3Irls4yqs6Hcn3doGp0meFc/7ICg1HMqKT/3XPLWYacd
QIHYL6PrC1jYp2TDWhujQWdDz0I9t2i8d6sasBAONoOoeb7fgxQsExkM988N6USt
fBXdFO2oFXAnVsYZx/b93GYeJ4UeubB9Bnecm9C1XcunFCAnPXwVOHX6b2vTscmf
3O9eLwn0jTpF+1Vfl4o9KgoKnZknSBgFiFxZ7/IeCNQOpfFm6XVkl5pL/RomTYEI
nthYgXwu9yXcM/LWbSgMIIQxeUvGob2+qToL14iKOoCs4BX7dhUHBTL+Ss8x46D6
Ad4bJOuS0bS0q/PdGbWcMDedZS0NdH5+/pxTkfL36sr6iHqHU8mrrWtXu3Nf6BVu
SCoQYI8f1YzclBNw4wHuWZcIPkp2g7XPkyF7F5xbQjoNQ1/7eKQbZsAkTWkQT5DZ
OF7H91Ljf0fnzLBH8NTNleRRiZY8OQOB0H+9wCvWxrmv0TbsXUjn+WTEEnorLTyG
RiMSBIazOttES1wnrCmd
=4qj4
-----END PGP SIGNATURE-----
