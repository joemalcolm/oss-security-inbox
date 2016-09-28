X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1665" "Wednesday" "28" "September" "2016" "13:26:59" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160928172659.DF3656C5385@smtpvmsrv1.mitre.org>" "43" "[oss-security] Re: CVE Request - OpenSLP 2.0 Memory Corruption" "^Cc:" nil nil "9" "2016092817:26:59" "[oss-security] Re: CVE Request - OpenSLP 2.0 Memory Corruption" (number mark "        cve-assign@m Sep 28   43/1665  " thread-indent "\"[oss-security] Re: CVE Request - OpenSLP 2.0 Memory Corruption\"\n") "<alpine.LNX.2.00.1609281110050.22653@forced.attrition.org>" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16023 invoked by uid 550); 28 Sep 2016 17:27:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16000 invoked from network); 28 Sep 2016 17:27:11 -0000
In-Reply-To: <alpine.LNX.2.00.1609281110050.22653@forced.attrition.org>
Message-Id: <20160928172659.DF3656C5385@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed, 28 Sep 2016 13:26:59 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request - OpenSLP 2.0 Memory Corruption
To: jericho@attrition.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> : : https://sourceforge.net/p/openslp/mercurial/ci/34fb3aa5e6b4997fa21cb614e480de36da5dbc9a/
> 
> : Use CVE-2016-7567.
> 
> Why did this get a 2016 CVE?

>> Bug 151: Fix memory corruption due to possible overflow in SLPFoldWhiteSpace
>> 
>> 2015-12-01

"possible overflow" in the 2015 reference was not interpreted to mean
a definitive statement of a security problem, and the defining
reference is the
http://www.openwall.com/lists/oss-security/2016/09/27/4 posting
itself, which occurred in 2016. In other words, either a CVE-2015-
number or a CVE-2016- number may have been reasonable but we chose the
latter.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX6/yDAAoJEHb/MwWLVhi2gXgQALabK0bQBMvo1WbF4nbg2zDB
nJxmBxNLCbIE0EzGimrh/ytHwHO2eBpVxRsHTGBD9gkiKWi6IdlNk6nPqNndwmGf
XfNVA/HCAd5LbuvkxOgYtAxTEWfvbvUqty5xtXl8Fr9OzBzO8D3a6IheTRgTqdP0
VhOBUiLi9G/EEuDGIKP1ly5/1UhSWGc83itsjlR/4751EnXPkIX7xkp8QLged5pR
YAoxVg66bbmuL5g9PKA+1Vit5MmlookIJ8t6CYcPHoSolmRc4Wfa7WDMxgxZrp63
BkML/2DlFoM/zWP9APLOtlLN+tx2NuQKDv01f7t6zXD4nmZug/kK5CwOSErooM+l
e/dga/C4SUzNzH1VHppFYyeZtzBBV7ggsW1d6GUp6OKQaBbd32st+18Qb9qiQ3HA
Ina1/a+kiAL7yrSY07Rc06Z1P8KzhQTWK/apEnE/bLdSLtuFmDZtr0u80auLfZvy
KOMOa1+UOhome6x8cs+oCMTF5/DxPF2+K1Jyss6uW8tFlfywLsnmkC7KLRSzsqzu
KKEyrf5vCuZELF5V6UjYdgELTYcNJZmhjgBk8ReKofJ5AXHW+hRy7EagZnQ+9DX2
K+Y6JubZxBI2Ie/8TZ+ec4Vf23E8xjPiRr7qxSYWxmBvzjNhwaWhgn1FQ0yG/+t3
cYwq0Wg1ktDWw26KYtvm
=l+Su
-----END PGP SIGNATURE-----
