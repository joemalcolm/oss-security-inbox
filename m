X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["11523" "Thursday" "22" "March" "2018" "15:10:58" "-0400" "=?utf-8?B?UmFmYWVsIE1lbmRvbsOnYSBGcmFuw6dh?=" "rafaelmfranca@gmail.com" "<33d0cf4f-30f8-4690-b7ad-508c1c1bd037@Spark>" "254" "[oss-security] [CVE-2018-3741] XSS vulnerability in rails-html-sanitizer" nil nil nil "3" "2018032219:10:58" "[oss-security] [CVE-2018-3741] XSS vulnerability in rails-html-sanitizer" (number mark "U       rafaelmfranc Mar 22  254/11523 " thread-indent "\"[oss-security] [CVE-2018-3741] XSS vulnerability in rails-html-sanitizer\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5500 invoked by uid 550); 22 Mar 2018 19:24:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19765 invoked from network); 22 Mar 2018 19:12:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:subject:mime-version;
        bh=ZlRbnwcYxdoTSQSo5GAETidM5sDeH3pcHWcNGyoKf4Q=;
        b=Bws4ADN/m9N9+1YpyHfuvmgiCHgdsCJrAfxOpjzSQntRu0UmWjDNwh/SbbCKxOeBf2
         BWjZ21Wy+K/Ob4uWLQ9Vo3r5SKzQUWOLMnFsQ1D3gt+pPbc3S1vLqqpwM02Q2K8SVn2B
         qsCRquoRpwiJoDeY8AThDhrSUUNSGJlvzmUzopSPWGnoT/q4H2FdDgpHlr1EOpe6Lrs1
         k5vStHabA5UdWa2Bevr5mrW1Nqh2S8OMZaeGWnoi0BUnJpcfVPhy+VlNQdNpaDU77Eu+
         Hb8493GtZlY19zohB6Ao4DSNH1kE+rAHx23C5+bdMIN365T69fV2Q5+jfSG2eQ5OKNdH
         oY7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:message-id:subject:mime-version;
        bh=ZlRbnwcYxdoTSQSo5GAETidM5sDeH3pcHWcNGyoKf4Q=;
        b=fjvUBjVE7wp24GPnbBYonIlC7ZEjbVhz9pIfyMQ9hPIx09rlmxgIyiADM/0TwhLRnO
         6YuDm9XpXMKaXz2oid0UxBfaHwWIf+rKZ1YO2uJjBa8Q+E8GEReNIRHcBMf77akqQZub
         RM68imY5Tf/VCBbkxEXOS3vSi+90xNM8CSPrCPJflHFgL/fy5VZDbaKltt6hZm+licUP
         zeDC6e5ksw20xrTjAEwjVGjlcwsR2yn6Bf9UVXC7w0NQzcJhvUIZ/rZpnVzGf9z7V8yK
         zktoUc6mX5IYTCHcGsm52N/u1R/vZmsqeqyi7JxLt5jlsKwQsyAz3rjhIkmeDuVFYynD
         pyuw==
X-Gm-Message-State: AElRT7FbMP4qL91KAgcpfwwZkaaMJZj3rrOEeLGRLWv/HhqgiyjIocRL
	FJjmF0rkH93jTgUXCZZjRww=
X-Google-Smtp-Source: AIpwx48YPy7rxgzs19MrXInOwN4ywphPcwqCEeKMZ8WuvPjiv7+XWJn9AEBGLsaWd0pxC7Xej5/QYw==
X-Received: by 2002:a24:3053:: with SMTP id q80-v6mr822930itq.4.1521745919416;
        Thu, 22 Mar 2018 12:11:59 -0700 (PDT)
Date: Thu, 22 Mar 2018 15:10:58 -0400
From: =?utf-8?Q?Rafael_Mendon=C3=A7a_Fran=C3=A7a?=
 <rafaelmfranca@gmail.com>
To: rubyonrails-security@googlegroups.com, 
 ruby-security-ann@googlegroups.com, oss-security@lists.openwall.com
Message-ID: <33d0cf4f-30f8-4690-b7ad-508c1c1bd037@Spark>
X-Readdle-Message-ID: 33d0cf4f-30f8-4690-b7ad-508c1c1bd037@Spark
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="5ab3fff7_431bd7b7_fe20"
Subject: [oss-security] [CVE-2018-3741] XSS vulnerability in rails-html-sanitizer

--5ab3fff7_431bd7b7_fe20
Content-Type: multipart/alternative; boundary="5ab3fff7_519b500d_fe20"

--5ab3fff7_519b500d_fe20
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Possible XSS vulnerability in rails-html-sanitizer

There is a possible XSS vulnerability in rails-html-sanitizer. This
vulnerability has been assigned the CVE identifier CVE-2018-3741.

Versions Affected: =C2=A01.0.3 or older.
Not affected: =C2=A0 =C2=A0 =C2=A0 None.
Fixed Versions: =C2=A0 =C2=A0 1.0.4

Impact
------
There is a possible XSS vulnerability in rails-html-sanitizer. =C2=A0The ge=
m allows non-whitelisted
attributes to be present in sanitized output when input with specially-craf=
ted HTML fragments,
and these attributes can lead to an XSS attack on target applications.

This issue is similar to CVE-2018-8048 in Loofah.

All users running an affected release should either upgrade or use one of t=
he
workarounds immediately.

Releases
--------
The FIXED releases are available at the normal locations.

Workarounds
-----------
There are no feasible workarounds for this issue.

Patches
-------
To aid users who aren't able to upgrade immediately we have provided patche=
s for
the two supported release series. They are in git-am format and consist of a
single changeset.

* 1-0-sanitize_attributes.patch - Patch for 1.0 series

Credits
-------
Thanks to Kaarlo Haikonen for reporting this issue and Mike Dalessio for pr=
oviding the original fix in the Loofah gem.

Rafael Fran=C3=A7a

--5ab3fff7_519b500d_fe20
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<html xmlns=3D"http://www.w3.org/1999/xhtml">
<head>
<title></title>
</head>
<body>
<div name=3D"messageBodySection" style=3D"font-size: 14px; font-family: -ap=
ple-system, BlinkMacSystemFont, sans-serif;">
<div>Possible XSS vulnerability in rails-html-sanitizer</div>
<div><br /></div>
<div>There is a possible XSS vulnerability in rails-html-sanitizer. This</d=
iv>
<div>vulnerability has been assigned the CVE identifier CVE-2018-3741.</div>
<div><br /></div>
<div>Versions Affected: &#160;1.0.3 or older.</div>
<div>Not affected: &#160; &#160; &#160; None.</div>
<div>Fixed Versions: &#160; &#160; 1.0.4</div>
<div><br /></div>
<div>Impact</div>
<div>------</div>
<div>There is a possible XSS vulnerability in rails-html-sanitizer. &#160;T=
he gem allows non-whitelisted</div>
<div>attributes to be present in sanitized output when input with specially=
-crafted HTML fragments,</div>
<div>and these attributes can lead to an XSS attack on target applications.=
</div>
<div><br /></div>
<div>This issue is similar to CVE-2018-8048 in Loofah.</div>
<div><br /></div>
<div>All users running an affected release should either upgrade or use one=
 of the</div>
<div>workarounds immediately.</div>
<div><br /></div>
<div>Releases</div>
<div>--------</div>
<div>The FIXED releases are available at the normal locations.</div>
<div><br /></div>
<div>Workarounds</div>
<div>-----------</div>
<div>There are no feasible workarounds for this issue.</div>
<div><br /></div>
<div>Patches</div>
<div>-------</div>
<div>To aid users who aren't able to upgrade immediately we have provided p=
atches for</div>
<div>the two supported release series. They are in git-am format and consis=
t of a</div>
<div>single changeset.</div>
<div><br /></div>
<div>* 1-0-sanitize_attributes.patch - Patch for 1.0 series</div>
<div><br /></div>
<div>Credits</div>
<div>-------</div>
<div>Thanks to Kaarlo Haikonen for reporting this issue and Mike Dalessio f=
or providing the original fix in the Loofah gem.&#160;</div>
</div>
<div name=3D"messageSignatureSection" style=3D"font-size: 14px; font-family=
: -apple-system, BlinkMacSystemFont, sans-serif;"><br />
Rafael Fran=C3=A7a</div>
</body>
</html>

--5ab3fff7_519b500d_fe20--

--5ab3fff7_431bd7b7_fe20
Content-Type: application/octet-stream
Content-Transfer-Encoding: base64
Content-Disposition: attachment; 
 filename="=?utf-8?Q?1-0-santize=5Fattributes.patch?="

RnJvbSAzMDFiZTFhYmQ5NTY4NTllOGUzNDkyNWVhZWJmMWE4NTJmNjJjZDlj
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiA9P1VURi04P3E/UmFm
YWVsPTIwTWVuZG9uPUMzPUE3YT0yMEZyYW49QzM9QTdhPz0KIDxyYWZhZWxt
ZnJhbmNhQGdtYWlsLmNvbT4KRGF0ZTogV2VkLCAyMSBNYXIgMjAxOCAxNToy
Mzo1NiAtMDQwMApTdWJqZWN0OiBbUEFUQ0hdIE1ha2Ugc3VyZSB3ZSBhZGRy
ZXNzIENWRS0yMDE4LTgwNDgKCkV2ZW4gdGhhdCB0aGUgaXNzdWUgd2FzIGZp
eGVkIG9uIGxvb2ZhaCB3ZSBoYXZlIG91ciBvd24gbG9naWMgdG8gc2NydWIK
YXR0cmlidXRlcyBzbyB3aGVuIHRoZSB3aGl0ZWxpc3Qgc2VyaWFsaXplciBp
cyB1c2VkIHRoZSBpc3N1ZSB3YXMgc3RpbGwKcHJlc2VudC4KLS0tCiBsaWIv
cmFpbHMvaHRtbC9zY3J1YmJlcnMucmIgIHwgIDIgKysKIHJhaWxzLWh0bWwt
c2FuaXRpemVyLmdlbXNwZWMgfCAgMiArLQogdGVzdC9zYW5pdGl6ZXJfdGVz
dC5yYiAgICAgICB8IDQ2ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKystLS0tLS0tCiAzIGZpbGVzIGNoYW5nZWQsIDQyIGluc2VydGlv
bnMoKyksIDggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvbGliL3JhaWxz
L2h0bWwvc2NydWJiZXJzLnJiIGIvbGliL3JhaWxzL2h0bWwvc2NydWJiZXJz
LnJiCmluZGV4IDFlNmY4ODcuLjM2OTViYjIgMTAwNjQ0Ci0tLSBhL2xpYi9y
YWlscy9odG1sL3NjcnViYmVycy5yYgorKysgYi9saWIvcmFpbHMvaHRtbC9z
Y3J1YmJlcnMucmIKQEAgLTE1Miw2ICsxNTIsOCBAQCBtb2R1bGUgUmFpbHMK
ICAgICAgICAgZW5kCiAKICAgICAgICAgbm9kZS5yZW1vdmVfYXR0cmlidXRl
KGF0dHJfbm9kZS5uYW1lKSBpZiBhdHRyX25hbWUgPT0gJ3NyYycgJiYgYXR0
cl9ub2RlLnZhbHVlICF+IC9bXls6c3BhY2U6XV0vCisKKyAgICAgICAgTG9v
ZmFoOjpIVE1MNTo6U2NydWIuZm9yY2VfY29ycmVjdF9hdHRyaWJ1dGVfZXNj
YXBpbmchIG5vZGUKICAgICAgIGVuZAogICAgIGVuZAogCmRpZmYgLS1naXQg
YS9yYWlscy1odG1sLXNhbml0aXplci5nZW1zcGVjIGIvcmFpbHMtaHRtbC1z
YW5pdGl6ZXIuZ2Vtc3BlYwppbmRleCBhNjAwMDUzLi5jYjdhNWZiIDEwMDY0
NAotLS0gYS9yYWlscy1odG1sLXNhbml0aXplci5nZW1zcGVjCisrKyBiL3Jh
aWxzLWh0bWwtc2FuaXRpemVyLmdlbXNwZWMKQEAgLTE3LDcgKzE3LDcgQEAg
R2VtOjpTcGVjaWZpY2F0aW9uLm5ldyBkbyB8c3BlY3wKICAgc3BlYy50ZXN0
X2ZpbGVzICAgID0gRGlyWyJ0ZXN0LyoqLyoiXQogICBzcGVjLnJlcXVpcmVf
cGF0aHMgPSBbImxpYiJdCiAKLSAgc3BlYy5hZGRfZGVwZW5kZW5jeSAibG9v
ZmFoIiwgIn4+IDIuMCIKKyAgc3BlYy5hZGRfZGVwZW5kZW5jeSAibG9vZmFo
IiwgIn4+IDIuMiIsICI+PSAyLjIuMiIKIAogICBzcGVjLmFkZF9kZXZlbG9w
bWVudF9kZXBlbmRlbmN5ICJidW5kbGVyIiwgIn4+IDEuMyIKICAgc3BlYy5h
ZGRfZGV2ZWxvcG1lbnRfZGVwZW5kZW5jeSAicmFrZSIKZGlmZiAtLWdpdCBh
L3Rlc3Qvc2FuaXRpemVyX3Rlc3QucmIgYi90ZXN0L3Nhbml0aXplcl90ZXN0
LnJiCmluZGV4IGY3MmI3MDIuLjU1MjYwM2MgMTAwNjQ0Ci0tLSBhL3Rlc3Qv
c2FuaXRpemVyX3Rlc3QucmIKKysrIGIvdGVzdC9zYW5pdGl6ZXJfdGVzdC5y
YgpAQCAtNTgsMTEgKzU4LDExIEBAIGNsYXNzIFNhbml0aXplcnNUZXN0IDwg
TWluaXRlc3Q6OlRlc3QKICAgZW5kCiAKICAgZGVmIHRlc3Rfc3RyaXBfaW52
YWxpZF9odG1sCi0gICAgYXNzZXJ0X2VxdWFsICIiLCBmdWxsX3Nhbml0aXpl
KCI8PDxiYWQgaHRtbCIpCisgICAgYXNzZXJ0X2VxdWFsICImbHQ7Jmx0OyIs
IGZ1bGxfc2FuaXRpemUoIjw8PGJhZCBodG1sIikKICAgZW5kCiAKICAgZGVm
IHRlc3Rfc3RyaXBfbmVzdGVkX3RhZ3MKLSAgICBleHBlY3RlZCA9ICJXZWlh
IG9uY2xpY2s9J2FsZXJ0KGRvY3VtZW50LmNvb2tpZSk7Jy8mZ3Q7cmRvcyIK
KyAgICBleHBlY3RlZCA9ICJXZWkmbHQ7YSBvbmNsaWNrPSdhbGVydChkb2N1
bWVudC5jb29raWUpOycvJmd0O3Jkb3MiCiAgICAgaW5wdXQgPSAiV2VpPDxh
PmEgb25jbGljaz0nYWxlcnQoZG9jdW1lbnQuY29va2llKTsnPC9hPi8+cmRv
cyIKICAgICBhc3NlcnRfZXF1YWwgZXhwZWN0ZWQsIGZ1bGxfc2FuaXRpemUo
aW5wdXQpCiAgIGVuZApAQCAtOTksNyArOTksNyBAQCBjbGFzcyBTYW5pdGl6
ZXJzVGVzdCA8IE1pbml0ZXN0OjpUZXN0CiAgIGVuZAogCiAgIGRlZiB0ZXN0
X3N0cmlwX3RhZ3Nfd2l0aF9tYW55X29wZW5fcXVvdGVzCi0gICAgYXNzZXJ0
X2VxdWFsICIiLCBmdWxsX3Nhbml0aXplKCI8PDxiYWQgaHRtbD4iKQorICAg
IGFzc2VydF9lcXVhbCAiJmx0OyZsdDsiLCBmdWxsX3Nhbml0aXplKCI8PDxi
YWQgaHRtbD4iKQogICBlbmQKIAogICBkZWYgdGVzdF9zdHJpcF90YWdzX3dp
dGhfc2VudGVuY2UKQEAgLTEyMyw3ICsxMjMsNyBAQCBjbGFzcyBTYW5pdGl6
ZXJzVGVzdCA8IE1pbml0ZXN0OjpUZXN0CiAgIGVuZAogCiAgIGRlZiB0ZXN0
X3N0cmlwX2xpbmtzX3dpdGhfdGFnc19pbl90YWdzCi0gICAgZXhwZWN0ZWQg
PSAiYSBocmVmPSdoZWxsbycmZ3Q7YWxsIDxiPmRheTwvYj4gbG9uZy9hJmd0
OyIKKyAgICBleHBlY3RlZCA9ICImbHQ7YSBocmVmPSdoZWxsbycmZ3Q7YWxs
IDxiPmRheTwvYj4gbG9uZyZsdDsvYSZndDsiCiAgICAgaW5wdXQgPSAiPDxh
PmEgaHJlZj0naGVsbG8nPmFsbCA8Yj5kYXk8L2I+IGxvbmc8PC9BPi9hPiIK
ICAgICBhc3NlcnRfZXF1YWwgZXhwZWN0ZWQsIGxpbmtfc2FuaXRpemUoaW5w
dXQpCiAgIGVuZApAQCAtMzYwLDcgKzM2MCw3IEBAIGNsYXNzIFNhbml0aXpl
cnNUZXN0IDwgTWluaXRlc3Q6OlRlc3QKICAgZW5kCiAKICAgZGVmIHRlc3Rf
c2hvdWxkX3Nhbml0aXplX3NjcmlwdF90YWdfd2l0aF9tdWx0aXBsZV9vcGVu
X2JyYWNrZXRzCi0gICAgYXNzZXJ0X3Nhbml0aXplZCAlKDw8U0NSSVBUPmFs
ZXJ0KCJYU1MiKTsvLzw8L1NDUklQVD4pLCAiYWxlcnQoXCJYU1NcIik7Ly8i
CisgICAgYXNzZXJ0X3Nhbml0aXplZCAlKDw8U0NSSVBUPmFsZXJ0KCJYU1Mi
KTsvLzw8L1NDUklQVD4pLCAiJmx0O2FsZXJ0KFwiWFNTXCIpOy8vJmx0OyIK
ICAgICBhc3NlcnRfc2FuaXRpemVkICUoPGlmcmFtZSBzcmM9aHR0cDovL2hh
LmNrZXJzLm9yZy9zY3JpcHRsZXQuaHRtbFxuPGEpLCAiIgogICBlbmQKIApA
QCAtMzgzLDEzICszODMsMTMgQEAgY2xhc3MgU2FuaXRpemVyc1Rlc3QgPCBN
aW5pdGVzdDo6VGVzdAogCiAgIGRlZiB0ZXN0X3Nob3VsZF9zYW5pdGl6ZV9p
bGxlZ2FsX3N0eWxlX3Byb3BlcnRpZXMKICAgICByYXcgICAgICA9ICUoZGlz
cGxheTpibG9jazsgcG9zaXRpb246YWJzb2x1dGU7IGxlZnQ6MDsgdG9wOjA7
IHdpZHRoOjEwMCU7IGhlaWdodDoxMDAlOyB6LWluZGV4OjE7IGJhY2tncm91
bmQtY29sb3I6YmxhY2s7IGJhY2tncm91bmQtaW1hZ2U6dXJsKGh0dHA6Ly93
d3cucmFnaW5ncGxhdHlwdXMuY29tL2kvY2FtLWZ1bGwuanBnKTsgYmFja2dy
b3VuZC14OmNlbnRlcjsgYmFja2dyb3VuZC15OmNlbnRlcjsgYmFja2dyb3Vu
ZC1yZXBlYXQ6cmVwZWF0OykKLSAgICBleHBlY3RlZCA9ICUoZGlzcGxheTog
YmxvY2s7IHdpZHRoOiAxMDAlOyBoZWlnaHQ6IDEwMCU7IGJhY2tncm91bmQt
Y29sb3I6IGJsYWNrOyBiYWNrZ3JvdW5kLXg6IGNlbnRlcjsgYmFja2dyb3Vu
ZC15OiBjZW50ZXI7KQorICAgIGV4cGVjdGVkID0gJShkaXNwbGF5OmJsb2Nr
O3dpZHRoOjEwMCU7aGVpZ2h0OjEwMCU7YmFja2dyb3VuZC1jb2xvcjpibGFj
aztiYWNrZ3JvdW5kLXg6Y2VudGVyO2JhY2tncm91bmQteTpjZW50ZXI7KQog
ICAgIGFzc2VydF9lcXVhbCBleHBlY3RlZCwgc2FuaXRpemVfY3NzKHJhdykK
ICAgZW5kCiAKICAgZGVmIHRlc3Rfc2hvdWxkX3Nhbml0aXplX3dpdGhfdHJh
aWxpbmdfc3BhY2UKICAgICByYXcgPSAiZGlzcGxheTpibG9jazsgIgotICAg
IGV4cGVjdGVkID0gImRpc3BsYXk6IGJsb2NrOyIKKyAgICBleHBlY3RlZCA9
ICJkaXNwbGF5OmJsb2NrOyIKICAgICBhc3NlcnRfZXF1YWwgZXhwZWN0ZWQs
IHNhbml0aXplX2NzcyhyYXcpCiAgIGVuZAogCkBAIC00ODIsNiArNDgyLDM4
IEBAIGNsYXNzIFNhbml0aXplcnNUZXN0IDwgTWluaXRlc3Q6OlRlc3QKICAg
ICBhc3NlcnRfZXF1YWwgJSg8YSBkYXRhLWZvbz0iZm9vIj5mb288L2E+KSwg
d2hpdGVfbGlzdF9zYW5pdGl6ZSh0ZXh0LCBhdHRyaWJ1dGVzOiBbJ2RhdGEt
Zm9vJ10pCiAgIGVuZAogCisgIGRlZiB0ZXN0X3VyaV9lc2NhcGluZ19vZl9o
cmVmX2F0dHJfaW5fYV90YWdfaW5fd2hpdGVfbGlzdF9zYW5pdGl6ZXIKKyAg
ICBodG1sID0gJXs8YSBocmVmPSdleGFtcDwhLS0iIHVuc2FmZWF0dHI9Zm9v
KCk+LS0+bGUuY29tJz50ZXN0PC9hPn0KKworICAgIHRleHQgPSB3aGl0ZV9s
aXN0X3Nhbml0aXplKGh0bWwpCisKKyAgICBhc3NlcnRfZXF1YWwgJXs8YSBo
cmVmPSJleGFtcDwhLS0lMjIlMjB1bnNhZmVhdHRyPWZvbygpPi0tPmxlLmNv
bSI+dGVzdDwvYT59LCB0ZXh0CisgIGVuZAorCisgIGRlZiB0ZXN0X3VyaV9l
c2NhcGluZ19vZl9zcmNfYXR0cl9pbl9hX3RhZ19pbl93aGl0ZV9saXN0X3Nh
bml0aXplcgorICAgIGh0bWwgPSAlezxhIHNyYz0nZXhhbXA8IS0tIiB1bnNh
ZmVhdHRyPWZvbygpPi0tPmxlLmNvbSc+dGVzdDwvYT59CisKKyAgICB0ZXh0
ID0gd2hpdGVfbGlzdF9zYW5pdGl6ZShodG1sKQorCisgICAgYXNzZXJ0X2Vx
dWFsICV7PGEgc3JjPSJleGFtcDwhLS0lMjIlMjB1bnNhZmVhdHRyPWZvbygp
Pi0tPmxlLmNvbSI+dGVzdDwvYT59LCB0ZXh0CisgIGVuZAorCisgIGRlZiB0
ZXN0X3VyaV9lc2NhcGluZ19vZl9uYW1lX2F0dHJfaW5fYV90YWdfaW5fd2hp
dGVfbGlzdF9zYW5pdGl6ZXIKKyAgICBodG1sID0gJXs8YSBuYW1lPSdleGFt
cDwhLS0iIHVuc2FmZWF0dHI9Zm9vKCk+LS0+bGUuY29tJz50ZXN0PC9hPn0K
KworICAgIHRleHQgPSB3aGl0ZV9saXN0X3Nhbml0aXplKGh0bWwpCisKKyAg
ICBhc3NlcnRfZXF1YWwgJXs8YSBuYW1lPSJleGFtcDwhLS0lMjIlMjB1bnNh
ZmVhdHRyPWZvbygpPi0tPmxlLmNvbSI+dGVzdDwvYT59LCB0ZXh0CisgIGVu
ZAorCisgIGRlZiB0ZXN0X3VyaV9lc2NhcGluZ19vZl9uYW1lX2FjdGlvbl9p
bl9hX3RhZ19pbl93aGl0ZV9saXN0X3Nhbml0aXplcgorICAgIGh0bWwgPSAl
ezxhIGFjdGlvbj0nZXhhbXA8IS0tIiB1bnNhZmVhdHRyPWZvbygpPi0tPmxl
LmNvbSc+dGVzdDwvYT59CisKKyAgICB0ZXh0ID0gd2hpdGVfbGlzdF9zYW5p
dGl6ZShodG1sLCBhdHRyaWJ1dGVzOiBbJ2FjdGlvbiddKQorCisgICAgYXNz
ZXJ0X2VxdWFsICV7PGEgYWN0aW9uPSJleGFtcDwhLS0lMjIlMjB1bnNhZmVh
dHRyPWZvbygpPi0tPmxlLmNvbSI+dGVzdDwvYT59LCB0ZXh0CisgIGVuZAor
CiBwcm90ZWN0ZWQKIAogICBkZWYgeHBhdGhfc2FuaXRpemUoaW5wdXQsIG9w
dGlvbnMgPSB7fSkKLS0gCjIuMTYuMgoK

--5ab3fff7_431bd7b7_fe20--

