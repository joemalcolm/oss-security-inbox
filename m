Received: (qmail 5878 invoked by uid 550); 5 Apr 2024 11:32:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13331 invoked from network); 5 Apr 2024 03:02:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712286131; x=1712890931; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=g5XKt8QzDZQJmeSGR72lYX90g108KgPukFlPfk3jpq8=;
        b=CAMwBHxHDfHSLQ+EsfyIGfipuN1As/mqLm3TUaxkPSfP7bC5FtQaSf6hfM7T3BHQ22
         R55ijAJqEdiLSgd4Akr5BzXitRq6f5OcXeYVEYHpY2UmVr9mjzuPpgVVeyrnf4igfR+u
         jrtvyneKSXKmajDUhmGmuvHuu3GEghMH818dwVwrV3TasUGg6kVvS3d/sL+nBP4a1hW4
         LTthxdcFcc9nTIl7k+KO4JLTcM4F/WeQqlmXGDG3Z55/ElzW5eiNnUKhrsoXRAWrGu7E
         Yd5CwmzcYT4V49AoXNJ4v0IKE4oCSRVi4teGyH9ybtINohcCudPZ1TGxzXQUpzI5ia/Q
         I5/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712286131; x=1712890931;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=g5XKt8QzDZQJmeSGR72lYX90g108KgPukFlPfk3jpq8=;
        b=jSn11yvXTUhHrswt/s3ldc74d31fDbGBQbN9jW/pzNgcnq4JrjNsLVripyeF4k2FC8
         Miu04kh+tdmDm+tnZRR00v5wwU/ENZ4VK8Vqfg4IeeZsC8Vgp2MwQbJbB5Esm9uF6nk5
         Nu+lC9HDKCiJXX27NKWzKd9zYqZ03EkpAXyUGNEgRtVuVqiUifVvdQsdzIxkEurtX4cg
         klcDQ6JTad6mSJ6banleqrEGfWF8ulRoMHan3yD7GjfdZebHtFJkTlNu4gXFPt18CPP8
         VOSIEB5LhcjhJTCDp/Wf7DSwsPxOYWFTboPXB7vvmUe8o2Pyu0Sd2zHcv6jeymqGm7kM
         4xlg==
X-Gm-Message-State: AOJu0YxZ8ojw/LtZgadRV6PgDoYmjzKt7y95zjwk1MRMBHyBYomt7Ce5
	1celZOUrd9czJGmNx2pCnoTnnWDNzy3rDnZzwE5WL6zjE1t0Zs+q1QrygrlmId8AgBAmgdC1mUu
	FDUY2VODW4PzhhXhp6L136cMj1IZfeSvHv3Y=
X-Google-Smtp-Source: AGHT+IHINNMWJs/DsSlKhGIywJbTgDDCb1nxU2u/T5f7nsks6SiOysIkoqx5uzb67LLqnrxfubbBJCi0XefmnoJq3c8=
X-Received: by 2002:a50:ccd6:0:b0:56d:e765:4356 with SMTP id
 b22-20020a50ccd6000000b0056de7654356mr344603edj.3.1712286131486; Thu, 04 Apr
 2024 20:02:11 -0700 (PDT)
MIME-Version: 1.0
From: Lam Bruce <brucelam1982pi@gmail.com>
Date: Fri, 5 Apr 2024 11:01:59 +0800
Message-ID: <CADQ3fLduJjJ1LMbkipsG_FSGNmg+wSDYV9OdpV0zAq06vrDo6Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/mixed; boundary="0000000000009f1b26061550aef1"
Subject: [oss-security] minor problem on detect_sh.bin

--0000000000009f1b26061550aef1
Content-Type: multipart/alternative; boundary="0000000000009f1b25061550aeef"

--0000000000009f1b25061550aeef
Content-Type: text/plain; charset="UTF-8"

Hi,

   I tried detect_sh.bin from the end of
https://www.openwall.com/lists/oss-security/2024/03/29/4
   no out put message, then I figured out to comment out set -eu in
detect_sh.bin.

Here is the modified script, in public domain.
#! /bin/bash

#set -eu
#some variables are likely to be unset in the original detect_sh.bin,
#detect_sh.bin will exit, so please add # before 'set -eu'
#Generally, set -eu is a good idea for scripts(finding bugs, avoid
unintended damage),
#but in this case, it is not. ;-)

# chmod u+x ./detect_sh_2024-04-05.bin
# ./detect_sh_2024-04-05.bin

#Modified by BruceLam on 2024-04-05

# find path to liblzma used by sshd
path=""
sshd_path=$(which sshd)
if [ "" == "$sshd_path" ]; then
    echo 'no sshd here. probably not vulnerable. Good luck :-)'
    exit
else
    path="$(ldd $sshd_path | grep liblzma | grep -o '/[^ ]*')"
fi

# does it even exist?
if [ "$path" == "" ]
then
echo probably not vulnerable
exit
fi

# check for function signature
signature=f30f1efa554889f54c89ce5389fb81e7000000804883ec28488954241848894c2410
if hexdump -ve '1/1 "%.2x"' "$path" | grep -q "$signature"
then
echo probably vulnerable
else
echo probably not vulnerable
fi

#end of script

Use open source, libre software to make to world better, :-)

Best Wishes

Bruce Lam

--0000000000009f1b25061550aeef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>=C2=A0=C2=A0 I tried det=
ect_sh.bin from the end of<br></div><div><a href=3D"https://www.openwall.co=
m/lists/oss-security/2024/03/29/4">https://www.openwall.com/lists/oss-secur=
ity/2024/03/29/4</a></div><div>=C2=A0=C2=A0 no out put message, then I figu=
red out to comment out set -eu in detect_sh.bin.</div><div><br></div><div>H=
ere is the modified script, in public domain.</div>#! /bin/bash<br><br>#set=
 -eu<br>#some variables are likely to be unset in the original detect_sh.bi=
n,<br>#detect_sh.bin will exit, so please add # before &#39;set -eu&#39;<br=
>#Generally, set -eu is a good idea for scripts(finding bugs, avoid uninten=
ded damage),<br>#but in this case, it is not. ;-)<br><br># chmod u+x ./dete=
ct_sh_2024-04-05.bin<br># ./detect_sh_2024-04-05.bin<br><br>#Modified by Br=
uceLam on 2024-04-05<br><br># find path to liblzma used by sshd<br>path=3D&=
quot;&quot;<br>sshd_path=3D$(which sshd)<br>if [ &quot;&quot; =3D=3D &quot;=
$sshd_path&quot; ]; then<br>=C2=A0 =C2=A0 echo &#39;no sshd here. probably =
not vulnerable. Good luck :-)&#39;<br>=C2=A0 =C2=A0 exit<br>else<br>=C2=A0 =
=C2=A0 path=3D&quot;$(ldd $sshd_path | grep liblzma | grep -o &#39;/[^ ]*&#=
39;)&quot;<br>fi<br><br># does it even exist?<br>if [ &quot;$path&quot; =3D=
=3D &quot;&quot; ]<br>then<br>	echo probably not vulnerable<br>	exit<br>fi<=
br><br># check for function signature<br>signature=3Df30f1efa554889f54c89ce=
5389fb81e7000000804883ec28488954241848894c2410<br>if hexdump -ve &#39;1/1 &=
quot;%.2x&quot;&#39; &quot;$path&quot; | grep -q &quot;$signature&quot;<br>=
then<br>	echo probably vulnerable<br>else<br>	echo probably not vulnerable<=
br><div>fi</div><div><br></div><div>#end of script</div><div><br></div><div=
>Use open source, libre software to make to world better, :-)</div><div><br=
></div><div>Best Wishes</div><div><br></div><div>Bruce Lam<br></div><div><b=
r></div></div>

--0000000000009f1b25061550aeef--

--0000000000009f1b26061550aef1
Content-Type: application/octet-stream; name="detect_sh_2024-04-05.bin"
Content-Disposition: attachment; filename="detect_sh_2024-04-05.bin"
Content-Transfer-Encoding: base64
Content-ID: <f_lum2xbnw0>
X-Attachment-Id: f_lum2xbnw0

IyEgL2Jpbi9iYXNoCgojc2V0IC1ldQojc29tZSB2YXJpYWJsZXMgYXJlIGxp
a2VseSB0byBiZSB1bnNldCBpbiB0aGUgb3JpZ2luYWwgZGV0ZWN0X3NoLmJp
biwKI2RldGVjdF9zaC5iaW4gd2lsbCBleGl0LCBzbyBwbGVhc2UgYWRkICMg
YmVmb3JlICdzZXQgLWV1JwojR2VuZXJhbGx5LCBzZXQgLWV1IGlzIGEgZ29v
ZCBpZGVhIGZvciBzY3JpcHRzKGZpbmRpbmcgYnVncywgYXZvaWQgdW5pbnRl
bmRlZCBkYW1hZ2UpLAojYnV0IGluIHRoaXMgY2FzZSwgaXQgaXMgbm90LiA7
LSkKCiMgY2htb2QgdSt4IC4vZGV0ZWN0X3NoXzIwMjQtMDQtMDUuYmluCiMg
Li9kZXRlY3Rfc2hfMjAyNC0wNC0wNS5iaW4KCiNNb2RpZmllZCBieSBCcnVj
ZUxhbSBvbiAyMDI0LTA0LTA1CgojIGZpbmQgcGF0aCB0byBsaWJsem1hIHVz
ZWQgYnkgc3NoZApwYXRoPSIiCnNzaGRfcGF0aD0kKHdoaWNoIHNzaGQpCmlm
IFsgIiIgPT0gIiRzc2hkX3BhdGgiIF07IHRoZW4KICAgIGVjaG8gJ25vIHNz
aGQgaGVyZS4gcHJvYmFibHkgbm90IHZ1bG5lcmFibGUuIEdvb2QgbHVjayA6
LSknCiAgICBleGl0CmVsc2UKICAgIHBhdGg9IiQobGRkICRzc2hkX3BhdGgg
fCBncmVwIGxpYmx6bWEgfCBncmVwIC1vICcvW14gXSonKSIKZmkKCiMgZG9l
cyBpdCBldmVuIGV4aXN0PwppZiBbICIkcGF0aCIgPT0gIiIgXQp0aGVuCgll
Y2hvIHByb2JhYmx5IG5vdCB2dWxuZXJhYmxlCglleGl0CmZpCgojIGNoZWNr
IGZvciBmdW5jdGlvbiBzaWduYXR1cmUKc2lnbmF0dXJlPWYzMGYxZWZhNTU0
ODg5ZjU0Yzg5Y2U1Mzg5ZmI4MWU3MDAwMDAwODA0ODgzZWMyODQ4ODk1NDI0
MTg0ODg5NGMyNDEwCmlmIGhleGR1bXAgLXZlICcxLzEgIiUuMngiJyAiJHBh
dGgiIHwgZ3JlcCAtcSAiJHNpZ25hdHVyZSIKdGhlbgoJZWNobyBwcm9iYWJs
eSB2dWxuZXJhYmxlCmVsc2UKCWVjaG8gcHJvYmFibHkgbm90IHZ1bG5lcmFi
bGUKZmkK

--0000000000009f1b26061550aef1--
