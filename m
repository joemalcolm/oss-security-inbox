X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5474" "Thursday" "29" "October" "2015" "12:00:31" "+0000" "Xen.org security team" "security@xen.org" "<E1Zrlsd-00025q-DJ@xenbits.xen.org>" "159" "[oss-security] Xen Security Advisory 149 (CVE-2015-7969) - leak of main per-domain vcpu pointer array" nil nil nil "10" "2015102912:00:31" "[oss-security] Xen Security Advisory 149 (CVE-2015-7969) - leak of main per-domain vcpu pointer array" (number mark "U       security@xen Oct 29  159/5474  " thread-indent "\"[oss-security] Xen Security Advisory 149 (CVE-2015-7969) - leak of main per-domain vcpu pointer array\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3093 invoked by uid 550); 29 Oct 2015 12:01:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27718 invoked from network); 29 Oct 2015 12:00:48 -0000
Date: Thu, 29 Oct 2015 12:00:31 +0000
Message-Id: <E1Zrlsd-00025q-DJ@xenbits.xen.org>
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.428 (Entity 5.428)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security@xen.org>
Subject: [oss-security] Xen Security Advisory 149 (CVE-2015-7969) - leak of main
 per-domain vcpu pointer array

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

            Xen Security Advisory CVE-2015-7969 / XSA-149
                              version 3

              leak of main per-domain vcpu pointer array

UPDATES IN VERSION 3
====================

Public release.

ISSUE DESCRIPTION
=================

A domain's primary array of vcpu pointers can be allocated by a
toolstack exactly once in the lifetime of a domain via the
XEN_DOMCTL_max_vcpus hypercall.

This array is leaked on domain teardown.  This memory leak could --
over time -- exhaust the host's memory.

IMPACT
======

A domain given partial management control via XEN_DOMCTL_max_vcpus can
mount a denial of service attack affecting the whole system.

The ability to also restart or create suitable domains is also
required to fully exploit the issue.  Without this the leak is limited
to a small multiple of the maximum number of vcpus for the domain.

The maximum leak is 64kbytes per domain (re)boot (less on ARM).

VULNERABLE SYSTEMS
==================

This issue is only relevant to systems which intend to increase
security through the use of advanced disaggregated management
techniques.

This does not include systems using libxl, libvirt, or OpenStack
(unless substantially modified or supplemented, as compared to
versions supplied by the respective upstreams).

Versions of Xen from 4.0 onwards are vulnerable.

All architectures are affected.

MITIGATION
==========

The leak is small.  Preventing the creation of large numbers of new
domains, and limiting the number of times an existing domain can be
rebooted, can reduce the impact of this vulnerability.

Switching from disaggregated to a non-disaggregated operation does NOT
mitigate the XEN_DOMCTL_max_vcpus vulnerability.  Rather, it simply
recategorises the vulnerability to hostile management code, regarding
it "as designed"; thus it merely reclassifies these issues as "not a
bug".  Users and vendors of disaggregated systems should not change
their configuration.

NOTE REGARDING CVE
==================

Note that CVE-2015-7969 covers both this issue and XSA-151.

CREDITS
=======

This issue was discovered by Ian Campbell of Citrix.

RESOLUTION
==========

Applying the attached patch resolves this issue.
(To resolve CVE-2015-7969, the patch from XSA-151 is required too.)

xsa149.patch        xen-unstable, Xen 4.6.x, Xen 4.5.x, Xen 4.4.x, Xen 4.3.x

$ sha256sum xsa149*.patch
e01628400b81c4bb7bafba348f2ecb1fe80f16e3162cee5013e0be1d7311738b  xsa149.patch
$

DEPLOYMENT DURING EMBARGO
=========================

Deployment of the PATCH (or others which are substantially similar) is
permitted during the embargo, even on public-facing systems with
untrusted guest users and administrators.


However deployment of the (RE)BOOT LIMIT MITIGATION is NOT permitted
(except where all the affected systems and VMs are administered and
used only by organisations which are members of the Xen Project
Security Issues Predisclosure List).  Specifically, deployment on
public cloud systems is NOT permitted.

This is because applying domain creation and reboot limits in
connection with a security issue would be a user-visible change which
could lead to the rediscovery of the vulnerability.

Deployment of the mitigation is permitted only AFTER the embargo ends.


Also: Distribution of updated software is prohibited (except to other
members of the predisclosure list).

Predisclosure list members who wish to deploy significantly different
patches and/or mitigations, please contact the Xen Project Security
Team.


(Note: this during-embargo deployment notice is retained in
post-embargo publicly released Xen Project advisories, even though it
is then no longer applicable.  This is to enable the community to have
oversight of the Xen Project Security Team's decisionmaking.)

For more information about permissible uses of embargoed information,
consult the Xen Project community's agreed Security Policy:
  http://www.xenproject.org/security-policy.html
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJWMgm7AAoJEIP+FMlX6CvZ5EEH/RpWXVKVpA5JdTGGfWan9ojV
+9Froz+RdUJmINLHE/sIIAudfCIlc7zA1Ap/ukSUC9YfBZvjwMpiouTz2IJV+kgp
C0zTjTHrqf0RG7k9aXKTqDNhHWP/FukVv6V4KZ+vmC9CluV8ODhnvogO0bS4wO2y
dzJAtQZxhD1r0rgvLWlT0Wq0LylTqW6mXg0lHiBv+HFonKJAIEeg/0dJbriKsc0N
1+vI4DujVzE1Q3LuhkGtaxdGyZ/4rcfMexmIYHzpvehHLXKa63oHg7IGX2SchiKb
YFumc9K3sYdv+AHkqM9FdtKEgDvwcHL9+d4YVgGfQm9ukh2onEC6uw7VeVnPlXY=
=/Ww0
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa149.patch"
Content-Disposition: attachment; filename="xsa149.patch"
Content-Transfer-Encoding: base64

eGVuOiBmcmVlIGRvbWFpbidzIHZjcHUgYXJyYXkKClRoaXMgd2FzIG92ZXJs
b29rZWQgaW4gZmI0NDJlMjE3MSAoIng4Nl82NDogYWxsb3cgbW9yZSB2Q1BV
LXMgcGVyCmd1ZXN0IikuCgpUaGlzIGlzIFhTQS0xNDkuCgpTaWduZWQtb2Zm
LWJ5OiBKYW4gQmV1bGljaCA8amJldWxpY2hAc3VzZS5jb20+ClJldmlld2Vk
LWJ5OiBJYW4gQ2FtcGJlbGwgPGlhbi5jYW1wYmVsbEBjaXRyaXguY29tPgoK
LS0tIGEveGVuL2NvbW1vbi9kb21haW4uYworKysgYi94ZW4vY29tbW9uL2Rv
bWFpbi5jCkBAIC04NDEsNiArODQxLDcgQEAgc3RhdGljIHZvaWQgY29tcGxl
dGVfZG9tYWluX2Rlc3Ryb3koc3RydQogCiAgICAgeHNtX2ZyZWVfc2VjdXJp
dHlfZG9tYWluKGQpOwogICAgIGZyZWVfY3B1bWFza192YXIoZC0+ZG9tYWlu
X2RpcnR5X2NwdW1hc2spOworICAgIHhmcmVlKGQtPnZjcHUpOwogICAgIGZy
ZWVfZG9tYWluX3N0cnVjdChkKTsKIAogICAgIHNlbmRfZ2xvYmFsX3ZpcnEo
VklSUV9ET01fRVhDKTsK

--=separator--
