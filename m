Received: (qmail 31782 invoked by uid 550); 26 Sep 2023 19:23:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5636 invoked from network); 26 Sep 2023 19:01:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1695754849;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=wCh64NkzYwuX7HkI6PWAPQlxcLvEPrN4J+FYBly6r+g=;
	b=VJLPUYJ8e/KH8NiaIUo+mu409FWS1MeSqiCGMclD0HVKK5THmPTmuibYIdGSkCTBzW1z86
	bIs+8sD4DbjUExQ8JGOEgDOe46dU96b8dISZ30hP5FPJ5YV/yaDBWr/Hsu3oc1Yi2843Kk
	13/08UR/wfvF97GgyeVZOQeB6YqW4t4=
X-MC-Unique: hI9YkjJbNMyIghTokGoHNA-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695754844; x=1696359644;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pgTHT8ovJkw637HUx+P3gUyOAycfCy/z9lY43T75WeI=;
        b=mZ3jQ3d3rBnCVRjcuBf1U8FzLOUVrLyZX2Gt4XAssDseEIkBzC/qG+FjobScZi6oLq
         wlMhFLmKMztiLFi1ByM+J9CdY3GP8aICL02eE8TFAHgMIoJsnRlErDWrqMIVyUdq+7xW
         TnrsfYzb1beNSlRkjKZyeqgxMTz+SUsdSTs2rQk8s86x6Tq5ZVHi3AHxa6Cz2YBEqb/e
         EtR3RCi1ORTBprLKF8RDyRQ4QGZs4NAQmTtpbI9Cc6Vbw1R7Ejk7QiQoEokkd1EwzlkA
         qm+W27ROXtcba3uFsH17oFRvr6egtMzquLLkPt+aDUBHk0LWa5UVn56AVzC0dtlR07Yh
         Tncw==
X-Gm-Message-State: AOJu0YzSv5Si5cPuvXg4mdCTanj0FBjK0TxcygXsttMoML/mCTke2BXy
	On1aQlZlFA/vTHxLVXYCiffvMPmB8CPIxx6hWoU2jz0+oq7YGlnv4bKV+lxULIuRMVH/lZoN12K
	NPNjKtDjHYxNS9ykjTgVqNwtIKagE1zgEQnM77yxrjAHHB2rVfiWtWLY=
X-Received: by 2002:adf:d086:0:b0:323:10b8:543e with SMTP id y6-20020adfd086000000b0032310b8543emr9709849wrh.49.1695754844499;
        Tue, 26 Sep 2023 12:00:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFKqpoH2Yct0LJR8wUsB5kgDpfsT8tsLvIBwt8mJWZmX0DgMU0qV379lapwiNctWYglEXrjm5Dkxoojp0uVgKg=
X-Received: by 2002:adf:d086:0:b0:323:10b8:543e with SMTP id
 y6-20020adfd086000000b0032310b8543emr9709837wrh.49.1695754844192; Tue, 26 Sep
 2023 12:00:44 -0700 (PDT)
MIME-Version: 1.0
From: "Sage [They / Them] McTaggart" <amctagga@redhat.com>
Date: Tue, 26 Sep 2023 15:00:00 -0400
Message-ID: <CABBoStiUAn_tdyAcVm_YPcXrpEDdsy15EZ=d34TYvmAEZ9vQ7w@mail.gmail.com>
To: lhenry@digitalocean.com, oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="0000000000001da658060647b1e2"
Subject: [oss-security] CVE-2023-43040 Ceph: Improperly verified POST keys.

--0000000000001da658060647b1e2
Content-Type: multipart/alternative; boundary="0000000000001da656060647b1e0"

--0000000000001da656060647b1e0
Content-Type: text/plain; charset="UTF-8"

Hello all,
A flaw was found in Ceph RGW. An unprivileged user can write to any
bucket(s) accessible by a given key if a POST's form-data contains a key
called 'bucket' with a value matching the name of the bucket used to sign
the request.

The result of this is that a user could actually upload to any bucket
accessible by the specified access key as long as the bucket in the POST
policy matches the bucket in said POST form part.

We have assigned it a CVE of CVE-2023-43040 and the patch is attached.

Credits to Lucas Henry of Digital Ocean.

Sage McTaggart
IBM Product Security

amct@redhat.com

sagemct@ibm.com


Pronouns:They/Them/Theirs

--0000000000001da656060647b1e0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span id=3D"gmail-summary_container"><span id=3D"gmai=
l-short_desc_nonedit_display"></span></span><span id=3D"gmail-summary_conta=
iner"><span id=3D"gmail-short_desc_nonedit_display">Hello all,</span></span=
></div><div><span id=3D"gmail-summary_container"><span id=3D"gmail-short_de=
sc_nonedit_display">A flaw was found in Ceph RGW.</span></span> An unprivil=
eged user can write to any bucket(s) accessible by a given key if a POST&#3=
9;s form-data contains a key called &#39;bucket&#39; with a value matching =
the name of the bucket used to sign the request.<br><br>The result of this =
is that a user could actually upload to any bucket accessible by the specif=
ied access key as long as the bucket in the POST policy matches the bucket =
in said POST form part.</div><div><br></div><div>We have assigned it a CVE =
of CVE-2023-43040 and the patch is attached.<br></div><div><br></div><div>C=
redits to Lucas Henry of Digital Ocean. <br></div><div><br></div><div><div =
dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><d=
iv dir=3D"ltr"><p style=3D"font-weight:bold;margin:0px;padding:0px;font-siz=
e:14px;text-transform:capitalize;font-family:&quot;RedHatText&quot;,sans-se=
rif">
          <span style=3D"font-family:monospace"><span>Sage McTaggart<br></s=
pan></span></p>IBM Product Security<span style=3D"font-family:monospace"></=
span><div style=3D"margin-bottom:4px"><span style=3D"font-family:monospace"=
></span><p></p><p style=3D"font-weight:normal;margin:0px;font-size:12px;fon=
t-family:&quot;RedHatText&quot;,sans-serif"><span style=3D"font-family:mono=
space"><span style=3D"margin:0px;padding:0px"><a style=3D"color:rgb(0,0,0);=
font-size:12px;margin:0px;text-decoration:none" href=3D"mailto:amct@redhat.=
com" target=3D"_blank">amct@redhat.com</a>=C2=A0 <br></span></span></p><p s=
tyle=3D"font-weight:normal;margin:0px;font-size:12px;font-family:&quot;RedH=
atText&quot;,sans-serif"><span style=3D"font-family:monospace"><span style=
=3D"margin:0px;padding:0px"><a href=3D"mailto:sagemct@ibm.com" target=3D"_b=
lank">sagemct@ibm.com</a> =C2=A0</span>
      <span><br></span></span></p><span style=3D"font-family:monospace"><sp=
an></span><span><span></span></span></span><p style=3D"font-weight:normal;m=
argin:0px;font-size:12px;font-family:&quot;RedHatText&quot;,sans-serif"><sp=
an style=3D"font-family:monospace"><span><span></span></span></span><br><sp=
an style=3D"font-family:monospace"><span><span><span style=3D"font-family:m=
onospace"></span></span></span></span></p><p style=3D"font-weight:normal;ma=
rgin:0px;font-size:12px;font-family:&quot;RedHatText&quot;,sans-serif">Pron=
ouns:They/Them/Theirs</p>
    <p></p></div></div></div></div></div>

--0000000000001da656060647b1e0--

--0000000000001da658060647b1e2
Content-Type: text/x-patch; charset="US-ASCII"; name="rgw.patch"
Content-Disposition: attachment; filename="rgw.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_ln0jnvc80>
X-Attachment-Id: f_ln0jnvc80

Y29tbWl0IGYyMGZhZDE3NDQzODBkNjIzMWVjZDI0YWI4NDhlYmMyNmRkZDVm
OWYKQXV0aG9yOiBKb3NodWEgQmFlcmdlbiA8amJhZXJnZW5AZGlnaXRhbG9j
ZWFuLmNvbT4KRGF0ZTogICBXZWQgTWF5IDE3IDEyOjE3OjA5IDIwMjMgLTA2
MDAKCiAgICByZ3c6IEZpeCBidWNrZXQgdmFsaWRhdGlvbiBhZ2FpbnN0IFBP
U1QgcG9saWNpZXMKICAgIAogICAgSXQncyBwb3NzaWJsZSB0aGF0IHVzZXIg
Y291bGQgcHJvdmlkZSBhIGZvcm0gcGFydCBhcyBhIHBhcnQgb2YgYSBQT1NU
CiAgICBvYmplY3QgdXBsb2FkIHRoYXQgdXNlcyAnYnVja2V0JyBhcyBhIGtl
eTsgaW4gdGhpcyBjYXNlLCBpdCB3YXMKICAgIG92ZXJyaWRpbmcgd2hhdCB3
YXMgYmVpbmcgc2V0IGluIHRoZSB2YWxpZGF0aW9uIGVudiAod2hpY2ggaXMg
dGhlIHJlYWwKICAgIGJ1Y2tldCBiZWluZyBtb2RpZmllZCkuIFRoZSByZXN1
bHQgb2YgdGhpcyBpcyB0aGF0IGEgdXNlciBjb3VsZCBhY3R1YWxseQogICAg
dXBsb2FkIHRvIGFueSBidWNrZXQgYWNjZXNzaWJsZSBieSB0aGUgc3BlY2lm
aWVkIGFjY2VzcyBrZXkgYnkgbWF0Y2hpbmcKICAgIHRoZSBidWNrZXQgaW4g
dGhlIFBPU1QgcG9saWN5IGluIHNhaWQgUE9TVCBmb3JtIHBhcnQuCiAgICAK
ICAgIEZpeCB0aGlzIHNpbXBseSBieSBzZXR0aW5nIHRoZSBidWNrZXQgdG8g
dGhlIGNvcnJlY3QgdmFsdWUgYWZ0ZXIgdGhlCiAgICBQT1NUIGZvcm0gcGFy
dHMgYXJlIHByb2Nlc3NlZCwgaWdub3JpbmcgdGhlIGZvcm0gcGFydCBhYm92
ZSBpZgogICAgc3BlY2lmaWVkLgoKICAgIFNpZ25lZC1vZmYtYnk6IEpvc2h1
YSBCYWVyZ2VuIDxqYmFlcmdlbkBkaWdpdGFsb2NlYW4uY29tPgoKZGlmZiAt
LWdpdCBhL3NyYy9yZ3cvcmd3X3Jlc3RfczMuY2MgYi9zcmMvcmd3L3Jnd19y
ZXN0X3MzLmNjCmluZGV4IGE1NmVjZjY1NWEzLi5iOGYzYzdiN2E0YiAxMDA2
NDQKLS0tIGEvc3JjL3Jndy9yZ3dfcmVzdF9zMy5jYworKysgYi9zcmMvcmd3
L3Jnd19yZXN0X3MzLmNjCkBAIC0yNjYwLDEwICsyNjYwLDYgQEAgaW50IFJH
V1Bvc3RPYmpfT2JqU3RvcmVfUzM6OmdldF9wYXJhbXMob3B0aW9uYWxfeWll
bGQgeSkKIAogICBtYXBfcXNfbWV0YWRhdGEocyk7CiAKLSAgbGRwcF9kb3V0
KHRoaXMsIDIwKSA8PCAiYWRkaW5nIGJ1Y2tldCB0byBwb2xpY3kgZW52OiAi
IDw8IHMtPmJ1Y2tldC0+Z2V0X25hbWUoKQotCQkgICAgPDwgZGVuZGw7Ci0g
IGVudi5hZGRfdmFyKCJidWNrZXQiLCBzLT5idWNrZXQtPmdldF9uYW1lKCkp
OwotCiAgIGJvb2wgZG9uZTsKICAgZG8gewogICAgIHN0cnVjdCBwb3N0X2Zv
cm1fcGFydCBwYXJ0OwpAQCAtMjcxNCw2ICsyNzEwLDEwIEBAIGludCBSR1dQ
b3N0T2JqX09ialN0b3JlX1MzOjpnZXRfcGFyYW1zKG9wdGlvbmFsX3lpZWxk
IHkpCiAgICAgZW52LmFkZF92YXIocGFydC5uYW1lLCBwYXJ0X3N0cik7CiAg
IH0gd2hpbGUgKCFkb25lKTsKIAorICBsZHBwX2RvdXQodGhpcywgMjApIDw8
ICJhZGRpbmcgYnVja2V0IHRvIHBvbGljeSBlbnY6ICIgPDwgcy0+YnVja2V0
LT5nZXRfbmFtZSgpCisJCSAgICA8PCBkZW5kbDsKKyAgZW52LmFkZF92YXIo
ImJ1Y2tldCIsIHMtPmJ1Y2tldC0+Z2V0X25hbWUoKSk7CisKICAgc3RyaW5n
IG9iamVjdF9zdHI7CiAgIGlmICghcGFydF9zdHIocGFydHMsICJrZXkiLCAm
b2JqZWN0X3N0cikpIHsKICAgICBlcnJfbXNnID0gIktleSBub3Qgc3BlY2lm
aWVkIjsK

--0000000000001da658060647b1e2--

