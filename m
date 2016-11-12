X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9547" "Saturday" "12" "November" "2016" "09:39:45" "+0100" "=?UTF-8?B?T25kxZllaiBTdXLDvQ==?=" "ondrej@sury.org" "<1478939985.2087788.785402465.36AF3B93@webmail.messagingengine.com>" "179" "[oss-security] Remote crash in MaraDNS 2.0.13 and git master" nil nil nil "11" "2016111208:39:45" "[oss-security] Remote crash in MaraDNS 2.0.13 and git master" (number mark "U       ondrej@sury. Nov 12  179/9547  " thread-indent "\"[oss-security] Remote crash in MaraDNS 2.0.13 and git master\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20432 invoked by uid 550); 12 Nov 2016 13:58:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28341 invoked from network); 12 Nov 2016 08:39:57 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=sury.org; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to:x-me-sender:x-me-sender:x-sasl-enc; s=
	mesmtp; bh=ATQ1uWcZ6bw410P9HGtVDe5lmU0=; b=IFRZ5TLtCvftISCrWM/8E
	Va3JnqpkpFPDyVCCij3ez6wpuw2yBtTei3KEPxeLTsV34mFcSa2OovEPApxQ3P0K
	3licPACyvnpMNvKoXjU1v39Q1HFkR8rDHS+csbVFtPwJ8V2w+2eGcEHyc5Fsdz2v
	kXGSBvHDVsQQ08HWIuzjJw=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:message-id:mime-version:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc; s=smtpout; bh=ATQ1uWcZ6bw410P9HGtVDe5lm
	U0=; b=efgpUnAPEfRCuI0ut2YXgsAMoyBIHL7//eHY2/JOD33aF1hPT8RIkFY6e
	OtzKTt27Xj9Z/FfnXD+GQmkNpMg3paTkhg9SJe0AVPYQM7ySipciBMa9iMJ8zJXZ
	LuOBWGZpq1NpB9T+MosMn1zdA5CIsFI9PaFbW4mMsVmkHhqfCw=
X-ME-Sender: <xms:UdUmWBgC8oA0bPWBd8rAm0mNajXD8yW8xGxWxFRm-Lw17Ng9_L6gVw>
Message-Id: <1478939985.2087788.785402465.36AF3B93@webmail.messagingengine.com>
From: =?UTF-8?Q?Ond=C5=99ej=20Sur=C3=BD?= <ondrej@sury.org>
To: oss-security@lists.openwall.com,
 Debian Security Team <team@security.debian.org>,
 Dariusz Dwornikowski <dariusz.dwornikowski@cs.put.poznan.pl>,
 Sam Trenholme <sam-k6mymjcnjpz3fmkieotlt7rbgvqt98qy@samiam.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: multipart/mixed; boundary="_----------=_147893998520877880";
 charset="utf-8"
X-Mailer: MessagingEngine.com Webmail Interface - ajax-d68eb56e
Date: Sat, 12 Nov 2016 09:39:45 +0100
Subject: [oss-security] Remote crash in MaraDNS 2.0.13 and git master

--_----------=_147893998520877880
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

Hi,

while playing with fuzzing the DNS servers with AFL (2.35b) I found a
remote crash bug in MaraDNS 2.0.13 js_readuint16. It can be also
reproduced using https://github.com/samboy/MaraDNS/ master branch.

Attached is patch to allow the fuzzing (it overrides getudp() with
read(0, ..)), the input data that crashes MaraDNS, and the bt full
output.

Please assign CVE, I would provide a patch, but MaraDNS code is
extremely hard to navigate for me, so I'll leave the fix for the code
author.

AFL has finished only 1 cycle (and found the 1 unique crash), so I'll
keep it running for a while.

Cheers,
--=20
Ond=C5=99ej Sur=C3=BD <ondrej@sury.org>
Knot DNS (https://www.knot-dns.cz/) =E2=80=93 a high-performance DNS server
Knot Resolver (https://www.knot-resolver.cz/) =E2=80=93 secure, privacy-awa=
re,
fast DNS(SEC) resolver
V=C5=A1e pro chleba (https://vseprochleba.cz) =E2=80=93 Mouky ze ml=C3=BDna=
 a pot=C5=99eby pro
pe=C4=8Den=C3=AD chleba v=C5=A1eho druhu

--_----------=_147893998520877880
Content-Disposition: attachment; filename="maradns.btfull"
Content-Id: <1478939756.2087167.dfac115e78ae79ff962fa2f9243ba57d28630c5a.0FB02020@content.messagingengine.com>
Content-Transfer-Encoding: base64
Content-Type: application/octet-stream; name="maradns.btfull"

KGdkYikgYnQgZnVsbAojMCAganNfcmVhZHVpbnQxNiAoanM9anNAZW50cnk9
MHg2ZGQyOTAsIG9mZnNldD1vZmZzZXRAZW50cnk9NCkgYXQgSnNTdHIuYzox
MDY0CiAgICAgICAgcmV0ID0gPG9wdGltaXplZCBvdXQ+CiMxICAweDAwMDAw
MDAwMDA0NWNlY2QgaW4gZGVjb21wX2dldF9oZWFkZXIgKGNvbXByZXNzZWQ9
Y29tcHJlc3NlZEBlbnRyeT0weDZkZDI5MCwgdW5jb21wcmVzc2VkPXVuY29t
cHJlc3NlZEBlbnRyeT0weDZkZDVkMCkgYXQgRGVjb21wcmVzcy5jOjQwMwog
ICAgICAgIHFkY291bnQgPSA8b3B0aW1pemVkIG91dD4KICAgICAgICBhbmNv
dW50ID0gPG9wdGltaXplZCBvdXQ+CiAgICAgICAgbnNjb3VudCA9IDxvcHRp
bWl6ZWQgb3V0PgogICAgICAgIGFyY291bnQgPSA8b3B0aW1pemVkIG91dD4K
ICAgICAgICB0b3RhbCA9IDxvcHRpbWl6ZWQgb3V0PgojMiAgMHgwMDAwMDAw
MDAwNDYwNDRmIGluIGRlY29tcF9kZWNvbXByZXNzX3BhY2tldCAoY29tcHJl
c3NlZD1jb21wcmVzc2VkQGVudHJ5PTB4NmRkMjkwLCB1bmNvbXByZXNzZWQ9
MHg2ZGQ1ZDApIGF0IERlY29tcHJlc3MuYzo5NjQKICAgICAgICBhbnN3ZXJz
ID0gPG9wdGltaXplZCBvdXQ+CiAgICAgICAgcmRsZW5ndGggPSA3MTk4MTYw
CiAgICAgICAgb2Zmc2V0ID0gPG9wdGltaXplZCBvdXQ+CiAgICAgICAgbGVu
Z3RoID0gPG9wdGltaXplZCBvdXQ+CiAgICAgICAgcmRkYXRhID0gMHg2ZTQ4
YzAKIzMgIDB4MDAwMDAwMDAwMDQ2MGU1OSBpbiBkZWNvbXByZXNzX2RhdGEg
KGNvbXByZXNzZWQ9Y29tcHJlc3NlZEBlbnRyeT0weDZkZDI5MCwgdW5jb21w
cmVzc2VkPXVuY29tcHJlc3NlZEBlbnRyeT0weDZkZDVkMCkgYXQgRGVjb21w
cmVzcy5jOjEwNjQKTm8gbG9jYWxzLgojNCAgMHgwMDAwMDAwMDAwNDAzYzgz
IGluIG1haW4gKGFyZ2M9PG9wdGltaXplZCBvdXQ+LCBhcmd2PTxvcHRpbWl6
ZWQgb3V0PikgYXQgTWFyYUROUy5jOjQ1ODUKICAgICAgICBzb2NrX251bSA9
IDAKICAgICAgICBlY3QgPSB7dHlwZSA9IDAgJ1wwMDAnLCBkID0gMHgwLCBh
ZGRybGVuID0gMH0KICAgICAgICBtYXJhcmNfbG9jID0gPG9wdGltaXplZCBv
dXQ+CiAgICAgICAgZXJyb3JzID0gPG9wdGltaXplZCBvdXQ+CiAgICAgICAg
YmluZF9hZGRyZXNzID0gPG9wdGltaXplZCBvdXQ+CiAgICAgICAgaXB2Nl9i
aW5kX2FkZHJlc3MgPSA8b3B0aW1pemVkIG91dD4KICAgICAgICBjc3YyX3N5
bnRoaXBfYWRkcmVzcyA9IDxvcHRpbWl6ZWQgb3V0PgogICAgICAgIGlwdjRf
YmluZF9hZGRyZXNzID0gPG9wdGltaXplZCBvdXQ+CiAgICAgICAgaW5jb21p
bmcgPSAweDZkZDI5MAogICAgICAgIHVuY29tcCA9IDB4NmRkNWQwCiAgICAg
ICAgdmVyYnN0ciA9IDB4MAogICAgICAgIGNocm9vdF96dCA9ICJcMDAwXDMz
NFwzNzdcMzc3XDM3N1wxNzdcMDAwXDAwMClnXDMzNlwzNjdcMzc3XDE3N1ww
MDBcMDAwXDAwMFwwMDBcMDAwXDAwMFwwMDBcMDAwXDAwMFwwMDBcMzAwdFwz
NzdcMzY3XDM3N1wxNzdcMDAwXDAwMFwwMDBcMzM0XDM3N1wzNzdcMzc3XDE3
N1wwMDBcMDAwUSZcMzM2XDM2N1wzNzdcMTc3IiwgJ1wwMDAnIDxyZXBlYXRz
IDI2IHRpbWVzPiwgIiRcMjcyXDMzNlwzNjdcMzc3XDE3N1wwMDBcMDAwXDAw
MFwwMDBcMDAwXDAwMFwwMDBcMDAwXDAwMFwwMDA8dVwyNDRcMzY3XDM3N1wx
NzdcMDAwXDAwMFwwMDBcMDAwXDAwMFwwMDBcMDAwXDAwMFwwMDBcMDAwWj9c
MzM2XDM2N1wzNzdcMTc3XDAwMFwwMDAgXDI3MlwzMzVcMzY3XDM3N1wxNzdc
MDAwXDAwMFwwMDBcMjAwXDMzNVwzNjdcMzc3XDE3N1wwMDBcMDAwXDI0MFwz
MzJcMzc3XDM3N1wzNzdcMTc3XDAwMFwwMDBcMDcwd1wzMzVcMzY3XDM3N1wx
NzdcMDAwXDAwMFwwMDFcMDAwXDAwMFwwMDBcMDAwXDAwMFwwMDBcMDAwXDIz
MFwzMzRcMzc3XDM3N1wzNzdcMTc3XDAwMFwwMDBcMzQxXGFAXDAwMFwwMDBc
MDAwXDAwMFwwMDBcMjAwXDM0MVwzNzdcMzY3XDM3N1wxNzdcMDAwXDAwMFwy
NTNcMDAwXDAwM1wwMDBcMDA0XDAwMFwwMDBcMDAwIFwyNTI6XDAwMFwwMDBc
MDAwXDAwMFwwMDBcMDA2XDAwMFwwMDBcMDAwXDAwMFwwMDBcMDAwXDAwMCIu
Li4KICAgICAgICB1aWQgPSA8b3B0aW1pemVkIG91dD4KICAgICAgICBnaWQg
PSA0MTU4NTQ4NjMzCiAgICAgICAgZXJyb3JuID0gMAogICAgICAgIHZhbHVl
ID0gMAogICAgICAgIG1heHByb2NzID0gMjYyMTQ0MAogICAgICAgIGNvdW50
ZXIgPSA8b3B0aW1pemVkIG91dD4KICAgICAgICBzb2NrID0gezQsIDAsIDQw
OTYsIDAsIDM0MDgsIDAsIDE0Nzg4NzQ3ODEsIDAsIDMyNTI5ODA2OCwgMCwg
MTQ3MzA1NTc2MywgMCwgMCwgMCwgMTQ3NTY3NzkzNSwgMCwgNjYzMzc2MTE5
LCAwLCAwLCAwLCAwLCAwLCAwLCAwLCAwLCAwLCA0MTk2MzIxLCAwLCAtMTM0
MjI1NDk2LCAzMjc2NywgMCwgMCwgLTEzNDIyOTkyMCwgMzI3NjcsIDAsIDAs
IDAsIDAsIC0xMzY0Mjk0NzMsIAogICAgICAgICAgMzI3NjcsIDAsIDAsIC05
MDcyLCAzMjc2NywgMCwgMCwgMCwgMCwgMSwgMCwgMTAsIDAsIC05MjE1LCAz
Mjc2NywgNCwgMzI3NjcsIDAsIDMyNzY3LCAtMTM0MjY3ODcxLCAzMjc2Nywg
MCwgMCwgMCwgMCwgMCwgMCwgMCwgMCwgMCwgMCwgLTEzNDI1MzQwOCwgMzI3
NjcsIC03MDI0LCAzMjc2NywgODMyLCAwLCAxMTc5NDAzNjQ3LCA1MDM5NzQ0
MiwgMCwgMCwgNDA2MzIzNSwgCiAgICAgICAgICAxLCAxMzgzMjAsIDAsIDY0
LCAwLCAxNzMzODI0LCAwLCAwLCAzNjcwMDgwLCA0MTk0MzE0LCA0MzkwOTgw
LCA2LCA1LCA2NCwgMCwgNjQsIDAsIDY0LCAwLCA1NjAsIDAsIDU2MCwgMCwg
OCwgMCwgMywgNCwgMTUwMDc1MiwgMCwgMTUwMDc1MiwgMCwgMTUwMDc1Miwg
MCwgMjgsIDAsIDI4LCAwLCAxNiwgMCwgMSwgNSwgMCwgMCwgMCwgMCwgMCwg
MCwgMTcwNzc0MCwgMCwgCiAgICAgICAgICAxNzA3NzQwLCAwLCAyMDk3MTUy
LCAwLCAxLCA2LCAxNzA5ODk2LCAwLCAzODA3MDQ4LCAwLCAzODA3MDQ4LCAw
LCAyMDQ2NCwgMCwgMzc1OTIsIDAsIDIwOTcxNTIsIDAsIDIsIDYsIDE3MjMy
OTYsIDAsIDM4MjA0NDgsIDAsIDM4MjA0NDgsIDAsIDQ4MCwgMCwgNDgwLCAw
LCA4LCAwLCA0LCA0LCA2MjQsIDAsIDYyNCwgMCwgNjI0LCAwLCA2OCwgMCwg
NjgsIDAsIDQsIDAsIAogICAgICAgICAgNywgNCwgMTcwOTg5NiwgMCwgMzgw
NzA0OCwgMCwgMzgwNzA0OCwgMCwgMTYsIDAsIDEyOCwgMCwgOCwgMCwgMTY4
NTM4MjQ4MCwgNCwgMTUwMDc4MCwgMCwgMTUwMDc4MCwgMCwgMTUwMDc4MCwg
MCwgMjcxODAsIDAuLi59CiAgICAgICAgY2FjaGVfc2l6ZSA9IDxvcHRpbWl6
ZWQgb3V0PgogICAgICAgIG1pbl90dGxfbiA9IDxvcHRpbWl6ZWQgb3V0Pgog
ICAgICAgIG1pbl90dGxfYyA9IDxvcHRpbWl6ZWQgb3V0PgogICAgICAgIHRp
bWVzdGFtcF90eXBlID0gPG9wdGltaXplZCBvdXQ+CiAgICAgICAgY2xpbjYg
PSAweDdmZmZmZmZmZGEzMAogICAgICAgIHZlcmJvc2VfcXVlcnkgPSA8b3B0
aW1pemVkIG91dD4KICAgICAgICBjbGllbnQgPSB7c2FfZmFtaWx5ID0gMCwg
c2FfZGF0YSA9ICdcMDAwJyA8cmVwZWF0cyAxMyB0aW1lcz59CiAgICAgICAg
Y2xpbiA9IDB4N2ZmZmZmZmZkYTMwCiAgICAgICAgcmxpbSA9IHtybGltX2N1
ciA9IDI2MjE0NDAsIHJsaW1fbWF4ID0gMjYyMTQ0MH0KICAgICAgICBkZWZh
dWx0X2Rvc19sZXZlbCA9IDxvcHRpbWl6ZWQgb3V0PgoK

--_----------=_147893998520877880
Content-Disposition: attachment; filename="allow-fuzzing.patch"
Content-Id: <1478939765.2087619.e2ccb33c06c876be9d77ed3c715233e38f7b6dc5.6D316D6C@content.messagingengine.com>
Content-Transfer-Encoding: base64
Content-Type: text/x-patch; name="allow-fuzzing.patch"

ZGlmZiAtLWdpdCBhL01hcmFEbnMuaCBiL01hcmFEbnMuaAppbmRleCAxNzZj
MjZjLi42NTUyOGU3IDEwMDY0NAotLS0gYS9NYXJhRG5zLmgKKysrIGIvTWFy
YURucy5oCkBAIC0xMTEsNyArMTExLDExIEBACiAKIC8qIFdoZXRoZXIgd2Ug
YWxsb3cgTWFyYUROUyB0byBydW4gYXMgYSBub24gcm9vdCB1c2VyOyB0aGlz
IGlzIHVzdWFsbHkKICAqIGRpc2FibGVkLCBidXQgY2FuIGJlIGVuYWJsZWQg
YnkgdW5jb21tZW50aW5nIHRoZSBmb2xsb3dpbmcgbGluZSAqLwotLyogI2Rl
ZmluZSBBTExPV19OT05fUk9PVCAqLworI2RlZmluZSBBTExPV19OT05fUk9P
VAorCisvKiBEZWZpbmUgdG8gcmVhZCB0aGUgcGFja2V0cyBmcm9tIHN0ZGlu
IGluc3RlYWQgb2YgVURQIHNvY2tldHMsCisgKiBpdCBzdGlsbCBuZWVkcyB2
YWxpZCBjb25maWd1cmF0aW9uIGFuZCBzb2NrZXQgaXQgY2FuIGJpbmQgdG8g
Ki8KKyNkZWZpbmUgRlVaWklORwogCiAvKiBUaGUgbWF4aW11bSBhbGxvd2Vk
IHNpemUgb2YgYSB6b25lIG5hbWUgKi8KICNkZWZpbmUgTUFYX1pPTkVfU0la
RSAyNTYKZGlmZiAtLWdpdCBhL3NlcnZlci9NYXJhRE5TLmMgYi9zZXJ2ZXIv
TWFyYUROUy5jCmluZGV4IDgyZWI3N2UuLjY0YzQwYjEgMTAwNjQ0Ci0tLSBh
L3NlcnZlci9NYXJhRE5TLmMKKysrIGIvc2VydmVyL01hcmFETlMuYwpAQCAt
NDU0NSw3ICs0NTQ1LDExIEBAIGludCBtYWluKGludCBhcmdjLCBjaGFyICoq
YXJndikgewogICAgIGlmKGxvZ19sZXZlbCA+PSAzKQogICAgICAgICBtbG9n
KExfREFUQVdBSVQpOyAvKiAiQXdhaXRpbmcgZGF0YSBvbiBwb3J0IDUzIiAq
LwogICAgIC8qIExpc3RlbiBmb3IgZGF0YSBvbiB0aGUgVURQIHNvY2tldCAq
LworI2lmbmRlZiBGVVpaSU5HCiAgICAgZm9yKDs7KSB7CisjZWxzZQorICAg
IGRvIHsKKyNlbmRpZgogICAgICAgICBpbnQgc29ja19udW07CiAgICAgICAg
IGNvbm4gZWN0OyAvKiBUaGUgc3BhY2UgaXMgbm90IGEgdHlwbyAqLwogICAg
ICAgICBlY3QudHlwZSA9IDA7CkBAIC00NTYxLDggKzQ1NjUsMTkgQEAgaW50
IG1haW4oaW50IGFyZ2MsIGNoYXIgKiphcmd2KSB7CiAgICAgICAgIHF1YWxf
c2V0X3RpbWUoKTsKICAgICAgICAgaWYobG9nX2xldmVsID49IDUwKSAvKiBU
aGlzIGhhcHBlbnMgb25jZSBhIHNlY29uZCAqLwogICAgICAgICAgICAgbWxv
ZyhMX0RBVEFXQUlUKTsgLyogIkF3YWl0aW5nIGRhdGEgb24gcG9ydCA1MyIg
Ki8KKyNpZm5kZWYgRlVaWklORwogICAgICAgICBzb2NrX251bSA9IGdldHVk
cChzb2NrLGJpbmRfYWRkcmVzc2VzLCZlY3QsaW5jb21pbmcsNTEyLAogICAg
ICAgICAgICAgICAgICAgICAgICAgICBoYXZlX2lwdjZfYWRkcmVzcyk7Cisj
ZWxzZQorCXNvY2tfbnVtID0gcmVhZCgwLCBpbmNvbWluZywgNTEyKTsKKwlp
ZiAoc29ja19udW0gPT0gMCkgeworCSAgY29udGludWU7CisJfSBlbHNlIGlm
IChzb2NrX251bSA8IDApIHsKKwkgIGJyZWFrOworCX0gZWxzZSB7CisJICBz
b2NrX251bSA9IDA7CisJfQorI2VuZGlmCiAgICAgICAgIGlmKHNvY2tfbnVt
ID09IEpTX0VSUk9SKQogICAgICAgICAgICAgY29udGludWU7CiAgICAgICAg
IGlmKGxvZ19sZXZlbCA+PSAzKQpAQCAtNDY2MCw2ICs0Njc1LDkgQEAgaW50
IG1haW4oaW50IGFyZ2MsIGNoYXIgKiphcmd2KSB7CiAgICAgICAgICAgICAg
ICAganNfZGVhbGxvYyhlY3QuZCk7CiAgICAgICAgICAgICB9CiAgICAgICAg
IH0KKyNpZmRlZiBGVVpaSU5HCisgICAgICAgIHdoaWxlKDApOworI2VuZGlm
CiAKICAgICAvKiBXZSBzaG91bGQgbmV2ZXIgZW5kIHVwIGhlcmUgKi8KIAo=

--_----------=_147893998520877880
Content-Disposition: attachment; filename="id:000000,sig:11,src:007564,op:havoc,rep:32"
Content-Id: <1478939766.2087605.04f7cd982fbfba55634021afb51a0f0b73356214.288C5912@content.messagingengine.com>
Content-Transfer-Encoding: base64
Content-Type: application/octet-stream;
 name="id:000000,sig:11,src:007564,op:havoc,rep:32"

MTIxHAEUKR4BAAAAASwAAED59f75EAA=

--_----------=_147893998520877880--

