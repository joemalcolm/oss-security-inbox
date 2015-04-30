X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1110" "Thursday" "30" "April" "2015" "09:49:22" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150430134922.1BCBA3AE06E@smtpvbsrv1.mitre.org>" "29" "[oss-security] Re: CVE policy clarification request - Squid 3.5.4 etc." nil nil nil "4" "2015043013:49:22" "[oss-security] Re: CVE policy clarification request - Squid 3.5.4 etc." (number mark "        cve-assign@m Apr 30   29/1110  " thread-indent "\"[oss-security] Re: CVE policy clarification request - Squid 3.5.4 etc.\"\n") "<5542007B.5030703@treenet.co.nz>" ("<5542007B.5030703@treenet.co.nz>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21922 invoked by uid 550); 30 Apr 2015 13:49:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21876 invoked from network); 30 Apr 2015 13:49:34 -0000
In-Reply-To: <5542007B.5030703@treenet.co.nz>
Message-Id: <20150430134922.1BCBA3AE06E@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu, 30 Apr 2015 09:49:22 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE policy clarification request - Squid 3.5.4 etc.
To: squid3@treenet.co.nz

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> "Squid HTTP Proxy configured with client-first SSL bumping does not
> correctly validate server certificate hostname fields. As a result
> malicious server responses can wrongly be presented through the proxy
> to clients as secure authenticated HTTPS responses."
> 
> Upstream advisory (when published) will be at:
>  http://www.squid-cache.org/Advisories/SQUID-2015_1.txt

Use CVE-2015-3455.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVQjHFAAoJEKllVAevmvmsWqUIAImY4rWDt7dAZW8RwiyEqdrZ
EI+wL/jXYH5H4cpiPIGOAuKDWhpFEmK65LnfPpjKFSrhxVLafbupygPhFVJUeSxU
Yae3q1yAsEWZrAS7ZYmxLHL1+VgK7g7DTgksIGHj6daAlzHEwf5WDKpzTEuoLxg6
HqAzFoJVN1OiEjFEvy+cOMvMuzpBwFa2CBtROAVOANVawDvlYcd2kG6B2AHzGdxS
K95C8wmHh2IePyws6K6F4c7Tn/LHSoj7p15TqPxE8rdzHF/QzcK0vHe2ORYKRX4z
j67MaOq28qqwTMsCjGaCcASGDfTpFUqF2R5O0VqUmfHaL0EZj67JVLlM51YiRdc=
=fAn0
-----END PGP SIGNATURE-----
