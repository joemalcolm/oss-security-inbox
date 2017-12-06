X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7739" "Wednesday" "6" "December" "2017" "16:23:13" "+0000" "Armis Security" "security@armis.com" "<CA++9HO98n_G9zpBh2=wyj_T1osWECrah_vJWz3=TLf=hMS_5aA@mail.gmail.com>" "149" "[oss-security] Info Leak in the Linux Kernel via Bluetooth" nil nil nil "12" "2017120616:23:13" "[oss-security] Info Leak in the Linux Kernel via Bluetooth" (number mark "U       security@arm Dec  6  149/7739  " thread-indent "\"[oss-security] Info Leak in the Linux Kernel via Bluetooth\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15585 invoked by uid 550); 6 Dec 2017 16:23:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15549 invoked from network); 6 Dec 2017 16:23:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=armis.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=EfqTfaKvW7z6JvZxnFXlZiyxttTaMY/efHVxnlXCNqQ=;
        b=YFkCdgrzOfi5SltUKUfhm00htdIpnWV1DYZKxoev98bJDK76Pc8Mx6IyzZkFgwGQxO
         GwIhbu4vDNVRay7FaqkyCkavSc8ASAlIrBjfEAuaBoP1royQ3SwkLEZVSsS1PZsaTjB0
         ZLpYDU+pf3rK6SuOEm1UatOdzGKJdR2PqinIQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=EfqTfaKvW7z6JvZxnFXlZiyxttTaMY/efHVxnlXCNqQ=;
        b=tKI4o8Or9T5yOH+v5hnrLEvO9g+XBWQV3cODU54Fj7q0r6TELa3bAy64sdMiK2qOS+
         68ke4ASBNqP4JMR+8WzAyTbANQ8O7yzQACrQsNc5yxOgskasjkKguDHc5jEE4NMKGfLD
         nGCtRxGtXU/HUQJFjD9ORcyxQi4+IpZuv12IDB4FEzeD+JNT7665bHenNWNOk2rYQG/0
         QmZ4YarZqjreVAdoP8TL2OkkWKw7vyhH8VqFdl/X7QwUyIWdM4CAJMq4pm/6vz/UVGIk
         Wwj36wgLH7+O6843Jyi9YO068fTFObYXDy8BidCagEFk4C6W0zvbQe7aZVdprQ+Qas3E
         FONw==
X-Gm-Message-State: AKGB3mLmd0z/LpUbB3ngS05Ug/vZ0sIeNCJhLJ5mZl4NAWnMCLAJSHVQ
	ui5OikpshNVeE9kyzQQJvsFfmjUaJMNM0QSzvOkNhZVe
X-Google-Smtp-Source: AGs4zMauBSWth+kv/hSa5NfXrsrb4N7iqd2unIv8vlYG4dWvy1SMXqUcR5ctvmOWsUmQnNs/ObnFkPtkMC3ou2BcXrM=
X-Received: by 10.36.73.9 with SMTP id z9mr14410744ita.88.1512577404409; Wed,
 06 Dec 2017 08:23:24 -0800 (PST)
MIME-Version: 1.0
From: Armis Security <security@armis.com>
Date: Wed, 06 Dec 2017 16:23:13 +0000
Message-ID: <CA++9HO98n_G9zpBh2=wyj_T1osWECrah_vJWz3=TLf=hMS_5aA@mail.gmail.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Content-Type: multipart/mixed; boundary="001a11c14e82e47862055fae5ed0"
Subject: [oss-security] Info Leak in the Linux Kernel via Bluetooth

--001a11c14e82e47862055fae5ed0
Content-Type: multipart/alternative; boundary="001a11c14e82e4785f055fae5ece"

--001a11c14e82e4785f055fae5ece
Content-Type: text/plain; charset="UTF-8"

Hello,

We are writing to disclose an information leak vulnerability in the
Bluetooth stack of the Linux Kernel (BlueZ).
This vulnerability has been disclosed to the Kernel's security team (
security@kernel.org), and a patch for it is in stages of review.
This patch is also attached here.

This vulnerability lies in the processing of incoming L2CAP commands -
ConfigRequest, and ConfigResponse messages.
This info leak is a result of uninitialized stack variables that may be
returned to an attacker in their uninitialized state.
By manipulating the code flows that precede the handling of these
configuration messages, an attacker can also gain some control over which
data will be held in the uninitialized stack variables.
This can allow him to bypass KASLR, and stack canaries protection - as both
pointers and stack canaries may be leaked in this manner.

Combining this vulnerability (for example) with the previously disclosed
RCE vulnerability in L2CAP configuration parsing (CVE-2017-1000251) may
allow an attacker to exploit the RCE against kernels which were built with
the above mitigations.

These are the specifics of this vulnerability:
In the function l2cap_parse_conf_rsp and in the function
l2cap_parse_conf_req the following variable is declared without
initialization:

struct l2cap_conf_efs efs;

In addition, when parsing input configuration parameters in both of these
functions, the switch case for handling EFS elements may skip the memcpy
call that will write to the efs variable:

...
case L2CAP_CONF_EFS:
if (olen == sizeof(efs))
memcpy(&efs, (void *)val, olen);
...

The olen in the above if is attacker controlled, and regardless of that if,
in both of these functions the efs variable would eventually be added to
the outgoing configuration request that is being built:

l2cap_add_conf_opt(&ptr, L2CAP_CONF_EFS, sizeof(efs), (unsigned long) &efs);

So by sending a configuration request, or response, that contains an
L2CAP_CONF_EFS element, but with an element length that is not sizeof(efs)
- the memcpy to the uninitialized efs variable can be avoided,
and the uninitialized variable would be returned to the attacker (16 bytes).

A simple patch for avoiding this info leak is attached.

Ben Seri,
Armis

--001a11c14e82e4785f055fae5ece
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>We are writing to dis=
close an information leak vulnerability in the Bluetooth stack of the Linux=
 Kernel (BlueZ).</div><div>This vulnerability has been disclosed to the Ker=
nel&#39;s security team (<a href=3D"mailto:security@kernel.org">security@ke=
rnel.org</a>), and a patch for it is in stages of review.</div><div>This pa=
tch is also attached here.</div><div><br></div><div>This vulnerability lies=
 in the processing of incoming L2CAP commands - ConfigRequest, and ConfigRe=
sponse messages.</div><div>This info leak is a result of uninitialized stac=
k variables that may be returned to an attacker in their uninitialized stat=
e.</div><div>By manipulating the code flows that precede the handling of th=
ese configuration messages, an attacker can also gain some control over whi=
ch data will be held in the uninitialized stack variables.</div><div>This c=
an allow him to bypass KASLR, and stack canaries protection - as both point=
ers and stack canaries may be leaked in this manner.</div><div><br></div><d=
iv>Combining this vulnerability (for example) with the previously disclosed=
 RCE vulnerability in L2CAP configuration parsing (CVE-2017-1000251) may al=
low an attacker to exploit the RCE against kernels which were built with th=
e above mitigations.</div><div><br></div><div>These are the specifics of th=
is vulnerability:</div><div>In the function l2cap_parse_conf_rsp and in the=
 function l2cap_parse_conf_req the following variable is declared without i=
nitialization:</div><div><br></div><div>struct l2cap_conf_efs efs;</div><di=
v><br></div><div>In addition, when parsing input configuration parameters i=
n both of these functions, the switch case for handling EFS elements may sk=
ip the memcpy call that will write to the efs variable:</div><div><br></div=
><div>...</div><div><span style=3D"white-space:pre">		</span>case L2CAP_CON=
F_EFS:</div><div><span style=3D"white-space:pre">			</span>if (olen =3D=3D =
sizeof(efs))</div><div><span style=3D"white-space:pre">				</span>memcpy(&a=
mp;efs, (void *)val, olen);</div><div>...</div><div><br></div><div>The olen=
 in the above if is attacker controlled, and regardless of that if, in both=
 of these functions the efs variable would eventually be added to the outgo=
ing configuration request that is being built:</div><div><br></div><div>l2c=
ap_add_conf_opt(&amp;ptr, L2CAP_CONF_EFS, sizeof(efs), (unsigned long) &amp=
;efs);</div><div><br></div><div>So by sending a configuration request, or r=
esponse, that contains an L2CAP_CONF_EFS element, but with an element lengt=
h that is not sizeof(efs) - the memcpy to the uninitialized efs variable ca=
n be avoided,</div><div>and the uninitialized variable would be returned to=
 the attacker (16 bytes).</div><div><br></div><div>A simple patch for avoid=
ing this info leak is attached.</div><div><br></div><div>Ben Seri,</div><di=
v>Armis<br></div><div><br></div></div>

--001a11c14e82e4785f055fae5ece--

--001a11c14e82e47862055fae5ed0
Content-Type: application/octet-stream; name="l2cap_core.c.patch"
Content-Disposition: attachment; filename="l2cap_core.c.patch"
Content-Transfer-Encoding: base64
Content-ID: <1602ca2e11d8ed318411>
X-Attachment-Id: 1602ca2e11d8ed318411

UHJldmVudCBzdGFjayBpbmZvIGxlYWsgZnJvbSB0aGUgRUZTIGVsZW1lbnQu
ClNpZ25lZC1vZmYtYnk6IEJlbiBTZXJpIDxiZW5AYXJtaXMuY29tPgpkaWZm
IC0tZ2l0IGEvbmV0L2JsdWV0b290aC9sMmNhcF9jb3JlLmMgYi9uZXQvYmx1
ZXRvb3RoL2wyY2FwX2NvcmUuYwppbmRleCA0M2JhOTFjLi5mYzY2MTVkIDEw
MDY0NAotLS0gYS9uZXQvYmx1ZXRvb3RoL2wyY2FwX2NvcmUuYworKysgYi9u
ZXQvYmx1ZXRvb3RoL2wyY2FwX2NvcmUuYwpAQCAtMzM2Myw5ICszMzYzLDEw
IEBAIHN0YXRpYyBpbnQgbDJjYXBfcGFyc2VfY29uZl9yZXEoc3RydWN0IGwy
Y2FwX2NoYW4gKmNoYW4sIHZvaWQgKmRhdGEsIHNpemVfdCBkYXRhCiAJCQli
cmVhazsKIAogCQljYXNlIEwyQ0FQX0NPTkZfRUZTOgotCQkJcmVtb3RlX2Vm
cyA9IDE7Ci0JCQlpZiAob2xlbiA9PSBzaXplb2YoZWZzKSkKKwkJCWlmIChv
bGVuID09IHNpemVvZihlZnMpKSB7CisJCQkJcmVtb3RlX2VmcyA9IDE7CiAJ
CQkJbWVtY3B5KCZlZnMsICh2b2lkICopIHZhbCwgb2xlbik7CisJCQl9CiAJ
CQlicmVhazsKIAogCQljYXNlIEwyQ0FQX0NPTkZfRVdTOgpAQCAtMzU4NCwx
NiArMzU4NSwxNyBAQCBzdGF0aWMgaW50IGwyY2FwX3BhcnNlX2NvbmZfcnNw
KHN0cnVjdCBsMmNhcF9jaGFuICpjaGFuLCB2b2lkICpyc3AsIGludCBsZW4s
CiAJCQlicmVhazsKIAogCQljYXNlIEwyQ0FQX0NPTkZfRUZTOgotCQkJaWYg
KG9sZW4gPT0gc2l6ZW9mKGVmcykpCisJCQlpZiAob2xlbiA9PSBzaXplb2Yo
ZWZzKSkgewogCQkJCW1lbWNweSgmZWZzLCAodm9pZCAqKXZhbCwgb2xlbik7
CiAKLQkJCWlmIChjaGFuLT5sb2NhbF9zdHlwZSAhPSBMMkNBUF9TRVJWX05P
VFJBRklDICYmCi0JCQkgICAgZWZzLnN0eXBlICE9IEwyQ0FQX1NFUlZfTk9U
UkFGSUMgJiYKLQkJCSAgICBlZnMuc3R5cGUgIT0gY2hhbi0+bG9jYWxfc3R5
cGUpCi0JCQkJcmV0dXJuIC1FQ09OTlJFRlVTRUQ7CisJCQkJaWYgKGNoYW4t
PmxvY2FsX3N0eXBlICE9IEwyQ0FQX1NFUlZfTk9UUkFGSUMgJiYKKwkJCQkg
ICAgZWZzLnN0eXBlICE9IEwyQ0FQX1NFUlZfTk9UUkFGSUMgJiYKKwkJCQkg
ICAgZWZzLnN0eXBlICE9IGNoYW4tPmxvY2FsX3N0eXBlKQorCQkJCQlyZXR1
cm4gLUVDT05OUkVGVVNFRDsKIAotCQkJbDJjYXBfYWRkX2NvbmZfb3B0KCZw
dHIsIEwyQ0FQX0NPTkZfRUZTLCBzaXplb2YoZWZzKSwKLQkJCQkJICAgKHVu
c2lnbmVkIGxvbmcpICZlZnMsIGVuZHB0ciAtIHB0cik7CisJCQkJbDJjYXBf
YWRkX2NvbmZfb3B0KCZwdHIsIEwyQ0FQX0NPTkZfRUZTLCBzaXplb2YoZWZz
KSwKKwkJCQkJCSAgICh1bnNpZ25lZCBsb25nKSAmZWZzLCBlbmRwdHIgLSBw
dHIpOworCQkJfQogCQkJYnJlYWs7CiAKIAkJY2FzZSBMMkNBUF9DT05GX0ZD
UzoK

--001a11c14e82e47862055fae5ed0--
