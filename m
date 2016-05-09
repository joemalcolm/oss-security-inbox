X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8307" "Monday" "9" "May" "2016" "17:33:28" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1605091724170.23120@wniryva>" "157" "[oss-security] CVE-2016-3710 Qemu: vga: out-of-bounds r/w access issue" nil nil nil "5" "2016050912:03:28" "[oss-security] CVE-2016-3710 Qemu: vga: out-of-bounds r/w access issue" (number mark "U       ppandit@redh May  9  157/8307  " thread-indent "\"[oss-security] CVE-2016-3710 Qemu: vga: out-of-bounds r/w access issue\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18335 invoked by uid 550); 9 May 2016 12:04:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18317 invoked from network); 9 May 2016 12:04:04 -0000
Date: Mon, 9 May 2016 17:33:28 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Michael Roth <mdroth@linux.vnet.ibm.com>,
        Peter Maydell <peter.maydell@linaro.org>,
        Gerd Hoffmann <ghoffman@redhat.com>,
        Stefano Stabellini <sstabellini@kernel.org>,
        Qinghao Tang <luodalongde@gmail.com>
Message-ID: <alpine.LFD.2.20.1605091724170.23120@wniryva>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="0-228632453-1462795033=:23120"
Content-ID: <alpine.LFD.2.20.1605091727320.23120@wniryva>
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Mon, 09 May 2016 12:03:52 +0000 (UTC)
Subject: [oss-security] CVE-2016-3710 Qemu: vga: out-of-bounds r/w access issue

--0-228632453-1462795033=:23120
Content-Type: text/plain; CHARSET=US-ASCII; format=flowed
Content-ID: <alpine.LFD.2.20.1605091727321.23120@wniryva>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

    Hello,

An out-of-bounds r/w access issue was reported in the Qemu emulator's VGA 
module.

Qemu VGA module allows banked access to video memory using the window at 
0xa00000 and it supports different access modes with different address 
calculations. A privileged guest user could use this flaw to exceed the bank 
address window and write beyond the said memory area, potentially leading to 
arbitrary code execution with privileges of the Qemu process on a host. 
(Important)

'CVE-2016-3710' has been assigned to this issue by Red Hat Inc. Patch attached 
herein fixes this issue.

This issue was discovered and reported by "Wei Xiao and Qinghao Tang of 360 
Marvel Team" of 360.cn Inc.

They have named this issue as - "Dark Portal"

Thank you.
- --
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJXMHyQAAoJEN0TPTL+WwQfnnIQAImX2cxVTrPmGrPwFC66di8N
OIme91B7rFjFUQJ46Z+F3PmlsUsgDo9hwhg3VLOsQWeju06+C6fTV01dNvxL88re
mE7S5uQTRwOs9tR/ojxIYlwq6FnPek4yISRo9VsiQi/d8QD4+IPxg4mRH6nP9O4M
g9pYQrHAdKCGBsMmHUnIXJ5xamKO0oZMqJOfzZZUfZCDU3cy1p6pN6f2FVdgm7il
5/A5YJpC3Qvz9AM8DZ2jJOrEXMqIGucjt5fggOTzq3eNely6+Q1EV4i96+U08PrM
TeQqwNC1hEVSISpOKTM3V43XPnjpbbyb7SOMy2W4CCUq/NZTAQP9+HGzwarZ4IrF
xeVqJyyT9zewPRBuQX7XpG6cgKpHP3RuS4cYprMLccugd9fvYire7adRGeGfO25c
Rk3q1uSYWD4PkqalyprpjhXi85hQg2YbHRbc4Mjf1LAVExBYHoKb0vtZ0KnUXZTh
4h9HYPH1NnVKConQFXtSVEkcBgTAOtgKgHjDM/rZ0xNPnKsi4yVmJhBqSpmZ5c4b
VsnIggSpL0MtcDePKZN028a4bbkxdHUUCuADkBuNZSc5siBhzWFysO2CD5GaU7Qv
ZWV1IkxXbyZUXGgTzASvrsLtyXmBrB8EfQivZc2nVJCO3fHS1vGMPz6ccNKmRVnQ
T5mRyogkCnGI6B/lY8nj
=zy94
-----END PGP SIGNATURE-----
--0-228632453-1462795033=:23120
Content-Type: text/plain; CHARSET=US-ASCII; NAME=0001-vga-fix-banked-access-bounds-checking-CVE-2016-3710.patch
Content-Transfer-Encoding: BASE64
Content-ID: <alpine.LFD.2.20.1605091727134.23120@wniryva>
Content-Description: 
Content-Disposition: ATTACHMENT; FILENAME=0001-vga-fix-banked-access-bounds-checking-CVE-2016-3710.patch

RnJvbSAzYmYxODE3MDc5YmIwZDgwYzBkOGE4NmE3YzdkZDBiZmU5MGViODJl
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQ0KRnJvbTogR2VyZCBIb2ZmbWFu
biA8a3JheGVsQHJlZGhhdC5jb20+DQpEYXRlOiBUdWUsIDI2IEFwciAyMDE2
IDA4OjQ5OjEwICswMjAwDQpTdWJqZWN0OiBbUEFUQ0ggMS81XSB2Z2E6IGZp
eCBiYW5rZWQgYWNjZXNzIGJvdW5kcyBjaGVja2luZyAoQ1ZFLTIwMTYtMzcx
MCkNCg0KdmdhIGFsbG93cyBiYW5rZWQgYWNjZXNzIHRvIHZpZGVvIG1lbW9y
eSB1c2luZyB0aGUgd2luZG93IGF0IDB4YTAwMDAwDQphbmQgaXQgc3VwcG9y
dHMgYSBkaWZmZXJlbnQgYWNjZXNzIG1vZGVzIHdpdGggZGlmZmVyZW50IGFk
ZHJlc3MNCmNhbGN1bGF0aW9ucy4NCg0KVGhlIFZCRSBib2NocyBleHRlbnRp
b25zIHN1cHBvcnQgYmFua2VkIGFjY2VzcyB0b28sIHVzaW5nIHRoZQ0KVkJF
X0RJU1BJX0lOREVYX0JBTksgcmVnaXN0ZXIuICBUaGUgY29kZSB0cmllcyB0
byB0YWtlIHRoZSBkaWZmZXJlbnQNCmFkZHJlc3MgY2FsY3VsYXRpb25zIGlu
dG8gYWNjb3VudCBhbmQgYXBwbGllcyBkaWZmZXJlbnQgbGltaXRzIHRvDQpW
QkVfRElTUElfSU5ERVhfQkFOSyBkZXBlbmRpbmcgb24gdGhlIGN1cnJlbnQg
YWNjZXNzIG1vZGUuDQoNCldoaWNoIGlzIHByb2JhYmx5IGVmZmVjdGl2ZSBp
biBzdG9wcGluZyBtaXNwcm9ncmFtbWluZyBieSBhY2NpZGVudC4NCkJ1dCBm
cm9tIGEgc2VjdXJpdHkgcG9pbnQgb2YgdmlldyBjb21wbGV0ZWx5IHVzZWxl
c3MgYXMgYW4gYXR0YWNrZXINCmNhbiBlYXNpbHkgY2hhbmdlIGFjY2VzcyBt
b2RlcyBhZnRlciBzZXR0aW5nIHRoZSBiYW5rIHJlZ2lzdGVyLg0KDQpEcm9w
IHRoZSBib2d1cyBjaGVjaywgYWRkIHJhbmdlIGNoZWNrcyB0byB2Z2FfbWVt
X3tyZWFkYix3cml0ZWJ9DQppbnN0ZWFkLg0KDQpGaXhlczogQ1ZFLTIwMTYt
MzcxMA0KUmVwb3J0ZWQtYnk6IFFpbmdoYW8gVGFuZyA8bHVvZGFsb25nZGVA
Z21haWwuY29tPg0KU2lnbmVkLW9mZi1ieTogR2VyZCBIb2ZmbWFubiA8a3Jh
eGVsQHJlZGhhdC5jb20+DQotLS0NCiBody9kaXNwbGF5L3ZnYS5jIHwgMjQg
KysrKysrKysrKysrKysrKysrLS0tLS0tDQogMSBmaWxlIGNoYW5nZWQsIDE4
IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQg
YS9ody9kaXNwbGF5L3ZnYS5jIGIvaHcvZGlzcGxheS92Z2EuYw0KaW5kZXgg
NjU3ZTlmMS4uYjkxOTFjYSAxMDA2NDQNCi0tLSBhL2h3L2Rpc3BsYXkvdmdh
LmMNCisrKyBiL2h3L2Rpc3BsYXkvdmdhLmMNCkBAIC0xNzksNiArMTc5LDcg
QEAgc3RhdGljIHZvaWQgdmdhX3VwZGF0ZV9tZW1vcnlfYWNjZXNzKFZHQUNv
bW1vblN0YXRlICpzKQ0KICAgICAgICAgICAgIHNpemUgPSAweDgwMDA7DQog
ICAgICAgICAgICAgYnJlYWs7DQogICAgICAgICB9DQorICAgICAgICBhc3Nl
cnQob2Zmc2V0ICsgc2l6ZSA8PSBzLT52cmFtX3NpemUpOw0KICAgICAgICAg
bWVtb3J5X3JlZ2lvbl9pbml0X2FsaWFzKCZzLT5jaGFpbjRfYWxpYXMsIG1l
bW9yeV9yZWdpb25fb3duZXIoJnMtPnZyYW0pLA0KICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICJ2Z2EuY2hhaW40IiwgJnMtPnZyYW0sIG9m
ZnNldCwgc2l6ZSk7DQogICAgICAgICBtZW1vcnlfcmVnaW9uX2FkZF9zdWJy
ZWdpb25fb3ZlcmxhcChzLT5sZWdhY3lfYWRkcmVzc19zcGFjZSwgYmFzZSwN
CkBAIC03MTYsMTEgKzcxNyw3IEBAIHZvaWQgdmJlX2lvcG9ydF93cml0ZV9k
YXRhKHZvaWQgKm9wYXF1ZSwgdWludDMyX3QgYWRkciwgdWludDMyX3QgdmFs
KQ0KICAgICAgICAgICAgIHZiZV9maXh1cF9yZWdzKHMpOw0KICAgICAgICAg
ICAgIGJyZWFrOw0KICAgICAgICAgY2FzZSBWQkVfRElTUElfSU5ERVhfQkFO
SzoNCi0gICAgICAgICAgICBpZiAocy0+dmJlX3JlZ3NbVkJFX0RJU1BJX0lO
REVYX0JQUF0gPT0gNCkgew0KLSAgICAgICAgICAgICAgdmFsICY9IChzLT52
YmVfYmFua19tYXNrID4+IDIpOw0KLSAgICAgICAgICAgIH0gZWxzZSB7DQot
ICAgICAgICAgICAgICB2YWwgJj0gcy0+dmJlX2JhbmtfbWFzazsNCi0gICAg
ICAgICAgICB9DQorICAgICAgICAgICAgdmFsICY9IHMtPnZiZV9iYW5rX21h
c2s7DQogICAgICAgICAgICAgcy0+dmJlX3JlZ3Nbcy0+dmJlX2luZGV4XSA9
IHZhbDsNCiAgICAgICAgICAgICBzLT5iYW5rX29mZnNldCA9ICh2YWwgPDwg
MTYpOw0KICAgICAgICAgICAgIHZnYV91cGRhdGVfbWVtb3J5X2FjY2Vzcyhz
KTsNCkBAIC04MTksMTMgKzgxNiwyMSBAQCB1aW50MzJfdCB2Z2FfbWVtX3Jl
YWRiKFZHQUNvbW1vblN0YXRlICpzLCBod2FkZHIgYWRkcikNCiANCiAgICAg
aWYgKHMtPnNyW1ZHQV9TRVFfTUVNT1JZX01PREVdICYgVkdBX1NSMDRfQ0hO
XzRNKSB7DQogICAgICAgICAvKiBjaGFpbiA0IG1vZGUgOiBzaW1wbGVzdCBh
Y2Nlc3MgKi8NCisgICAgICAgIGFzc2VydChhZGRyIDwgcy0+dnJhbV9zaXpl
KTsNCiAgICAgICAgIHJldCA9IHMtPnZyYW1fcHRyW2FkZHJdOw0KICAgICB9
IGVsc2UgaWYgKHMtPmdyW1ZHQV9HRlhfTU9ERV0gJiAweDEwKSB7DQogICAg
ICAgICAvKiBvZGQvZXZlbiBtb2RlIChha2EgdGV4dCBtb2RlIG1hcHBpbmcp
ICovDQogICAgICAgICBwbGFuZSA9IChzLT5ncltWR0FfR0ZYX1BMQU5FX1JF
QURdICYgMikgfCAoYWRkciAmIDEpOw0KLSAgICAgICAgcmV0ID0gcy0+dnJh
bV9wdHJbKChhZGRyICYgfjEpIDw8IDEpIHwgcGxhbmVdOw0KKyAgICAgICAg
YWRkciA9ICgoYWRkciAmIH4xKSA8PCAxKSB8IHBsYW5lOw0KKyAgICAgICAg
aWYgKGFkZHIgPj0gcy0+dnJhbV9zaXplKSB7DQorICAgICAgICAgICAgcmV0
dXJuIDB4ZmY7DQorICAgICAgICB9DQorICAgICAgICByZXQgPSBzLT52cmFt
X3B0clthZGRyXTsNCiAgICAgfSBlbHNlIHsNCiAgICAgICAgIC8qIHN0YW5k
YXJkIFZHQSBsYXRjaGVkIGFjY2VzcyAqLw0KKyAgICAgICAgaWYgKGFkZHIg
KiBzaXplb2YodWludDMyX3QpID49IHMtPnZyYW1fc2l6ZSkgew0KKyAgICAg
ICAgICAgIHJldHVybiAweGZmOw0KKyAgICAgICAgfQ0KICAgICAgICAgcy0+
bGF0Y2ggPSAoKHVpbnQzMl90ICopcy0+dnJhbV9wdHIpW2FkZHJdOw0KIA0K
ICAgICAgICAgaWYgKCEocy0+Z3JbVkdBX0dGWF9NT0RFXSAmIDB4MDgpKSB7
DQpAQCAtODgyLDYgKzg4Nyw3IEBAIHZvaWQgdmdhX21lbV93cml0ZWIoVkdB
Q29tbW9uU3RhdGUgKnMsIGh3YWRkciBhZGRyLCB1aW50MzJfdCB2YWwpDQog
ICAgICAgICBwbGFuZSA9IGFkZHIgJiAzOw0KICAgICAgICAgbWFzayA9ICgx
IDw8IHBsYW5lKTsNCiAgICAgICAgIGlmIChzLT5zcltWR0FfU0VRX1BMQU5F
X1dSSVRFXSAmIG1hc2spIHsNCisgICAgICAgICAgICBhc3NlcnQoYWRkciA8
IHMtPnZyYW1fc2l6ZSk7DQogICAgICAgICAgICAgcy0+dnJhbV9wdHJbYWRk
cl0gPSB2YWw7DQogI2lmZGVmIERFQlVHX1ZHQV9NRU0NCiAgICAgICAgICAg
ICBwcmludGYoInZnYTogY2hhaW40OiBbMHgiIFRBUkdFVF9GTVRfcGx4ICJd
XG4iLCBhZGRyKTsNCkBAIC04OTUsNiArOTAxLDkgQEAgdm9pZCB2Z2FfbWVt
X3dyaXRlYihWR0FDb21tb25TdGF0ZSAqcywgaHdhZGRyIGFkZHIsIHVpbnQz
Ml90IHZhbCkNCiAgICAgICAgIG1hc2sgPSAoMSA8PCBwbGFuZSk7DQogICAg
ICAgICBpZiAocy0+c3JbVkdBX1NFUV9QTEFORV9XUklURV0gJiBtYXNrKSB7
DQogICAgICAgICAgICAgYWRkciA9ICgoYWRkciAmIH4xKSA8PCAxKSB8IHBs
YW5lOw0KKyAgICAgICAgICAgIGlmIChhZGRyID49IHMtPnZyYW1fc2l6ZSkg
ew0KKyAgICAgICAgICAgICAgICByZXR1cm47DQorICAgICAgICAgICAgfQ0K
ICAgICAgICAgICAgIHMtPnZyYW1fcHRyW2FkZHJdID0gdmFsOw0KICNpZmRl
ZiBERUJVR19WR0FfTUVNDQogICAgICAgICAgICAgcHJpbnRmKCJ2Z2E6IG9k
ZC9ldmVuOiBbMHgiIFRBUkdFVF9GTVRfcGx4ICJdXG4iLCBhZGRyKTsNCkBA
IC05NjgsNiArOTc3LDkgQEAgdm9pZCB2Z2FfbWVtX3dyaXRlYihWR0FDb21t
b25TdGF0ZSAqcywgaHdhZGRyIGFkZHIsIHVpbnQzMl90IHZhbCkNCiAgICAg
ICAgIG1hc2sgPSBzLT5zcltWR0FfU0VRX1BMQU5FX1dSSVRFXTsNCiAgICAg
ICAgIHMtPnBsYW5lX3VwZGF0ZWQgfD0gbWFzazsgLyogb25seSB1c2VkIHRv
IGRldGVjdCBmb250IGNoYW5nZSAqLw0KICAgICAgICAgd3JpdGVfbWFzayA9
IG1hc2sxNlttYXNrXTsNCisgICAgICAgIGlmIChhZGRyICogc2l6ZW9mKHVp
bnQzMl90KSA+PSBzLT52cmFtX3NpemUpIHsNCisgICAgICAgICAgICByZXR1
cm47DQorICAgICAgICB9DQogICAgICAgICAoKHVpbnQzMl90ICopcy0+dnJh
bV9wdHIpW2FkZHJdID0NCiAgICAgICAgICAgICAoKCh1aW50MzJfdCAqKXMt
PnZyYW1fcHRyKVthZGRyXSAmIH53cml0ZV9tYXNrKSB8DQogICAgICAgICAg
ICAgKHZhbCAmIHdyaXRlX21hc2spOw0KLS0gDQoxLjguMy4xDQoNCg==

--0-228632453-1462795033=:23120--
