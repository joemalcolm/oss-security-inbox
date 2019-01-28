X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7207" "Monday" "28" "January" "2019" "11:53:15" "-0700" "Scott Gayou" "sgayou@redhat.com" "<CA+2=X7vy=7GV+eq4Arc4Yh+305Y4wLeVcL+V0fJ3ErXMkJ28PQ@mail.gmail.com>" "140" "[oss-security] CVE-2019-3813: spice: Off-by-one error in array access in spice/server/memslot.c" nil nil nil "1" "2019012818:53:15" "[oss-security] CVE-2019-3813: spice: Off-by-one error in array access in spice/server/memslot.c" (number mark "U       sgayou@redha Jan 28  140/7207  " thread-indent "\"[oss-security] CVE-2019-3813: spice: Off-by-one error in array access in spice/server/memslot.c\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16141 invoked by uid 550); 28 Jan 2019 18:57:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10015 invoked from network); 28 Jan 2019 18:53:39 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=+xZ8EnMI2vzW0wLXJjFsEFPpT8NtXQwm+urdy9iJ2qY=;
        b=V1nvm1Z0xHdWAJJoxwXOqf1WIN0UA3CJVQ2TE8f30ob1t6BDP6qQzNfaxMgeAQNxN7
         9el9jfPTA75PXj0MAEbaSS3zuOwyvBLoAATHNFUKPHD8rzq/8fz2a5rd+mc4iIhMjfNo
         Z4jNzWDqBwlYeCckcJORzm0nhPAuPJ6XMIeoo17jz5/QFF/cSK6g96+T67AHs291L9ho
         RFu39nZ5/SDQTPViQ+miiMPvGLsGTKOLR7FWFFE5cgviS5PashUdgnVMgVWGDFv2SoBg
         97wptv1cQW2yKr1ahQbYEp2rI7iSfO54CiYKavIjKIlxAWdC7KES5iugTqLhq0HYSjoc
         dcZQ==
X-Gm-Message-State: AJcUukfYQdPsCMJAwDx7b7Jzg/956mvZG4mBEtUZksWqyb5r5Fu3Zr1m
	pzW/NPXY2OtQ/aBHt6NiMM5nNKzaV3oNwdpxHTXLfGscc3ViIQ==
X-Google-Smtp-Source: ALg8bN6J6ODgCLJkbqrqdaKihw/yrYBArQloyArbx2g+QlzBGJGRSbapI3MzEYeYkq98/Gp0wrod9TrJ0WZDp8lpzso=
X-Received: by 2002:a24:78c7:: with SMTP id p190mr10700488itc.21.1548701606614;
 Mon, 28 Jan 2019 10:53:26 -0800 (PST)
MIME-Version: 1.0
From: Scott Gayou <sgayou@redhat.com>
Date: Mon, 28 Jan 2019 11:53:15 -0700
Message-ID: <CA+2=X7vy=7GV+eq4Arc4Yh+305Y4wLeVcL+V0fJ3ErXMkJ28PQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/mixed; boundary="0000000000002055d60580893150"
Subject: [oss-security] CVE-2019-3813: spice: Off-by-one error in array access in spice/server/memslot.c

--0000000000002055d60580893150
Content-Type: multipart/alternative; boundary="0000000000002055d3058089314e"

--0000000000002055d3058089314e
Content-Type: text/plain; charset="UTF-8"

Hello,

spice versions 0.5.2 through 0.14.1 are vulnerable to an out-of-bounds read
due to an off-by-one error in memslot_get_virt. This may lead to a
denial-of-service, or, in the worst case, code-execution by unauthenticated
attackers.

The attached patch fixes the issue in spice and is planned to be included
in forthcoming release spice 0.14.2.

This issue was reported by Christophe Fergeau (Red Hat).

References:
https://bugzilla.redhat.com/show_bug.cgi?id=1665371

Thank you.

-- 
Scott Gayou / Red Had Product Security

--0000000000002055d3058089314e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hello,<br><br>spice versions 0.5.2 throug=
h 0.14.1 are vulnerable to an out-of-bounds read due to an off-by-one error=
 in memslot_get_virt. This may lead to a denial-of-service, or, in the wors=
t case, code-execution by unauthenticated attackers.<br><br>The attached pa=
tch fixes the issue in spice and is planned to be included in forthcoming r=
elease spice 0.14.2.<br><br>This issue was reported by Christophe Fergeau (=
Red Hat).<br><br>References:<br><a href=3D"https://bugzilla.redhat.com/show=
_bug.cgi?id=3D1665371">https://bugzilla.redhat.com/show_bug.cgi?id=3D166537=
1</a><br><br>Thank you.<br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=
=3D"gmail_signature"><div dir=3D"ltr">Scott Gayou / Red Had Product Securit=
y<br></div></div></div></div>

--0000000000002055d3058089314e--

--0000000000002055d60580893150
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-memslot-Fix-off-by-one-error-in-group-slot-boundary-.patch"
Content-Disposition: attachment; 
	filename="0001-memslot-Fix-off-by-one-error-in-group-slot-boundary-.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_jrgouqc90>
X-Attachment-Id: f_jrgouqc90

RnJvbSA2ZWZmNDdlNzJjYjJmMjNkMTY4YmU1OGJhYjhiZGQ2MGRmNDlhZmQw
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBDaHJpc3RvcGhlIEZl
cmdlYXUgPGNmZXJnZWF1QHJlZGhhdC5jb20+CkRhdGU6IFRodSwgMjkgTm92
IDIwMTggMTQ6MTg6MzkgKzAxMDAKU3ViamVjdDogW3NwaWNlLXNlcnZlcl0g
bWVtc2xvdDogRml4IG9mZi1ieS1vbmUgZXJyb3IgaW4gZ3JvdXAvc2xvdCBi
b3VuZGFyeQogY2hlY2sKClJlZE1lbVNsb3RJbmZvIGtlZXBzIGFuIGFycmF5
IG9mIGdyb3VwcywgYW5kIGVhY2ggZ3JvdXAgY29udGFpbnMgYW4KYXJyYXkg
b2Ygc2xvdHMuIFVuZm9ydHVuYXRlbHksIHRoZXNlIGNoZWNrcyBhcmUgb2Zm
IGJ5IDEsIHRoZXkgY2hlY2sKdGhhdCB0aGUgaW5kZXggaXMgZ3JlYXRlciBv
ciBlcXVhbCB0byB0aGUgbnVtYmVyIG9mIGVsZW1lbnRzIGluIHRoZQphcnJh
eSwgd2hpbGUgdGhlc2UgYXJyYXlzIGFyZSAwIGJhc2VkLiBUaGUgY2hlY2sg
c2hvdWxkIG9ubHkgY2hlY2sgZm9yCnN0cmljdGx5IGdyZWF0ZXIgdGhhbiB0
aGUgbnVtYmVyIG9mIGVsZW1lbnRzLgoKRm9yIHRoZSBncm91cCBhcnJheSwg
dGhpcyBpcyBub3QgYSBiaWcgaXNzdWUsIGFzIHRoZXNlIG1lbXNsb3QgZ3Jv
dXBzCmFyZSBjcmVhdGVkIGJ5IHNwaWNlLXNlcnZlciB1c2VycyAoZWcgUUVN
VSksIGFuZCB0aGUgZ3JvdXAgaWRzIHVzZWQgdG8KaW5kZXggdGhhdCBhcnJh
eSBhcmUgYWxzbyBnZW5lcmF0ZWQgYnkgdGhlIHNwaWNlLXNlcnZlciB1c2Vy
LCBzbyBpdApzaG91bGQgbm90IGJlIHBvc3NpYmxlIGZvciB0aGUgZ3Vlc3Qg
dG8gc2V0IHRoZW0gdG8gYXJiaXRyYXJ5IHZhbHVlcy4KClRoZSBzbG90IGlk
IGlzIG1vcmUgcHJvYmxlbWF0aWMsIGFzIGl0J3MgY2FsY3VsYXRlZCBmcm9t
IGEgUVhMUEhZU0lDQUwKYWRkcmVzcywgYW5kIHN1Y2ggYWRkcmVzc2VzIGFy
ZSB1c3VhbGx5IHNldCBieSB0aGUgZ3Vlc3QgUVhMIGRyaXZlciwgc28KdGhl
IGd1ZXN0IGNhbiBzZXQgdGhlc2UgdG8gYXJiaXRyYXJ5IHZhbHVlcywgaW5j
bHVkaW5nIG1hbGljaW91cyB2YWx1ZXMsCndoaWNoIGFyZSBwcm9iYWJseSBl
YXN5IHRvIGJ1aWxkIGZyb20gdGhlIGd1ZXN0IFBDSSBjb25maWd1cmF0aW9u
LgoKVGhpcyBwYXRjaCBmaXhlcyB0aGUgYXJyYXlzIGJvdW5kIGNoZWNrLCBh
bmQgYWRkcyBhIHRlc3QgY2FzZSBmb3IgdGhpcy4KClNpZ25lZC1vZmYtYnk6
IENocmlzdG9waGUgRmVyZ2VhdSA8Y2ZlcmdlYXVAcmVkaGF0LmNvbT4KLS0t
CiBzZXJ2ZXIvbWVtc2xvdC5jICAgICAgICAgICAgICAgIHwgIDQgKystLQog
c2VydmVyL3Rlc3RzL3Rlc3QtcXhsLXBhcnNpbmcuYyB8IDMwICsrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAzMiBp
bnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3Nl
cnZlci9tZW1zbG90LmMgYi9zZXJ2ZXIvbWVtc2xvdC5jCmluZGV4IGIyNzMy
NGVmYi4uZmIzZDVjZmQ1IDEwMDY0NAotLS0gYS9zZXJ2ZXIvbWVtc2xvdC5j
CisrKyBiL3NlcnZlci9tZW1zbG90LmMKQEAgLTk3LDEzICs5NywxMyBAQCB2
b2lkICptZW1zbG90X2dldF92aXJ0KFJlZE1lbVNsb3RJbmZvICppbmZvLCBR
WExQSFlTSUNBTCBhZGRyLCB1aW50MzJfdCBhZGRfc2l6ZQogCiAgICAgTWVt
U2xvdCAqc2xvdDsKIAotICAgIGlmIChncm91cF9pZCA+IGluZm8tPm51bV9t
ZW1zbG90c19ncm91cHMpIHsKKyAgICBpZiAoZ3JvdXBfaWQgPj0gaW5mby0+
bnVtX21lbXNsb3RzX2dyb3VwcykgewogICAgICAgICBnX2NyaXRpY2FsKCJn
cm91cF9pZCB0b28gYmlnIik7CiAgICAgICAgIHJldHVybiBOVUxMOwogICAg
IH0KIAogICAgIHNsb3RfaWQgPSBtZW1zbG90X2dldF9pZChpbmZvLCBhZGRy
KTsKLSAgICBpZiAoc2xvdF9pZCA+IGluZm8tPm51bV9tZW1zbG90cykgewor
ICAgIGlmIChzbG90X2lkID49IGluZm8tPm51bV9tZW1zbG90cykgewogICAg
ICAgICBwcmludF9tZW1zbG90cyhpbmZvKTsKICAgICAgICAgZ19jcml0aWNh
bCgic2xvdF9pZCAlZCB0b28gYmlnLCBhZGRyPSUiIFBSSXg2NCwgc2xvdF9p
ZCwgYWRkcik7CiAgICAgICAgIHJldHVybiBOVUxMOwpkaWZmIC0tZ2l0IGEv
c2VydmVyL3Rlc3RzL3Rlc3QtcXhsLXBhcnNpbmcuYyBiL3NlcnZlci90ZXN0
cy90ZXN0LXF4bC1wYXJzaW5nLmMKaW5kZXggODU2NTIzOWYwLi40NDc0MjU5
ODQgMTAwNjQ0Ci0tLSBhL3NlcnZlci90ZXN0cy90ZXN0LXF4bC1wYXJzaW5n
LmMKKysrIGIvc2VydmVyL3Rlc3RzL3Rlc3QtcXhsLXBhcnNpbmcuYwpAQCAt
OTgsNiArOTgsMzEgQEAgc3RhdGljIHZvaWQgZGVpbml0X3F4bF9zdXJmYWNl
KFFYTFN1cmZhY2VDbWQgKnF4bCkKICAgICBnX2ZyZWUoZnJvbV9waHlzaWNh
bChxeGwtPnUuc3VyZmFjZV9jcmVhdGUuZGF0YSkpOwogfQogCitzdGF0aWMg
dm9pZCB0ZXN0X21lbXNsb3RfaW52YWxpZF9ncm91cF9pZCh2b2lkKQorewor
ICAgIFJlZE1lbVNsb3RJbmZvIG1lbV9pbmZvOworICAgIGluaXRfbWVtaW5m
bygmbWVtX2luZm8pOworCisgICAgbWVtc2xvdF9nZXRfdmlydCgmbWVtX2lu
Zm8sIDAsIDE2LCAxKTsKK30KKworc3RhdGljIHZvaWQgdGVzdF9tZW1zbG90
X2ludmFsaWRfc2xvdF9pZCh2b2lkKQoreworICAgIFJlZE1lbVNsb3RJbmZv
IG1lbV9pbmZvOworICAgIGluaXRfbWVtaW5mbygmbWVtX2luZm8pOworCisg
ICAgbWVtc2xvdF9nZXRfdmlydCgmbWVtX2luZm8sIDEgPDwgbWVtX2luZm8u
bWVtc2xvdF9pZF9zaGlmdCwgMTYsIDApOworfQorCitzdGF0aWMgdm9pZCB0
ZXN0X21lbXNsb3RfaW52YWxpZF9hZGRyZXNzZXModm9pZCkKK3sKKyAgICBn
X3Rlc3RfdHJhcF9zdWJwcm9jZXNzKCIvc2VydmVyL21lbXNsb3QtaW52YWxp
ZC1hZGRyZXNzZXMvc3VicHJvY2Vzcy9ncm91cF9pZCIsIDAsIDApOworICAg
IGdfdGVzdF90cmFwX2Fzc2VydF9zdGRlcnIoIipncm91cF9pZCB0b28gYmln
KiIpOworCisgICAgZ190ZXN0X3RyYXBfc3VicHJvY2VzcygiL3NlcnZlci9t
ZW1zbG90LWludmFsaWQtYWRkcmVzc2VzL3N1YnByb2Nlc3Mvc2xvdF9pZCIs
IDAsIDApOworICAgIGdfdGVzdF90cmFwX2Fzc2VydF9zdGRlcnIoIipzbG90
X2lkIDEgdG9vIGJpZyoiKTsKK30KKwogc3RhdGljIHZvaWQgdGVzdF9ub19p
c3N1ZXModm9pZCkKIHsKICAgICBSZWRNZW1TbG90SW5mbyBtZW1faW5mbzsK
QEAgLTMxNyw2ICszNDIsMTEgQEAgaW50IG1haW4oaW50IGFyZ2MsIGNoYXIg
KmFyZ3ZbXSkKIHsKICAgICBnX3Rlc3RfaW5pdCgmYXJnYywgJmFyZ3YsIE5V
TEwpOwogCisgICAgLyogdHJ5IHRvIHVzZSBpbnZhbGlkIG1lbXNsb3QgZ3Jv
dXAvc2xvdCAqLworICAgIGdfdGVzdF9hZGRfZnVuYygiL3NlcnZlci9tZW1z
bG90LWludmFsaWQtYWRkcmVzc2VzIiwgdGVzdF9tZW1zbG90X2ludmFsaWRf
YWRkcmVzc2VzKTsKKyAgICBnX3Rlc3RfYWRkX2Z1bmMoIi9zZXJ2ZXIvbWVt
c2xvdC1pbnZhbGlkLWFkZHJlc3Nlcy9zdWJwcm9jZXNzL2dyb3VwX2lkIiwg
dGVzdF9tZW1zbG90X2ludmFsaWRfZ3JvdXBfaWQpOworICAgIGdfdGVzdF9h
ZGRfZnVuYygiL3NlcnZlci9tZW1zbG90LWludmFsaWQtYWRkcmVzc2VzL3N1
YnByb2Nlc3Mvc2xvdF9pZCIsIHRlc3RfbWVtc2xvdF9pbnZhbGlkX3Nsb3Rf
aWQpOworCiAgICAgLyogdHJ5IHRvIGNyZWF0ZSBhIHN1cmZhY2Ugd2l0aCBu
byBpc3N1ZXMsIHNob3VsZCBzdWNjZWVkICovCiAgICAgZ190ZXN0X2FkZF9m
dW5jKCIvc2VydmVyL3F4bC1wYXJzaW5nLW5vLWlzc3VlcyIsIHRlc3Rfbm9f
aXNzdWVzKTsKIAotLSAKMi4xOS4yCgo=

--0000000000002055d60580893150--
