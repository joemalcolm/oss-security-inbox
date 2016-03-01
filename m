X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2679" "Tuesday" "1" "March" "2016" "16:16:55" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160301211655.454B672E02E@smtpvbsrv1.mitre.org>" "52" "[oss-security] Re: CVE's for SSLv2 support" "^Cc:" nil nil "3" "2016030121:16:55" "[oss-security] Re: CVE's for SSLv2 support" (number mark "        cve-assign@m Mar  1   52/2679  " thread-indent "\"[oss-security] Re: CVE's for SSLv2 support\"\n") "<CANO=Ty0RLssvD7QB__g0Cm=cpXb3dOWhZK=anOqdMuVOEtSb=g@mail.gmail.com>" ("<CANO=Ty0RLssvD7QB__g0Cm=cpXb3dOWhZK=anOqdMuVOEtSb=g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17640 invoked by uid 550); 1 Mar 2016 21:17:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17622 invoked from network); 1 Mar 2016 21:17:06 -0000
In-Reply-To: <CANO=Ty0RLssvD7QB__g0Cm=cpXb3dOWhZK=anOqdMuVOEtSb=g@mail.gmail.com>
Message-Id: <20160301211655.454B672E02E@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue,  1 Mar 2016 16:16:55 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE's for SSLv2 support
To: kseifried@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> by drawing a line in the sand of "SSLv2 is worth a CVE" we'd be much
> more easily able to track which products are using SSLv2 by default (and
> thus putting us at risk). From your web page "CVE is a dictionary of
> publicly known information security vulnerabilities and exposures."

If a vendor is announcing a security update that removes SSLv2
support, they can map to any CVE IDs associated with the SSLv2
protocol to indicate their motivation for that security update. For
example, they can list CVE-2016-0800 in their advisory. If anyone is
discussing the security properties of a product (even before such an
update is announced), they can mention that -- for example --
CVE-2016-0800 is applicable to that product. If a vendor really wants
to emphasize that they are removing SSLv2 support for multiple
unspecified reasons, then the CVE team at MITRE could assign a
separate CVE ID; however, it doesn't seem especially helpful to have
that widespread risk of overlapping IDs as a default position.

CVE-2016-0800 will be in the mentioned dictionary on the CVE web site
very soon, indicating that it is a vulnerability in the SSLv2 protocol
(the https://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2016-0800
text will be used initially). Anyone building a vulnerability database
on top of CVE can feel free to populate that database's CVE-2016-0800
entry with an arbitrarily comprehensive product list, to help with the
"track which products are using SSLv2" goal that you mentioned. CVE is
not a vulnerability database, and generally has not offered
comprehensive product mappings for protocol-level vulnerabilities.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJW1gXTAAoJEL54rhJi8gl5lWUP/RCc1976FrlaMFf/G8WG8b6Q
kI5NX2b0IzQhnfq8+ldTjsPWgy93zUG6WlHjcirtYif1yPoJqF8zKkkN8BR4P7vZ
1o1MJdK3DIXDD/eQ0wlzVkbaNIiy+S1FjTHLgzu33jACaBUwTNsOdjOO/td/NKdK
DaEu6ETe7K/+RytAT2mhCk9ma9mKm6v2tN4G+aqnlzLBEyELUYQuMJF58UR90RAX
UAKWeLfAisxOfZStpCPOfVauSFmtc8d2R74CjIsHCdwfUnUrIxYCNcxjZa4bnWdB
beW9CTTErBC/QofWrOx+/X7glC2V3PjcY0GKCriPiTs9ea8p2NErbNY0ECQnPyyF
NjHSXYlT5wOCNRF0hyd85hromRghGVSUK9jMOeBIFLFFZs0m2aApEBT2tJbIVnC+
WEF0mPMRKeFshrQ2mJTIkxIEdPAd0P7yW2Np8NirMuguUCEHGg3k1Mja+hPW1izV
8vt2Peo8vlHc8oeetLZ0+myK20wC1uX1zVMim3H+4Wy3ayFPQQ17ZOc2/IU0Eh4I
xS2XTdk8x9oQ9H6Gyjq7eYZrUfhDUA7GkOTcC1J10ZC54WLAX8bWbsLagh+yrrTK
pQjPr9wEgQFskuoUF+Ol8lL/kiFphVE0l3gJM5VpR3dvAld2714FPdNgzdn3Wc38
WObLmO4imwD5rZZmKyxI
=wfuM
-----END PGP SIGNATURE-----
