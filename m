X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8614" "Tuesday" "10" "November" "2020" "12:51:27" "-0500" "Demi M. Obenour" "demiobenour@gmail.com" "<d4b7741b-24aa-c4ca-adb7-71db69dc27ce@gmail.com>" "203" "Re: [oss-security] The importance of mutual authentication: Local Privilege Escalation in X11" nil nil nil "11" "2020111017:51:27" "[oss-security] The importance of mutual authentication: Local Privilege Escalation in X11" (number mark "U       demiobenour@ Nov 10  203/8614  " thread-indent "\"Re: [oss-security] The importance of mutual authentication: Local Privilege Escalation in X11\"\n") "<20201110164347.GA2236829@portlab>" ("<606c5dc2-b39c-2547-d00c-9c44778303b9@gmail.com>" "<20201110164347.GA2236829@portlab>") nil nil nil nil nil nil nil "Re: [oss-security] The importance of mutual authentication: Local Privilege Escalation in X11" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20334 invoked by uid 550); 10 Nov 2020 17:58:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17600 invoked from network); 10 Nov 2020 17:52:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:references:from:subject:message-id:date:user-agent:mime-version
         :in-reply-to;
        bh=yz8qfa1B67UdfysWzmxtVj6xnhy419XaYW9LErepmAc=;
        b=hAg3huSPCdLR7SYK8RW72iSTww6x5FSVuOhhbQ72Dld4sh1ckbnQvsNdHYnevgBL1/
         QaDYUw0pmfi3nBG9nuiruvIvbTOimSnheGIv268XUWAlGLNhakXmRHXPJuXM2+UbjGde
         WJpZ7+fwiTud1Q2gNsEevvwaoNsidfXTwEqpov99TBHa1eOPaeptaxg0tGBrH9Pn4Qvt
         zCQ4l92ORhIRyq3bVIc76ugYObWQyZKfKe3k7LvrYDvP/G9GCcxN3j2T5JHtlEt3Xwsu
         IQWBgCREAY7ShM5hAnIjl86BZ52t4yaQfu3fmzjLAz3eSfW0ptPyKk9FMKfG2AuV0hx1
         Qprg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:references:from:subject:message-id:date
         :user-agent:mime-version:in-reply-to;
        bh=yz8qfa1B67UdfysWzmxtVj6xnhy419XaYW9LErepmAc=;
        b=B3clLAoadCg6oSJILTM0b6AqiRjETdU1R8qJObVmfraonoUGKblxxAASvxj87jg6iZ
         eQ6aQgBtgLoDrGKssswCR0wpMfcmsuEkEgw5s+E9z5B8FI7jzc7ZOf+TRUiDUnhK4SIb
         p6e/rvGChXMJFNtkpb2vs4xQPPhT9u6XgI366rpPaqR6GhVqCqGyUDp6C5uFRYTQuZ15
         nBVYcm9phFiVmdlMAKovDfrhIdtneFLcppYFqWErsI+duLg8+Etdd4zxvfAQghyBWaGY
         rygE5TmiomfR/2Iwz/xibJ5DEpRWxbzYtUKsVz56ukf328ZuKwRck4SzKkPO5uTGS4V6
         uqvw==
X-Gm-Message-State: AOAM530/nN3fppJVNq83+c0gjSnUUDJSt2xjz3sNtCBBRiQDSQVtX7ap
	2iFFK1Flg66qn6qCYSuaPt6qcAX64eU1Bw==
X-Google-Smtp-Source: ABdhPJxzlvggKZXh5rtN00TMV9ZL9BIitDYCx9vcPJqsjj+utHRFpcQ3pMFHJFv8t5owxDiD8pImfA==
X-Received: by 2002:a05:622a:34d:: with SMTP id r13mr2400596qtw.93.1605030711687;
        Tue, 10 Nov 2020 09:51:51 -0800 (PST)
To: "Vladimir D. Seleznev" <vseleznv@cs.msu.ru>,
 oss-security@lists.openwall.com
References: <606c5dc2-b39c-2547-d00c-9c44778303b9@gmail.com>
 <20201110164347.GA2236829@portlab>
From: "Demi M. Obenour" <demiobenour@gmail.com>
Message-ID: <d4b7741b-24aa-c4ca-adb7-71db69dc27ce@gmail.com>
Date: Tue, 10 Nov 2020 12:51:27 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201110164347.GA2236829@portlab>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="Z0iNJ7lOPUtNmUg0YFFReqDWPe83phRl4"
Subject: Re: [oss-security] The importance of mutual authentication: Local
 Privilege Escalation in X11

--Z0iNJ7lOPUtNmUg0YFFReqDWPe83phRl4
Content-Type: multipart/mixed; boundary="UKYTBvKzW7PvUEbYQMyQ35qHTagfcm9FE";
 protected-headers="v1"
From: "Demi M. Obenour" <demiobenour@gmail.com>
To: "Vladimir D. Seleznev" <vseleznv@cs.msu.ru>,
 oss-security@lists.openwall.com
Message-ID: <d4b7741b-24aa-c4ca-adb7-71db69dc27ce@gmail.com>
Subject: Re: [oss-security] The importance of mutual authentication: Local
 Privilege Escalation in X11
References: <606c5dc2-b39c-2547-d00c-9c44778303b9@gmail.com>
 <20201110164347.GA2236829@portlab>
In-Reply-To: <20201110164347.GA2236829@portlab>

--UKYTBvKzW7PvUEbYQMyQ35qHTagfcm9FE
Content-Type: multipart/mixed;
 boundary="------------73D287C5098F3EA1942C8BA8"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------73D287C5098F3EA1942C8BA8
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 11/10/20 11:43 AM, Vladimir D. Seleznev wrote:
> On Mon, Nov 09, 2020 at 11:00:50AM -0500, Demi M. Obenour wrote:
>> [...skip...]
>> ### Placing the X socket in a secure directory
>>
>> X11 is usually used with AF_UNIX sockets.  In this case, performing
>> the attack requires that either the directory containing the X socket
>> be writable by an attacker, or that the abstract namespace is in use.
>> If neither condition is met, the attack is thwarted.  In this case, the
>> server is implicitly authenticated by being able to write to a location
>> on the file system.  On systems other than macOS, placing the X socket
>> in a non-default directory requires changes to X.  On Linux, this also
>> requires that abstract sockets be disabled in the X client libraries.
>>
>> A user=E2=80=99s home directory is a safe location on virtually all syst=
ems.
>> /run/user/$UID is a good choice when it is secure and available,
>> such as on systemd-based Linux distributions.  /tmp/.X11-unix can
>> be made safer by ensuring that it is created before any untrusted
>> code runs and ensuring that untrusted code cannot write to it.
>> For example, it could be owned by root and have 0755 permissions.
>> For this to be effective, untrusted code must not be allowed to start
>> if creating /tmp/.X11-unix fails; this can be enforced by dropping
>> into single-user mode in this case.  Furthermore, if the standard
>> location for lock files (/tmp/.X*-lock) is used, there is still a
>> potential denial of service, as anyone can create a lock file and
>> prevent the legitimate server from starting.
>=20
> This contravenes the ability to run X11 client from another user. The
> idea is that X11 server allows any clients with right credentials
> regardless of theirs processes UID or GID to connect to the server.

Indeed it does, and I mention cryptographic authentication mechanisms
below.  Instead of /tmp, /run/X11 would work just as well.  It is
the mutual authentication that matters.

Sincerely,

Demi

--------------73D287C5098F3EA1942C8BA8
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

--------------73D287C5098F3EA1942C8BA8--

--UKYTBvKzW7PvUEbYQMyQ35qHTagfcm9FE--

--Z0iNJ7lOPUtNmUg0YFFReqDWPe83phRl4
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAl+q0zMACgkQsoi1X/+c
IsGY9w/+PR+VTx9i3uoxv380t+x8E1Kcl9C967g6k9cqriZolgIWyNzVvZjC0qFM
2NxKq/oLy7mJY3YtBh6lXNjy97qBjaGcNvG/TYpROQl/Qak5aHSsCQsxyXXJOaME
lzctiSZB+b9udck+xBaCFpGevCtv0igjaLfNkrUARYRLl5Ec8JSYTb1PgtBzbpSN
1h17LTURlkQRUnSftfInqksEtO9IW5HSGhK46cmLg5bISO9Y9bUxAI6zuzpWv4WQ
pETgEZfhJa2yBz9zjsdzt6KlcHy/xKfUmUkkhoX/6VgbGfPCJfGA33PE0l+I+aIe
P6eIBGSK10j+TNGPJMYwV/hNZoF8g4wUn46eyhH2Az+zD/3qDkoZZmQElKyROl5Y
+oqECsGpWI9EefosINq4Qt6/ZOPCLtqH2PyQmBGOxrok1eP1F6zHDcQWqljHPrtr
gEJcTxWdvGNjl37KLq0TjPLiN4+0/+hv8cVDcrye1Hl9kIk7s4VXylrj69CwJw/w
KXev/wnSjhYaSESI+DyQGkAL/ZqKHXoxJ/xzyKEIjNl/GsDW72yApmt1t12/m0bE
HFrV4cxnNuIWfPl9eus/5kXWpVg/2iVUMiKiZezEqNfrPQ37P0M4o3fYEDK255WO
6/A+p78dL7J4ok9Whu/f9y+4E5x5QaCCX5lmwjT1IuY7l9MWc6w=
=AppW
-----END PGP SIGNATURE-----

--Z0iNJ7lOPUtNmUg0YFFReqDWPe83phRl4--
