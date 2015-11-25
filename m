X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1617" "Wednesday" "25" "November" "2015" "13:00:56" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151125180056.96B3F6C02A4@smtpvmsrv1.mitre.org>" "41" "[oss-security] Re: CVE request: Redmine - information disclosure on the time logging form" nil nil nil "11" "2015112518:00:56" "[oss-security] Re: CVE request: Redmine - information disclosure on the time logging form" (number mark "U       cve-assign@m Nov 25   41/1617  " thread-indent "\"[oss-security] Re: CVE request: Redmine - information disclosure on the time logging form\"\n") "<5654E00F.5050806@vorlons.info>" ("<5654E00F.5050806@vorlons.info>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5204 invoked by uid 550); 25 Nov 2015 18:01:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5175 invoked from network); 25 Nov 2015 18:01:08 -0000
From: cve-assign@mitre.org
To: matthias@vorlons.info
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <5654E00F.5050806@vorlons.info>
Message-Id: <20151125180056.96B3F6C02A4@smtpvmsrv1.mitre.org>
Date: Wed, 25 Nov 2015 13:00:56 -0500 (EST)
Subject: [oss-security] Re: CVE request: Redmine - information disclosure on the time logging form

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> please assign a CVE ID for an information disclosure issue in the
> latest Redmine releases (2.6.8, 3.0.6 and 3.1.2)

> http://www.redmine.org/news/102
> http://www.redmine.org/projects/redmine/wiki/Security_Advisories
> https://github.com/redmine/redmine/commit/c096dde88ff02872ba35edc4dc403c80a7867b5c
> https://www.redmine.org/issues/21150

> http://www.redmine.org/projects/redmine/wiki/Changelog
> 3.1.2 (2015-11-14)
> Defect #21150: Time logging form may disclose subjects of issues that are not visible

> app/views/timelog/_form.html.erb

Use CVE-2015-8346.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWVfbkAAoJEL54rhJi8gl5f04P/1XGw1J1Fi0XLL+FmtU7AuLs
LMCBktJV2LC1O+v/D2+uGOxzJnhwoxggjIuUerEpc0XVBNNrF2rhzxb0DeAvBN0m
IKN8dUZpv12RPIEtqPTiy15wHOCMMnO99Auq/uW0kwZRmRfOjycBBiacGW7YBvLa
v6R1/hpnJyZ1C0UCin//MLxMdeFAsb6Zx47p/v7k+bhy2/yAvquot29dqtBUrNMA
27ksZIiHAQv7iU7s/g9Dfgp55WNfDjjz0u/eo1+fusEvVpZ1wNI6k0MMk1Pk5vLf
JFNfwee6GRCuwxzH8aRzQifbUAxkzAEqnvYgIIUVaCDrvxQKglq497tkEMVcpV7j
2NX2LK3QHaeX5ewNCKYqCLgUbKKOxQrE0gbY4mSWf44t9bvRl7ScOD3s5Bo0k/gM
psmmgVcZkh5y6uffre6PX3q4MYTk8MT8CqMv7pCas+YWfGxbFFPp60bec/eK4o9g
j7ZUrm3VRzssAAEJ3fe9F0XVexRmp0E1tgktvh/yUfSMh9yZdtoRLUm2NEejsUHu
+Fs29esV0hW9TQEF9slAb60MT+fyTBVWPPr8EXSq2AoH3vNAHWh8VmRuW2J+DsFY
jAIq1wNAQxuxlFW85MfNAFRwGVje/Csksffa31bbL9NOieKOK7DxdBWGskZUiyah
a2oSGccwzK937D/lCz2L
=IT7r
-----END PGP SIGNATURE-----
