X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5564" "Monday" "24" "August" "2020" "18:22:05" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.78.906.2008241819340.306228@xnncv>" "109" "[oss-security] CVE-2020-14364 QEMU: usb: out-of-bounds r/w access issue while processing usb packets" nil nil nil "8" "2020082412:52:05" "[oss-security] CVE-2020-14364 QEMU: usb: out-of-bounds r/w access issue while processing usb packets" (number mark "U       ppandit@redh Aug 24  109/5564  " thread-indent "\"[oss-security] CVE-2020-14364 QEMU: usb: out-of-bounds r/w access issue while processing usb packets\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-14364 QEMU: usb: out-of-bounds r/w access issue while processing usb packets" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9815 invoked by uid 550); 24 Aug 2020 12:52:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9797 invoked from network); 24 Aug 2020 12:52:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598273542;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=2cKH4Biv6yKjWNhEv/hy9hS7hv+4WUzXLIBQggD6OB0=;
	b=NdCZWy0xoN6IkwpJuBoVdpDsw5hjlgpmMRvmM/9FERUeBU8H98hWjTAPThs/wVKrdgSHtW
	1Z6nO09UTVwXQ/obcJrNxuJYu0TngSM0lg3SIimx61TGl5gQvckBxGQXU+qVM4z67zOOuh
	fngKRQUABfTQBA7Y8lC94wmb9fULYa4=
X-MC-Unique: 0G8576nLO82kGZoKX8_r5Q-1
Date: Mon, 24 Aug 2020 18:22:05 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
cc: Gerd Hoffmann <kraxel@redhat.com>, yanyu.zhang@chaitin.com, 
    ziming zhang <ezrakiez@gmail.com>, Xiao Wei <xiaowei-c@360.com>
Message-ID: <nycvar.YSQ.7.78.906.2008241819340.306228@xnncv>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=ppandit@redhat.com
X-Mimecast-Spam-Score: 0.001
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="-1463810047-577630234-1598273534=:306228"
Subject: [oss-security] CVE-2020-14364 QEMU: usb: out-of-bounds r/w access issue while
 processing usb packets

---1463810047-577630234-1598273534=:306228
Content-Type: text/plain; format=flowed; charset=US-ASCII

   Hello,

An out-of-bounds read/write access issue was found in the USB emulator of the 
QEMU. It occurs while processing USB packets from a guest, when 
'USBDevice->setup_len' exceeds the USBDevice->data_buf[4096], in 
do_token_{in,out} routines.

A guest user may use this flaw to crash the QEMU process resulting in DoS OR 
potentially execute arbitrary code with the privileges of the QEMU process on 
the host.

* Attached herein is an upstream patch from Gerd Hoffmann(CC'd) to fix this
   issue.

* 'CVE-2020-14364' is assigned to this issue by Red Hat Inc.

* This issue was independently reported by Ziming Zhang, Gonglei Arei and
   Yanyu Zhang(CC'd).

   Gonglei and Yanyu mentioned that the issue was found by Xiao Wei(CC'd).


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D
---1463810047-577630234-1598273534=:306228
Content-Type: text/plain; charset=US-ASCII; name=0001-usb-fix-setup-len-init.patch
Content-Transfer-Encoding: BASE64
Content-ID: <nycvar.YSQ.7.78.906.2008241822050.306228@xnncv>
Content-Description: 
Content-Disposition: attachment; filename=0001-usb-fix-setup-len-init.patch

PkZyb20gYzViZDI5MjRjNmQ2YTViY2JmZmI4YjVlNzc5OGE4ODk3MDEzMWMw
NyBNb24gU2VwIDE3IDAwOjAwOjAwIDIwMDENCkZyb206IEdlcmQgSG9mZm1h
bm4gPGtyYXhlbEByZWRoYXQuY29tPg0KRGF0ZTogTW9uLCAxNyBBdWcgMjAy
MCAwODozNDoyMiArMDIwMA0KU3ViamVjdDogW1BBVENIXSB1c2I6IGZpeCBz
ZXR1cF9sZW4gaW5pdCAoQ1ZFLTIwMjAtMTQzNjQpDQoNClN0b3JlIGNhbGN1
bGF0ZWQgc2V0dXBfbGVuIGluIGEgbG9jYWwgdmFyaWFibGUsIHZlcmlmeSBp
dCwgYW5kIG9ubHkNCndyaXRlIGl0IHRvIHRoZSBzdHJ1Y3QgKFVTQkRldmlj
ZS0+c2V0dXBfbGVuKSBpbiBjYXNlIGl0IHBhc3NlZCB0aGUNCnNhbml0eSBj
aGVja3MuDQoNClRoaXMgcHJldmVudHMgb3RoZXIgY29kZSAoZG9fdG9rZW5f
e2luLG91dH0gZnVuY3Rpb25zIHNwZWNpZmljYWxseSkNCmZyb20gd29ya2lu
ZyB3aXRoIGludmFsaWQgVVNCRGV2aWNlLT5zZXR1cF9sZW4gdmFsdWVzIGFu
ZCBvdmVycnVubmluZw0KdGhlIFVTQkRldmljZS0+c2V0dXBfYnVmW10gYnVm
ZmVyLg0KDQpGaXhlczogQ1ZFLTIwMjAtMTQzNjQNClNpZ25lZC1vZmYtYnk6
IEdlcmQgSG9mZm1hbm4gPGtyYXhlbEByZWRoYXQuY29tPg0KLS0tDQogaHcv
dXNiL2NvcmUuYyB8IDE2ICsrKysrKysrKystLS0tLS0NCiAxIGZpbGUgY2hh
bmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkNCg0KZGlm
ZiAtLWdpdCBhL2h3L3VzYi9jb3JlLmMgYi9ody91c2IvY29yZS5jDQppbmRl
eCA1YWJkMTI4YjZiYzUuLjUyMzRkY2M3M2ZlYSAxMDA2NDQNCi0tLSBhL2h3
L3VzYi9jb3JlLmMNCisrKyBiL2h3L3VzYi9jb3JlLmMNCkBAIC0xMjksNiAr
MTI5LDcgQEAgdm9pZCB1c2Jfd2FrZXVwKFVTQkVuZHBvaW50ICplcCwgdW5z
aWduZWQgaW50IHN0cmVhbSkNCiBzdGF0aWMgdm9pZCBkb190b2tlbl9zZXR1
cChVU0JEZXZpY2UgKnMsIFVTQlBhY2tldCAqcCkNCiB7DQogICAgIGludCBy
ZXF1ZXN0LCB2YWx1ZSwgaW5kZXg7DQorICAgIHVuc2lnbmVkIGludCBzZXR1
cF9sZW47DQogDQogICAgIGlmIChwLT5pb3Yuc2l6ZSAhPSA4KSB7DQogICAg
ICAgICBwLT5zdGF0dXMgPSBVU0JfUkVUX1NUQUxMOw0KQEAgLTEzOCwxNCAr
MTM5LDE1IEBAIHN0YXRpYyB2b2lkIGRvX3Rva2VuX3NldHVwKFVTQkRldmlj
ZSAqcywgVVNCUGFja2V0ICpwKQ0KICAgICB1c2JfcGFja2V0X2NvcHkocCwg
cy0+c2V0dXBfYnVmLCBwLT5pb3Yuc2l6ZSk7DQogICAgIHMtPnNldHVwX2lu
ZGV4ID0gMDsNCiAgICAgcC0+YWN0dWFsX2xlbmd0aCA9IDA7DQotICAgIHMt
PnNldHVwX2xlbiAgID0gKHMtPnNldHVwX2J1Zls3XSA8PCA4KSB8IHMtPnNl
dHVwX2J1Zls2XTsNCi0gICAgaWYgKHMtPnNldHVwX2xlbiA+IHNpemVvZihz
LT5kYXRhX2J1ZikpIHsNCisgICAgc2V0dXBfbGVuID0gKHMtPnNldHVwX2J1
Zls3XSA8PCA4KSB8IHMtPnNldHVwX2J1Zls2XTsNCisgICAgaWYgKHNldHVw
X2xlbiA+IHNpemVvZihzLT5kYXRhX2J1ZikpIHsNCiAgICAgICAgIGZwcmlu
dGYoc3RkZXJyLA0KICAgICAgICAgICAgICAgICAidXNiX2dlbmVyaWNfaGFu
ZGxlX3BhY2tldDogY3RybCBidWZmZXIgdG9vIHNtYWxsICglZCA+ICV6dSlc
biIsDQotICAgICAgICAgICAgICAgIHMtPnNldHVwX2xlbiwgc2l6ZW9mKHMt
PmRhdGFfYnVmKSk7DQorICAgICAgICAgICAgICAgIHNldHVwX2xlbiwgc2l6
ZW9mKHMtPmRhdGFfYnVmKSk7DQogICAgICAgICBwLT5zdGF0dXMgPSBVU0Jf
UkVUX1NUQUxMOw0KICAgICAgICAgcmV0dXJuOw0KICAgICB9DQorICAgIHMt
PnNldHVwX2xlbiA9IHNldHVwX2xlbjsNCiANCiAgICAgcmVxdWVzdCA9IChz
LT5zZXR1cF9idWZbMF0gPDwgOCkgfCBzLT5zZXR1cF9idWZbMV07DQogICAg
IHZhbHVlICAgPSAocy0+c2V0dXBfYnVmWzNdIDw8IDgpIHwgcy0+c2V0dXBf
YnVmWzJdOw0KQEAgLTI1OSwyNiArMjYxLDI4IEBAIHN0YXRpYyB2b2lkIGRv
X3Rva2VuX291dChVU0JEZXZpY2UgKnMsIFVTQlBhY2tldCAqcCkNCiBzdGF0
aWMgdm9pZCBkb19wYXJhbWV0ZXIoVVNCRGV2aWNlICpzLCBVU0JQYWNrZXQg
KnApDQogew0KICAgICBpbnQgaSwgcmVxdWVzdCwgdmFsdWUsIGluZGV4Ow0K
KyAgICB1bnNpZ25lZCBpbnQgc2V0dXBfbGVuOw0KIA0KICAgICBmb3IgKGkg
PSAwOyBpIDwgODsgaSsrKSB7DQogICAgICAgICBzLT5zZXR1cF9idWZbaV0g
PSBwLT5wYXJhbWV0ZXIgPj4gKGkqOCk7DQogICAgIH0NCiANCiAgICAgcy0+
c2V0dXBfc3RhdGUgPSBTRVRVUF9TVEFURV9QQVJBTTsNCi0gICAgcy0+c2V0
dXBfbGVuICAgPSAocy0+c2V0dXBfYnVmWzddIDw8IDgpIHwgcy0+c2V0dXBf
YnVmWzZdOw0KICAgICBzLT5zZXR1cF9pbmRleCA9IDA7DQogDQogICAgIHJl
cXVlc3QgPSAocy0+c2V0dXBfYnVmWzBdIDw8IDgpIHwgcy0+c2V0dXBfYnVm
WzFdOw0KICAgICB2YWx1ZSAgID0gKHMtPnNldHVwX2J1ZlszXSA8PCA4KSB8
IHMtPnNldHVwX2J1ZlsyXTsNCiAgICAgaW5kZXggICA9IChzLT5zZXR1cF9i
dWZbNV0gPDwgOCkgfCBzLT5zZXR1cF9idWZbNF07DQogDQotICAgIGlmIChz
LT5zZXR1cF9sZW4gPiBzaXplb2Yocy0+ZGF0YV9idWYpKSB7DQorICAgIHNl
dHVwX2xlbiA9IChzLT5zZXR1cF9idWZbN10gPDwgOCkgfCBzLT5zZXR1cF9i
dWZbNl07DQorICAgIGlmIChzZXR1cF9sZW4gPiBzaXplb2Yocy0+ZGF0YV9i
dWYpKSB7DQogICAgICAgICBmcHJpbnRmKHN0ZGVyciwNCiAgICAgICAgICAg
ICAgICAgInVzYl9nZW5lcmljX2hhbmRsZV9wYWNrZXQ6IGN0cmwgYnVmZmVy
IHRvbyBzbWFsbCAoJWQgPiAlenUpXG4iLA0KLSAgICAgICAgICAgICAgICBz
LT5zZXR1cF9sZW4sIHNpemVvZihzLT5kYXRhX2J1ZikpOw0KKyAgICAgICAg
ICAgICAgICBzZXR1cF9sZW4sIHNpemVvZihzLT5kYXRhX2J1ZikpOw0KICAg
ICAgICAgcC0+c3RhdHVzID0gVVNCX1JFVF9TVEFMTDsNCiAgICAgICAgIHJl
dHVybjsNCiAgICAgfQ0KKyAgICBzLT5zZXR1cF9sZW4gPSBzZXR1cF9sZW47
DQogDQogICAgIGlmIChwLT5waWQgPT0gVVNCX1RPS0VOX09VVCkgew0KICAg
ICAgICAgdXNiX3BhY2tldF9jb3B5KHAsIHMtPmRhdGFfYnVmLCBzLT5zZXR1
cF9sZW4pOw0KLS0gDQoyLjE4LjQNCg==

---1463810047-577630234-1598273534=:306228--

