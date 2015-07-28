X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1248" "Tuesday" "28" "July" "2015" "17:09:18" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150728210918.BEF2372E041@smtpvbsrv1.mitre.org>" "41" "[oss-security] Re: CVE Request - OpenStack Designate mDNS DoS through incorrect handling of large RecordSets" nil nil nil "7" "2015072821:09:18" "[oss-security] Re: CVE Request - OpenStack Designate mDNS DoS through incorrect handling of large RecordSets" (number mark "        cve-assign@m Jul 28   41/1248  " thread-indent "\"[oss-security] Re: CVE Request - OpenStack Designate mDNS DoS through incorrect handling of large RecordSets\"\n") "<55B7A747.3050806@macinnes.ie>" ("<55B7A747.3050806@macinnes.ie>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22519 invoked by uid 550); 28 Jul 2015 21:09:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22495 invoked from network); 28 Jul 2015 21:09:30 -0000
In-Reply-To: <55B7A747.3050806@macinnes.ie>
Message-Id: <20150728210918.BEF2372E041@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue, 28 Jul 2015 17:09:18 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request - OpenStack Designate mDNS DoS through incorrect handling of large RecordSets
To: kiall@macinnes.ie

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

>> https://launchpad.net/bugs/1471161

>> Designate does not enforce the DNS protocol limit concerning record set sizes 

>> As a result, the rendering loop in desginate-mdns can does not make progress

>> https://bugs.launchpad.net/designate/+bug/1471161/comments/5

>> 1: Quotas were being bypassed as part of the v1 API.

> two CVE IDs:

> one for the original "does not enforce the DNS protocol limit
> concerning record set sizes" issue

Use CVE-2015-5694.


> one for the "Quotas were being bypassed" issue.

Use CVE-2015-5695.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVt+8TAAoJEKllVAevmvms1EsIAIpBDR/vWC+uADcipB08rtWP
EsYgrK0eISpGwuXiBMYtC7OcQjfDEk46qrbCNCamBi6CJWa7ubpzRpaUbkuZPt8v
R5IQPs8kraLhE17Q7Vx9WIhMObfvljcxJmJfZOXscv985bTvxui7KRkl1kdsznR0
48Wc2L55lvFBEwz0FdPnSHziiIwN0UO8UhqGjPJora+ZJvA5gbL7XFf7Z+J8MQJM
Mj8Q16OtNSNoYnZIuImXIqzvTAQTq8jbUs1iUdj3vyM0+ypw7413AYHKIdRfsTU9
T5ugRDaiPdnbXPzSrMtX2Lxb5ujW4VofgItZvFdl0yYUDufJP4hxw9Ex/YBWjx8=
=iCOz
-----END PGP SIGNATURE-----
