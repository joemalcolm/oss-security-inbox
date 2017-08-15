X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7347" "Tuesday" "15" "August" "2017" "12:05:57" "+0000" "Xen.org security team" "security@xen.org" "<E1dhabd-0006gl-Oo@xenbits.xenproject.org>" "179" "[oss-security] Xen Security Advisory 229 (CVE-2017-12134) - linux: Fix Xen block IO merge-ability calculation" nil nil nil "8" "2017081512:05:57" "[oss-security] Xen Security Advisory 229 (CVE-2017-12134) - linux: Fix Xen block IO merge-ability calculation" (number mark "U       security@xen Aug 15  179/7347  " thread-indent "\"[oss-security] Xen Security Advisory 229 (CVE-2017-12134) - linux: Fix Xen block IO merge-ability calculation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19697 invoked by uid 550); 15 Aug 2017 12:06:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19585 invoked from network); 15 Aug 2017 12:06:23 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.505 (Entity 5.505)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security-team-members@xen.org>
Message-Id: <E1dhabd-0006gl-Oo@xenbits.xenproject.org>
Date: Tue, 15 Aug 2017 12:05:57 +0000
Subject: [oss-security] Xen Security Advisory 229 (CVE-2017-12134) - linux: Fix Xen block
 IO merge-ability calculation

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2017-12134 / XSA-229
                               version 3

            linux: Fix Xen block IO merge-ability calculation

UPDATES IN VERSION 3
====================

Public release.

ISSUE DESCRIPTION
=================

The block layer in Linux may choose to merge adjacent block IO requests.
When Linux is running as a Xen guest, the default merging algorithm is
replaced with a Xen-specific one.  When Linux is running as an x86 PV
guest, some BIO's are erroneously merged, corrupting the data stream
to/from the block device.

This can result in incorrect access to an uncontrolled adjacent frame.

IMPACT
======

A buggy or malicious guest can cause Linux to read or write incorrect
memory when processing a block stream.  This could leak information from
other guests in the system or from Xen itself, or be used to DoS or
escalate privilege within the system.

VULNERABLE SYSTEMS
==================

All x86 Xen systems using pvops Linux in a backend role (either as
dom0, or as a disk device driver domain) are affected.  This includes
upstream Linux versions 2.6.37 and later.  Systems using the older
classic-linux fork are not affected.

All PV x86 domains doing block IO on behalf of a guest, including dom0
and any PV driver domains, are vulnerable.  (Any HVM driver domains
running are not vulnerable.)  This includes Xen vbd backends such as
blkback, but also direct IO performed for the guest via eg qemu.

ARM systems are not affected.

The vulnerability is only exposed if the underlying block device has
request merging enabled.  See Mitigation.

The vulnerability is only exposed to configurations which use grant
mapping as a transport mechanism for the block data.  Configurations
which use exclusively grant copy are not vulnerable.

MITIGATION
==========

Disable bio merges on all relevant underlying backend block devices.
For example,
  echo 2 > /sys/block/nvme0n1/queue/nomerges

CREDITS
=======

This issue was discovered by Jan H. Schönherr of Amazon.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

xsa229.patch           Linux

$ sha256sum xsa229*
5f96c72c8c5a971d52f5540475a3fc6f4fef2071ec772ef21392fdc238eda858  xsa229.patch
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
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBCAAGBQJZkuNWAAoJEIP+FMlX6CvZBt4H/3tpKPBmzTaI5yKPdBf6wU7L
hjmKG6QROeWV+EX3wmmmRi+iG0M90hDYFCTmhdNY4sjCdDEFDMB1KM8XA/LwHlz2
3gX6TVKQ/cXQRJFhlWSZQUDDd5jPqZzDK7KnhS2DC+MjnKvnnuS6N2ibIfaHJmUG
HL6VdS7GZ8Z434mgOZskWPFn5xeaWd1vXGV+GI9Ih2RRn/axe6l0RSzgDpfeGB3T
hVRQdy9wW4aXrnnUXEuuz5JNlTU1fuGXGz7W5BDP8mu9l/dzmDye6NOgVqo5wAkz
+l/fRbFrjdO9JnKDpASDjGuoOCZgkBBxmG2wUz8COi6JTA5X0IRysG5OMOYZ/KU=
=lyzV
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa229.patch"
Content-Disposition: attachment; filename="xsa229.patch"
Content-Transfer-Encoding: base64

RnJvbSA4NDg4MjEzM2U3OTMyOTlmNjg1OTkxZTIwYTk2MzFhY2ZkMGE1NjA4
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBSb2dlciBQYXUgTW9u
bmUgPHJvZ2VyLnBhdUBjaXRyaXguY29tPgpEYXRlOiBUdWUsIDE4IEp1bCAy
MDE3IDE1OjAxOjAwICswMTAwClN1YmplY3Q6IHhlbjogZml4IGJpbyB2ZWMg
bWVyZ2luZwpNSU1FLVZlcnNpb246IDEuMApDb250ZW50LVR5cGU6IHRleHQv
cGxhaW47IGNoYXJzZXQ9VVRGLTgKQ29udGVudC1UcmFuc2Zlci1FbmNvZGlu
ZzogOGJpdAoKVGhlIGN1cnJlbnQgdGVzdCBmb3IgYmlvIHZlYyBtZXJnaW5n
IGlzIG5vdCBmdWxseSBhY2N1cmF0ZSBhbmQgY2FuIGJlCnRyaWNrZWQgaW50
byBtZXJnaW5nIGJpb3Mgd2hlbiBjZXJ0YWluIGdyYW50IGNvbWJpbmF0aW9u
cyBhcmUgdXNlZC4KVGhlIHJlc3VsdCBvZiB0aGVzZSBtYWxpY2lvdXMgYmlv
IG1lcmdlcyBpcyBhIGJpbyB0aGF0IGV4dGVuZHMgcGFzdAp0aGUgbWVtb3J5
IHBhZ2UgdXNlZCBieSBhbnkgb2YgdGhlIG9yaWdpbmF0aW5nIGJpb3MuCgpU
YWtlIGludG8gYWNjb3VudCB0aGUgZm9sbG93aW5nIHNjZW5hcmlvLCB3aGVy
ZSBhIGd1ZXN0IGNyZWF0ZXMgdHdvCmdyYW50IHJlZmVyZW5jZXMgdGhhdCBw
b2ludCB0byB0aGUgc2FtZSBtZm4sIGllOiBncmFudCAxIC0+IG1mbiBBLApn
cmFudCAyIC0+IG1mbiBBLgoKVGhlc2UgcmVmZXJlbmNlcyBhcmUgdGhlbiB1
c2VkIGluIGEgUFYgYmxvY2sgcmVxdWVzdCwgYW5kIG1hcHBlZCBieQp0aGUg
YmFja2VuZCBkb21haW4sIHRodXMgb2J0YWluaW5nIHR3byBkaWZmZXJlbnQg
cGZucyB0aGF0IHBvaW50IHRvCnRoZSBzYW1lIG1mbiwgcGZuIEIgLT4gbWZu
IEEsIHBmbiBDIC0+IG1mbiBBLgoKSWYgdGhvc2UgZ3JhbnRzIGhhcHBlbiB0
byBiZSB1c2VkIGluIHR3byBjb25zZWN1dGl2ZSBzZWN0b3JzIG9mIGEgZGlz
awpJTyBvcGVyYXRpb24gYmVjb21pbmcgdHdvIGRpZmZlcmVudCBiaW9zIGlu
IHRoZSBiYWNrZW5kIGRvbWFpbiwgdGhlCmNoZWNrcyBpbiB4ZW5fYmlvdmVj
X3BoeXNfbWVyZ2VhYmxlIHdpbGwgc3VjY2VlZCwgYmVjYXVzZSBiZm4xID09
IGJmbjIKKHRoZXkgYm90aCBwb2ludCB0byB0aGUgc2FtZSBtZm4pLiBIb3dl
dmVyIGR1ZSB0byB0aGUgYmlvIG1lcmdpbmcsCnRoZSBiYWNrZW5kIGRvbWFp
biB3aWxsIGVuZCB1cCB3aXRoIGEgYmlvIHRoYXQgZXhwYW5kcyBwYXN0IG1m
biBBIGludG8KbWZuIEEgKyAxLgoKRml4IHRoaXMgYnkgbWFraW5nIHN1cmUg
dGhlIGNoZWNrIGluIHhlbl9iaW92ZWNfcGh5c19tZXJnZWFibGUgdGFrZXMK
aW50byBhY2NvdW50IHRoZSBvZmZzZXQgYW5kIHRoZSBsZW5ndGggb2YgdGhl
IGJpbywgdGhpcyBiYXNpY2FsbHkKcmVwbGljYXRlcyB3aGF0cyBkb25lIGlu
IF9fQklPVkVDX1BIWVNfTUVSR0VBQkxFIHVzaW5nIG1mbnMgKGJ1cwphZGRy
ZXNzZXMpLiBXaGlsZSB0aGVyZSBhbHNvIHJlbW92ZSB0aGUgdXNhZ2Ugb2YK
X19CSU9WRUNfUEhZU19NRVJHRUFCTEUsIHNpbmNlIHRoYXQncyBhbHJlYWR5
IGNoZWNrZWQgYnkgdGhlIGNhbGxlcnMKb2YgeGVuX2Jpb3ZlY19waHlzX21l
cmdlYWJsZS4KClJlcG9ydGVkLWJ5OiAiSmFuIEguIFNjaMO2bmhlcnIiIDxq
c2Nob2VuaEBhbWF6b24uZGU+ClNpZ25lZC1vZmYtYnk6IFJvZ2VyIFBhdSBN
b25u6SA8cm9nZXIucGF1QGNpdHJpeC5jb20+ClJldmlld2VkLWJ5OiBKdWVy
Z2VuIEdyb3NzIDxqZ3Jvc3NAc3VzZS5jb20+Ci0tLQogZHJpdmVycy94ZW4v
YmlvbWVyZ2UuYyB8IDMgKy0tCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy94
ZW4vYmlvbWVyZ2UuYyBiL2RyaXZlcnMveGVuL2Jpb21lcmdlLmMKaW5kZXgg
NGRhNjlkYmY3ZGNhLi4xYmRkMDJhNmQ2YWMgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMveGVuL2Jpb21lcmdlLmMKKysrIGIvZHJpdmVycy94ZW4vYmlvbWVyZ2Uu
YwpAQCAtMTAsOCArMTAsNyBAQCBib29sIHhlbl9iaW92ZWNfcGh5c19tZXJn
ZWFibGUoY29uc3Qgc3RydWN0IGJpb192ZWMgKnZlYzEsCiAJdW5zaWduZWQg
bG9uZyBiZm4xID0gcGZuX3RvX2JmbihwYWdlX3RvX3Bmbih2ZWMxLT5idl9w
YWdlKSk7CiAJdW5zaWduZWQgbG9uZyBiZm4yID0gcGZuX3RvX2JmbihwYWdl
X3RvX3Bmbih2ZWMyLT5idl9wYWdlKSk7CiAKLQlyZXR1cm4gX19CSU9WRUNf
UEhZU19NRVJHRUFCTEUodmVjMSwgdmVjMikgJiYKLQkJKChiZm4xID09IGJm
bjIpIHx8ICgoYmZuMSsxKSA9PSBiZm4yKSk7CisJcmV0dXJuIGJmbjEgKyBQ
Rk5fRE9XTih2ZWMxLT5idl9vZmZzZXQgKyB2ZWMxLT5idl9sZW4pID09IGJm
bjI7CiAjZWxzZQogCS8qCiAJICogWFhYOiBBZGQgc3VwcG9ydCBmb3IgbWVy
Z2luZyBiaW9fdmVjIHdoZW4gdXNpbmcgZGlmZmVyZW50IHBhZ2UKLS0gCjIu
MTEuMCAoQXBwbGUgR2l0LTgxKQoK

--=separator--
