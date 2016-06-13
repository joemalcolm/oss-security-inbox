X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1656" "Monday" "13" "June" "2016" "10:40:48" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160613144048.9BBA942E034@smtpvbsrv1.mitre.org>" "38" "[oss-security] Re: CVE Request: IKEv1 protocol is vulnerable to DoS amplification attack" nil nil nil "6" "2016061314:40:48" "[oss-security] Re: CVE Request: IKEv1 protocol is vulnerable to DoS amplification attack" (number mark "U       cve-assign@m Jun 13   38/1656  " thread-indent "\"[oss-security] Re: CVE Request: IKEv1 protocol is vulnerable to DoS amplification attack\"\n") "<885b2658-698a-7030-f3bc-edec7208b3ba@redhat.com>" ("<885b2658-698a-7030-f3bc-edec7208b3ba@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28303 invoked by uid 550); 13 Jun 2016 14:41:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28281 invoked from network); 13 Jun 2016 14:41:00 -0000
From: cve-assign@mitre.org
To: huzaifas@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <885b2658-698a-7030-f3bc-edec7208b3ba@redhat.com>
Message-Id: <20160613144048.9BBA942E034@smtpvbsrv1.mitre.org>
Date: Mon, 13 Jun 2016 10:40:48 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: IKEv1 protocol is vulnerable to DoS amplification attack

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Its not libreswan which is flawed, but its the protocol which they are
> trying to implement.

> which implement IKEv1 are flawed, since they follow this protocol

Many protocols could be described as "flawed." The IKEv1 protocol
amplification concern does not make it flawed in a way that would lead
to a per-protocol CVE ID assignment. We are maintaining the
CVE-2016-5361 ID assignment for the upstream announcement of
"libreswan 3.16 vulnerable to DDOS attack. Please upgrade to 3.17" and
accompanying upstream patch, as described in the
http://www.openwall.com/lists/oss-security/2016/06/10/4 post.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXXsVfAAoJEHb/MwWLVhi2VBIQAJJwLfi5H3I6QQsHWYDakEyg
uhTJOcJJShpTe0UEmUQ/KS16lM7WjcmhmbH7xdB5+yQe9qVK4V78QsmdeGve5gs+
cFSot1v8KNfsZN51B28GVFh1n4TFrDoWPH0AU45zs1/4ryEnYoiz5ckvJjr/qCKd
LiT3GInHiLeUFlpsQ8CbHuonC6lVdkm9tzuSGW00zRuS7wnOD/oanYAOb2s7Mk6K
BkpaTJ4cg/+x1ATvIrD4B8pqAZaBcLJ4CbzIX7iafqt5fi+TOT/1G1AFXO11KHRl
SMES3LYhgWDdXgszgewsHDefG24gx0F72GNvC/wsEcqyJOesW40IwaMDhj12bEJz
DQ05IoYik7/2+5iPwBEJFXf5fAZ78ZlVX/dnW2cvpiTIoUcAfv3iKlmfiNF8fCLq
fQcmZ9EC8BiKVOBXL2a4vbNLeqJhuXCrEhCEt6q43jnV/9qqMkAK5g7HdXeNvTWd
r+TJk7ngGHigYxyMErxpGRjEDEgwusBf8o9WzvMe7JHoEdlaf6Hcczcol8pauDcy
2FAjTg+TzNV3P1LrE2Kjulovz1ApnWKlyMqqG0HCQho2bSzmhQK+HmdK6BmNs/qe
WZXhJt+hr1E0IZjwiuGegGYOMecxFXATj4HjRS1qslO1dPftos0hb4xK3J3yoQMR
T5uAdnR5YRNTB5E/seg0
=XtKp
-----END PGP SIGNATURE-----
