X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["13719" "Tuesday" "19" "June" "2018" "11:37:54" "-0400" "=?utf-8?B?UmFmYWVsIE1lbmRvbsOnYSBGcmFuw6dh?=" "rafaelmfranca@gmail.com" "<00b9d6f5-2296-4203-ab88-758f0ba54f63@Spark>" "295" "[oss-security] [CVE-2018-3760] Path Traversal in Sprockets" "^Date:" nil nil "6" "2018061915:37:54" "[oss-security] [CVE-2018-3760] Path Traversal in Sprockets" (number mark "        rafaelmfranc Jun 19  295/13719 " thread-indent "\"[oss-security] [CVE-2018-3760] Path Traversal in Sprockets\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32060 invoked by uid 550); 19 Jun 2018 16:26:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30027 invoked from network); 19 Jun 2018 15:38:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:subject:mime-version;
        bh=mCvldG+ii7qDxcCdpyHHAT9EmKbMpsg0TkdKxF0X6XU=;
        b=D8NcyHnMkcY5KLy61wQu8Toy/9hjYn9A7t8KQlVrJ9cXlugoZ4gNQxohypp/I4DkaS
         cM21a/GG1/eD7O7z44tMK8C+aoBtFMswXlIeFdc8czjZZ17YbnqK8Syj8eZB1Pma+1Yu
         nn2vkOvw6MjJ9SYV2IEBgrUyplROqheSBYAJG6QSYQ0A7sQKP+dUOCI8TzaDWLzydNx4
         BrlfcW08Lu7Loso/YR4SUF7Vn1MI+O9ODhiwtHAH5mvrgGllJdR0gsrX8alMcyEkXsHf
         IAAdur4udeZlsGWbjDcYrJ8BW/USlkaiIXkoKEjMA+bzRGdSBzRinOj95cZciwRwi2MI
         zhnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:message-id:subject:mime-version;
        bh=mCvldG+ii7qDxcCdpyHHAT9EmKbMpsg0TkdKxF0X6XU=;
        b=kfGLwmg7PmFKUj3lmn3BTH17wO8kjQd+eh2mK0NBYVFu4yrO4DuPena+NgDCeVqGxY
         mF1G8JT+q7T9/06t7JrBq1cVcM3HIFdLgDt8sEz3hHrZSXcZSI+I5Tx6IO5R3pWKXRvL
         WcznW9bAwzeR2Hke6a45Vkc6Qx8tbKsISegBWT/W7TKvKR/v/r0ebnVjRS5uiqvKuUXN
         YIniE5Jak+MStp6oi4AJkCDuZAcfNhP1Phgof/8lERswi/z+hT3SJHYXnMwQMCEmV3Ju
         0WBEpEPioysiYg3fi7BtmBmsLlmMeVNThHBA5RBMjdeayKYnEDsdgfgtjpcheuSa9qws
         UVtg==
X-Gm-Message-State: APt69E1pKGfKfV/Fls8asyYXmwwVCICROvOJAZpgeWrAV1pOVe3o4x3Z
	QTVzjbL/PSJcPfeM8UdVBi0=
X-Google-Smtp-Source: ADUXVKK9/q6RNodB60NBvSm5H2AIerbX1s1BKKhEA3wF3nz56SHBCZTu+Ucv+OwyxlIRPWabrR3r9A==
X-Received: by 2002:a6b:9845:: with SMTP id a66-v6mr14393783ioe.82.1529422682538;
        Tue, 19 Jun 2018 08:38:02 -0700 (PDT)
Message-ID: <00b9d6f5-2296-4203-ab88-758f0ba54f63@Spark>
X-Readdle-Message-ID: 00b9d6f5-2296-4203-ab88-758f0ba54f63@Spark
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="5b292357_3d1b58ba_16a6e"
Date: Tue, 19 Jun 2018 11:37:54 -0400
From: =?utf-8?Q?Rafael_Mendon=C3=A7a_Fran=C3=A7a?=
 <rafaelmfranca@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [CVE-2018-3760] Path Traversal in Sprockets
To: rubyonrails-security@googlegroups.com, 
 oss-security@lists.openwall.com, ruby-security-ann@googlegroups.com

--5b292357_3d1b58ba_16a6e
Content-Type: multipart/alternative; boundary="5b292357_46e87ccd_16a6e"

--5b292357_46e87ccd_16a6e
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

There is an information leak vulnerability in Sprockets. This vulnerability
has been assigned the CVE identifier CVE-2018-3760.

Versions Affected: 4.0.0.beta7 and lower, 3.7.1 and lower, 2.12.4 and lower.
Not affected: NONE
Fixed Versions: 4.0.0.beta8, 3.7.2, 2.12.5

Impact
------
Specially crafted requests can be used to access files that exists on
the filesystem that is outside an application's root directory, when the Sp=
rockets server is
used in production.

All users running an affected release should either upgrade or use one of t=
he work arounds immediately.

Releases
--------
The 4.0.0.beta8, 3.7.2 and 2.12.5 releases are available at the normal loca=
tions.

Workarounds
-----------
In Rails applications, work around this issue, set `config.assets.compile =
=3D false` and
`config.public_file_server.enabled =3D true` in an initializer and precompi=
le the assets.

This work around will not be possible in all hosting environments and upgra=
ding is advised.

Patches
-------
To aid users who aren't able to upgrade immediately we have provided patche=
s for the three supported release series.
They are in git-am format and consist of a single changeset.

* 4-0-fix-path-traversal.patch - Patch for the 4.0.x release series
* 3-7-fix-path-traversal.patch - Patch for the 3.7.x release series
* 2-12-fix-path-traversal.patch - Patch for the 2.12.x release series

Credits
-------

Thanks to Orange Tsai from DEVCORE for reporting this issue.

Rafael Fran=C3=A7a

--5b292357_46e87ccd_16a6e
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<html xmlns=3D"http://www.w3.org/1999/xhtml">
<head>
<title></title>
</head>
<body>
<div name=3D"messageBodySection" style=3D"font-size: 14px; font-family: -ap=
ple-system, BlinkMacSystemFont, sans-serif;">There is an information leak v=
ulnerability in Sprockets. This vulnerability<br />
has been assigned the CVE identifier CVE-2018-3760.<br />
<br />
Versions Affected: 4.0.0.beta7 and lower, 3.7.1 and lower, 2.12.4 and lower=
.<br />
Not affected: NONE<br />
Fixed Versions: 4.0.0.beta8, 3.7.2, 2.12.5<br />
<br />
Impact<br />
------<br />
Specially crafted requests can be used to access files that exists on<br />
the filesystem that is outside an application's root directory, when the Sp=
rockets server is<br />
used in production.<br />
<br />
All users running an affected release should either upgrade or use one of t=
he work arounds immediately.<br />
<br />
Releases<br />
--------<br />
The 4.0.0.beta8, 3.7.2 and 2.12.5 releases are available at the normal loca=
tions.<br />
<br />
Workarounds<br />
-----------<br />
In Rails applications, work around this issue, set `config.assets.compile =
=3D false` and<br />
`config.public_file_server.enabled =3D true` in an initializer and precompi=
le the assets.<br />
<br />
This work around will not be possible in all hosting environments and upgra=
ding is advised.<br />
<br />
Patches<br />
-------<br />
To aid users who aren't able to upgrade immediately we have provided patche=
s for the three supported release series.<br />
They are in git-am format and consist of a single changeset.<br />
<br />
* 4-0-fix-path-traversal.patch - Patch for the 4.0.x release series<br />
* 3-7-fix-path-traversal.patch - Patch for the 3.7.x release series<br />
* 2-12-fix-path-traversal.patch - Patch for the 2.12.x release series<br />
<br />
Credits<br />
-------<br />
<br />
Thanks to Orange Tsai from DEVCORE for reporting this issue.<br /></div>
<div name=3D"messageSignatureSection" style=3D"font-size: 14px; font-family=
: -apple-system, BlinkMacSystemFont, sans-serif;"><br />
Rafael Fran=C3=A7a</div>
</body>
</html>

--5b292357_46e87ccd_16a6e--

--5b292357_3d1b58ba_16a6e
Content-Type: application/octet-stream
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="2-12-fix-path-traversal.patch"

RnJvbSAxOGI4YTdmMDdhNTBjMjQ1ZTlhZWU3ODU0ZWNkYmU2MDZiYmQ4YmI1
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBzY2huZWVtcyA8cmlj
aGFyZC5zY2huZWVtYW4rZm9vQGdtYWlsLmNvbT4KRGF0ZTogVHVlLCAyNCBB
cHIgMjAxOCAxNjo0Mjo0MSAtMDUwMApTdWJqZWN0OiBbUEFUQ0ggMS8yXSBE
byBub3QgcmVzcG9uZCB0byBodHRwIHJlcXVlc3RzIGFza2luZyBmb3IgYSBg
ZmlsZTovL2AKCkJhc2VkIG9uIENWRS0yMDE4LTM3NjAgd2hlbiB0aGUgU3By
b2NrZXRzIHNlcnZlciBpcyBhY2NpZGVudGFsbHkgYmVpbmcgdXNlZCBpbiBw
cm9kdWN0aW9uLCBhbiBhdHRhY2tlciBjYW4gcGFzcyBpbiBhIHNwZWNpZmlj
YWxseSBjcmFmdGVkIHVybCB0aGF0IHdpbGwgYWxsb3cgdGhlbSBhY2Nlc3Mg
dG8gdmlldyBldmVyeSBmaWxlIG9uIHRoZSBzeXN0ZW0uIElmIHRoZSBmaWxl
IGhpdCBjb250YWlucyBhIGNvbXBpbGFibGUgZXh0ZW5zaW9uIHN1Y2ggYXMg
YC5lcmJgIHRoZW4gdGhlIGNvZGUgaW4gdGhhdCBmaWxlIHdpbGwgYmUgZXhl
Y3V0ZWQuCgpBIFJhaWxzIGFwcCB3aWxsIGJlIHVzaW5nIHRoZSBTcHJvY2tl
dHMgZmlsZSBzZXJ2ZXIgaW4gcHJvZHVjdGlvbiBpZiB0aGV5IGhhdmUgYWNj
aWRlbnRhbGx5IGNvbmZpZ3VyZWQgdGhlaXIgYXBwIHRvOgoKYGBgcnVieQpj
b25maWcuYXNzZXRzLmNvbXBpbGUgPSB0cnVlICMgWW91ciBhcHAgaXMgdnVs
bmVyYWJsZQpgYGAKCkl0IGlzIGhpZ2hseSByZWNvbW1lbmRlZCB0byBub3Qg
dXNlIHRoZSBTcHJvY2tldHMgc2VydmVyIGluIHByb2R1Y3Rpb24gYW5kIHRv
IGluc3RlYWQgcHJlY29tcGlsZSBhc3NldHMgdG8gZGlzayBhbmQgc2VydmUg
dGhlbSB0aHJvdWdoIGEgc2VydmVyIHN1Y2ggYXMgTmdpbnggb3IgdmlhIHRo
ZSBzdGF0aWMgZmlsZSBtaWRkbGV3YXJlIHRoYXQgc2hpcHMgd2l0aCByYWls
cyBgY29uZmlnLnB1YmxpY19maWxlX3NlcnZlci5lbmFibGVkID0gdHJ1ZWAu
CgpUaGlzIHBhdGNoIG1pdGlnYXRlcyB0aGUgaXNzdWUsIGJ1dCBleHBsaWNp
dGx5IGRpc2FsbG93aW5nIGFueSByZXF1ZXN0cyB0byBhbnkgVVJJIHJlc291
cmNlcyB2aWEgdGhlIHNlcnZlci4KLS0tCiBsaWIvc3Byb2NrZXRzL3NlcnZl
ci5yYiB8IDIgKy0KIHRlc3QvdGVzdF9zZXJ2ZXIucmIgICAgIHwgNyArKysr
KysrCiAyIGZpbGVzIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMSBkZWxl
dGlvbigtKQoKZGlmZiAtLWdpdCBhL2xpYi9zcHJvY2tldHMvc2VydmVyLnJi
IGIvbGliL3Nwcm9ja2V0cy9zZXJ2ZXIucmIKaW5kZXggZTcxZjQxMzguLjI5
YjVmZDY3IDEwMDY0NAotLS0gYS9saWIvc3Byb2NrZXRzL3NlcnZlci5yYgor
KysgYi9saWIvc3Byb2NrZXRzL3NlcnZlci5yYgpAQCAtOTAsNyArOTAsNyBA
QCBtb2R1bGUgU3Byb2NrZXRzCiAgICAgICAgICMKICAgICAgICAgIyAgICAg
aHR0cDovL2V4YW1wbGUub3JnL2Fzc2V0cy8uLi8uLi8uLi9ldGMvcGFzc3dk
CiAgICAgICAgICMKLSAgICAgICAgcGF0aC5pbmNsdWRlPygiLi4iKSB8fCBQ
YXRobmFtZS5uZXcocGF0aCkuYWJzb2x1dGU/CisgICAgICAgIHBhdGguaW5j
bHVkZT8oIi4uIikgfHwgUGF0aG5hbWUubmV3KHBhdGgpLmFic29sdXRlPyB8
fCBwYXRoLmluY2x1ZGU/KCI6Ly8iKQogICAgICAgZW5kCiAKICAgICAgICMg
UmV0dXJucyBhIDQwMyBGb3JiaWRkZW4gcmVzcG9uc2UgdHVwbGUKZGlmZiAt
LWdpdCBhL3Rlc3QvdGVzdF9zZXJ2ZXIucmIgYi90ZXN0L3Rlc3Rfc2VydmVy
LnJiCmluZGV4IDZhOGE0NGJlLi4yOWM1ZDRhOSAxMDA2NDQKLS0tIGEvdGVz
dC90ZXN0X3NlcnZlci5yYgorKysgYi90ZXN0L3Rlc3Rfc2VydmVyLnJiCkBA
IC0yMzAsNiArMjMwLDEzIEBAIGNsYXNzIFRlc3RTZXJ2ZXIgPCBTcHJvY2tl
dHM6OlRlc3RDYXNlCiAgICAgYXNzZXJ0X2VxdWFsIDQwMywgbGFzdF9yZXNw
b25zZS5zdGF0dXMKICAgZW5kCiAKKyAgdGVzdCAiaWxsZWdhbCBhY2Nlc3Mg
b2YgYSBmaWxlIGFzc2V0IiBkbworICAgIGFic29sdXRlX3BhdGggPSBmaXh0
dXJlX3BhdGgoInNlcnZlci9hcHAvamF2YXNjcmlwdHMiKQorCisgICAgZ2V0
ICJhc3NldHMvZmlsZTolMmYlMmYvLyN7YWJzb2x1dGVfcGF0aH0vZm9vLmpz
IgorICAgIGFzc2VydF9lcXVhbCA0MDMsIGxhc3RfcmVzcG9uc2Uuc3RhdHVz
CisgIGVuZAorCiAgIHRlc3QgImFkZCBuZXcgc291cmNlIHRvIHRyZWUiIGRv
CiAgICAgZmlsZW5hbWUgPSBmaXh0dXJlX3BhdGgoInNlcnZlci9hcHAvamF2
YXNjcmlwdHMvYmF6LmpzIikKIAotLSAKMi4xNS4wCgo=

--5b292357_3d1b58ba_16a6e
Content-Type: application/octet-stream
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="3-7-fix-path-traversal.patch"

RnJvbSA5YzM0ZmEwNTkwMGI5NjhkNzRmMDhjY2Y0MDkxNzg0OGE3YmU5NDQx
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBzY2huZWVtcyA8cmlj
aGFyZC5zY2huZWVtYW4rZm9vQGdtYWlsLmNvbT4KRGF0ZTogVHVlLCAyNCBB
cHIgMjAxOCAxNjozMjoyMiAtMDUwMApTdWJqZWN0OiBbUEFUQ0ggMS8yXSBE
byBub3QgcmVzcG9uZCB0byBodHRwIHJlcXVlc3RzIGFza2luZyBmb3IgYSBg
ZmlsZTovL2AKCkJhc2VkIG9uIENWRS0yMDE4LTM3NjAgd2hlbiB0aGUgU3By
b2NrZXRzIHNlcnZlciBpcyBhY2NpZGVudGFsbHkgYmVpbmcgdXNlZCBpbiBw
cm9kdWN0aW9uLCBhbiBhdHRhY2tlciBjYW4gcGFzcyBpbiBhIHNwZWNpZmlj
YWxseSBjcmFmdGVkIHVybCB0aGF0IHdpbGwgYWxsb3cgdGhlbSBhY2Nlc3Mg
dG8gdmlldyBldmVyeSBmaWxlIG9uIHRoZSBzeXN0ZW0uIElmIHRoZSBmaWxl
IGhpdCBjb250YWlucyBhIGNvbXBpbGFibGUgZXh0ZW5zaW9uIHN1Y2ggYXMg
YC5lcmJgIHRoZW4gdGhlIGNvZGUgaW4gdGhhdCBmaWxlIHdpbGwgYmUgZXhl
Y3V0ZWQuCgpBIFJhaWxzIGFwcCB3aWxsIGJlIHVzaW5nIHRoZSBTcHJvY2tl
dHMgZmlsZSBzZXJ2ZXIgaW4gcHJvZHVjdGlvbiBpZiB0aGV5IGhhdmUgYWNj
aWRlbnRhbGx5IGNvbmZpZ3VyZWQgdGhlaXIgYXBwIHRvOgoKYGBgcnVieQpj
b25maWcuYXNzZXRzLmNvbXBpbGUgPSB0cnVlICMgWW91ciBhcHAgaXMgdnVs
bmVyYWJsZQpgYGAKCkl0IGlzIGhpZ2hseSByZWNvbW1lbmRlZCB0byBub3Qg
dXNlIHRoZSBTcHJvY2tldHMgc2VydmVyIGluIHByb2R1Y3Rpb24gYW5kIHRv
IGluc3RlYWQgcHJlY29tcGlsZSBhc3NldHMgdG8gZGlzayBhbmQgc2VydmUg
dGhlbSB0aHJvdWdoIGEgc2VydmVyIHN1Y2ggYXMgTmdpbnggb3IgdmlhIHRo
ZSBzdGF0aWMgZmlsZSBtaWRkbGV3YXJlIHRoYXQgc2hpcHMgd2l0aCByYWls
cyBgY29uZmlnLnB1YmxpY19maWxlX3NlcnZlci5lbmFibGVkID0gdHJ1ZWAu
CgpUaGlzIHBhdGNoIG1pdGlnYXRlcyB0aGUgaXNzdWUsIGJ1dCBleHBsaWNp
dGx5IGRpc2FsbG93aW5nIGFueSByZXF1ZXN0cyB0byBhbnkgVVJJIHJlc291
cmNlcyB2aWEgdGhlIHNlcnZlci4KLS0tCiBsaWIvc3Byb2NrZXRzL3NlcnZl
ci5yYiB8IDIgKy0KIHRlc3QvdGVzdF9zZXJ2ZXIucmIgICAgIHwgNyArKysr
KysrCiAyIGZpbGVzIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMSBkZWxl
dGlvbigtKQoKZGlmZiAtLWdpdCBhL2xpYi9zcHJvY2tldHMvc2VydmVyLnJi
IGIvbGliL3Nwcm9ja2V0cy9zZXJ2ZXIucmIKaW5kZXggNzk1YmRlYzcuLjJh
ZDJjOWFiIDEwMDY0NAotLS0gYS9saWIvc3Byb2NrZXRzL3NlcnZlci5yYgor
KysgYi9saWIvc3Byb2NrZXRzL3NlcnZlci5yYgpAQCAtMTE1LDcgKzExNSw3
IEBAIG1vZHVsZSBTcHJvY2tldHMKICAgICAgICAgIwogICAgICAgICAjICAg
ICBodHRwOi8vZXhhbXBsZS5vcmcvYXNzZXRzLy4uLy4uLy4uL2V0Yy9wYXNz
d2QKICAgICAgICAgIwotICAgICAgICBwYXRoLmluY2x1ZGU/KCIuLiIpIHx8
IGFic29sdXRlX3BhdGg/KHBhdGgpCisgICAgICAgIHBhdGguaW5jbHVkZT8o
Ii4uIikgfHwgYWJzb2x1dGVfcGF0aD8ocGF0aCkgfHwgcGF0aC5pbmNsdWRl
PygiOi8vIikKICAgICAgIGVuZAogCiAgICAgICBkZWYgaGVhZF9yZXF1ZXN0
PyhlbnYpCmRpZmYgLS1naXQgYS90ZXN0L3Rlc3Rfc2VydmVyLnJiIGIvdGVz
dC90ZXN0X3NlcnZlci5yYgppbmRleCA2NjQyOTUzMy4uMTk5MjFlMTkgMTAw
NjQ0Ci0tLSBhL3Rlc3QvdGVzdF9zZXJ2ZXIucmIKKysrIGIvdGVzdC90ZXN0
X3NlcnZlci5yYgpAQCAtMzMxLDYgKzMzMSwxMyBAQCBjbGFzcyBUZXN0U2Vy
dmVyIDwgU3Byb2NrZXRzOjpUZXN0Q2FzZQogICAgIGFzc2VydF9lcXVhbCAi
IiwgbGFzdF9yZXNwb25zZS5ib2R5CiAgIGVuZAogCisgIHRlc3QgImlsbGVn
YWwgYWNjZXNzIG9mIGEgZmlsZSBhc3NldCIgZG8KKyAgICBhYnNvbHV0ZV9w
YXRoID0gZml4dHVyZV9wYXRoKCJzZXJ2ZXIvYXBwL2phdmFzY3JpcHRzIikK
KworICAgIGdldCAiYXNzZXRzL2ZpbGU6JTJmJTJmLy8je2Fic29sdXRlX3Bh
dGh9L2Zvby5qcyIKKyAgICBhc3NlcnRfZXF1YWwgNDAzLCBsYXN0X3Jlc3Bv
bnNlLnN0YXR1cworICBlbmQKKwogICB0ZXN0ICJhZGQgbmV3IHNvdXJjZSB0
byB0cmVlIiBkbwogICAgIGZpbGVuYW1lID0gZml4dHVyZV9wYXRoKCJzZXJ2
ZXIvYXBwL2phdmFzY3JpcHRzL2Jhei5qcyIpCiAKLS0gCjIuMTUuMAoK

--5b292357_3d1b58ba_16a6e
Content-Type: application/octet-stream
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="4-0-fix-path-traversal.patch"

RnJvbSAxNTg5NGU3YTk2ZjYyZDIyMTliMjlkMzhhMjJkNjcyOTliMjJkMTE1
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBzY2huZWVtcyA8cmlj
aGFyZC5zY2huZWVtYW4rZm9vQGdtYWlsLmNvbT4KRGF0ZTogVHVlLCAyNCBB
cHIgMjAxOCAxNjozNzo1MyAtMDUwMApTdWJqZWN0OiBbUEFUQ0ggMS8yXSBE
byBub3QgcmVzcG9uZCB0byBodHRwIHJlcXVlc3RzIGFza2luZyBmb3IgYSBg
ZmlsZTovL2AKCkJhc2VkIG9uIENWRS0yMDE4LTM3NjAgd2hlbiB0aGUgU3By
b2NrZXRzIHNlcnZlciBpcyBhY2NpZGVudGFsbHkgYmVpbmcgdXNlZCBpbiBw
cm9kdWN0aW9uLCBhbiBhdHRhY2tlciBjYW4gcGFzcyBpbiBhIHNwZWNpZmlj
YWxseSBjcmFmdGVkIHVybCB0aGF0IHdpbGwgYWxsb3cgdGhlbSBhY2Nlc3Mg
dG8gdmlldyBldmVyeSBmaWxlIG9uIHRoZSBzeXN0ZW0uIElmIHRoZSBmaWxl
IGhpdCBjb250YWlucyBhIGNvbXBpbGFibGUgZXh0ZW5zaW9uIHN1Y2ggYXMg
YC5lcmJgIHRoZW4gdGhlIGNvZGUgaW4gdGhhdCBmaWxlIHdpbGwgYmUgZXhl
Y3V0ZWQuCgpBIFJhaWxzIGFwcCB3aWxsIGJlIHVzaW5nIHRoZSBTcHJvY2tl
dHMgZmlsZSBzZXJ2ZXIgaW4gcHJvZHVjdGlvbiBpZiB0aGV5IGhhdmUgYWNj
aWRlbnRhbGx5IGNvbmZpZ3VyZWQgdGhlaXIgYXBwIHRvOgoKYGBgcnVieQpj
b25maWcuYXNzZXRzLmNvbXBpbGUgPSB0cnVlICMgWW91ciBhcHAgaXMgdnVs
bmVyYWJsZQpgYGAKCkl0IGlzIGhpZ2hseSByZWNvbW1lbmRlZCB0byBub3Qg
dXNlIHRoZSBTcHJvY2tldHMgc2VydmVyIGluIHByb2R1Y3Rpb24gYW5kIHRv
IGluc3RlYWQgcHJlY29tcGlsZSBhc3NldHMgdG8gZGlzayBhbmQgc2VydmUg
dGhlbSB0aHJvdWdoIGEgc2VydmVyIHN1Y2ggYXMgTmdpbnggb3IgdmlhIHRo
ZSBzdGF0aWMgZmlsZSBtaWRkbGV3YXJlIHRoYXQgc2hpcHMgd2l0aCByYWls
cyBgY29uZmlnLnB1YmxpY19maWxlX3NlcnZlci5lbmFibGVkID0gdHJ1ZWAu
CgpUaGlzIHBhdGNoIG1pdGlnYXRlcyB0aGUgaXNzdWUsIGJ1dCBleHBsaWNp
dGx5IGRpc2FsbG93aW5nIGFueSByZXF1ZXN0cyB0byB1cmkgcmVzb3VyY2Vz
IHZpYSB0aGUgc2VydmVyLgotLS0KIGxpYi9zcHJvY2tldHMvc2VydmVyLnJi
IHwgMiArLQogdGVzdC90ZXN0X3NlcnZlci5yYiAgICAgfCA3ICsrKysrKysK
IDIgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pCgpkaWZmIC0tZ2l0IGEvbGliL3Nwcm9ja2V0cy9zZXJ2ZXIucmIgYi9s
aWIvc3Byb2NrZXRzL3NlcnZlci5yYgppbmRleCAxNmVkYzRhNC4uNWU1NTA3
YzAgMTAwNjQ0Ci0tLSBhL2xpYi9zcHJvY2tldHMvc2VydmVyLnJiCisrKyBi
L2xpYi9zcHJvY2tldHMvc2VydmVyLnJiCkBAIC0xMTQsNyArMTE0LDcgQEAg
bW9kdWxlIFNwcm9ja2V0cwogICAgICAgICAjCiAgICAgICAgICMgICAgIGh0
dHA6Ly9leGFtcGxlLm9yZy9hc3NldHMvLi4vLi4vLi4vZXRjL3Bhc3N3ZAog
ICAgICAgICAjCi0gICAgICAgIHBhdGguaW5jbHVkZT8oIi4uIikgfHwgYWJz
b2x1dGVfcGF0aD8ocGF0aCkKKyAgICAgICAgcGF0aC5pbmNsdWRlPygiLi4i
KSB8fCBhYnNvbHV0ZV9wYXRoPyhwYXRoKSB8fCBwYXRoLmluY2x1ZGU/KCI6
Ly8iKQogICAgICAgZW5kCiAKICAgICAgIGRlZiBoZWFkX3JlcXVlc3Q/KGVu
dikKZGlmZiAtLWdpdCBhL3Rlc3QvdGVzdF9zZXJ2ZXIucmIgYi90ZXN0L3Rl
c3Rfc2VydmVyLnJiCmluZGV4IGQ3MWJjOTk5Li5iNjVhZDgwOSAxMDA2NDQK
LS0tIGEvdGVzdC90ZXN0X3NlcnZlci5yYgorKysgYi90ZXN0L3Rlc3Rfc2Vy
dmVyLnJiCkBAIC0yODYsNiArMjg2LDEzIEBAIGNsYXNzIFRlc3RTZXJ2ZXIg
PCBTcHJvY2tldHM6OlRlc3RDYXNlCiAgICAgYXNzZXJ0X2VxdWFsICIiLCBs
YXN0X3Jlc3BvbnNlLmJvZHkKICAgZW5kCiAKKyAgdGVzdCAiaWxsZWdhbCBh
Y2Nlc3Mgb2YgYSBmaWxlIGFzc2V0IiBkbworICAgIGFic29sdXRlX3BhdGgg
PSBmaXh0dXJlX3BhdGgoInNlcnZlci9hcHAvamF2YXNjcmlwdHMiKQorCisg
ICAgZ2V0ICJhc3NldHMvZmlsZTolMmYlMmYvLyN7YWJzb2x1dGVfcGF0aH0v
Zm9vLmpzIgorICAgIGFzc2VydF9lcXVhbCA0MDMsIGxhc3RfcmVzcG9uc2Uu
c3RhdHVzCisgIGVuZAorCiAgIHRlc3QgImFkZCBuZXcgc291cmNlIHRvIHRy
ZWUiIGRvCiAgICAgZmlsZW5hbWUgPSBmaXh0dXJlX3BhdGgoInNlcnZlci9h
cHAvamF2YXNjcmlwdHMvYmF6LmpzIikKIAotLSAKMi4xNS4wCgo=

--5b292357_3d1b58ba_16a6e--

