X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2445" "Wednesday" "18" "November" "2015" "09:11:20" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151118141120.ABCDC6C09AF@smtpvmsrv1.mitre.org>" "52" "[oss-security] Re: CVE request for vulnerability in OpenStack Glance" "^Cc:" nil nil "11" "2015111814:11:20" "[oss-security] Re: CVE request for vulnerability in OpenStack Glance" (number mark "        cve-assign@m Nov 18   52/2445  " thread-indent "\"[oss-security] Re: CVE request for vulnerability in OpenStack Glance\"\n") "<564BA399.8000800@redhat.com>" ("<564BA399.8000800@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1524 invoked by uid 550); 18 Nov 2015 14:11:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1500 invoked from network); 18 Nov 2015 14:11:32 -0000
In-Reply-To: <564BA399.8000800@redhat.com>
Message-Id: <20151118141120.ABCDC6C09AF@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed, 18 Nov 2015 09:11:20 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request for vulnerability in OpenStack Glance
To: tdecacqu@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Glance computes cryptographic signature using MD5 hash of the
> image. By crafting a malicious image that produces a MD5 collision, a
> Glance backend operator may subvert the signature verification process,
> resulting in a corrupted image.
> 
> https://launchpad.net/bugs/1516031

Use CVE-2015-8234.

We're willing to let the OpenStack VMT have CVEs for mostly arbitrary
types of issues that they want OpenStack customers to treat as
vulnerabilities.
http://specs.openstack.org/openstack/glance-specs/specs/liberty/image-signing-and-verification-support.html
possibly suggests that the behavior represents an intended
intermediate step of feature development: "An alternative to using the
existing MD5 hash algorithm is to create a separate configurable hash
for use with verifying/creating the signature. However, creating a
separate hash negatively affects the performance, without providing
much benefit. Note that since there are preferable hash algorithms to
MD5 that are more secure, a separate change is being proposed to allow
for the configuring of this hash algorithm. This will not be included
as a part of this change, in the interest of having a straightforward
initial implementation." If so, then we think vendors typically
wouldn't want CVEs in these types of situations, unless the
intermediate step actually made something worse than before the
feature development started.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWTIaEAAoJEL54rhJi8gl5RcUQAJco0tIOIRgX2L2tTRl5bIf7
3zDfImyuT18rF7TjlVuz9Wzi5cjOtGiBp32Oh136PEr8qs8iYK7lvtDuELRSosPO
rFDZHlLcb4R7NCd2DDTzdgoNtkNxdf7+ReE+JrWIF0FhKFgSrcSDKtuZRuwP+z1r
w84imyW+ajlQ0okddJQ897qqFihBfPnsavEmy8J5RCv9REhUzI7bm1L3A5T2u5tb
CTFv+Xb1o5moWr4bQUbq8gCqRIULQThmEvG+pDJlcGW/gekHeH/szsIucV5KrJRq
a1l1hs0xW3WekEkbjf0PXj4vVhaAPqckKHlHA70Y47T/4SRa3RFmKrmUbiFUe+y/
UrkvZHA/tXE8kbJZyV+I45bEL1P24sLlgGjgs26oZueuDJwVyMFUq01pcqXsWRHP
wPOX6hu45iq4cEfztIaWCet9mh30fovhsJ3JTJLBBOIhzqFrH1Vqi3+Y4+pyJEv8
ZbpTbS5L/EB2HmuJYWgS8E0MwMfL1kOPoCBRwmEicvUKlW96m0hIKZEuu3Evuksu
ND//xDPNIQGNXQPDzjC+Aqu+EFkyfNIA6q/yajqkA0KYWrkow2hW+9B/5ae/PFPR
jDUFY6MQCUlUG7ONsZHq29CPPNl2giEQJ7ZD6mV8C/rLs10DHFdxpgwrMTmTL/No
P0i85+nLMb1X5MmiIKoi
=eUaC
-----END PGP SIGNATURE-----
