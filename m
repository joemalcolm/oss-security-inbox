Received: (qmail 3952 invoked by uid 550); 14 Aug 2024 13:26:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3832 invoked from network); 14 Aug 2024 13:26:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=xen.org;
	s=20200302mail; h=Date:Message-Id:Subject:CC:From:To:MIME-Version:
	Content-Transfer-Encoding:Content-Type;
	bh=0cESxM2Nc/a1Y9sxbNz5glxIoFXz8cls7TNWojCBKls=; b=QRt+ev77BYIZc3zRSzK7lN7N7h
	HtQFzrEO7QlN1w5asF6q6/a+tsplonxv2w6lQDu2hj6XlRrjC9VJ6InRPccnGALUSZ7pRneaDFQpU
	uhhzSGScqu2jyBQJfeC+RxJLxt9JoZHNCFB1TIYuwsIZZfTbgAehsdTUzllPIMQVtKBg=;
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.509 (Entity 5.509)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security-team-members@xen.org>
Message-Id: <E1seE0f-0001zO-Nj@xenbits.xenproject.org>
Date: Wed, 14 Aug 2024 13:25:53 +0000
Subject: [oss-security] Xen Security Advisory 461 v2 (CVE-2024-31146) - PCI device
 pass-through with shared resources

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2024-31146 / XSA-461
                               version 2

             PCI device pass-through with shared resources

UPDATES IN VERSION 2
====================

Public release.

ISSUE DESCRIPTION
=================

When multiple devices share resources and one of them is to be passed
through to a guest, security of the entire system and of respective
guests individually cannot really be guaranteed without knowing
internals of any of the involved guests.  Therefore such a configuration
cannot really be security-supported, yet making that explicit was so far
missing.

Resources the sharing of which is known to be problematic include, but
are not limited to
- - PCI Base Address Registers (BARs) of multiple devices mapping to the
  same page (4k on x86),
- - INTx lines.

IMPACT
======

The precise effects when shared resources are in use are system, device,
guest, and resource specific.  None of privilege escalation, information
leaks, or Denial of Service (DoS) can be ruled out.

VULNERABLE SYSTEMS
==================

All systems making use of PCI pass-through are in principle vulnerable,
when any kind of resource is shared.  Just to re-iterate, even in the
absence of resource sharing caveats apply to passing through of PCI
devices to entirely untrusted guests.

MITIGATION
==========

Passing through only SR-IOV virtual functions or devices with well-
separated resources will avoid this particular vulnerability.  Passing
through all devices sharing a given resource to the same guest will also
avoid this particular vulnerability.

RESOLUTION
==========

Applying the appropriate attached patch documents this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa461.patch           xen-unstable - Xen 4.16.x

$ sha256sum xsa461*
2415504496508ad87c306aa7257e836d7c2f0bd8849656de5b586f0ab93fd17f  xsa461.patch
$

DEPLOYMENT DURING EMBARGO
=========================

Deployment of patches or mitigations is NOT permitted (except where
all the affected systems and VMs are administered and used only by
organisations which are members of the Xen Project Security Issues
Predisclosure List).  Specifically, deployment on public cloud systems
is NOT permitted.

This is because changing the nature of devices being passed through is
very likely noticeable by the guest.

Deployment is permitted only AFTER the embargo ends.

(Note: this during-embargo deployment notice is retained in
post-embargo publicly released Xen Project advisories, even though it
is then no longer applicable.  This is to enable the community to have
oversight of the Xen Project Security Team's decisionmaking.)

For more information about permissible uses of embargoed information,
consult the Xen Project community's agreed Security Policy:
  http://www.xenproject.org/security-policy.html
-----BEGIN PGP SIGNATURE-----

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAma8sCkMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZLDkH/i6esACkik7iglEESFgCj0x6fc3KdpVzsCPznmsn
uWZzBO9xuggoPOONJ70Or7tsIdaYDAkealZrBGreXlPEgd0MOtozLYrvB2IIqJEj
cKyC4Y04VpBkynaOiLraFvUs0xyC0cew1NZdE/cxr9ewRvvrHVcyBI5GBAMKworh
g4hjIDOR9ohhvxN2P7Yz59OY+Ojo57t+IlpvPPm+c53bARYR6H/cxyUDLYVlfrk2
iNPif7Wpi1PU/Sjz5XqBF5mXW+LLsLnbyw8Iyhnjqv1zC/tUdzl1INUBd24eHSjP
aXnrlExoGAuvUcf/6YVfU0u2dB7iISGYAs2ESeYuxpJnZ8E=
=LkWz
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa461.patch"
Content-Disposition: attachment; filename="xsa461.patch"
Content-Transfer-Encoding: base64

RnJvbTogSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1c2UuY29tPgpTdWJqZWN0OiB4ODYvcGFzcy10
aHJvdWdoOiBkb2N1bWVudHMgYXMgc2VjdXJpdHktdW5zdXBwb3J0ZWQgd2hlbiBzaGFyaW5nIHJl
c291cmNlcwoKV2hlbiBtdWx0aXBsZSBkZXZpY2VzIHNoYXJlIHJlc291cmNlcyBhbmQgb25lIG9m
IHRoZW0gaXMgdG8gYmUgcGFzc2VkCnRocm91Z2ggdG8gYSBndWVzdCwgc2VjdXJpdHkgb2YgdGhl
IGVudGlyZSBzeXN0ZW0gYW5kIG9mIHJlc3BlY3RpdmUKZ3Vlc3RzIGluZGl2aWR1YWxseSBjYW5u
b3QgcmVhbGx5IGJlIGd1YXJhbnRlZWQgd2l0aG91dCBrbm93aW5nCmludGVybmFscyBvZiBhbnkg
b2YgdGhlIGludm9sdmVkIGd1ZXN0cy4gIFRoZXJlZm9yZSBzdWNoIGEgY29uZmlndXJhdGlvbgpj
YW5ub3QgcmVhbGx5IGJlIHNlY3VyaXR5LXN1cHBvcnRlZCwgeWV0IG1ha2luZyB0aGF0IGV4cGxp
Y2l0IHdhcyBzbyBmYXIKbWlzc2luZy4KClRoaXMgaXMgWFNBLTQ2MSAvIENWRS0yMDI0LTMxMTQ2
LgoKU2lnbmVkLW9mZi1ieTogSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1c2UuY29tPgpSZXZpZXdl
ZC1ieTogSnVlcmdlbiBHcm9zcyA8amdyb3NzQHN1c2UuY29tPgotLS0KVEJEOiBPZiBjb3Vyc2Ug
dGhlIHN5c3RlbSBidXMoZXMpIGlzIGEgLyBhcmUgc2hhcmVkIHJlc291cmNlKHMpLCB0b28uCiAg
ICAgSSdtIGFmcmFpZCBJIGRvbid0IGtub3cgdGhlIGxvdyBsZXZlbCBkZXRhaWxzIG9mIFBDSSB0
byBiZSBhYmxlIHRvCiAgICAgdGVsbCB3aGV0aGVyIHRoZXJlIGFyZSBhbnkgZmFpcm5lc3MgZ3Vh
cmFudGVlcyB0aGVyZS4KCi0tLSBhL1NVUFBPUlQubWQKKysrIGIvU1VQUE9SVC5tZApAQCAtODQx
LDYgKzg0MSwxMSBAQCBUaGlzIGZlYXR1cmUgaXMgbm90IHNlY3VyaXR5IHN1cHBvcnRlZDoKIAog
T25seSBzeXN0ZW1zIHVzaW5nIElPTU1VcyBhcmUgc3VwcG9ydGVkLgogCitQYXNzaW5nIHRocm91
Z2ggb2YgZGV2aWNlcyBzaGFyaW5nIHJlc291cmNlcyB3aXRoIGFub3RoZXIgZGV2aWNlIGlzIG5v
dAorc2VjdXJpdHkgc3VwcG9ydGVkLiAgU3VjaCBzaGFyaW5nIGNvdWxkIGUuZy4gYmUgdGhlIHNh
bWUgbGluZSBpbnRlcnJ1cHQgYmVpbmcKK3VzZWQgYnkgbXVsdGlwbGUgZGV2aWNlcywgb25lIG9m
IHdoaWNoIGlzIHRvIGJlIHBhc3NlZCB0aHJvdWdoLCBvciB0d28gc3VjaAorZGV2aWNlcyBoYXZp
bmcgbWVtb3J5IEJBUnMgd2l0aGluIHRoZSBzYW1lIDRrIHBhZ2UuCisKIE5vdCBjb21wYXRpYmxl
IHdpdGggbWlncmF0aW9uLCBwb3B1bGF0ZS1vbi1kZW1hbmQsIGFsdHAybSwKIGludHJvc3BlY3Rp
b24sIG1lbW9yeSBzaGFyaW5nLCBvciBtZW1vcnkgcGFnaW5nLgogCg==

--=separator--
