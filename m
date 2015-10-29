X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["17114" "Thursday" "29" "October" "2015" "12:00:58" "+0000" "Xen.org security team" "security@xen.org" "<E1Zrlt4-0002BW-DZ@xenbits.xen.org>" "375" "[oss-security] Xen Security Advisory 153 (CVE-2015-7972) - x86: populate-on-demand balloon size inaccuracy can crash guests" nil nil nil "10" "2015102912:00:58" "[oss-security] Xen Security Advisory 153 (CVE-2015-7972) - x86: populate-on-demand balloon size inaccuracy can crash guests" (number mark "U       security@xen Oct 29  375/17114 " thread-indent "\"[oss-security] Xen Security Advisory 153 (CVE-2015-7972) - x86: populate-on-demand balloon size inaccuracy can crash guests\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17503 invoked by uid 550); 29 Oct 2015 12:03:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31846 invoked from network); 29 Oct 2015 12:01:22 -0000
Message-Id: <E1Zrlt4-0002BW-DZ@xenbits.xen.org>
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.428 (Entity 5.428)
CC: Xen.org security team <security@xen.org>
Date: Thu, 29 Oct 2015 12:00:58 +0000
From: Xen.org security team <security@xen.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Xen Security Advisory 153 (CVE-2015-7972) - x86: populate-on-demand
 balloon size inaccuracy can crash guests
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

            Xen Security Advisory CVE-2015-7972 / XSA-153
                              version 3

     x86: populate-on-demand balloon size inaccuracy can crash guests

UPDATES IN VERSION 3
====================

Public release.

ISSUE DESCRIPTION
=================

The design of the memory populate-on-demand (PoD) system requires that
a guest's memory ballooning driver reach its memory reduction target.
The target is not entirely well-defined in terms of the information
visible to the appropriate parts of the system, so some unknown set of
guests (but probably most guests) will fail this criterion.

If the guest memory balloon driver does not free sufficient memory to
reach its target, the guest will proceed to run with a nonzero number
of outstanding PoD pages.  When the guest or management toolstack
touches such a page, the hypervisor would search the guest memory for
a page containing only zeroes.

If no such page is found, the guest crashes.  Prior to the patch for
XSA-150, the search might lock up the relevant physical cpu for a
while.  After the patch to XSA-150, it might crash the guest even if a
suitable zero page is available.

This means that in the current arrangements toolstack software must
apply an adjustment to a guest's PoD target as supplied to Xen.
Neither xend nor libxl do this.

IMPACT
======

Guests configured with PoD might be unstable, especially under load.

In an affected guest, an unprivileged guest user might be able to
cause a guest crash, perhaps simply by applying load so as to cause
heavy memory pressure within the guest.

This problem also allows an unprivileged guest user to exercise the
separate vulnerability described in XSA-150: an unprivileged guest
user might be able to cause a denial of service affecting the host.

VULNERABLE SYSTEMS
==================

The vulnerability is restricted to HVM guests which have been
constructed in Populate-on-Demand mode (ie, with memory < maxmem).

ARM is not vulnerable.  x86 PV VMs are not vulnerable.  x86 HVM
domains without PoD (ie started with memory==maxmem, or without
mentioning "maxmem" in the guest config file) are not vulnerable.

Systems using libxl (whether via xl, or libvirt, or another higher
layer) or xend (whether via xm, or libvirt, or another higher layer)
are vulnerable.

If the system has been stress-tested (by imposing memory load on the
guest) and found to be stable, it is less likely that the guest is
vulnerable.

Combinations of Xen, guest, guest balloon driver, and toolstack
software, which have an empirical adjustment as described in the
Description, and which have been formally stress-tested in PoD mode,
are less likely to be vulnerable.

Migration is not capable of creating a guest with outstanding PoD.  So
migrating a guest which is vulnerable might crash it.  However, if a
guest has been migrated successfully since it booted, it is no longer
vulnerable.

Xen versions back to 3.4.x are affected.

Vulnerability of a particular guest can be tested by the host
administrator using the utility `xsa153-check.c', attached to this
advisory.


MITIGATION
==========

Reducing the guest's memory target, after guest startup, can cause the
guest's ballon driver to eliminate the PoD discrepancy.  If the guest
successfully balloons down, it will no longer be vulnerable.

On systems using libxl this can be done with `xl mem-set', during or
after each guest boot:

   # ./xsa153-check `xl domid name-of-guest`
   checked domain 621 for XSA-153: VULNERABLE (1 more outstanding pages)
   try using   xl mem-set   to reduce its memory by 1 (Mby)
   or perhaps reduce /local/domain/621/memory/target by 4
   # xl list name-of-guest
   Name                  ID   Mem VCPUs      State   Time(s)
   name-of-guest        621   512     2     r-----     156.9
   # xl mem-set name-of-guest 511
   #
   [ wait for guest to give up memory ]
   # ./xsa153-check `xl domid name-of-guest`
   checked domain 621 for XSA-153: NOT vulnerable
   #

Alternatively, no matter the toolstack, it is possible for a host
administrator to bypass the toolstack code and give ballooning
instructions directly to the guest:

   [ suppose guest domid is 616, eg from xl domid name-of-guest  ]
   # ./xsa153-check 616
   checked domain 616 for XSA-153: VULNERABLE (1 more outstanding pages)
   try using   xl mem-set   to reduce its memory by 1 (Mby)
   or perhaps reduce /local/domain/616/memory/target by 4
   # xenstore-read /local/domain/616/memory/target
   520188
   # xenstore-write /local/domain/616/memory/target 520184
   #
   [ wait for guest to give up memory ]
   # ./xsa153-check `xl domid name-of-guest`
   checked domain 616 for XSA-153: NOT vulnerable
   #

The memory/target value is in decimal, and is a number of kilobytes;
it must be a multiple of 4, since a page is 4 Kb on affected systems.
The value to write should be some amount less than the value read.


It is not currently known whether use of the VM memory event
inspection facilities (in-tree, this means the xc_monitor utility)
might invalidate the workaround.


Note that guests may become unstable if given too little memory, so
large reductions of the memory target should be applied with caution,
if at all.  The expected offset related to XSA-153 is small (tens of
pages, perhaps).  If a large reduction is required, it is more likely
that either the guest is still booting up (and still working to reduce
the PoD memory), or that the guest's balloon driver is not
functioning:

   # ./xsa153-check `xl domid name-of-guest`
   checked domain 623 for XSA-153: VULNERABLE (65536 more outstanding pages)
   difference is >1Mby
   ballon driver not running or guest still booting?
   #

A guest without a working balloon driver will be unstable in PoD mode,
especially under memory pressure; this is an inherent feature of the
design of PoD.


RESOLUTION
==========

The attached patch fixes the problem for systems using libxl (via xl,
or via libvirt, or another higher layer).  At the time of writing
there is no patch for xend-based systems.

xsa153-libxl.patch            xen-unstable, Xen 4.5, Xen 4.6
xsa153-libxl.patch            Xen 4.1 to 4.4 inclusive, using libxl

(Xend was removed in Xen 4.5; so the libxl-only patch is always
sufficient for Xen 4.5 and later.)

$ sha256sum xsa153*
633df5d970af49476c2d279e604150c444834bb906f6568070f0c2e0ceaa3af4  xsa153-check.c
f5cbc98cba758e10da0a01d9379012ec56b98a85a92bfeb0c6b8132d4b91ce77  xsa153-libxl.patch
$

DEPLOYMENT DURING EMBARGO
=========================

Deployment of the patches and/or mitigations described above (or
others which are substantially similar) is permitted during the
embargo, even on public-facing systems with untrusted guest users and
administrators.

But: Distribution of updated software is prohibited (except to other
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


NOTE REGARDING SHORT EMBARGO
============================

This issue was quickly encountered by the Security Team during our
investigations of the scope and impact of XSA-150; this issue was
originally discussed in the `Incomplete Information' section of
XSA-150 v1.  Accordingly XSA-153 is embargoed and the embargo will
end at the same time as that of XSA-150.
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJWMgofAAoJEIP+FMlX6CvZaqUIAIzgbftJMwo2ywcWycAGzeDS
5iseCaCqx1OD8a00m+WvXTLX/yKKJQrgTJkDlJfgqEb4Y2NoVRUKShApSHsbFrFa
qeocl7ipBdXTYk0FZZrsBd/aCjQgL/NlYf0BCaV+tpPuehOBgJwWpIf4RltOQVkv
MxfRCGee52yUbWyFykmlKK3fxfGi4wXfMGN6zS9FXpudIBxjedRS4gyksERusXS7
hcRNEcLNzeQA+4PUmpkOzwS/NrtWiIU265kaHFsMUO8HbxcFgzFJ+15G0GK8JgY5
9XE0XWxn/B5Uc7IMiDxcFYT79C87XXvH4ctFArN9MJqss/ko0H25fz+Te8iWigc=
=vBPN
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa153-check.c"
Content-Disposition: attachment; filename="xsa153-check.c"
Content-Transfer-Encoding: base64

LyoKICogUHJvZ3JhbSB0byB0ZXN0IHdoZXRoZXIgYSBkb21haW4gaXMgcG90
ZW50aWFsbHkgdnVsbmVyYWJsZSB0bwogKiBYU0EtMTUzLgogKgogKiBCdWls
ZCBhbmQgcnVuOgogKiAgIGdjYyAtV2FsbCB4c2ExNTMtY2hlY2suYyAtbHhl
bmN0cmwKICogICAuL2Eub3V0IGB4bCBkb21pZCBOQU1FLU9GLVlPVVItR1VF
U1QtRE9NQUlOYAogKgogKiBGb3IgYnVpbGRpbmcgYWdhaW5zdCBhIGJ1aWx0
IFhlbiBzb3VyY2UgdHJlZSwgcmF0aGVyIHRoYW4gaW5zdGFsbGVkCiAqIGhl
YWRlcnMgYW5kIGxpYnJhcmllczoKICogICBnY2MgLVdhbGwgLUkgLi4veGVu
LmdpdC9kaXN0L2luc3RhbGwvdXNyL2luY2x1ZGUvIHhzYTE1My1jaGVjay5j
IC1MIC4uL3hlbi5naXQvZGlzdC9pbnN0YWxsL3Vzci9saWIvIC1seGVuY3Ry
bAogKgogKiBYZW4gNC4wIGFuZCBlYXJsaWVyIGxhY2sgeGNfZG9tYWluX2dl
dF9wb2RfdGFyZ2V0LCBzbyB0aGlzIHV0aWxpdHkKICogY2FuIG9ubHkgYmUg
YnVpbHQgYWdhaW5zdCBYZW4gNC4xIGFuZCBsYXRlci4KICoKICogSU1QT1JU
QU5UOiBSZWFkIHRoZSBub3RlcyBpbiBhZHZpc29yeS0xNTMudHh0IHRvIHVu
ZGVyc3RhbmQgbWVhbmluZwogKiBvZiB0aGUgb3V0cHV0IQogKi8KCiNpbmNs
dWRlIDx4ZW5jdHJsLmg+CiNpbmNsdWRlIDxzdGRsaWIuaD4KI2luY2x1ZGUg
PHN0ZGlvLmg+CgojaWZkZWYgWEVOQ1RSTF9IQVNfWENfSU5URVJGQUNFCnN0
YXRpYyB4Y19pbnRlcmZhY2UgKnhjaDsKI2RlZmluZSBCQURfWENIICh4Y2gg
PT0gTlVMTCkKI2RlZmluZSBPUEVOWENIIHhjX2ludGVyZmFjZV9vcGVuKDAs
MCwwKQojZWxzZQpzdGF0aWMgaW50IHhjaDsKI2RlZmluZSBCQURfWENIICh4
Y2ggPD0gMCkKI2RlZmluZSBPUEVOWENIIHhjX2ludGVyZmFjZV9vcGVuKCkK
I2VuZGlmCgppbnQgbWFpbihpbnQgYXJnYywgY29uc3QgY2hhciAqKmFyZ3Yp
IHsKICAgIGludCBkb21pZCwgZXN0YXR1cywgcjsKICAgIHVpbnQ2NF90IHRv
dF9wYWdlcywgcG9kX2NhY2hlX3BhZ2VzLCBwb2RfZW50cmllczsKCiAgICBp
ZiAoYXJnYyE9MiB8fCAhKGRvbWlkID0gYXRvaShhcmd2WzFdKSkpIHsKICAg
ICAgICBmcHV0cygiYmFkIHVzYWdlXG4iLHN0ZGVycik7CiAgICAgICAgZXhp
dCgtMSk7CiAgICB9CgogICAgeGNoID0gT1BFTlhDSDsKICAgIGlmIChCQURf
WENIKSB7CiAgICAgICAgcGVycm9yKCJ4Y19pbnRlcmZhY2Vfb3BlbiIpOwog
ICAgICAgIGV4aXQoLTEpOwogICAgfQoKICAgIHIgPSB4Y19kb21haW5fZ2V0
X3BvZF90YXJnZXQoeGNoLCBkb21pZCwKICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgJnRvdF9wYWdlcywKICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgJnBvZF9jYWNoZV9wYWdlcywKICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgJnBvZF9lbnRyaWVzKTsKICAgIGlmIChyKSB7
CiAgICAgICAgcGVycm9yKCJ4Y19kb21haW5fZ2V0X3BvZF90YXJnZXQiKTsK
ICAgICAgICBleGl0KC0xKTsKICAgIH0KCiAgICBwcmludGYoImNoZWNrZWQg
ZG9tYWluICVkIGZvciBYU0EtMTUzOiAiLCBkb21pZCk7CiAgICBpZiAocG9k
X2NhY2hlX3BhZ2VzIDwgcG9kX2VudHJpZXMpIHsKICAgICAgICB1aW50NjRf
dCBkaWZmZXJlbmNlID0gcG9kX2VudHJpZXMgLSBwb2RfY2FjaGVfcGFnZXM7
CiAgICAgICAgZXN0YXR1cyA9IDE7CiAgICAgICAgcHJpbnRmKCJWVUxORVJB
QkxFICglbHUgbW9yZSBvdXRzdGFuZGluZyBwYWdlcylcbiIsCiAgICAgICAg
ICAgICAgICh1bnNpZ25lZCBsb25nKWRpZmZlcmVuY2UpOwogICAgICAgIGlm
IChkaWZmZXJlbmNlIDw9IDI1NikgewogICAgICAgICAgICBwcmludGYoInRy
eSB1c2luZyAgIHhsIG1lbS1zZXQgICB0byByZWR1Y2UgaXRzIG1lbW9yeSBi
eSAxIChNYnkpXG4iCiAgICAgICAgICAgICAgICAgICAib3IgcGVyaGFwcyBy
ZWR1Y2UgL2xvY2FsL2RvbWFpbi8lZC9tZW1vcnkvdGFyZ2V0IGJ5ICVsdSIs
CiAgICAgICAgICAgICAgIGRvbWlkLAogICAgICAgICAgICAgICAodW5zaWdu
ZWQgbG9uZylkaWZmZXJlbmNlICogNCk7CiAgICAgICAgfSBlbHNlIHsKICAg
ICAgICAgICAgcHJpbnRmKCJkaWZmZXJlbmNlIGlzID4xTWJ5XG4iCiAgICAg
ICAgICAgICAgICAgICAiYmFsbG9uIGRyaXZlciBub3QgcnVubmluZyBvciBn
dWVzdCBzdGlsbCBib290aW5nPyIpOwogICAgICAgIH0KICAgIH0gZWxzZSBp
ZiAocG9kX2NhY2hlX3BhZ2VzID4gcG9kX2VudHJpZXMpIHsKICAgICAgICBl
c3RhdHVzID0gMjsKICAgICAgICBwcmludGYoIlNIT1VMRCBOT1QgSEFQUEVO
ISEhIGNhY2hlPSVsdSA+IG91dHN0YW5kaW5nPSVsdSIsCiAgICAgICAgICAg
ICAgICh1bnNpZ25lZCBsb25nKXBvZF9jYWNoZV9wYWdlcywgKHVuc2lnbmVk
IGxvbmcpcG9kX2VudHJpZXMpOwogICAgfSBlbHNlIGlmICghcG9kX2NhY2hl
X3BhZ2VzKSB7CiAgICAgICAgZXN0YXR1cyA9IDA7CiAgICAgICAgcHJpbnRm
KCJOT1QgdnVsbmVyYWJsZSAobm90IHVzaW5nIFBvRCAoYW55IG1vcmUpKSIp
OwogICAgfSBlbHNlIHsKICAgICAgICBlc3RhdHVzID0gMDsKICAgICAgICBw
cmludGYoIk5PVCB2dWxuZXJhYmxlIik7CiAgICB9CiAgICBwcmludGYoIlxu
Iik7CgogICAgaWYgKGZlcnJvcihzdGRvdXQpIHx8IGZjbG9zZShzdGRvdXQp
KSB7CiAgICAgICAgcGVycm9yKCJzdGRvdXQiKTsKICAgICAgICBleGl0KC0x
KTsKICAgIH0KICAgIGV4aXQoZXN0YXR1cyk7Cn0K

--=separator
Content-Type: application/octet-stream; name="xsa153-libxl.patch"
Content-Disposition: attachment; filename="xsa153-libxl.patch"
Content-Transfer-Encoding: base64

RnJvbSAyNzU5M2VjNjJiZGFkODYyMWRmOTEwOTMxMzQ5ZDk2NGE2ZGJhYThj
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBJYW4gSmFja3NvbiA8
aWFuLmphY2tzb25AZXUuY2l0cml4LmNvbT4KRGF0ZTogV2VkLCAyMSBPY3Qg
MjAxNSAxNjoxODozMCArMDEwMApTdWJqZWN0OiBbUEFUQ0ggWFNBLTE1MyB2
M10gbGlieGw6IGFkanVzdCBQb0QgdGFyZ2V0IGJ5IG1lbW9yeSBmdWRnZSwg
dG9vCgpQb0QgZ3Vlc3RzIG5lZWQgdG8gYmFsbG9vbiBhdCBsZWFzdCBhcyBm
YXIgYXMgcmVxdWlyZWQgYnkgUG9ELCBvciByaXNrCmNyYXNoaW5nLiAgQ3Vy
cmVudGx5IHRoZXkgZG9uJ3QgbmVjZXNzYXJpbHkga25vdyB3aGF0IHRoZSBy
aWdodCB2YWx1ZQppcywgYmVjYXVzZSBvdXIgbWVtb3J5IGFjY291bnRpbmcg
aXMgKGF0IHRoZSB2ZXJ5IGxlYXN0KSBjb25mdXNpbmcuCgpBcHBseSB0aGUg
bWVtb3J5IGxpbWl0IGZ1ZGdlIGZhY3RvciB0byB0aGUgaW4taHlwZXJ2aXNv
ciBQb0QgbWVtb3J5CnRhcmdldCwgdG9vLiAgVGhpcyB3aWxsIGluY3JlYXNl
IHRoZSBzaXplIG9mIHRoZSBndWVzdCdzIFBvRCBjYWNoZSBieQp0aGUgZnVk
Z2UgZmFjdG9yIExJQlhMX01BWE1FTV9DT05TVEFOVCAoY3VycmVudGx5IDFN
YnkpLiAgVGhpcyBlbnN1cmVzCnRoYXQgZXZlbiB3aXRoIGEgc2xpZ2h0bHkt
b2ZmIGJhbGxvb24gZHJpdmVyLCB0aGUgZ3Vlc3Qgd2lsbCBiZQpzdGFibGUg
ZXZlbiB1bmRlciBtZW1vcnkgcHJlc3N1cmUuCgpUaGVyZSBhcmUgdHdvIGNh
bGwgc2l0ZXMgb2YgeGNfZG9tYWluX3NldF9wb2RfdGFyZ2V0IHRoYXQgbmVl
ZCBmaXhpbmc6CgpUaGUgb25lIGluIGxpYnhsX3NldF9tZW1vcnlfdGFyZ2V0
IGlzIHN0cmFpZ2h0Zm9yd2FyZC4KClRoZSBvbmUgaW4geGNfaHZtX2J1aWxk
X3g4Ni5jOnNldHVwX2d1ZXN0IGlzIG1vcmUgYXdrd2FyZC4gIFNpbXBseQpz
ZXR0aW5nIHRoZSBQb0QgdGFyZ2V0IGRpZmZlcmVudGx5IGRvZXMgbm90IHdv
cmsgYmVjYXVzZSB0aGUgdmFyaW91cwphbW91bnRzIG9mIG1lbW9yeSBkdXJp
bmcgZG9tYWluIGNvbnN0cnVjdGlvbiBubyBsb25nZXIgbWF0Y2ggdXAuCklu
c3RlYWQsIHdlIGFkanVzdCB0aGUgZ3Vlc3QgbWVtb3J5IHRhcmdldCBpbiB4
ZW5zdG9yZSAoYnV0IG9ubHkgZm9yClBvRCBndWVzdHMpLgoKVGhpcyBpbnRy
b2R1Y2VzIGEgMU1ieSBkaXNjcmVwYW5jeSBiZXR3ZWVuIHRoZSBiYWxsb29u
IHRhcmdldCBvZiBhIFBvRApndWVzdCBhdCBib290LCBhbmQgdGhlIHRhcmdl
dCBzZXQgYnkgYW4gYXBwYXJlbnRseS1lcXVpdmFsZW50IGB4bAptZW0tc2V0
JyAob3Igc2ltaWxhcikgbGF0ZXIuICBUaGlzIGFwcHJvYWNoIGlzIGxvdy1y
aXNrIGZvciBhIHNlY3VyaXR5CmZpeCBidXQgd2UgbmVlZCB0byBmaXggdGhp
cyB1cCBwcm9wZXJseSBpbiB4ZW4uZ2l0I3N0YWdpbmcgYW5kCnByb2JhYmx5
IGFsc28gaW4gc3RhYmxlIHRyZWVzLgoKVGhpcyBpcyBYU0EtMTUzLgoKU2ln
bmVkLW9mZi1ieTogSWFuIEphY2tzb24gPElhbi5KYWNrc29uQGV1LmNpdHJp
eC5jb20+Ci0tLQogdG9vbHMvbGlieGwvbGlieGwuYyAgICAgfCAgICAyICst
CiB0b29scy9saWJ4bC9saWJ4bF9kb20uYyB8ICAgIDkgKysrKysrKystCiAy
IGZpbGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS90b29scy9saWJ4bC9saWJ4bC5jIGIvdG9vbHMv
bGlieGwvbGlieGwuYwppbmRleCBkMzhkMGM3Li4xMzY2MTc3IDEwMDY0NAot
LS0gYS90b29scy9saWJ4bC9saWJ4bC5jCisrKyBiL3Rvb2xzL2xpYnhsL2xp
YnhsLmMKQEAgLTQ4MTUsNyArNDgxNSw3IEBAIHJldHJ5X3RyYW5zYWN0aW9u
OgogICAgIH0KIAogICAgIHJjID0geGNfZG9tYWluX3NldF9wb2RfdGFyZ2V0
KGN0eC0+eGNoLCBkb21pZCwKLSAgICAgICAgICAgIG5ld190YXJnZXRfbWVt
a2IgLyA0LCBOVUxMLCBOVUxMLCBOVUxMKTsKKyAgICAgICAgICAgIChuZXdf
dGFyZ2V0X21lbWtiICsgTElCWExfTUFYTUVNX0NPTlNUQU5UKSAvIDQsIE5V
TEwsIE5VTEwsIE5VTEwpOwogICAgIGlmIChyYyAhPSAwKSB7CiAgICAgICAg
IExJQlhMX19MT0dfRVJSTk8oY3R4LCBMSUJYTF9fTE9HX0VSUk9SLAogICAg
ICAgICAgICAgICAgICJ4Y19kb21haW5fc2V0X3BvZF90YXJnZXQgZG9taWQ9
JWQsIG1lbWtiPSVkICIKZGlmZiAtLWdpdCBhL3Rvb2xzL2xpYnhsL2xpYnhs
X2RvbS5jIGIvdG9vbHMvbGlieGwvbGlieGxfZG9tLmMKaW5kZXggYjUxNDM3
Ny4uODAxOWY0ZSAxMDA2NDQKLS0tIGEvdG9vbHMvbGlieGwvbGlieGxfZG9t
LmMKKysrIGIvdG9vbHMvbGlieGwvbGlieGxfZG9tLmMKQEAgLTQ4Niw2ICs0
ODYsNyBAQCBpbnQgbGlieGxfX2J1aWxkX3Bvc3QobGlieGxfX2djICpnYywg
dWludDMyX3QgZG9taWQsCiAgICAgeHNfdHJhbnNhY3Rpb25fdCB0OwogICAg
IGNoYXIgKiplbnRzOwogICAgIGludCBpLCByYzsKKyAgICBpbnQ2NF90IG1l
bV90YXJnZXRfZnVkZ2U7CiAKICAgICBpZiAoaW5mby0+bnVtX3ZudW1hX25v
ZGVzICYmICFpbmZvLT5udW1fdmNwdV9zb2Z0X2FmZmluaXR5KSB7CiAgICAg
ICAgIHJjID0gc2V0X3ZudW1hX2FmZmluaXR5KGdjLCBkb21pZCwgaW5mbyk7
CkBAIC01MTgsMTEgKzUxOSwxNyBAQCBpbnQgbGlieGxfX2J1aWxkX3Bvc3Qo
bGlieGxfX2djICpnYywgdWludDMyX3QgZG9taWQsCiAgICAgICAgIH0KICAg
ICB9CiAKKyAgICBtZW1fdGFyZ2V0X2Z1ZGdlID0KKyAgICAgICAgKGluZm8t
PnR5cGUgPT0gTElCWExfRE9NQUlOX1RZUEVfSFZNICYmCisgICAgICAgICBp
bmZvLT5tYXhfbWVta2IgPiBpbmZvLT50YXJnZXRfbWVta2IpCisgICAgICAg
ID8gTElCWExfTUFYTUVNX0NPTlNUQU5UIDogMDsKKwogICAgIGVudHMgPSBs
aWJ4bF9fY2FsbG9jKGdjLCAxMiArIChpbmZvLT5tYXhfdmNwdXMgKiAyKSAr
IDIsIHNpemVvZihjaGFyICopKTsKICAgICBlbnRzWzBdID0gIm1lbW9yeS9z
dGF0aWMtbWF4IjsKICAgICBlbnRzWzFdID0gR0NTUFJJTlRGKCIlIlBSSWQ2
NCwgaW5mby0+bWF4X21lbWtiKTsKICAgICBlbnRzWzJdID0gIm1lbW9yeS90
YXJnZXQiOwotICAgIGVudHNbM10gPSBHQ1NQUklOVEYoIiUiUFJJZDY0LCBp
bmZvLT50YXJnZXRfbWVta2IgLSBpbmZvLT52aWRlb19tZW1rYik7CisgICAg
ZW50c1szXSA9IEdDU1BSSU5URigiJSJQUklkNjQsIGluZm8tPnRhcmdldF9t
ZW1rYiAtIGluZm8tPnZpZGVvX21lbWtiCisgICAgICAgICAgICAgICAgICAg
ICAgICAtIG1lbV90YXJnZXRfZnVkZ2UpOwogICAgIGVudHNbNF0gPSAibWVt
b3J5L3ZpZGVvcmFtIjsKICAgICBlbnRzWzVdID0gR0NTUFJJTlRGKCIlIlBS
SWQ2NCwgaW5mby0+dmlkZW9fbWVta2IpOwogICAgIGVudHNbNl0gPSAiZG9t
aWQiOwotLSAKMS43LjEwLjQKCg==

--=separator--
