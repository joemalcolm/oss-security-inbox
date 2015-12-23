X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1305" "Wednesday" "23" "December" "2015" "16:51:56" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151223215156.18C0872E179@smtpvbsrv1.mitre.org>" "33" "[oss-security] Re: Use after free in nghttp2" "^Cc:" nil nil "12" "2015122321:51:56" "[oss-security] Re: Use after free in nghttp2" (number mark "        cve-assign@m Dec 23   33/1305  " thread-indent "\"[oss-security] Re: Use after free in nghttp2\"\n") "<20151223175917.722a720a@pc1>" ("<20151223175917.722a720a@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26470 invoked by uid 550); 23 Dec 2015 21:52:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26376 invoked from network); 23 Dec 2015 21:52:15 -0000
In-Reply-To: <20151223175917.722a720a@pc1>
Message-Id: <20151223215156.18C0872E179@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed, 23 Dec 2015 16:51:56 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Use after free in nghttp2
To: hanno@hboeck.de

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://nghttp2.org/blog/2015/12/23/nghttp2-v1-6-0/
> 
> This release fixes heap-use-after-free bug in idle stream handling
> code. We strongly recommend to upgrade the older installation to this
> latest version as soon as possible.

Use CVE-2015-8659.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWexaGAAoJEL54rhJi8gl5PncP/i7nC5VFxuoVMwjzIQ/KvNb0
JoVVIqQlXNfDD0knl8FvOx+KJzWzE5RIMgJOs4o2Lh3LPonXdeAHsfNQ8ZE1ENEl
I2lnSrC4k1U9TJJA6RlaStIytCde+7pGEsZPzCX5GnG+0tlt4AlaswBKc4BIYKTN
UemDt319fGOPybylwAovFXaHc2DDcOupMmBzDu0P5ErlkIfow9HZeLNF/oNEZPlk
Qm9DG17L9cwiv3FDq5VRcyevh9KZSavDhIdLz/nINST4sTikopUL3hSkhojH3e3E
YvoHhlS0dUNHQL+coksm/xgZ5ytQaUyAMujigq2Xpu8xb8Rsy3Kb48u8rTY0Bwmt
phzIOIRPmeiOxKFiFxX1hmFYaxOsWwQHKGjqwh9Y8ZbV+qLaOLDJfkhwapixTZSo
JMphliLe8TVTIN6AsQ5YIZc3e9yETfHJSC8iseeJaukC7zrVFy/2XhL5xKgB3AXf
au4r7ez/05iqKX6bYcaBpUPOEKX+aBmoSR1NsLAQk//HcnD4HZJpal/UgUPh/o4p
Tbu5AXPAjLoIvoPipjtqkwP3ZISkvwvYOzC8b6jDKvFF3MPwuwOBGw1eBa1FNTMr
bCJ1GJJna3CB6YxXAo4vFd/6hTafVtmK2tZThm7FgjAzSmJTaxROSGrTysevqqWs
WM0vso39SkAv6y7JpJbG
=c2Xe
-----END PGP SIGNATURE-----
