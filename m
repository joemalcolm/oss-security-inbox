X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1358" "Monday" "14" "November" "2016" "13:36:58" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<eacf0ad3886d4928905ca3e10c529e80@imshyb02.MITRE.ORG>" "41" "[oss-security] Re: Remote crash in MaraDNS 2.0.13 and git master" nil nil nil "11" "2016111418:36:58" "[oss-security] Re: Remote crash in MaraDNS 2.0.13 and git master" (number mark "U       cve-assign@m Nov 14   41/1358  " thread-indent "\"[oss-security] Re: Remote crash in MaraDNS 2.0.13 and git master\"\n") "<1478939985.2087788.785402465.36AF3B93@webmail.messagingengine.com>" ("<1478939985.2087788.785402465.36AF3B93@webmail.messagingengine.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22519 invoked by uid 550); 14 Nov 2016 18:37:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22484 invoked from network); 14 Nov 2016 18:37:09 -0000
From: <cve-assign@mitre.org>
To: <ondrej@sury.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<team@security.debian.org>, <dariusz.dwornikowski@cs.put.poznan.pl>,
	<sam-k6mymjcnjpz3fmkieotlt7rbgvqt98qy@samiam.org>
In-Reply-To: <1478939985.2087788.785402465.36AF3B93@webmail.messagingengine.com>
Message-ID: <eacf0ad3886d4928905ca3e10c529e80@imshyb02.MITRE.ORG>
Date: Mon, 14 Nov 2016 13:36:58 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: Remote crash in MaraDNS 2.0.13 and git master

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> remote crash bug in MaraDNS 2.0.13 js_readuint16

Use CVE-2016-9300.


> remote crash bug in MaraDNS 2.0.13 js_substr

Use CVE-2016-9301.


> remote crash bug in MaraDNS 2.0.13 process_query -> this in fact
> looks like stack smashing, since it crashes on htons in an unrelated
> place

Use CVE-2016-9302.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYKgMsAAoJEHb/MwWLVhi21GoP/3HGz6OGmr6WDKg+2+IUaD8h
Rwgsw78MVxqrnq/gXwg0or2yYXXHxKyR12LlDmWADnqi7WtW7mM+4r3WSGb71Vqk
jfCptES4/UqpCKdEV4+HQ5nVKFRhQo1zpEam+kHbS5OiB93GlhS3UByyaSyeRsnf
ZnfdVl61NjCJHerb8lBEtYf0e5rA1SvspwfIiior6o9967X9Yrs9e2S0EidCl7dq
WFwh1lXZCMgGw38WzeblKgm000ScDplTgAmu6yWMIoRgZeAIdy1605/iSoBPJfgD
NS0wecALHmUqhYYeouBS/1l2FDg7pIpWWAo5s7fkiajxF8hvbUR1tTd2v1hOY8Xc
+w4Hiao2j4BXd9ZoKCUGumV3d0eSksNx52ZgzN8oJxa+mX74iDG6abbTYSfzlAWG
lmRFi94/0oeufIqD1aMaZ5jrMoWjjyPoum2L2Y31tUiJdFUktKJ9/6dW02wydNme
UjZjkIwjL44DCz4WLfXqV/rIMyx/ZztVgneAAqUFn1ssHf51HyzQPSpgbRLgj9Gc
ohRUn34JyZGbACYXm63pMjA01Z6FOCjlE+/kgGoNe56u+1i9UFPdaQs0OY4g9POF
DXl6kHqYNxqxASk1Ms70epXt4b/pBHdGXzqFF5QmPPW5xXiubCswn13hZhM/lZRF
tTzTS1vprIT3fYUXhjZn
=B4JU
-----END PGP SIGNATURE-----
