X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1798" "Friday" "18" "September" "2015" "15:08:42" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150918190842.C25B452E292@smtpvbsrv1.mitre.org>" "41" "[oss-security] Re: CVE request - ldapauth-fork versions < 2.3.3 are vulnerable to ldap injection." nil nil nil "9" "2015091819:08:42" "[oss-security] Re: CVE request - ldapauth-fork versions < 2.3.3 are vulnerable to ldap injection." (number mark "U       cve-assign@m Sep 18   41/1798  " thread-indent "\"[oss-security] Re: CVE request - ldapauth-fork versions < 2.3.3 are vulnerable to ldap injection.\"\n") "<CAAYo3BtL5AV6HfKow3XK7ZFx9mFjCvkPJ=zcNUcUnL13sFqfug@mail.gmail.com>" ("<CAAYo3BtL5AV6HfKow3XK7ZFx9mFjCvkPJ=zcNUcUnL13sFqfug@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3767 invoked by uid 550); 18 Sep 2015 19:08:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3746 invoked from network); 18 Sep 2015 19:08:54 -0000
In-Reply-To: <CAAYo3BtL5AV6HfKow3XK7ZFx9mFjCvkPJ=zcNUcUnL13sFqfug@mail.gmail.com>
Message-Id: <20150918190842.C25B452E292@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Fri, 18 Sep 2015 15:08:42 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request - ldapauth-fork versions < 2.3.3 are vulnerable to ldap injection.
To: dblack@atlassian.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://github.com/vesse/node-ldapauth-fork/issues/21
> https://github.com/vesse/node-ldapauth-fork/commit/3feea43e243698bcaeffa904a7324f4d96df60e4

Use CVE-2015-7294.

The existence of a fork does not, by itself, lead to use of multiple CVE IDs.
The CVE ID is for the vulnerability in the shared codebase, regardless of the
product names in which that codebase is used.

https://github.com/vesse/node-ldapauth-fork/issues/21#issuecomment-108186158
has comments from the vendor about possible mitigating factors. Given
those comments, is the most straightforward threat that the attacker
may be able to arrange for a search result to be exactly one username,
and may not know the complete username in advance but may know the
password in advance?

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJV/GBEAAoJEL54rhJi8gl5qTkQALTFcRFrbVujYJ0j5F5U7eez
VTjP+3aTDRicGNy1+SCXQr8Txg7RdfA8YuJ3n+8k6uBdZAIHRJb6q8SPHRwLq/c2
LISeI7kPaQuOc0MaOAMRKCNyp1WkA0KnDqixSUe27UjY5wTaDcMaoQ7xGAws+2vp
Gh4jL9XtTbj3V0A1MrL5flFQ1VwgX6IhKFCsPkBxaWQgOhdHbROe4TQ1u7gPwfhf
TRLXnGEbwJa4rEPKWimUkZMsbDv+t024C0HbtsphGoeXno4K1uZDs8arHqk8Cg7M
Ub+051LfB90S/R0Xv7IrfbGSZzp8r0VxZTuVvrvtMCNjGb8SvRekk6GzHtlfLLfw
5ukBA3u6p2z8nqhgArmbUnlJXFzWfSe8ET14JaCVzakr20OdeK8e1k6ywOZ7dukT
VMqPSPmZ0F00uhdeL5Ft0FoOwim/XaSSYtvLms6lOmWqUqSUAiyKi5qQLFX4UIV7
I/uvFui0uHFs7nHKRurFmcXy9vs09F0h8KM3BqlJ4wibh5AJLaKyiblFI23fay4h
JFGO3L6/mYexY2mh3udPpc/nzCaEs2TueVU39SPZU/l+bAJ+rSP28LW+kXAyDIeF
zuxuajTc+1CyPjfgp2Amrq7UOLfhaXzkB1AFg+xWLo9HbguuJ6jFhbieu7vys6f7
GRV+0Rz2PIWMV/uTW6VS
=bgV0
-----END PGP SIGNATURE-----
