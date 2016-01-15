X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1611" "Thursday" "14" "January" "2016" "22:55:48" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160115035548.BD2B06C04AB@smtpvmsrv1.mitre.org>" "41" "[oss-security] Re: CVE request for Kubernetes api server: patch operation should use patched object to check admission control" nil nil nil "1" "2016011503:55:48" "[oss-security] Re: CVE request for Kubernetes api server: patch operation should use patched object to check admission control" (number mark "U       cve-assign@m Jan 14   41/1611  " thread-indent "\"[oss-security] Re: CVE request for Kubernetes api server: patch operation should use patched object to check admission control\"\n") "<CANO=Ty3co85-pb-pwfwESMY8To8njpdN+zYrwyHy7P43o8azkA@mail.gmail.com>" ("<CANO=Ty3co85-pb-pwfwESMY8To8njpdN+zYrwyHy7P43o8azkA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14217 invoked by uid 550); 15 Jan 2016 03:56:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14196 invoked from network); 15 Jan 2016 03:56:00 -0000
From: cve-assign@mitre.org
To: kseifried@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CANO=Ty3co85-pb-pwfwESMY8To8njpdN+zYrwyHy7P43o8azkA@mail.gmail.com>
Message-Id: <20160115035548.BD2B06C04AB@smtpvmsrv1.mitre.org>
Date: Thu, 14 Jan 2016 22:55:48 -0500 (EST)
Subject: [oss-security] Re: CVE request for Kubernetes api server: patch operation should use patched object to check admission control

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> CVE request for Kubernetes api server: patch operation should use patched
> object to check admission control
> 
> https://github.com/kubernetes/kubernetes/issues/19479

>> https://github.com/kubernetes/kubernetes/pull/19481

>> This changes the patch implementation to call the admission chain with
>> an Update using the patched object as the input. This allows all the
>> correct defaulters and field authorizer to run as expected.

> TL;DR:  you can patch your resources and they'll always be allowed, so more
> ram, disk, etc. CWE-285

Use CVE-2016-1905.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWmGy3AAoJEL54rhJi8gl53ZIQAKbPGrumv0Nk5rSbiloc/Kje
zFL/7C6ADhN29J1zrelKsXBVh8GFYZNfDZrMGO7yhi3ckPCiLMA1qFU15iUuCUdM
lKxRxRtnCajlmcOC6mDHsyOTkBLvW0iS0heIt/ATN3rcCGORNZ3eiAU0+/8Lp914
lTQVH1dhjWtNTv9f1nay+aGkTfhz4fn2A1IcI6xwFiRaC3+o/BZPIzc4CI4zJ1fw
NE0g9cQ68BFU75zXg5WjWon/Vc4FLosLgF/oRLD8iHu4nththGip+WlKbteuwUrC
CExv/DGRfumpsDe5pZqjC8HJndWhXvjPG9Pkorsvvh7I2j3+qpooMsJmI6V5E85J
kOqW1gEn4MXtTdcSWufXbcFC5Qn1LZ54QYKI47H9NKoNRRJyz8TEOF3Puap1FIxV
ZCSlkv79FQhBLDXkAOWOj41YPPvWa8JCHAsirViZ2Uftt4vXFijoQfsCmrBCrGnI
dcFPlSZwnczFz5rBy/df/5V69juDWQDd76ckGkUe33numpdENnNa6XztRfgO+ICL
0l9PjfCz/ANQT/SrgvPalBMyuPYzh7P7o2AVxUM1fQxO7z+juip2xM/k+E3aucb4
Urzy7whUTvcL1mnMX3gfnXWoSjgmDqsyXYfcD4QWU4WoaDDAw2E9P2LTEPCMqi6R
c6TKbhJYZXuAatFdmgA1
=ELu9
-----END PGP SIGNATURE-----
