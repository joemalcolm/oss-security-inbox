X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6948" "Monday" "9" "April" "2018" "13:28:08" "+0200" "Cedric Buissart" "cbuissar@redhat.com" "<CAKG8Do5EX36W3Bz_fzs5i0kTb6h7RSp5McOLu0-TagTX23mEAA@mail.gmail.com>" "142" "[oss-security] pcs: disclosure of CVE-2018-1079 and CVE-2018-1086" nil nil nil "4" "2018040911:28:08" "[oss-security] pcs: disclosure of CVE-2018-1079 and CVE-2018-1086" (number mark "U       cbuissar@red Apr  9  142/6948  " thread-indent "\"[oss-security] pcs: disclosure of CVE-2018-1079 and CVE-2018-1086\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12138 invoked by uid 550); 9 Apr 2018 11:28:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12117 invoked from network); 9 Apr 2018 11:28:40 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Zr14ABKsXyqkS3W0StfOe9xDiVvVo7whNj6YLTC2OnU=;
        b=WVqV4pJpIaQ/C4ZSSM1Ua/0KfMCEWlH1OTWVrE6PUjw+IdGa5AF+/pDxjmqd3VLBZH
         AUYP17qH5PiW99flidT1iqsAbL719WE2DQ1ktzFA1o+IisKCk378PxaJG+W0tN4MKCYR
         mT/WF5nyXdFTvJkUzgaYrw9Fyrd9QY3lktDIpACBeH8bLEawugPJN3izbHc7yLA7rIhM
         TZmndd08iTIvgeE7zYTiauNcTwDFD+BxUsCHPWcOBg7Fa+t2sM/emRMxYfxYqgqFZYtr
         8/qoO/M2ByKmcPhCVRxzt7jgA/kI5+7CeMLYyCL97m4PJVdgs1JCAdwPZ8x4AHXeZgSC
         51FA==
X-Gm-Message-State: ALQs6tDVSup3BTflvH+3HXZnW5nKYzdB4cvNZC8ZHN/5GN7zz3/e/P7Q
	CfnLuR0BjPUuWB/KbmLbktbw8SZu6rCdMIJ6hJS8kt7z
X-Google-Smtp-Source: AIpwx4/ajHK1mIMvrTjpjGcEEvjBjYmJUEuhu/hMkcpJHeTZiG9IGysp1pCq9C0/l1rHC/6bw30WfvjUh4p013peAzM=
X-Received: by 2002:a24:ecf:: with SMTP id 198-v6mr23391022ite.148.1523273308712;
 Mon, 09 Apr 2018 04:28:28 -0700 (PDT)
MIME-Version: 1.0
From: Cedric Buissart <cbuissar@redhat.com>
Date: Mon, 9 Apr 2018 13:28:08 +0200
Message-ID: <CAKG8Do5EX36W3Bz_fzs5i0kTb6h7RSp5McOLu0-TagTX23mEAA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/mixed; boundary="000000000000769320056968b482"
Subject: [oss-security] pcs: disclosure of CVE-2018-1079 and CVE-2018-1086

--000000000000769320056968b482
Content-Type: multipart/alternative; boundary="00000000000076931c056968b480"

--00000000000076931c056968b480
Content-Type: text/plain; charset="UTF-8"

Hi all,

This is to publicly disclose the following CVEs, rated as Medium and High.
Affected product is pcs (Pacemaker command line interface and GUI,
https://github.com/ClusterLabs/pcs)

* [high] CVE-2018-1079 pcs: Privilege escalation via authorized user
malicious REST call

It was found that the REST interface of the pcsd service did not properly
sanitize the file name from the /remote/put_file query. If the /etc/booth
directory exists, an authenticated attacker with write permissions could
create or overwrite arbitrary files with arbitrary data outside of the
/etc/booth directory, in the context of the pcsd process.

vulnerable since: support for booth file transfer was added (commit
dc7089b1, v. 0.9.157)

Patch attached

* [medium] CVE-2018-1086 pcs: Debug parameter removal bypass, allowing
information disclosure:

To prevent some information disclosure, pcsd actively removes '--debug'
from command requested over the REST interface, but this can be bypassed.
The information gained could then be used to gain higher privileges.

Patch attached

The CVE-2018-1079 issue was discovered by Ondrej Mular (Red Hat) and the
CVE-2018-1086 issue was discovered by Cedric Buissart (Red Hat).

-- 
Cedric Buissart,
Product Security

--00000000000076931c056968b480
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,<br><br>This is to publicly disclose the follo=
wing CVEs, rated as Medium and High.<br></div>Affected product is pcs (<spa=
n class=3D"gmail-col-11 gmail-text-gray-dark gmail-mr-2">Pacemaker command =
line interface and GUI</span>, <a href=3D"https://github.com/ClusterLabs/pc=
s">https://github.com/ClusterLabs/pcs</a>)<br><div><br>* [high] CVE-2018-10=
79 <span class=3D"gmail-il">pcs</span>: Privilege escalation via authorized=
 user malicious REST call<br><br><div>It was found that the REST interface =
of the pcsd service did not=20
properly sanitize the file name from the /remote/put_file query. If the=20
/etc/booth directory exists, an authenticated attacker with write=20
permissions could create or overwrite arbitrary files with arbitrary=20
data outside of the /etc/booth directory, in the context of the pcsd=20
process.<br><br></div>vulnerable since: support for booth file transfer was=
 added (commit dc7089b1, v. 0.9.157)<br><br></div><div>Patch attached<br></=
div><div><br><div>*  [medium] CVE-2018-1086 <span class=3D"gmail-il">pcs</s=
pan>: Debug parameter removal bypass, allowing information disclosure: <br>=
<br>To
 prevent some information disclosure, pcsd actively removes &#39;--debug&#3=
9;=20
from command requested over the REST interface, but this can be=20
bypassed. The information gained could then be used to gain higher=20
privileges.<br><br></div><div>Patch attached<br></div><div><br></div>The CV=
E-2018-1079 issue was discovered by Ondrej Mular (Red Hat) and the CVE-2018=
-1086 issue was discovered by Cedric Buissart (Red Hat).<br clear=3D"all"><=
br>-- <br><div class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"=
ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr">Cedric Buissart,<br>Produc=
t Security</div></div></div></div></div></div></div></div>
</div></div>

--00000000000076931c056968b480--

--000000000000769320056968b482
Content-Type: text/x-patch; charset="US-ASCII"; name="CVE-2018-1079.patch"
Content-Disposition: attachment; filename="CVE-2018-1079.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_jfs58nb50

ZGlmZiAtLWdpdCBhL3Bjc2QvcGNzZF9maWxlLnJiIGIvcGNzZC9wY3NkX2Zp
bGUucmIKaW5kZXggZGU3ZDM1NTMuLjRmMTYwNGE4IDEwMDY0NAotLS0gYS9w
Y3NkL3Bjc2RfZmlsZS5yYgorKysgYi9wY3NkL3Bjc2RfZmlsZS5yYgpAQCAt
MTA0LDYgKzEwNCwxMSBAQCBtb2R1bGUgUGNzZEZpbGUKICAgICAgIGlmIEBm
aWxlWzpuYW1lXS5lbXB0eT8KICAgICAgICAgcmFpc2UgUGNzZEV4Y2hhbmdl
Rm9ybWF0OjpFcnJvci5mb3JfaXRlbSgnZmlsZScsIEBpZCwgIiduYW1lJyBp
cyBlbXB0eSIpCiAgICAgICBlbmQKKyAgICAgIGlmIEBmaWxlWzpuYW1lXS5p
bmNsdWRlPygnLycpCisgICAgICAgIHJhaXNlIFBjc2RFeGNoYW5nZUZvcm1h
dDo6RXJyb3IuZm9yX2l0ZW0oCisgICAgICAgICAgJ2ZpbGUnLCBAaWQsICIn
bmFtZScgY2Fubm90IGNvbnRhaW4gJy8nIgorICAgICAgICApCisgICAgICBl
bmQKICAgICBlbmQKIAogICAgIGRlZiBkaXIoKQo=

--000000000000769320056968b482
Content-Type: text/x-patch; charset="US-ASCII"; name="CVE-2018-1086.patch"
Content-Disposition: attachment; filename="CVE-2018-1086.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_jfs58nbm1

RnJvbSBiMTQ0NjczNThhY2FjYjVmZjQ5MmYyZGYyOWMyYzc2YWJiOWRmMTgw
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBUb21hcyBKZWxpbmVr
IDx0b2plbGluZUByZWRoYXQuY29tPgpEYXRlOiBUdWUsIDIwIE1hciAyMDE4
IDE1OjM5OjQwICswMTAwClN1YmplY3Q6IFtQQVRDSF0gZ2V0IHJpZCBvZiAt
LWRlYnVnIHdoZW4gY2FsbGluZyBsb2NhbCBwY3NkCgotLS0KIHBjc2QvcGNz
ZC5yYiB8IDE1ICsrKysrKysrKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEw
IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
cGNzZC9wY3NkLnJiIGIvcGNzZC9wY3NkLnJiCmluZGV4IDhmNWFkODE5Li5i
NmE3NDM1YyAxMDA2NDQKLS0tIGEvcGNzZC9wY3NkLnJiCisrKyBiL3Bjc2Qv
cGNzZC5yYgpAQCAtMjM5LDggKzIzOSwxMyBAQCBwb3N0ICcvcnVuX3Bjcycg
ZG8KICAgICB9CiAgICAgcmV0dXJuIEpTT04ucHJldHR5X2dlbmVyYXRlKHJl
c3VsdCkKICAgZW5kCi0gICMgZG8gbm90IHJldmVhbCBwb3RlbnRpYWx5IHNl
bnNpdGl2ZSBpbmZvcm1hdGlvbgotICBjb21tYW5kX2RlY29kZWQuZGVsZXRl
KCctLWRlYnVnJykKKyAgIyBEbyBub3QgcmV2ZWFsIHBvdGVudGlhbGx5IHNl
bnNpdGl2ZSBpbmZvcm1hdGlvbjogcmVtb3ZlIC0tZGVidWcgYW5kIGFsbCBp
dHMKKyAgIyBwcmVmaXhlcyBzaW5jZSBnZXRvcHQgcGFyc2VyIGluIHBjcyBj
b25zaWRlcnMgdGhlbSBlcXVhbCB0byAtLWRlYnVnLgorICBkZWJ1Z19pdGVt
cyA9IFsiLS1kZSIsICItLWRlYiIsICItLWRlYnUiLCAiLS1kZWJ1ZyJdCisg
IGNvbW1hbmRfc2FuaXRpemVkID0gW10KKyAgY29tbWFuZF9kZWNvZGVkLmVh
Y2ggeyB8aXRlbXwKKyAgICBjb21tYW5kX3Nhbml0aXplZCA8PCBpdGVtIHVu
bGVzcyBkZWJ1Z19pdGVtcy5pbmNsdWRlPyhpdGVtKQorICB9CiAKICAgYWxs
b3dlZF9jb21tYW5kcyA9IHsKICAgICBbJ2NsdXN0ZXInLCAnYXV0aCcsICcu
Li4nXSA9PiB7CkBAIC0zNDEsOSArMzQ2LDkgQEAgcG9zdCAnL3J1bl9wY3Mn
IGRvCiAgIGFsbG93ZWQgPSBmYWxzZQogICBjb21tYW5kX3NldHRpbmdzID0g
e30KICAgYWxsb3dlZF9jb21tYW5kcy5lYWNoIHsgfGNtZCwgY21kX3NldHRp
bmdzfAotICAgIGlmIGNvbW1hbmRfZGVjb2RlZCA9PSBjbWQgXAorICAgIGlm
IGNvbW1hbmRfc2FuaXRpemVkID09IGNtZCBcCiAgICAgICBvciBcCi0gICAg
ICAoY21kWy0xXSA9PSAnLi4uJyBhbmQgY21kWzAuLi0yXSA9PSBjb21tYW5k
X2RlY29kZWRbMC4uKGNtZC5sZW5ndGggLSAyKV0pCisgICAgICAoY21kWy0x
XSA9PSAnLi4uJyBhbmQgY21kWzAuLi0yXSA9PSBjb21tYW5kX3Nhbml0aXpl
ZFswLi4oY21kLmxlbmd0aCAtIDIpXSkKICAgICAgIHRoZW4KICAgICAgICAg
YWxsb3dlZCA9IHRydWUKICAgICAgICAgY29tbWFuZF9zZXR0aW5ncyA9IGNt
ZF9zZXR0aW5ncwpAQCAtMzcyLDcgKzM3Nyw3IEBAIHBvc3QgJy9ydW5fcGNz
JyBkbwogICBvcHRpb25zID0ge30KICAgb3B0aW9uc1snc3RkaW4nXSA9IHN0
ZF9pbiBpZiBzdGRfaW4KICAgc3RkX291dCwgc3RkX2VyciwgcmV0dmFsID0g
cnVuX2NtZF9vcHRpb25zKAotICAgIEBhdXRoX3VzZXIsIG9wdGlvbnMsIFBD
UywgKmNvbW1hbmRfZGVjb2RlZAorICAgIEBhdXRoX3VzZXIsIG9wdGlvbnMs
IFBDUywgKmNvbW1hbmRfc2FuaXRpemVkCiAgICkKICAgcmVzdWx0ID0gewog
ICAgICdzdGF0dXMnID0+ICdvaycsCi0tIAoyLjExLjAKCg==

--000000000000769320056968b482--
