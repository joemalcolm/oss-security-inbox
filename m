X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8036" "Wednesday" "16" "March" "2016" "19:04:28" "+0000" "Xen.org security team" "security@xen.org" "<E1agGk8-0004TL-Uh@xenbits.xenproject.org>" "205" "[oss-security] Xen Security Advisory 171 (CVE-2016-3157) - I/O port access privilege escalation in x86-64 Linux" nil nil nil "3" "2016031619:04:28" "[oss-security] Xen Security Advisory 171 (CVE-2016-3157) - I/O port access privilege escalation in x86-64 Linux" (number mark "U       security@xen Mar 16  205/8036  " thread-indent "\"[oss-security] Xen Security Advisory 171 (CVE-2016-3157) - I/O port access privilege escalation in x86-64 Linux\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29829 invoked by uid 550); 16 Mar 2016 19:04:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29794 invoked from network); 16 Mar 2016 19:04:49 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.505 (Entity 5.505)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security@xen.org>
Message-Id: <E1agGk8-0004TL-Uh@xenbits.xenproject.org>
Date: Wed, 16 Mar 2016 19:04:28 +0000
Subject: [oss-security] Xen Security Advisory 171 (CVE-2016-3157) - I/O port access
 privilege escalation in x86-64 Linux

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

            Xen Security Advisory CVE-2016-3157 / XSA-171
                              version 4

         I/O port access privilege escalation in x86-64 Linux

UPDATES IN VERSION 4
====================

Clarify Vulnerable Systems section.

Public release.

ISSUE DESCRIPTION
=================

IRET and POPF do not modify EFLAGS.IOPL when executed by code at a
privilege level other than zero.  Since PV Xen guests run at privilege
level 3 (for 64-bit ones; 32-bit ones run at privilege level 1), to
compensate for this the context switching of EFLAGS.IOPL requires the
guest to make use of a dedicated hypercall (PHYSDEVOP_set_iopl).  The
invocation of this hypercall, while present in the 32-bit context
switch path, is missing from its 64-bit counterpart.

IMPACT
======

User mode processes not supposed to be able to access I/O ports may
be granted such permission, potentially resulting in one or more of
in-guest privilege escalation, guest crashes (Denial of Service), or
in-guest information leaks.

VULNERABLE SYSTEMS
==================

All upstream x86-64 Linux versions operating as PV Xen guests are
vulnerable.

ARM systems are not vulnerable.  x86 HVM guests are not vulnerable.
32-bit Linux guests are not vulnerable.

x86-64 Linux versions derived from linux-2.6.18-xen.hg (XenoLinux) are
not vulnerable.

We believe that non-Linux guests are not vulnerable, as we are not
aware of any with an analogous bug.

MITIGATION
==========

Running only HVM or 32-bit PV guests will avoid this issue.

CREDITS
=======

This issue was discovered by Andy Lutomirski.

RESOLUTION
==========

Applying the attached patch resolves this issue for the indicated Linux
versions.

xsa171.patch           Linux 4.5-rc7, Linux 4.4.x

$ sha256sum xsa171*
5d47ead1212c735b444ac8f82e7f311cda3473fe3847e576c3772ce020265dfd  xsa171.patch
$


DEPLOYMENT DURING EMBARGO
=========================

The patch is a change to the domU, ie, to the guest, not to hosts.


Where the guest kernel is provided by the host administrator
- ------------------------------------------------------------

Deployment of the patch by the host administrator is NOT permitted
(except where all the affected systems and VMs are administered and
used only by organisations which are members of the Xen Project
Security Issues Predisclosure List).  Specifically, deployment on
public cloud systems is NOT permitted.

This is because a the cloud guest administrator is almost certainly in
a position to see the changes that are made by to the kernel even if
the kernel is provided by the host administrator.

Deployment is permitted only AFTER the embargo ends.


Where the guest kernel is provided by the guest administrator
- -------------------------------------------------------------

Deployment of the patch (or another which is substantially similar) by
the guest administrator is permitted during the embargo ONLY if
 (i) the host administrator organisation is also a member of the Xen
     Project Security Issues Predisclosure List.
 (ii) all the guest's users are also members of predisclosure list.
     (guest users includes administrators of Linux containers running
     within the guest).

Restriction (i) is because the host administrator can see changes that
made to the kernel by a guest administrator.  Restriction (ii) is
because it is difficult to fully conceal the Linux kernel from
unprivileged guest user processes.

If the host is not operated by a member of the predisclosure list, or
the guest has users outside the predisclousre list, deployment is
permitted only AFTER the embargo ends.


In any case
- -----------

Distribution of updated software is prohibited (except to other
members of the predisclosure list).

Predisclosure list members who wish to deploy significantly different
patches and/or mitigations, or whose situation is not clearly covered
above, please contact the Xen Project Security Team.


(Note: this during-embargo deployment notice is retained in
post-embargo publicly released Xen Project advisories, even though it
is then no longer applicable.  This is to enable the community to have
oversight of the Xen Project Security Team's decisionmaking.)

For more information about permissible uses of embargoed information,
consult the Xen Project community's agreed Security Policy:
  http://www.xenproject.org/security-policy.html
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJW6a4ZAAoJEIP+FMlX6CvZEs4H/12hKU3NzqfHZb/wOW9PeT4Z
yhGQ2mkVE6FATW15b+/+Lr4N2nIUHa40BtWjPyEOQR4UXJrZr3R5HL/wINRO7c6M
5XNjDyHqmfhOAsHWsrTB0a3CP2wWNNQ6LiBN5AuiUwoqiJiZPLhKCeEi99F+rFFK
IINyOgd4XSeGRkb96GfZcPbizbO3wqiREfBIAjECYchBARv7JVGr3my6R3YBYdTn
VtBratEPdkEmAEn0LtdiQlnjPib5O3paiaIDk41IPbPu1WPiozt3RJSqJUSwu+al
A3qe9cBGz0NyghdYkXQjvaPP+1Q3BjyJC4hgGLo+yqyODPdaFAJZ0mjR/e0uajs=
=F9Nz
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa171.patch"
Content-Disposition: attachment; filename="xsa171.patch"
Content-Transfer-Encoding: base64

RnJvbTogQW5keSBMdXRvbWlyc2tpIDxsdXRvQGtlcm5lbC5vcmc+Cgp4ODYv
aW9wbC82NDogcHJvcGVybHkgY29udGV4dC1zd2l0Y2ggSU9QTCBvbiBYZW4g
UFYKCk9uIFhlbiBQViwgcmVncy0+ZmxhZ3MgZG9lc24ndCByZWxpYWJseSBy
ZWZsZWN0IElPUEwgYW5kIHRoZQpleGl0LXRvLXVzZXJzcGFjZSBjb2RlIGRv
ZXNuJ3QgY2hhbmdlIElPUEwuICBXZSBuZWVkIHRvIGNvbnRleHQKc3dpdGNo
IGl0IG1hbnVhbGx5LgoKSSdtIGRvaW5nIHRoaXMgd2l0aG91dCBnb2luZyB0
aHJvdWdoIHBhcmF2aXJ0IGJlY2F1c2UgdGhpcyBpcwpzcGVjaWZpYyB0byBY
ZW4gUFYuICBBZnRlciB0aGUgZHVzdCBzZXR0bGVzLCB3ZSBjYW4gbWVyZ2Ug
dGhpcyB3aXRoCnRoZSAzMi1iaXQgY29kZSwgdGlkeSB1cCB0aGUgaW9wbCBz
eXNjYWxsIGltcGxlbWVudGF0aW9uLCBhbmQgcmVtb3ZlCnRoZSBzZXRfaW9w
bCBwdm9wIGVudGlyZWx5LgoKVGhpcyBpcyBYU0EtMTcxLgoKU2lnbmVkLW9m
Zi1ieTogQW5keSBMdXRvbWlyc2tpIDxsdXRvQGtlcm5lbC5vcmc+CkNjOiBz
dGFibGVAdmdlci5rZXJuZWwub3JnIApSZXZpZXdlZC1ieTogSmFuIEJldWxp
Y2ggPGpiZXVsaWNoQHN1c2UuY29tPgoKLS0tIGEvYXJjaC94ODYvaW5jbHVk
ZS9hc20veGVuL2h5cGVydmlzb3IuaAorKysgYi9hcmNoL3g4Ni9pbmNsdWRl
L2FzbS94ZW4vaHlwZXJ2aXNvci5oCkBAIC02Miw0ICs2Miw2IEBAIHZvaWQg
eGVuX2FyY2hfcmVnaXN0ZXJfY3B1KGludCBudW0pOwogdm9pZCB4ZW5fYXJj
aF91bnJlZ2lzdGVyX2NwdShpbnQgbnVtKTsKICNlbmRpZgogCit2b2lkIHhl
bl9zZXRfaW9wbF9tYXNrKHVuc2lnbmVkIG1hc2spOworCiAjZW5kaWYgLyog
X0FTTV9YODZfWEVOX0hZUEVSVklTT1JfSCAqLwotLS0gYS9hcmNoL3g4Ni9r
ZXJuZWwvcHJvY2Vzc182NC5jCisrKyBiL2FyY2gveDg2L2tlcm5lbC9wcm9j
ZXNzXzY0LmMKQEAgLTQ4LDYgKzQ4LDcgQEAKICNpbmNsdWRlIDxhc20vc3lz
Y2FsbHMuaD4KICNpbmNsdWRlIDxhc20vZGVidWdyZWcuaD4KICNpbmNsdWRl
IDxhc20vc3dpdGNoX3RvLmg+CisjaW5jbHVkZSA8YXNtL3hlbi9oeXBlcnZp
c29yLmg+CiAKIGFzbWxpbmthZ2UgZXh0ZXJuIHZvaWQgcmV0X2Zyb21fZm9y
ayh2b2lkKTsKIApAQCAtNDExLDYgKzQxMiwxNyBAQCBfX3N3aXRjaF90byhz
dHJ1Y3QgdGFza19zdHJ1Y3QgKnByZXZfcCwgc3RydWN0IHRhc2tfc3RydWN0
ICpuZXh0X3ApCiAJCSAgICAgdGFza190aHJlYWRfaW5mbyhwcmV2X3ApLT5m
bGFncyAmIF9USUZfV09SS19DVFhTV19QUkVWKSkKIAkJX19zd2l0Y2hfdG9f
eHRyYShwcmV2X3AsIG5leHRfcCwgdHNzKTsKIAorI2lmZGVmIENPTkZJR19Y
RU4KKwkvKgorCSAqIE9uIFhlbiBQViwgSU9QTCBiaXRzIGluIHB0X3JlZ3Mt
PmZsYWdzIGhhdmUgbm8gZWZmZWN0LCBhbmQKKwkgKiBjdXJyZW50X3B0X3Jl
Z3MoKS0+ZmxhZ3MgbWF5IG5vdCBtYXRjaCB0aGUgY3VycmVudCB0YXNrJ3MK
KwkgKiBpbnRlbmRlZCBJT1BMLiAgV2UgbmVlZCB0byBzd2l0Y2ggaXQgbWFu
dWFsbHkuCisJICovCisJaWYgKHVubGlrZWx5KHN0YXRpY19jcHVfaGFzKFg4
Nl9GRUFUVVJFX1hFTlBWKSAmJgorCQkgICAgIHByZXYtPmlvcGwgIT0gbmV4
dC0+aW9wbCkpCisJCXhlbl9zZXRfaW9wbF9tYXNrKG5leHQtPmlvcGwpOwor
I2VuZGlmCisKIAlpZiAoc3RhdGljX2NwdV9oYXNfYnVnKFg4Nl9CVUdfU1lT
UkVUX1NTX0FUVFJTKSkgewogCQkvKgogCQkgKiBBTUQgQ1BVcyBoYXZlIGEg
bWlzZmVhdHVyZTogU1lTUkVUIHNldHMgdGhlIFNTIHNlbGVjdG9yIGJ1dAot
LS0gYS9hcmNoL3g4Ni94ZW4vZW5saWdodGVuLmMKKysrIGIvYXJjaC94ODYv
eGVuL2VubGlnaHRlbi5jCkBAIC05NjEsNyArOTYxLDcgQEAgc3RhdGljIHZv
aWQgeGVuX2xvYWRfc3AwKHN0cnVjdCB0c3Nfc3RydWN0ICp0c3MsCiAJdHNz
LT54ODZfdHNzLnNwMCA9IHRocmVhZC0+c3AwOwogfQogCi1zdGF0aWMgdm9p
ZCB4ZW5fc2V0X2lvcGxfbWFzayh1bnNpZ25lZCBtYXNrKQordm9pZCB4ZW5f
c2V0X2lvcGxfbWFzayh1bnNpZ25lZCBtYXNrKQogewogCXN0cnVjdCBwaHlz
ZGV2X3NldF9pb3BsIHNldF9pb3BsOwogCg==

--=separator--
