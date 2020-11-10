X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8001" "Tuesday" "10" "November" "2020" "14:12:49" "-0500" "Demi M. Obenour" "demiobenour@gmail.com" "<fd19615e-b049-ee54-9d34-3c89bda717b4@gmail.com>" "193" "Re: [oss-security] The importance of mutual authentication: Local Privilege Escalation in X11" nil nil nil "11" "2020111019:12:49" "[oss-security] The importance of mutual authentication: Local Privilege Escalation in X11" (number mark "U       demiobenour@ Nov 10  193/8001  " thread-indent "\"Re: [oss-security] The importance of mutual authentication: Local Privilege Escalation in X11\"\n") "<20201110184321.GA2311015@portlab>" ("<606c5dc2-b39c-2547-d00c-9c44778303b9@gmail.com>" "<20201110164347.GA2236829@portlab>" "<d4b7741b-24aa-c4ca-adb7-71db69dc27ce@gmail.com>" "<20201110184321.GA2311015@portlab>") nil nil nil nil nil nil nil "Re: [oss-security] The importance of mutual authentication: Local Privilege Escalation in X11" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24308 invoked by uid 550); 10 Nov 2020 19:16:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22493 invoked from network); 10 Nov 2020 19:13:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:references:from:subject:message-id:date:user-agent:mime-version
         :in-reply-to;
        bh=KkcgvG5CbJmw4bX2CmwT82YPWi+ajPLoKBSsI+KGaiA=;
        b=oXWtojFGFCgp0ijxw3j4HlRY/EibOZnpPhK1x7uamNd0b2jU4rAZdtfSypEzqfIuTQ
         cj3LMnWzUHtW7hW4yypkele+2HGqWKTxTCK2KZdm/ExJ2Nzu2F149USujWdBw+6HPJAi
         I7ewOU2TrUfrKur6WK0Vg3mlQ94EZ2wYbRoJmCCy8Vw+kSZ4e9oP9zvOYLRQiiIGGPHT
         TF56tpCWpdqpklBfM+awnsGhjjd5Bax9SSUNSp1D27+OjY3dT8wOB6w+zNa4pnCpSqtM
         i+EyQ4Hklj2bhB84gQtB119dgzLjX5bfB0Mh3iYtlNnJ7wWSnIllINm7D82Ft5lGZYHG
         oQgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:references:from:subject:message-id:date
         :user-agent:mime-version:in-reply-to;
        bh=KkcgvG5CbJmw4bX2CmwT82YPWi+ajPLoKBSsI+KGaiA=;
        b=bzZIXuDe9FWLJUOX4qQXV6e9tb8BT3gQJM+++bM+5lgU9PoXAyirnU8cFirOW0UM9b
         3/b2t54fJSaa1fQbAs5ax8WPjlBIR35bGYv/dHHyF5YPwNMUacZFvvHK2z6tTLsvjSgI
         0ZQxDDNvxwry24Tl85KW4GPX/pInWwR/Zws7z3GtBWsAjhSmuF7Vp3qZiBXxQurERQ5m
         NiZTKVzLTD9VUUNPJUYGLoFCQs4XnuSfgnQN8bFsSxoqJUdqtUegBkOvbfR8HoVgeWi3
         e+7/JXRcGmkLHO4b7A/8oSkZEzcTMG8mUK48B8Yyac7FnyWOmy3dUuHjlgH8dLR8TNsP
         Rmag==
X-Gm-Message-State: AOAM533c0LGDkC0zW5R8nobVSntEDi3q0r1xTlL0et3FqZNPjobLuBqv
	gJesy3Ed94cj0Ed7ETD/CJ7Y/1kwe/JExQ==
X-Google-Smtp-Source: ABdhPJySwKjdRSbJynS5TaQkh4yBdpgY6sMa6vM+p5Wvos/ST+8mTL3m8/B1WBmCIAts0ThTMBFqCw==
X-Received: by 2002:ae9:dcc1:: with SMTP id q184mr21758767qkf.436.1605035577264;
        Tue, 10 Nov 2020 11:12:57 -0800 (PST)
To: "Vladimir D. Seleznev" <vseleznv@altlinux.org>,
 oss-security@lists.openwall.com
References: <606c5dc2-b39c-2547-d00c-9c44778303b9@gmail.com>
 <20201110164347.GA2236829@portlab>
 <d4b7741b-24aa-c4ca-adb7-71db69dc27ce@gmail.com>
 <20201110184321.GA2311015@portlab>
From: "Demi M. Obenour" <demiobenour@gmail.com>
Message-ID: <fd19615e-b049-ee54-9d34-3c89bda717b4@gmail.com>
Date: Tue, 10 Nov 2020 14:12:49 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201110184321.GA2311015@portlab>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="mvRJFzl5ONnMwCJW6BmFrmOwZTuLHXWrb"
Subject: Re: [oss-security] The importance of mutual authentication: Local
 Privilege Escalation in X11

--mvRJFzl5ONnMwCJW6BmFrmOwZTuLHXWrb
Content-Type: multipart/mixed; boundary="K4Q9iCcc3HT1CVpS6AyQTf1OzCefggNDd";
 protected-headers="v1"
From: "Demi M. Obenour" <demiobenour@gmail.com>
To: "Vladimir D. Seleznev" <vseleznv@altlinux.org>,
 oss-security@lists.openwall.com
Message-ID: <fd19615e-b049-ee54-9d34-3c89bda717b4@gmail.com>
Subject: Re: [oss-security] The importance of mutual authentication: Local
 Privilege Escalation in X11
References: <606c5dc2-b39c-2547-d00c-9c44778303b9@gmail.com>
 <20201110164347.GA2236829@portlab>
 <d4b7741b-24aa-c4ca-adb7-71db69dc27ce@gmail.com>
 <20201110184321.GA2311015@portlab>
In-Reply-To: <20201110184321.GA2311015@portlab>

--K4Q9iCcc3HT1CVpS6AyQTf1OzCefggNDd
Content-Type: multipart/mixed;
 boundary="------------07B7C01911096A569E13DA6D"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------07B7C01911096A569E13DA6D
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 11/10/20 1:43 PM, Vladimir D. Seleznev wrote:
>>> This contravenes the ability to run X11 client from another user. The
>>> idea is that X11 server allows any clients with right credentials
>>> regardless of theirs processes UID or GID to connect to the server.
>> Indeed it does, and I mention cryptographic authentication mechanisms
>> below.  Instead of /tmp, /run/X11 would work just as well.  It is
>> the mutual authentication that matters.
> Do I understand you correctly: you propose to forbid running X11 clients
> which processes belong to another users? In that case it is a bad idea:
> I would like to run untrusted clients with special UIDs. Or if I
> understand you wrongly, please explain how client of other user can
> connect to the socket placed in /run/user/$UID with these strict access
> permissions 0700?

If you aren=E2=80=99t using the X Security Extension or the X Access
Control Extension, then X clients aren=E2=80=99t effectively isolated from
each other.  Therefore, connecting untrusted X clients to the desktop
session is a bad idea.

Under my proposal, you would still be able to run an X server with
cryptographic authentication, but it would be more secure than it
is today.  Depending on the display manager, you might need to run
your own X server.

Sincerely,

Demi

--------------07B7C01911096A569E13DA6D
Content-Type: application/pgp-keys;
 name="OpenPGP_0xB288B55FFF9C22C1.asc"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="OpenPGP_0xB288B55FFF9C22C1.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----=0A=
=0A=
xsFNBFp+A0oBEADffj6anl9/BHhUSxGTICeVl2tob7hPDdhHNgPR4C8xlYt5q49yB+l2nipdaq+=
4=0A=
Gk6FZfqC825TKl7eRpUjMriwle4r3R0ydSIGcy4M6eb0IcxmuPYfbWpr/si88QKgyGSVZ7GeNW1=
U=0A=
nzTdhYHuFlk8dBSmB1fzhEYEk0RcJqg4AKoq6/3/UorR+FaSuVwT7rqzGrTlscnTDlPWgRzrQ3j=
s=0A=
sesI7sZLm82E3pJSgaUoCdCOlL7MMPCJwI8JpPlBedRpe9tfVyfu3euTPLPxwcV3L/cfWPGSL4P=
o=0A=
fBtB8NUU6QwYiQ9Hzx4xOyn67zW73/G0Q2vPPRst8LBDqlxLjbtx/WLR6h3nBc3eyuZ+q62HS1p=
J=0A=
5EvUT1vjyJ1ySrqtUXWQ4XlZyoEFUfpJxJoN0A9HCxmHGVckzTRl5FMWo8TCniHynNXsBtDQbab=
t=0A=
7aNEOaAJdE7to0AH3T/Bvwzcp0ZJtBk0EM6YeMLtotUut7h2Bkg1b//r6bTBswMBXVJ5H44Qf0+=
e=0A=
KeUg7whSC9qpYOzzrm7+0r9F5u3qF8ZTx55TJc2g656C9a1P1MYVysLvkLvS4H+crmxA/i08Tc1=
h=0A=
+x9RRvqba4lSzZ6/Tmt60DPM5Sc4R0nSm9BBff0Nm0bSNRS8InXdO1Aq3362QKX2NOwcL5YaStw=
O=0A=
DNyZUqF7izjK4QARAQABzTxEZW1pIE1hcmllIE9iZW5vdXIgKGxvdmVyIG9mIGNvZGluZykgPGR=
l=0A=
bWlvYmVub3VyQGdtYWlsLmNvbT7CwXgEEwECACIFAlp+A0oCGwMGCwkIBwMCBhUIAgkKCwQWAgM=
B=0A=
Ah4BAheAAAoJELKItV//nCLBhr8QAK/xrb4wyi71xII2hkFBpT59ObLN+32FQT7R3lbZRjVFjc6=
y=0A=
MUjOb1H/hJVxx+yo5gsSj5LS9AwggioUSrcUKldfA/PKKai2mzTlUDxTcF3vKx6iMXKA6AqwAw4=
B=0A=
57ZEJoMM6egm57TV19kzPMc879NV2nc6+elaKl+/kbVeD3qvBuEwsTe2Do3HAAdrfUG/j9erwIk=
6=0A=
gha/Hp9yZlCnPTX+VK+xifQqt8RtMqS5R/S8z0msJMI/ajNU03kFjOpqrYziv6OZLJ5cuKb3bZU=
5=0A=
aoaRQRDzkFIR6aqtFLTohTo20QywXwRa39uFaOT/0YMpNyel0kdOszFOykTEGI2u+kja35g9TkH=
9=0A=
0kkBTG+aEWttIht0Hy6YFmwjcAxisSakBuHnHuMSOiyRQLu43ej2+mDWgItLZ48Mu0C3IG1seeQ=
D=0A=
jEYPtqvyZ6bGkf2Vj+L6wLoLLIhRZxQOedqArIk/Sb2SzQYuxN44IDRt+3ZcDqsPppoKcxSyd1N=
y=0A=
2tpvjYJXlfKmOYLhTWs8nwlAlSHX/c/jz/ywwf7eSvGknToo1Y0VpRtoxMaKW1nvH0OeCSVJitf=
R=0A=
P7YbiRVc2aNqWPCSgtqHAuVraBRbAFLKh9d2rKFB3BmynTUpc1BQLJP8+D5oNyb8Ts4xXd3iV/u=
D=0A=
8JLGJfYZIR7oGWFLP4uZ3tkneDfYzTxEZW1pIE9iZW5vdXIgKElUTCBFbWFpbCBLZXkpIDxhdGh=
l=0A=
bmFAaW52aXNpYmxldGhpbmdzbGFiLmNvbT7CwY4EEwEIADgWIQR2h02fEza6IlkHHHGyiLVf/5w=
i=0A=
wQUCX6YJvQIbAwULCQgHAgYVCgkICwIEFgIDAQIeAQIXgAAKCRCyiLVf/5wiwWRhD/0YR+YYC5K=
d=0A=
uv/2LBgQJIygMsFiRHbR4+tWXuTFqgrxxFSlMktZ6gQrQCWe38WnOXkBoY6n/5lSJdfnuGd2Uag=
Z=0A=
/9dkaGMUkqt+5WshLFly4BnP7pSsWReKgMP7etRTwn3Szk1OwFx2lzY1EnnconPLfPBc6rWG2mo=
A=0A=
6l0WX+3WNR1B1ndqpl2hPSjT2jUCBWDVrGOUSX7r5f1WgtBeNYnEXPBCUUM51pFGESmfHIXQrqF=
D=0A=
A7nBNiIVFDJTmQzuEqIyJl67pKNgooij5mKzRhFKHfjLRAH4mmWZlB9UjDStAfFBAoDFHwd1HL5=
V=0A=
QCNQdqEc/9lZDApqWuCPadZN+pGouqLysesIYsNxUhJ7dtWOWHl0vs7/3qkWmWun/2uOJMQhra2=
u=0A=
8nA9g91FbOobWqjrDd6x3ZJoGQf4zLqjmn/P514gb697788e573WN/MpQ5XIFl7aM2d6/GJiq6L=
C=0A=
9T2gSUW4rbPBiqOCeiUx7Kd/sVm41p9TOA7fEG4bYddCfDsNxaQJH6VRK3NOuBUGeL+iQEVF5Xs=
6=0A=
Yp+U+jwvv2M5Lel3EqAYo5xXTx4ls0xaxDCufudcAh8CMMqx3fguSb7Mi31WlnZpk0fDuWQVNKy=
D=0A=
P7lYpwc4nCCGNKCj622ZSocHAcQmX28L8pJdLYacv9pU3jPy4fHcQYvmTavTqowGnM7BTQRafgN=
K=0A=
ARAAvcp2SPS1PriZDHhCXickP/FRZAiUD0GRLCBszk5T58L1Z2tAEvOp9mfqyu0f7rGLOYiQmee=
f=0A=
ySElnfMQ+e7ntHgeO23Cb1ahpTmyNgxBvE8GltDtHbkYQ4MzBC+LdSnUQHqSBEgRAP4j6SOIH1G=
1=0A=
RCBELqnakMjuBgHvjJA9B8uSR/9KoBZm2knoDU3UIOYqmI0Wd7bYrMGpapdf4ksr9VmHgtTgLPt=
g=0A=
SzgE9jRIIEolTrcRH4HsLELQlovB9UqIq2pCH6OOR89LZPwHfWVodj7zhrfeymvOaOEyycYCSah=
h=0A=
J6nBVGZySa4sKGkSEvDdgvP5xDOd429bB9IGHXTFN0MWO3WDSyFK0SkHjZBd9HSu1eiUR+6ZXkZ=
X=0A=
/sEHDX0QCFKzZWrY/U8cIr0KypwvWiBRRxMv9JgILa0EoXDEZjIFZUaDgOQfEU7pUSwppGn78Lo=
b=0A=
OnQsTdBjQDkSFVRcY8fVZ+zqmD4MIqH2ekmxJdIYD8lgULxPOZJRS2S6I+6fo6A2NVzUM7ZnwK5=
y=0A=
fcfmFeIoI1iJiDQGUpZhHGLXfscty4v/KHmAwKq7J6zo2/lrxoQspCZOLqwaINizbXMgo5E7Oxf=
l=0A=
nlxlKNDQ4W3d2egMhX6nhe7idw+YZaV9pyPZ6P7oD6601aFWQIK65zc9ImRtg1ceOsfdd6VSh5e=
Z=0A=
pWEAEQEAAcLBXwQYAQIACQUCWn4DSgIbDAAKCRCyiLVf/5wiwcDSD/wIiBxPG6CKkXhUMmjM8au=
p=0A=
ROGGQmTY+uQf55Azr6HUosH8I41VRNld4hM8TB24MkwhgOu/gaP3eWkBo4J9Ez7bBs3pckB4qWl=
M=0A=
xMq7HHlBlmKCl2MlVihH8odHA353fXYgJt1XjanIbXDKaHoREx/H60R5yXQXI39ddj80EnSgupK=
l=0A=
NENfenOFaeRwzkHzYg503+4GUo9Aa2hzgcsvSxAwi4UIgpq/thNK1uLQbQwJ9h5E/bn99mRqiQp=
9=0A=
TvtrlXxYRrurzxOapKq20hPExvtNx/HnFNqudM4B1j3RzDgb8txIc3wIdlZjkk3ESvrUlHv7t8H=
S=0A=
0Qz8L/w08xiN+ioJMvTLAwuYKSMDWziT9hv6tcE9aBpMOCF31r9rn1ol6ifpOxxItjdbK3nuw8v=
S=0A=
gQqm/nGtbxYWDwyX4T++SP1Z8x1bLGf62Gffudcg6FAAaDXSTUhlGJfmIfT8PaRNyreBBc1JRWV=
m=0A=
xOMSi/zT56Ps+CfWlnpiy7M3GM/7t152zr1EkB0q5nzs193FeMn5ozOZXsIErLaMRsk8djPHp7J=
Y=0A=
HV4T7YWZQ505zk/gvjk7IfPpubaLPB0I2jzNNTCgYgKnT4JLJtcLtg668FIugoUVU1AXI+vv/SC=
f=0A=
NR9j9oCZNy7NwFSMSH3y6GN+BPjGEn5BIwc9BPAiznAMOySMAGngUw=3D=3D=0A=
=3DjHHo=0A=
-----END PGP PUBLIC KEY BLOCK-----=0A=

--------------07B7C01911096A569E13DA6D--

--K4Q9iCcc3HT1CVpS6AyQTf1OzCefggNDd--

--mvRJFzl5ONnMwCJW6BmFrmOwZTuLHXWrb
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAl+q5jYACgkQsoi1X/+c
IsGb/Q/9EIZqK7J5bLNnOMaeGd6tzZd/kwtd8jsqIVMDHoRegWCtoF/oNLQ+FfCU
gpugK1H8ueEc8W6tIALd7jpumbtUxVmlpRcY9dez3eg1b4+0eHfJOjjDt9z2KK6B
08wo9AgeSV6Sh4Nk66ruZJ/Tk1Dm0RxATgOy1zaNTxQlFWNkjf/2+y5TBOkswIg6
H18lrPlcb1eULUYDfYlbAVs7AFRoHzEjGY8W/oO2bwjkZsR0ZhkF3yIKGb0XcWwk
Xvi07Znfs2YrTsx12vQAqWDzg/MuQvA+pBl/je1sPVyjv3o5CzWzf3C1q+KbfPJh
GMbSnotEPCUKqS3O5UR1OHD01v6rTbcv+DZeAefSciUt0Z9N6Pk2nz1lkPeO0WI9
7Hb1Huoh5TT/fz9hxP9IlNxYpbopM2WHlyHnoO4UE2Ii3n+ER1tKZx/JYvzxJf5E
bJAo4grbo30PjugRK5u7eJlGtM/7G9J4pkTIpadd6fEf8+37ZBSteGG8lYYJHqfB
yQgPtv9cUSa1uHXegXkWXkKWxRgH3jY5ceW7YK/+vfkClzslJ9y584j5w6hb3/BT
afMpCV0bO5F3GB/HU+Vp+kYF0IxxDv7Rl6CDE+HKMgiU9YbQ+aZB7cBEIlq1I9TY
4X16bCGgDt+2hj6DNYtu7+LMX+JaFg3Bt4TpYdda4dmjKkEsNnc=
=lcKd
-----END PGP SIGNATURE-----

--mvRJFzl5ONnMwCJW6BmFrmOwZTuLHXWrb--
