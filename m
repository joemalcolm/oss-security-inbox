X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["10872" "Tuesday" "22" "September" "2015" "15:15:56" "+0000" "Xen.org security team" "security@xen.org" "<E1ZePIS-0005E3-Cb@xenbits.xen.org>" "243" "[oss-security] Xen Security Advisory 142 (CVE-2015-7311) - libxl fails to honour readonly flag on disks with qemu-xen" nil nil nil "9" "2015092215:15:56" "[oss-security] Xen Security Advisory 142 (CVE-2015-7311) - libxl fails to honour readonly flag on disks with qemu-xen" (number mark "        security@xen Sep 22  243/10872 " thread-indent "\"[oss-security] Xen Security Advisory 142 (CVE-2015-7311) - libxl fails to honour readonly flag on disks with qemu-xen\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24319 invoked by uid 550); 22 Sep 2015 15:16:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24259 invoked from network); 22 Sep 2015 15:16:15 -0000
Message-Id: <E1ZePIS-0005E3-Cb@xenbits.xen.org>
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.428 (Entity 5.428)
CC: Xen.org security team <security@xen.org>
Date: Tue, 22 Sep 2015 15:15:56 +0000
From: Xen.org security team <security@xen.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Xen Security Advisory 142 (CVE-2015-7311) - libxl fails to honour
 readonly flag on disks with qemu-xen
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

            Xen Security Advisory CVE-2015-7311 / XSA-142
                              version 2

        libxl fails to honour readonly flag on disks with qemu-xen

UPDATES IN VERSION 2
====================

CVE assigned.

ISSUE DESCRIPTION
=================

Callers of libxl can specify that a disk should be read-only to the
guest.  However, there is no code in libxl to pass this information to
qemu-xen (the upstream-based qemu); and indeed there is no way in qemu
to make a disk read-only.

The vulnerability is exploitable only via devices emulated by the
device model, not the parallel PV devices for supporting PVHVM.
Normally the PVHVM device unplug protocol renders the emulated devices
inaccessible early in boot.

IMPACT
======

Malicious guest administrators or (in some situations) users may be
able to write to supposedly read-only disk images.

CDROM devices (that is, devices specified to be presented to the guest
as CDROMs, regardless of the nature of the backing storage on the
host) are not affected.

VULNERABLE SYSTEMS
==================

Only systems using qemu-xen (rather than qemu-xen-traditional) as the
device model version are vulnerable.

Only systems using libxl or libxl-based toolstacks are vulnerable.
(This includes xl, and libvirt with the libxl driver.)

All versions of libxl which support qemu-xen are vulnerable.  The
affected code was introduced in Xen 4.1.

If the host and guest together usually support PVHVM, the issue is
exploitable only if the malicious guest administrator has control of
the guest kernel or guest kernel command line.

MITIGATION
==========

Switching to qemu-xen-traditional will avoid this vulnerability.
This can be done with
   device_model_version="qemu-xen-traditional"
in the xl configuration file.

Using stub domain device models (which necessarily involves switching
to qemu-xen-traditional) will also avoid this vulnerability.
This can be done with
   device_model_stubdomain_override=true
in the xl configuration file.

Either of these mitigations is liable to have other guest-visible
effects or even regressions.

It may be possible, depending on the configuration, to make the
underlying storage object readonly, or to make it reject writes.

RESOLUTION
==========

There is no reasonable resolution because Qemu does not (at the time
of writing) support presenting a read-only block device to a guest as
a disk.

The attached patch corrects the weakness in the libxl code, by
rejecting the unsupported configurations, rather than allowing them to
run but with the device perhaps writeable by the guest.  Applying it
should increase confidence and avoid future configuration errors, but
will break affected configurations specifying read-only disk devices.

xsa142-4.6.patch                 Xen 4.6.x and later
xsa142-4.5.patch                 Xen 4.3.x to 4.5.x inclusive

$ sha256sum xsa142*.patch
9ec0649f39720bc692be03c87ebea0506d6ec574f339fc745e41b31643240124  xsa142-4.5.patch
65f01167bfc141048261f56b99ed9b48ec7ff6e98155454ced938a17ec20e7d1  xsa142-4.6.patch
$

NOTE REGARDING LACK OF EMBARGO
==============================

This issue was discussed in public in the Red Hat bugzilla:
  https://bugzilla.redhat.com/show_bug.cgi?id=1257893

CREDITS
=======

Thanks to Michael Young of Durham University for bring this problem to
our attention.

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJWAXCcAAoJEIP+FMlX6CvZ1asH/0yJQ9+33gZtE69Bxicms3C2
uSepfkZVBUym+eEBqGKd2hiapngIAInotOTk+iI7DDo41wvfnJxq1eaEaQ9XurKK
kylHOb8eHmYw+HwTW2kJV2g6ffeGBMIcI5mpK35yBa5NnNHHJz0b9ZeRzddR9rSR
0eQpuP4DlN1/2/z6obXmYms84Q1oiIzMDz+MzJA/zPtfL7Q/tBjUmMfPj67zNKwe
vIfIstI5IbCRgnXSEL9EjTckqNFszyr3pH4z/Y97UXWlbTg233ewAS11Wz/CwJKT
yzS4uJGpckqTRC3YKyS1unKCP39yAVIBTx4QoPu9hrWyzUJpZUD/FvmrIHhr8co=
=kHPH
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa142-4.5.patch"
Content-Disposition: attachment; filename="xsa142-4.5.patch"
Content-Transfer-Encoding: base64

RnJvbSAwN2NhMDA3MDNmNzZhZDM5MmVkYTVlZTUyY2NlMTE5N2NmNDljMzBh
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBTdGVmYW5vIFN0YWJl
bGxpbmkgPHN0ZWZhbm8uc3RhYmVsbGluaUBldS5jaXRyaXguY29tPgpTdWJq
ZWN0OiBbUEFUQ0ggdjIuMSBmb3ItNC41XSBsaWJ4bDogaGFuZGxlIHJlYWQt
b25seSBkcml2ZXMgd2l0aCBxZW11LXhlbgoKVGhlIGN1cnJlbnQgbGlieGwg
Y29kZSBkb2Vzbid0IGRlYWwgd2l0aCByZWFkLW9ubHkgZHJpdmVzIGF0IGFs
bC4KClVwc3RyZWFtIFFFTVUgYW5kIHFlbXUteGVuIG9ubHkgc3VwcG9ydCBy
ZWFkLW9ubHkgY2Ryb20gZHJpdmVzOiBtYWtlCnN1cmUgdG8gc3BlY2lmeSAi
cmVhZG9ubHk9b24iIGZvciBjZHJvbSBkcml2ZXMgYW5kIHJldHVybiBlcnJv
ciBpbiBjYXNlCnRoZSB1c2VyIHJlcXVlc3RlZCBhIG5vbi1jZHJvbSByZWFk
LW9ubHkgZHJpdmUuCgpUaGlzIGlzIFhTQS0xNDIsIGRpc2NvdmVyZWQgYnkg
TGluIExpdQooaHR0cHM6Ly9idWd6aWxsYS5yZWRoYXQuY29tL3Nob3dfYnVn
LmNnaT9pZD0xMjU3ODkzKS4KClNpZ25lZC1vZmYtYnk6IFN0ZWZhbm8gU3Rh
YmVsbGluaSA8c3RlZmFuby5zdGFiZWxsaW5pQGV1LmNpdHJpeC5jb20+CgpC
YWNrcG9ydCB0byBYZW4gNC41IGFuZCBlYXJsaWVyLCBhcHJvcG9zIG9mIHJl
cG9ydCBhbmQgcmV2aWV3IGZyb20KTWljaGFlbCBZb3VuZy4KClNpZ25lZC1v
ZmYtYnk6IElhbiBKYWNrc29uIDxpYW4uamFja3NvbkBldS5jaXRyaXguY29t
PgotLS0KIHRvb2xzL2xpYnhsL2xpYnhsX2RtLmMgfCAgIDEzICsrKysrKysr
Ky0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDQgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvdG9vbHMvbGlieGwvbGlieGxfZG0u
YyBiL3Rvb2xzL2xpYnhsL2xpYnhsX2RtLmMKaW5kZXggYjRjZTUyMy4uZDc0
ZmIxNCAxMDA2NDQKLS0tIGEvdG9vbHMvbGlieGwvbGlieGxfZG0uYworKysg
Yi90b29scy9saWJ4bC9saWJ4bF9kbS5jCkBAIC03OTcsMTMgKzc5NywxOCBA
QCBzdGF0aWMgY2hhciAqKiBsaWJ4bF9fYnVpbGRfZGV2aWNlX21vZGVsX2Fy
Z3NfbmV3KGxpYnhsX19nYyAqZ2MsCiAgICAgICAgICAgICBpZiAoZGlza3Nb
aV0uaXNfY2Ryb20pIHsKICAgICAgICAgICAgICAgICBpZiAoZGlza3NbaV0u
Zm9ybWF0ID09IExJQlhMX0RJU0tfRk9STUFUX0VNUFRZKQogICAgICAgICAg
ICAgICAgICAgICBkcml2ZSA9IGxpYnhsX19zcHJpbnRmCi0gICAgICAgICAg
ICAgICAgICAgICAgICAoZ2MsICJpZj1pZGUsaW5kZXg9JWQsbWVkaWE9Y2Ry
b20sY2FjaGU9d3JpdGViYWNrLGlkPWlkZS0laSIsCi0gICAgICAgICAgICAg
ICAgICAgICAgICAgZGlzaywgZGV2X251bWJlcik7CisgICAgICAgICAgICAg
ICAgICAgICAgICAoZ2MsICJpZj1pZGUsaW5kZXg9JWQscmVhZG9ubHk9JXMs
bWVkaWE9Y2Ryb20sY2FjaGU9d3JpdGViYWNrLGlkPWlkZS0laSIsCisgICAg
ICAgICAgICAgICAgICAgICAgICAgZGlzaywgZGlza3NbaV0ucmVhZHdyaXRl
ID8gIm9mZiIgOiAib24iLCBkZXZfbnVtYmVyKTsKICAgICAgICAgICAgICAg
ICBlbHNlCiAgICAgICAgICAgICAgICAgICAgIGRyaXZlID0gbGlieGxfX3Nw
cmludGYKLSAgICAgICAgICAgICAgICAgICAgICAgIChnYywgImZpbGU9JXMs
aWY9aWRlLGluZGV4PSVkLG1lZGlhPWNkcm9tLGZvcm1hdD0lcyxjYWNoZT13
cml0ZWJhY2ssaWQ9aWRlLSVpIiwKLSAgICAgICAgICAgICAgICAgICAgICAg
ICBkaXNrc1tpXS5wZGV2X3BhdGgsIGRpc2ssIGZvcm1hdCwgZGV2X251bWJl
cik7CisgICAgICAgICAgICAgICAgICAgICAgICAoZ2MsICJmaWxlPSVzLGlm
PWlkZSxpbmRleD0lZCxyZWFkb25seT0lcyxtZWRpYT1jZHJvbSxmb3JtYXQ9
JXMsY2FjaGU9d3JpdGViYWNrLGlkPWlkZS0laSIsCisgICAgICAgICAgICAg
ICAgICAgICAgICAgZGlza3NbaV0ucGRldl9wYXRoLCBkaXNrLCBkaXNrc1tp
XS5yZWFkd3JpdGUgPyAib2ZmIiA6ICJvbiIsIGZvcm1hdCwgZGV2X251bWJl
cik7CiAgICAgICAgICAgICB9IGVsc2UgeworICAgICAgICAgICAgICAgIGlm
ICghZGlza3NbaV0ucmVhZHdyaXRlKSB7CisgICAgICAgICAgICAgICAgICAg
IExJQlhMX19MT0coY3R4LCBMSUJYTF9fTE9HX0VSUk9SLCAicWVtdS14ZW4g
ZG9lc24ndCBzdXBwb3J0IHJlYWQtb25seSBkaXNrIGRyaXZlcnMiKTsKKyAg
ICAgICAgICAgICAgICAgICAgcmV0dXJuIE5VTEw7CisgICAgICAgICAgICAg
ICAgfQorCiAgICAgICAgICAgICAgICAgaWYgKGRpc2tzW2ldLmZvcm1hdCA9
PSBMSUJYTF9ESVNLX0ZPUk1BVF9FTVBUWSkgewogICAgICAgICAgICAgICAg
ICAgICBMSUJYTF9fTE9HKGN0eCwgTElCWExfX0xPR19XQVJOSU5HLCAiY2Fu
bm90IHN1cHBvcnQiCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IiBlbXB0eSBkaXNrIGZvcm1hdCBmb3IgJXMiLCBkaXNrc1tpXS52ZGV2KTsK
LS0gCjEuNy4xMC40Cgo=

--=separator
Content-Type: application/octet-stream; name="xsa142-4.6.patch"
Content-Disposition: attachment; filename="xsa142-4.6.patch"
Content-Transfer-Encoding: base64

RnJvbTogU3RlZmFubyBTdGFiZWxsaW5pIDxzdGVmYW5vLnN0YWJlbGxpbmlA
ZXUuY2l0cml4LmNvbT4KU3ViamVjdDogW1BBVENIIHYyIGZvci00LjZdIGxp
YnhsOiBoYW5kbGUgcmVhZC1vbmx5IGRyaXZlcyB3aXRoIHFlbXUteGVuCkRh
dGU6IFR1ZSwgMTUgU2VwIDIwMTUgMTA6NTI6MTQgKzAxMDAKClRoZSBjdXJy
ZW50IGxpYnhsIGNvZGUgZG9lc24ndCBkZWFsIHdpdGggcmVhZC1vbmx5IGRy
aXZlcyBhdCBhbGwuCgpVcHN0cmVhbSBRRU1VIGFuZCBxZW11LXhlbiBvbmx5
IHN1cHBvcnQgcmVhZC1vbmx5IGNkcm9tIGRyaXZlczogbWFrZQpzdXJlIHRv
IHNwZWNpZnkgInJlYWRvbmx5PW9uIiBmb3IgY2Ryb20gZHJpdmVzIGFuZCBy
ZXR1cm4gZXJyb3IgaW4gY2FzZQp0aGUgdXNlciByZXF1ZXN0ZWQgYSBub24t
Y2Ryb20gcmVhZC1vbmx5IGRyaXZlLgoKVGhpcyBpcyBYU0EtMTQyLCBkaXNj
b3ZlcmVkIGJ5IExpbiBMaXUKKGh0dHBzOi8vYnVnemlsbGEucmVkaGF0LmNv
bS9zaG93X2J1Zy5jZ2k/aWQ9MTI1Nzg5MykuCgpTaWduZWQtb2ZmLWJ5OiBT
dGVmYW5vIFN0YWJlbGxpbmkgPHN0ZWZhbm8uc3RhYmVsbGluaUBldS5jaXRy
aXguY29tPgotLS0KIHRvb2xzL2xpYnhsL2xpYnhsX2RtLmMgfCAgIDEzICsr
KysrKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyks
IDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvdG9vbHMvbGlieGwvbGli
eGxfZG0uYyBiL3Rvb2xzL2xpYnhsL2xpYnhsX2RtLmMKaW5kZXggMDJjMDE2
Mi4uNDY4ZmY5YyAxMDA2NDQKLS0tIGEvdG9vbHMvbGlieGwvbGlieGxfZG0u
YworKysgYi90b29scy9saWJ4bC9saWJ4bF9kbS5jCkBAIC0xMTEwLDEzICsx
MTEwLDE4IEBAIHN0YXRpYyBpbnQgbGlieGxfX2J1aWxkX2RldmljZV9tb2Rl
bF9hcmdzX25ldyhsaWJ4bF9fZ2MgKmdjLAogICAgICAgICAgICAgaWYgKGRp
c2tzW2ldLmlzX2Nkcm9tKSB7CiAgICAgICAgICAgICAgICAgaWYgKGRpc2tz
W2ldLmZvcm1hdCA9PSBMSUJYTF9ESVNLX0ZPUk1BVF9FTVBUWSkKICAgICAg
ICAgICAgICAgICAgICAgZHJpdmUgPSBsaWJ4bF9fc3ByaW50ZgotICAgICAg
ICAgICAgICAgICAgICAgICAgKGdjLCAiaWY9aWRlLGluZGV4PSVkLG1lZGlh
PWNkcm9tLGNhY2hlPXdyaXRlYmFjayxpZD1pZGUtJWkiLAotICAgICAgICAg
ICAgICAgICAgICAgICAgIGRpc2ssIGRldl9udW1iZXIpOworICAgICAgICAg
ICAgICAgICAgICAgICAgKGdjLCAiaWY9aWRlLGluZGV4PSVkLHJlYWRvbmx5
PSVzLG1lZGlhPWNkcm9tLGNhY2hlPXdyaXRlYmFjayxpZD1pZGUtJWkiLAor
ICAgICAgICAgICAgICAgICAgICAgICAgIGRpc2ssIGRpc2tzW2ldLnJlYWR3
cml0ZSA/ICJvZmYiIDogIm9uIiwgZGV2X251bWJlcik7CiAgICAgICAgICAg
ICAgICAgZWxzZQogICAgICAgICAgICAgICAgICAgICBkcml2ZSA9IGxpYnhs
X19zcHJpbnRmCi0gICAgICAgICAgICAgICAgICAgICAgICAoZ2MsICJmaWxl
PSVzLGlmPWlkZSxpbmRleD0lZCxtZWRpYT1jZHJvbSxmb3JtYXQ9JXMsY2Fj
aGU9d3JpdGViYWNrLGlkPWlkZS0laSIsCi0gICAgICAgICAgICAgICAgICAg
ICAgICAgZGlza3NbaV0ucGRldl9wYXRoLCBkaXNrLCBmb3JtYXQsIGRldl9u
dW1iZXIpOworICAgICAgICAgICAgICAgICAgICAgICAgKGdjLCAiZmlsZT0l
cyxpZj1pZGUsaW5kZXg9JWQscmVhZG9ubHk9JXMsbWVkaWE9Y2Ryb20sZm9y
bWF0PSVzLGNhY2hlPXdyaXRlYmFjayxpZD1pZGUtJWkiLAorICAgICAgICAg
ICAgICAgICAgICAgICAgIGRpc2tzW2ldLnBkZXZfcGF0aCwgZGlzaywgZGlz
a3NbaV0ucmVhZHdyaXRlID8gIm9mZiIgOiAib24iLCBmb3JtYXQsIGRldl9u
dW1iZXIpOwogICAgICAgICAgICAgfSBlbHNlIHsKKyAgICAgICAgICAgICAg
ICBpZiAoIWRpc2tzW2ldLnJlYWR3cml0ZSkgeworICAgICAgICAgICAgICAg
ICAgICBMSUJYTF9fTE9HKGN0eCwgTElCWExfX0xPR19FUlJPUiwgInFlbXUt
eGVuIGRvZXNuJ3Qgc3VwcG9ydCByZWFkLW9ubHkgZGlzayBkcml2ZXJzIik7
CisgICAgICAgICAgICAgICAgICAgIHJldHVybiBFUlJPUl9JTlZBTDsKKyAg
ICAgICAgICAgICAgICB9CisKICAgICAgICAgICAgICAgICBpZiAoZGlza3Nb
aV0uZm9ybWF0ID09IExJQlhMX0RJU0tfRk9STUFUX0VNUFRZKSB7CiAgICAg
ICAgICAgICAgICAgICAgIExJQlhMX19MT0coY3R4LCBMSUJYTF9fTE9HX1dB
Uk5JTkcsICJjYW5ub3Qgc3VwcG9ydCIKICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAiIGVtcHR5IGRpc2sgZm9ybWF0IGZvciAlcyIsIGRpc2tz
W2ldLnZkZXYpOwotLSAKMS43LjEwLjQK

--=separator--
