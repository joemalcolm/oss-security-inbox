X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1026" "Wednesday" "10" "June" "2015" "10:33:58" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150610143358.E34F5ABC342@smtpvmsrv1.mitre.org>" "28" "[oss-security] Re: Possible XSS vulnerability on NIST NVD" nil nil nil "6" "2015061014:33:58" "[oss-security] Re: Possible XSS vulnerability on NIST NVD" (number mark "        cve-assign@m Jun 10   28/1026  " thread-indent "\"[oss-security] Re: Possible XSS vulnerability on NIST NVD\"\n") "<D5870053-3255-4E13-AC17-0F5C7D07DB3B@gmail.com>" ("<D5870053-3255-4E13-AC17-0F5C7D07DB3B@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18292 invoked by uid 550); 10 Jun 2015 14:36:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18244 invoked from network); 10 Jun 2015 14:36:35 -0000
In-Reply-To: <D5870053-3255-4E13-AC17-0F5C7D07DB3B@gmail.com>
Message-Id: <20150610143358.E34F5ABC342@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed, 10 Jun 2015 10:33:58 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Possible XSS vulnerability on NIST NVD
To: marek.sebera@gmail.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> https://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2010-1729
> 
> Do you think it's worth a XSS CVE against NIST NVD web?

We believe any issues related to
https://web.nvd.nist.gov/view/vuln/detail URLs aren't eligible for CVE
IDs because the view/vuln/detail program is site-specific code used
only at NVD.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVeEovAAoJEKllVAevmvmsQCsIAIesGEHsjeJV7TGS+642qmY3
xhixEiQu0xTT9e2h8cYnakWpgO+IUC0QXc+cLyoUKZcx5ZnaG/bYKaqVAQCW1+eW
x70gDMZ/50KvLkw00iDxgKPzAjpGNeQ2DGoBcERnRCobFpd6+eIcdRvTnkttzx6M
DNn7p8h/otRGksHYU3g+sKpjz/Fcx7XG6v895xeIS8zuSvsG0eN+pgFTmrbo2ERV
02kLxY0xjP5VAzBgm70Pzgw756/k7sSvPgklsCIpukNeAlEGAtyCDDKLysYlUjYN
oX+oBbq/VmsQULoNDjYsYevUiDWkYpX6rbFD4Aan+SaHo0vDbbCPJkbTfhVoma8=
=cA8m
-----END PGP SIGNATURE-----
