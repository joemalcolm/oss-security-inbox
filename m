X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7721" "Tuesday" "9" "July" "2019" "13:55:58" "+0000" "Xen.org security team" "security@xen.org" "<E1hkqb8-0005kj-Mn@xenbits.xenproject.org>" "183" "[oss-security] Xen Security Advisory 300 v1 - Linux: No grant table and foreign mapping limits" nil nil nil "7" "2019070913:55:58" "[oss-security] Xen Security Advisory 300 v1 - Linux: No grant table and foreign mapping limits" (number mark "U       security@xen Jul  9  183/7721  " thread-indent "\"[oss-security] Xen Security Advisory 300 v1 - Linux: No grant table and foreign mapping limits\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Xen Security Advisory 300 v1 - Linux: No grant table and foreign mapping limits" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22119 invoked by uid 550); 9 Jul 2019 13:56:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22087 invoked from network); 9 Jul 2019 13:56:22 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.508 (Entity 5.508)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security-team-members@xen.org>
Message-Id: <E1hkqb8-0005kj-Mn@xenbits.xenproject.org>
Date: Tue, 09 Jul 2019 13:55:58 +0000
Subject: [oss-security] Xen Security Advisory 300 v1 - Linux: No grant table and foreign
 mapping limits

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

                    Xen Security Advisory XSA-300

             Linux: No grant table and foreign mapping limits

ISSUE DESCRIPTION
=================

Virtual device backends and device models running in domain 0, or
other backend driver domains, need to be able to map guest memory
(either via grant mappings, or via the foreign mapping interface).
For Linux to keep track of these mappings, it needs to have a page
structure for each one.  In practice the number of page structures is
usually limited.  In PV dom0, a range of pfns are typically set aside
at boot ("pre-ballooned") for this purpose; for PVH and Arm dom0s, no
memory is set aside to begin with.  In either case, when more of this
"foreign / grant map pfn space" is needed, dom0 will balloon out extra
pages to use for this purpose.

Unfortunately, in Linux, there are no limits, either on the total
amount of memory which dom0 will attempt to balloon down to, nor on
the amount of "foreign / grant map" memory which any individual guest
can consume.

As a result, a malicious guest may be able, with crafted requests to
the backend, to cause dom0 to exhaust its own memory, leading to a
host crash; and if this is not possible, it may be able to monopolize
all of the foreign / grant map pfn space, starving out other guests.

IMPACT
======

Guest may be able to crash domain 0 (Host Denial-of-Service); or may
be able to starve out I/O requests from other guests (Guest
Denial-of-Service).

VULNERABLE SYSTEMS
==================

All versions of Linux are vulnerable.

All Arm dom0s are vulnerable; on x86, PVH dom0 is generally vulnerable,
while PV dom0's vulnerability depends on what, if any, "dom0_mem="
option was passed to Xen.

MITIGATION
==========

On PV dom0, the amount of "pre-ballooned" memory can be increased by
limiting dom0 memory via "dom0_mem=", but avoiding use of the
"dom0_mem=max:<value>" form of the command line option, or by making
the delta between "actual" and "maximum" sufficiently large.  This makes
the attack more difficult to accomplish.

CREDITS
=======

This issue was discovered by Julien Grall of ARM.

RESOLUTION
==========

Applying the appropriate attached patch resolves the domain 0 memory
exhaustion issue.

NOTE: This does NOT fix the guest starvation issue.  Fixing fixing
this issue is more complex, and it was determined that it was better
to work on a robust fix for the issue in public.  This advisory will
be updated when fixes are available.

xsa300-linux-5.1.patch     Linux 4.4 ... 5.2-rc

$ sha256sum xsa300*
9c8a9aec52b147f8e8ef41444e1dd11803bacf3bd4d0f6efa863b16f7a9621ac  xsa300-linux-5.1.patch
$

NOTE ON LACK OF EMBARGO
=======================

The lack of predisclosure is due to a short schedule set by the
discoverer, and efforts to resolve the advisory wording.

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
-----BEGIN PGP SIGNATURE-----

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAl0knK4MHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZVp0H/2P+7XAtIAS2owhUnTBPSmM/93LZBHr67DCGSoix
afHEumj4b3omIssAEo912BXpG0tjzCBlStwacRDc/11Ku4XtB/hlr5TG89c2tfVd
QMtvWeAdDjWE2YkwZ3TK5BgaYMwoUSMdwXtG2NGpVGFj4jy4AUL5e+sZKAiMTbl2
f3ursyyts/cgJTLq1KHfX3jVlqcRLvv0yGXLsZ0BQbktnEpptETPPtBvEQQ+Uqkb
WjqxCvzmh0Szc9mnhLSxS2LDA6W/y/r37XawpwJIZNpE12+sQRZ48KqeFysTK4Yp
MRZokgzOBOXfHVa25LpgtZzL5DmRR5AfWYkmgmIX8s7NaH8=
=OKdx
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa300-linux-5.1.patch"
Content-Disposition: attachment; filename="xsa300-linux-5.1.patch"
Content-Transfer-Encoding: base64

RnJvbSBlYTQ5NDUwZGVkNTc1ZmFjYzBlNjRlMGQ2YWRjYjFjYThhYWFkMGJh
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBKdWVyZ2VuIEdyb3Nz
IDxqZ3Jvc3NAc3VzZS5jb20+CkRhdGU6IFdlZCwgMTkgSnVuIDIwMTkgMTE6
MDA6NTYgKzAyMDAKU3ViamVjdDogW1BBVENIXSB4ZW46IGxldCBhbGxvY194
ZW5iYWxsb29uZWRfcGFnZXMoKSBmYWlsIGlmIG5vdCBlbm91Z2ggbWVtb3J5
CiBmcmVlCgpJbnN0ZWFkIG9mIHRyeWluZyB0byBhbGxvY2F0ZSBwYWdlcyB3
aXRoIEdGUF9VU0VSIGluCmFkZF9iYWxsb29uZWRfcGFnZXMoKSBjaGVjayB0
aGUgYXZhaWxhYmxlIGZyZWUgbWVtb3J5IHZpYQpzaV9tZW1fYXZhaWxhYmxl
KCkuIEdGUF9VU0VSIGlzIGZhciBsZXNzIGxpbWl0aW5nIG1lbW9yeSBleGhh
dXN0aW9uCnRoYW4gdGhlIHRlc3QgdmlhIHNpX21lbV9hdmFpbGFibGUoKS4K
ClRoaXMgd2lsbCBhdm9pZCBkb20wIHJ1bm5pbmcgb3V0IG9mIG1lbW9yeSBk
dWUgdG8gZXhjZXNzaXZlIGZvcmVpZ24KcGFnZSBtYXBwaW5ncyBlc3BlY2lh
bGx5IG9uIEFSTSBhbmQgb24geDg2IGluIFBWSCBtb2RlLCBhcyB0aG9zZSBk
b24ndApoYXZlIGEgcHJlLWJhbGxvb25lZCBhcmVhIHdoaWNoIGNhbiBiZSB1
c2VkIGZvciBmb3JlaWduIG1hcHBpbmdzLgoKQXMgdGhlIG5vcm1hbCBiYWxs
b29uaW5nIHN1ZmZlcnMgZnJvbSB0aGUgc2FtZSBwcm9ibGVtIGRvbid0IGJh
bGxvb24KZG93biBtb3JlIHRoYW4gc2lfbWVtX2F2YWlsYWJsZSgpIHBhZ2Vz
IGluIG9uZSBpdGVyYXRpb24uIEF0IHRoZSBzYW1lCnRpbWUgbGltaXQgdGhl
IGRlZmF1bHQgbWF4aW11bSBudW1iZXIgb2YgcmV0cmllcy4KClJlcG9ydGVk
LWJ5OiBKdWxpZW4gR3JhbGwgPGp1bGllbi5ncmFsbEBhcm0uY29tPgpTaWdu
ZWQtb2ZmLWJ5OiBKdWVyZ2VuIEdyb3NzIDxqZ3Jvc3NAc3VzZS5jb20+Ci0t
LQogZHJpdmVycy94ZW4vYmFsbG9vbi5jIHwgMTYgKysrKysrKysrKysrKy0t
LQogMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDMgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy94ZW4vYmFsbG9vbi5jIGIv
ZHJpdmVycy94ZW4vYmFsbG9vbi5jCmluZGV4IGQzN2RkNWJiN2E4Zi4uNTU5
NzY4ZGMyNTY3IDEwMDY0NAotLS0gYS9kcml2ZXJzL3hlbi9iYWxsb29uLmMK
KysrIGIvZHJpdmVycy94ZW4vYmFsbG9vbi5jCkBAIC01MzgsOCArNTM4LDE1
IEBAIHN0YXRpYyB2b2lkIGJhbGxvb25fcHJvY2VzcyhzdHJ1Y3Qgd29ya19z
dHJ1Y3QgKndvcmspCiAJCQkJc3RhdGUgPSByZXNlcnZlX2FkZGl0aW9uYWxf
bWVtb3J5KCk7CiAJCX0KIAotCQlpZiAoY3JlZGl0IDwgMCkKLQkJCXN0YXRl
ID0gZGVjcmVhc2VfcmVzZXJ2YXRpb24oLWNyZWRpdCwgR0ZQX0JBTExPT04p
OworCQlpZiAoY3JlZGl0IDwgMCkgeworCQkJbG9uZyBuX3BhZ2VzOworCisJ
CQluX3BhZ2VzID0gbWluKC1jcmVkaXQsIHNpX21lbV9hdmFpbGFibGUoKSk7
CisJCQlzdGF0ZSA9IGRlY3JlYXNlX3Jlc2VydmF0aW9uKG5fcGFnZXMsIEdG
UF9CQUxMT09OKTsKKwkJCWlmIChzdGF0ZSA9PSBCUF9ET05FICYmIG5fcGFn
ZXMgIT0gLWNyZWRpdCAmJgorCQkJICAgIG5fcGFnZXMgPCB0b3RhbHJlc2Vy
dmVfcGFnZXMpCisJCQkJc3RhdGUgPSBCUF9FQUdBSU47CisJCX0KIAogCQlz
dGF0ZSA9IHVwZGF0ZV9zY2hlZHVsZShzdGF0ZSk7CiAKQEAgLTU3OCw2ICs1
ODUsOSBAQCBzdGF0aWMgaW50IGFkZF9iYWxsb29uZWRfcGFnZXMoaW50IG5y
X3BhZ2VzKQogCQl9CiAJfQogCisJaWYgKHNpX21lbV9hdmFpbGFibGUoKSA8
IG5yX3BhZ2VzKQorCQlyZXR1cm4gLUVOT01FTTsKKwogCXN0ID0gZGVjcmVh
c2VfcmVzZXJ2YXRpb24obnJfcGFnZXMsIEdGUF9VU0VSKTsKIAlpZiAoc3Qg
IT0gQlBfRE9ORSkKIAkJcmV0dXJuIC1FTk9NRU07CkBAIC03MTAsNyArNzIw
LDcgQEAgc3RhdGljIGludCBfX2luaXQgYmFsbG9vbl9pbml0KHZvaWQpCiAJ
YmFsbG9vbl9zdGF0cy5zY2hlZHVsZV9kZWxheSA9IDE7CiAJYmFsbG9vbl9z
dGF0cy5tYXhfc2NoZWR1bGVfZGVsYXkgPSAzMjsKIAliYWxsb29uX3N0YXRz
LnJldHJ5X2NvdW50ID0gMTsKLQliYWxsb29uX3N0YXRzLm1heF9yZXRyeV9j
b3VudCA9IFJFVFJZX1VOTElNSVRFRDsKKwliYWxsb29uX3N0YXRzLm1heF9y
ZXRyeV9jb3VudCA9IDQ7CiAKICNpZmRlZiBDT05GSUdfWEVOX0JBTExPT05f
TUVNT1JZX0hPVFBMVUcKIAlzZXRfb25saW5lX3BhZ2VfY2FsbGJhY2soJnhl
bl9vbmxpbmVfcGFnZSk7Ci0tIAoyLjE2LjQKCg==

--=separator--
