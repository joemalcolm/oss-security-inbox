X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1924" "Thursday" "9" "April" "2015" "17:52:26" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150409215226.A662B42E024@smtpvbsrv1.mitre.org>" "44" "[oss-security] Re: CVE Request: libX11: buffer overflow in  MakeBigReq macro" nil nil nil "4" "2015040921:52:26" "[oss-security] Re: CVE Request: libX11: buffer overflow in MakeBigReq macro" (number mark "        cve-assign@m Apr  9   44/1924  " thread-indent "\"[oss-security] Re: CVE Request: libX11: buffer overflow in  MakeBigReq macro\"\n") "<55265E1D.4050404@redhat.com>" ("<55265E1D.4050404@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30318 invoked by uid 550); 9 Apr 2015 21:52:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30297 invoked from network); 9 Apr 2015 21:52:38 -0000
In-Reply-To: <55265E1D.4050404@redhat.com>
Message-Id: <20150409215226.A662B42E024@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu,  9 Apr 2015 17:52:26 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: libX11: buffer overflow in  MakeBigReq macro
To: fweimer@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> Does this assignment cover application code which has to be recompiled
> because it included an expansion of broken macro?

It might be worthwhile to answer this in two ways.

First, the scope of the CVE-2013-7439 assignment does cover
application code that was built with this macro, in the sense that
applications cannot have their own unique CVE IDs for the same
problem. In other words, if building with this macro is what is
calling an application's security into question, then there wouldn't
be a separate CVE ID for that application.

Second, if an application's vendor wants to publish a security
advisory mapping to CVE-2013-7439, then it is preferable for the
vendor to verify that the existence of the macro actually has a
security impact for that application. However, there is no reasonable
way for the MITRE CVE team to require that. An application's vendor
might not have the resources or expertise. For example, the
application's vendor optionally could decide to map to CVE-2013-7439
based only on noticing that the macro is used.

In any case, the information posted by others in this thread would be
very useful for risk-assessment questions that go beyond "how can this
CVE ID be used."

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVJvNSAAoJEKllVAevmvmsCdIH/A9SWB+8BaxQhyasFAXKz8Qg
0ikGPGWFOraNdbr46sLC4MhYfE80fNzcurlmTemEsN7xmnmnhRbLjmCPQifYHJ+7
PMs8eFQxVi91gNCptVn7YWpmtdwI+AzcQeJvezXvWwVsrVktf0/7KvXH5F9zeQ3l
jk9z2nXTt42e/Kk8JcpIKixS1Em1oNt/YKHBIOz79ufjbCiM1UxAE1aMo2e04YKA
YCYoPNgMB4eKUiHazTo2HBtm+6u+E2+/+lb008/mnh6fRl+XhVm3gPURpsGgJM+7
njrDI0eeO5iU6XFSR6pf/Qp+OHNts8hb0U2DKuKlxfMaUZvswlNAZsJHOcl1u/U=
=DjB/
-----END PGP SIGNATURE-----
