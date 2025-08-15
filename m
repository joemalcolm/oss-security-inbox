Received: (qmail 29750 invoked by uid 550); 15 Aug 2025 16:48:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23831 invoked from network); 15 Aug 2025 16:44:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755276247; x=1755881047; darn=lists.openwall.com;
        h=in-reply-to:autocrypt:from:content-language:references:cc:to
         :subject:user-agent:mime-version:date:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=9RmAdYcY74MlvNoqYTiG6potfmQ+EdgaiT/gD7Uqbew=;
        b=kFLf14E2Q0/Tt3nmxgj0lMTSSe76aIk/oP6OjdUVaEAA7VQehYPan0fEH7sm/CkHZM
         7ktfVpBg8XlBnFLqG4/2ixD0UdqQ/MIfzlMrGzjM8Yy/e+Ph6h8jDMMfofTdMosr276m
         pKiKP3GzGN2WHnZKrKyTcRak8kxTiM03GbxkVVDFeabuE8yCArIF/GCLDQwo54XSCeFZ
         OuCeqngssc6foV5vbV2eYkjpjfROhh39fMy1ZO860fsjeOdt56yPYfD/hcWR2ddugUy5
         E4uSNrucRbhuaSso/OOlQackHzoNTfjYxHBtL1BhAPELbLyoCAxghTMWP6/Ak74eDkw4
         RKxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755276247; x=1755881047;
        h=in-reply-to:autocrypt:from:content-language:references:cc:to
         :subject:user-agent:mime-version:date:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9RmAdYcY74MlvNoqYTiG6potfmQ+EdgaiT/gD7Uqbew=;
        b=j5t3CxK9IqekPWGxKt84CFUTABGqK0LbjdGGU+BYIkneNT35cKAqhKyKDUFMDBlGfU
         PjNMfmGFjScHrh2etU93QQVTHHQimHXL7stVhN+rUlo4yNrpVmYFq7RAQLt96odfAKtY
         fIWIc/I6J9mNJaRJOrqavaBPMPQqa8Mh2VY+26ZOXkI0WoNVjPYQO8jmKuG8ToIk9qOT
         BzP+SF4W/QdVukV5EJ7hBSTU3xo8TlAsLfYBdN5kaDVjVcriUaSRUXy5Xyfl5e3eLj5N
         tDhh0ZKvJm3atFq/iC0xLz6CAHINlyjZ1lCX7zAU44ceFpPORjkLsYw8QkFQPcU2cPvK
         RVQQ==
X-Gm-Message-State: AOJu0YyJDry6w9LBLEa3Dr8ppgVDfD+LePJJRIVAsEFEkMyxKNJn9iB4
	ADdRRgH/5lS03pHkN0ZKNOFuKjM1uJyRL6whcwynAmtZM9BAAH+nFwPbJq5G0gAD
X-Gm-Gg: ASbGncsLhSKersQiSAcuPayqKF38/J7VWXNEXYcqPgRbiqTIYXogHAxVq89xcjaBTDZ
	HPiRfyQbZp99hB5M21P4rlg4KD7IFkN5qxviw8G50XT19+5dOdfESLT5RhUEfBdbd/qS495lwlm
	c6hsuVwIMXAyNSnqrOuO4P2TQFPSlSuBRBAMRnh6U618r9U+foM3LGKs7C6Wwg2LYr1ge928L16
	l06NTB/M7Dr+mEZ/2hGndvWyHzBduf6RUFqQLK6prMCbKoIpBsJgy6OBD+IunJD//DcB6hZV0mR
	sOJ+yg3BzUhaHn4xHl2mUtAm2YFZnIVQOzbP7yhZuV8TtsGgrkAXBx7QYDV1hZF3FlYvnKg47ZT
	fSRuzycLoJa5gywlGR9TcQ831TVhiqcjFlm1pQqayjAha/BM8+LuzFtNMtfEBZMOO2966/MnVCi
	FhSehkaWIMXJ2qXleEg9Kk9I7aqnd21iYBB7bROz5gx2NGkw==
X-Google-Smtp-Source: AGHT+IGeNct8LbT37PoHUJFSH4Ha5afaZ7IB++CoHj3UUJChBkB2yVY4uvURePB9DqigeaUSMwhYQA==
X-Received: by 2002:a05:690c:9410:b0:71e:7194:4dce with SMTP id 00721157ae682-71e71944f50mr21929457b3.5.1755276247438;
        Fri, 15 Aug 2025 09:44:07 -0700 (PDT)
Message-ID: <23122e80-8121-4f0f-b2eb-31ad3cdcc031@gmail.com>
Date: Fri, 15 Aug 2025 12:43:51 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, =?UTF-8?Q?Martin_Storsj=C3=B6?=
 <martin@martin.st>, Sam James <sam@gentoo.org>
Cc: Jordan Glover <Golden_Miller83@protonmail.ch>
References: <96CyiraLAnPDJzOP_843DWxB6OLVKixbKk_TPt0Ik3wR_q7LD7MlEhzrTbuyEKz20H1NzPHuUp_SbNWe_WMoPf0xslBJ6Atp4gyO5bXOPJU=@protonmail.ch>
 <87qzxeljdu.fsf@gentoo.org> <84dc77b-13c5-5aa-e066-31db6de18e2@martin.st>
Content-Language: en-US
From: Demi Marie Obenour <demiobenour@gmail.com>
Autocrypt: addr=demiobenour@gmail.com; keydata=
 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
 +MYSfkEjBz0E8CLOcAw7JIwAaeBT
In-Reply-To: <84dc77b-13c5-5aa-e066-31db6de18e2@martin.st>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------MGvW19UhlqtxliZlQIqhwF6a"
Subject: Re: [oss-security] Question about (in)security of fdk-aac-free in
 linux distros

--------------MGvW19UhlqtxliZlQIqhwF6a
Content-Type: multipart/mixed; boundary="------------JvQ4TwDPiKkVsXoXjdImlliA";
 protected-headers="v1"
From: Demi Marie Obenour <demiobenour@gmail.com>
To: oss-security@lists.openwall.com, =?UTF-8?Q?Martin_Storsj=C3=B6?=
 <martin@martin.st>, Sam James <sam@gentoo.org>
Cc: Jordan Glover <Golden_Miller83@protonmail.ch>
Message-ID: <23122e80-8121-4f0f-b2eb-31ad3cdcc031@gmail.com>
Subject: Re: [oss-security] Question about (in)security of fdk-aac-free in
 linux distros
References: <96CyiraLAnPDJzOP_843DWxB6OLVKixbKk_TPt0Ik3wR_q7LD7MlEhzrTbuyEKz20H1NzPHuUp_SbNWe_WMoPf0xslBJ6Atp4gyO5bXOPJU=@protonmail.ch>
 <87qzxeljdu.fsf@gentoo.org> <84dc77b-13c5-5aa-e066-31db6de18e2@martin.st>
In-Reply-To: <84dc77b-13c5-5aa-e066-31db6de18e2@martin.st>

--------------JvQ4TwDPiKkVsXoXjdImlliA
Content-Type: multipart/mixed; boundary="------------tqnHgB6YWxIuteD0hHPTwN5b"

--------------tqnHgB6YWxIuteD0hHPTwN5b
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 8/14/25 04:56, Martin Storsj=C3=B6 wrote:
> Hi,
>=20
> On Thu, 14 Aug 2025, Sam James wrote:
>=20
>> Jordan Glover <Golden_Miller83@protonmail.ch> writes:
>>
>>> This post presents question about (in}security of fdk-aac-free package=
=20
>>> library packaged by several linux distros. I hope someone on the list=20
>>> finds it worth reading.
>>
>> I think we should include Martin in this conversation. (I've not snipped
>> the email for his benefit.)
>=20
> Thanks for looping me in! I have a couple of clarifications on some=20
> details here.
>=20
>>> Since 2019 linux port of fdk-aac was gradually synced with aosp
>>> source. Current version is at 2.0.3. The diff between 2.0.0 and 2.0.3
>>> [5] is more than 1.5k commits,
>=20
> FWIW, if just counting commits, those commit numbers will be _vastly_=20
> inflated, due to how Android does its development - the majority of those=
=20
> commits are just merges between different branches.
>=20
> $ git log --oneline v2.0.0..v2.0.3 | wc -l
>      1694
> $ git log --no-merges --oneline v2.0.0..v2.0.3 | wc -l
>       369
>=20
> So the true number of non-merge commits between those versions is closer=
=20
> to 369, not 1.5k. In addition, some of those fixes are the same fix,=20
> cherrypicked in different branches.
>=20
> A rough deduplication gets the number down to 300.
>=20
> $ git log --no-merges --oneline v2.0.0..v2.0.3 | sed s/^........// | sort=
 | uniq | wc -l
>       300
>=20
> That's of course not saying that it's insignificant, but it's a bit less=
=20
> than initially counted.
>=20
> Then unfortunately, some of those upstream AOSP commits also are batched=
=20
> updates from another Fraunhofer internal repo, where the commit just says=
=20
> "update to newer version or similar", see e.g. [1] and [2].
>=20
>>> including many bugfixes found by fuzzing and sanitizers.
>=20
> Indeed; a couple of years ago there was a lot of activity around fuzzing.=
=20
> I got a couple dozens of fuzzed samples from oss-fuzz as well, which I've=
=20
> tried to fix to the best of my capability (sometimes by corresponding wit=
h=20
> Fraunhofer on what the best fix is). In many cases, the same bugs have=20
> also been fixed in a better permanent way upstream in AOSP later, reducin=
g=20
> my diff between my fork and AOSP.
>=20
>>> The fact it wasn't simply rebased with -free patches on top make it=20
>>> arguably harder to compare -free and non-free versions and requires=20
>>> extra effort to do so. Alternative is to trust competences and goodwill=
=20
>>> of the contributor. The diff between 2.0.2 and 2.0.3 is slightly over=20
>>> 900 commits.
>=20
> FWIW, regarding development flow, within the main fdk-aac repo, I maintai=
n=20
> it by doing my own fixes on the regular branches, then semi-regularly=20
> merging AOSP main into my branch. Separately, I maintain a rebased branch=
=20
> with incremental patches on top of AOSP main [3], which recreates the sam=
e=20
> exact state of the master branch at the same time [4] - this branch=20
> currently weighs in at 25 commits.
>=20
>>> This raises natural question - does any of fixes for fdk-aac closed
>>> security vulnerability?
>=20
> Unfortunately I don't have any further insight into this.
>=20
>>> Among popular distros, fdk-aac (non-free) version is available in Arch=
=20
>>> Linux[7] and Debian [8] (non-free repo).
>=20
> FWIW, personally I've always been surprised to see fdk-aac packaged in=20
> distros at all (-free form or not). The project license is hard to=20
> interpret and contains extra restrictions, which projects such as ffmpeg=
=20
> have interpreted as GPL/LGPL incompatible. But apparently some distros=20
> have interpreted it as free enough for them.
>=20
>=20
>>>> This version does not regularly sync from upstream:=20
>>>> https://sourceforge.net/projects/opencore-amr/ Note that=20
>>>> https://github.com/mstorsjo/fdk-aac is a downstream of Fraunhofer's=20
>>>> code distributed on=20
>>>> https://android.googlesource.com/platform/external/aac
>=20
> FWIW, this sentence feels a bit unclear. Both the sourceforge and github=
=20
> repos are downstreams of the AOSP repo. Both those repos contain exactly=
=20
> the same things; the sourceforge repo is the official front of the=20
> project, while the github one is where I keep more in-development branche=
s=20
> and such.
>=20
>>>> Jorge has reported a potential vulnerability to
>>>> https://github.com/mstorsjo/fdk-aac/issues/167 and to Android's
>>>> VRP. Android responded saying that they require a PoC and directed
>>>> Jorge to
>>>> https://bughunters.google.com/learn/invalid-reports/android-platform/5=
148417640366080/bugs-with->negligible-security-impact#unreachable-bugs
>=20
> FWIW, regarding that vulnerability - as stated there, I'm not familiar=20
> with the internals of the code to the level of being able to deal with a=
=20
> potential bug - but if there's a sample reproducer actually triggering it=
=20
> (like produced by fuzzers) I would definitely produce a fix for it in one=
=20
> form or another.
>=20
>>> As presented above, the fdk-aac-free library, available in linux
>>> distros and used by popular software like browsers or media players is
>>> de facto abandonware, missing vast amount of publicly available
>>> fixes.
>=20
> I don't disagree with this part.
>=20
> // Martin
>=20
> [1] https://github.com/mstorsjo/fdk-aac/commit/9ab67882eca7454dc001e158bc=
1e6e2219d6650b
> [2] https://github.com/mstorsjo/fdk-aac/commit/6cfabd35363c3ef5e3b209b867=
169a500b3ccc3c
> [3] https://github.com/mstorsjo/fdk-aac/commits/upstream-patched
> [4] https://github.com/mstorsjo/fdk-aac/compare/upstream-patched..master
What is your recommendation to distro maintainers?  My understanding is
that the full codec is included in the flathub runtimes but am not sure.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)=

--------------tqnHgB6YWxIuteD0hHPTwN5b
Content-Type: application/pgp-keys; name="OpenPGP_0xB288B55FFF9C22C1.asc"
Content-Disposition: attachment; filename="OpenPGP_0xB288B55FFF9C22C1.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----=0A=
=0A=
xsFNBFp+A0oBEADffj6anl9/BHhUSxGTICeVl2tob7hPDdhHNgPR4C8xlYt5q49y=0A=
B+l2nipdaq+4Gk6FZfqC825TKl7eRpUjMriwle4r3R0ydSIGcy4M6eb0IcxmuPYf=0A=
bWpr/si88QKgyGSVZ7GeNW1UnzTdhYHuFlk8dBSmB1fzhEYEk0RcJqg4AKoq6/3/=0A=
UorR+FaSuVwT7rqzGrTlscnTDlPWgRzrQ3jssesI7sZLm82E3pJSgaUoCdCOlL7M=0A=
MPCJwI8JpPlBedRpe9tfVyfu3euTPLPxwcV3L/cfWPGSL4PofBtB8NUU6QwYiQ9H=0A=
zx4xOyn67zW73/G0Q2vPPRst8LBDqlxLjbtx/WLR6h3nBc3eyuZ+q62HS1pJ5EvU=0A=
T1vjyJ1ySrqtUXWQ4XlZyoEFUfpJxJoN0A9HCxmHGVckzTRl5FMWo8TCniHynNXs=0A=
BtDQbabt7aNEOaAJdE7to0AH3T/Bvwzcp0ZJtBk0EM6YeMLtotUut7h2Bkg1b//r=0A=
6bTBswMBXVJ5H44Qf0+eKeUg7whSC9qpYOzzrm7+0r9F5u3qF8ZTx55TJc2g656C=0A=
9a1P1MYVysLvkLvS4H+crmxA/i08Tc1h+x9RRvqba4lSzZ6/Tmt60DPM5Sc4R0nS=0A=
m9BBff0Nm0bSNRS8InXdO1Aq3362QKX2NOwcL5YaStwODNyZUqF7izjK4QARAQAB=0A=
zTxEZW1pIE9iZW5vdXIgKElUTCBFbWFpbCBLZXkpIDxhdGhlbmFAaW52aXNpYmxl=0A=
dGhpbmdzbGFiLmNvbT7CwY4EEwEIADgWIQR2h02fEza6IlkHHHGyiLVf/5wiwQUC=0A=
X6YJvQIbAwULCQgHAgYVCgkICwIEFgIDAQIeAQIXgAAKCRCyiLVf/5wiwWRhD/0Y=0A=
R+YYC5Kduv/2LBgQJIygMsFiRHbR4+tWXuTFqgrxxFSlMktZ6gQrQCWe38WnOXkB=0A=
oY6n/5lSJdfnuGd2UagZ/9dkaGMUkqt+5WshLFly4BnP7pSsWReKgMP7etRTwn3S=0A=
zk1OwFx2lzY1EnnconPLfPBc6rWG2moA6l0WX+3WNR1B1ndqpl2hPSjT2jUCBWDV=0A=
rGOUSX7r5f1WgtBeNYnEXPBCUUM51pFGESmfHIXQrqFDA7nBNiIVFDJTmQzuEqIy=0A=
Jl67pKNgooij5mKzRhFKHfjLRAH4mmWZlB9UjDStAfFBAoDFHwd1HL5VQCNQdqEc=0A=
/9lZDApqWuCPadZN+pGouqLysesIYsNxUhJ7dtWOWHl0vs7/3qkWmWun/2uOJMQh=0A=
ra2u8nA9g91FbOobWqjrDd6x3ZJoGQf4zLqjmn/P514gb697788e573WN/MpQ5XI=0A=
Fl7aM2d6/GJiq6LC9T2gSUW4rbPBiqOCeiUx7Kd/sVm41p9TOA7fEG4bYddCfDsN=0A=
xaQJH6VRK3NOuBUGeL+iQEVF5Xs6Yp+U+jwvv2M5Lel3EqAYo5xXTx4ls0xaxDCu=0A=
fudcAh8CMMqx3fguSb7Mi31WlnZpk0fDuWQVNKyDP7lYpwc4nCCGNKCj622ZSocH=0A=
AcQmX28L8pJdLYacv9pU3jPy4fHcQYvmTavTqowGnM08RGVtaSBNYXJpZSBPYmVu=0A=
b3VyIChsb3ZlciBvZiBjb2RpbmcpIDxkZW1pb2Jlbm91ckBnbWFpbC5jb20+wsF4=0A=
BBMBAgAiBQJafgNKAhsDBgsJCAcDAgYVCAIJCgsEFgIDAQIeAQIXgAAKCRCyiLVf=0A=
/5wiwYa/EACv8a2+MMou9cSCNoZBQaU+fTmyzft9hUE+0d5W2UY1RY3OsjFIzm9R=0A=
/4SVccfsqOYLEo+S0vQMIIIqFEq3FCpXXwPzyimotps05VA8U3Bd7yseojFygOgK=0A=
sAMOAee2RCaDDOnoJue01dfZMzzHPO/TVdp3OvnpWipfv5G1Xg96rwbhMLE3tg6N=0A=
xwAHa31Bv4/Xq8CJOoIWvx6fcmZQpz01/lSvsYn0KrfEbTKkuUf0vM9JrCTCP2oz=0A=
VNN5BYzqaq2M4r+jmSyeXLim922VOWqGkUEQ85BSEemqrRS06IU6NtEMsF8EWt/b=0A=
hWjk/9GDKTcnpdJHTrMxTspExBiNrvpI2t+YPU5B/dJJAUxvmhFrbSIbdB8umBZs=0A=
I3AMYrEmpAbh5x7jEjoskUC7uN3o9vpg1oCLS2ePDLtAtyBtbHnkA4xGD7ar8mem=0A=
xpH9lY/i+sC6CyyIUWcUDnnagKyJP0m9ks0GLsTeOCA0bft2XA6rD6aaCnMUsndT=0A=
ctrab42CV5XypjmC4U1rPJ8JQJUh1/3P48/8sMH+3krxpJ06KNWNFaUbaMTGiltZ=0A=
7x9DngklSYrX0T+2G4kVXNmjaljwkoLahwLla2gUWwBSyofXdqyhQdwZsp01KXNQ=0A=
UCyT/Pg+aDcm/E7OMV3d4lf7g/CSxiX2GSEe6BlhSz+Lmd7ZJ3g32M1ARGVtaSBN=0A=
YXJpZSBPYmVub3VyIChJVEwgRW1haWwgS2V5KSA8ZGVtaUBpbnZpc2libGV0aGlu=0A=
Z3NsYWIuY29tPsLBjgQTAQgAOBYhBHaHTZ8TNroiWQcccbKItV//nCLBBQJgOEV+=0A=
AhsDBQsJCAcCBhUKCQgLAgQWAgMBAh4BAheAAAoJELKItV//nCLBKwoP/1WSnFdv=0A=
SAD0g7fD0WlF+oi7ISFT7oqJnchFLOwVHK4Jg0e4hGn1ekWsF3Ha5tFLh4V/7UUu=0A=
obYJpTfBAA2CckspYBqLtKGjFxcaqjjpO1I2W/jeNELVtSYuCOZICjdNGw2Hl9yH=0A=
KRZiBkqc9u8lQcHDZKq4LIpVJj6ZQV/nxttDX90ax2No1nLLQXFbr5wb465LAPpU=0A=
lXwunYDij7xJGye+VUASQh9datye6orZYuJvNo8Tr3mAQxxkfR46LzWgxFCPEAZJ=0A=
5P56Nc0IMHdJZj0Uc9+1jxERhOGppp5jlLgYGK7faGB/jTV6LaRQ4Ad+xiqokDWp=0A=
mUOZsmA+bMbtPfYjDZBz5mlyHcIRKIFpE1l3Y8F7PhJuzzMUKkJi90CYakCV4x/a=0A=
Zs4pzk5E96c2VQx01RIEJ7fzHF7lwFdtfTS4YsLtAbQFsKayqwkGcVv2B1AHeqdo=0A=
TMX+cgDvjd1ZganGlWA8Sv9RkNSMchn1hMuTwERTyFTr2dKPnQdA1F480+jUap41=0A=
ClXgn227WkCIMrNhQGNyJsnwyzi5wS8rBVRQ3BOTMyvGM07j3axUOYaejEpg7wKi=0A=
wTPZGLGH1sz5GljD/916v5+v2xLbOo5606j9dWf5/tAhbPuqrQgWv41wuKDi+dDD=0A=
EKkODF7DHes8No+QcHTDyETMn1RYm7t0RKR4zsFNBFp+A0oBEAC9ynZI9LU+uJkM=0A=
eEJeJyQ/8VFkCJQPQZEsIGzOTlPnwvVna0AS86n2Z+rK7R/usYs5iJCZ55/JISWd=0A=
8xD57ue0eB47bcJvVqGlObI2DEG8TwaW0O0duRhDgzMEL4t1KdRAepIESBEA/iPp=0A=
I4gfUbVEIEQuqdqQyO4GAe+MkD0Hy5JH/0qgFmbaSegNTdQg5iqYjRZ3ttiswalq=0A=
l1/iSyv1WYeC1OAs+2BLOAT2NEggSiVOtxEfgewsQtCWi8H1SoirakIfo45Hz0tk=0A=
/Ad9ZWh2PvOGt97Ka85o4TLJxgJJqGEnqcFUZnJJriwoaRIS8N2C8/nEM53jb1sH=0A=
0gYddMU3QxY7dYNLIUrRKQeNkF30dK7V6JRH7pleRlf+wQcNfRAIUrNlatj9Txwi=0A=
vQrKnC9aIFFHEy/0mAgtrQShcMRmMgVlRoOA5B8RTulRLCmkafvwuhs6dCxN0GNA=0A=
ORIVVFxjx9Vn7OqYPgwiofZ6SbEl0hgPyWBQvE85klFLZLoj7p+joDY1XNQztmfA=0A=
rnJ9x+YV4igjWImINAZSlmEcYtd+xy3Li/8oeYDAqrsnrOjb+WvGhCykJk4urBog=0A=
2LNtcyCjkTs7F+WeXGUo0NDhbd3Z6AyFfqeF7uJ3D5hlpX2nI9no/ugPrrTVoVZA=0A=
grrnNz0iZG2DVx46x913pVKHl5mlYQARAQABwsFfBBgBAgAJBQJafgNKAhsMAAoJ=0A=
ELKItV//nCLBwNIP/AiIHE8boIqReFQyaMzxq6lE4YZCZNj65B/nkDOvodSiwfwj=0A=
jVVE2V3iEzxMHbgyTCGA67+Bo/d5aQGjgn0TPtsGzelyQHipaUzEyrsceUGWYoKX=0A=
YyVWKEfyh0cDfnd9diAm3VeNqchtcMpoehETH8frRHnJdBcjf112PzQSdKC6kqU0=0A=
Q196c4Vp5HDOQfNiDnTf7gZSj0BraHOByy9LEDCLhQiCmr+2E0rW4tBtDAn2HkT9=0A=
uf32ZGqJCn1O+2uVfFhGu6vPE5qkqrbSE8TG+03H8ecU2q50zgHWPdHMOBvy3Ehz=0A=
fAh2VmOSTcRK+tSUe/u3wdLRDPwv/DTzGI36Kgky9MsDC5gpIwNbOJP2G/q1wT1o=0A=
Gkw4IXfWv2ufWiXqJ+k7HEi2N1sree7Dy9KBCqb+ca1vFhYPDJfhP75I/VnzHVss=0A=
Z/rYZ9+51yDoUABoNdJNSGUYl+Yh9Pw9pE3Kt4EFzUlFZWbE4xKL/NPno+z4J9aW=0A=
emLLszcYz/u3XnbOvUSQHSrmfOzX3cV4yfmjM5lewgSstoxGyTx2M8enslgdXhPt=0A=
hZlDnTnOT+C+OTsh8+m5tos8HQjaPM01MKBiAqdPgksm1wu2DrrwUi6ChRVTUBcj=0A=
6+/9IJ81H2P2gJk3Ls3AVIxIffLoY34E+MYSfkEjBz0E8CLOcAw7JIwAaeBTzsFN=0A=
BGbyLVgBEACqClxh50hmBepTSVlan6EBq3OAoxhrAhWZYEwN78k+ENhK68KhqC5R=0A=
IsHzlL7QHW1gmfVBQZ63GnWiraM6wOJqFTL4ZWvRslga9u28FJ5XyK860mZLgYhK=0A=
9BzoUk4s+dat9jVUbq6LpQ1Ot5I9vrdzo2p1jtQ8h9WCIiFxSYy8s8pZ3hHh5T64=0A=
GIj1m/kY7lG3VIdUgoNiREGf/iOMjUFjwwE9ZoJ26j9p7p1U+TkKeF6wgswEB1T3=0A=
J8KCAtvmRtqJDq558IU5jhg5fgN+xHB8cgvUWulgK9FIF9oFxcuxtaf/juhHWKMO=0A=
RtL0bHfNdXoBdpUDZE+mLBUAxF6KSsRrvx6AQyJs7VjgXJDtQVWvH0PUmTrEswgb=0A=
49nNU+dLLZQAZagxqnZ9Dp5l6GqaGZCHERJcLmdY/EmMzSf5YazJ6c0vO8rdW27M=0A=
kn73qcWAplQn5mOXaqbfzWkAUPyUXppuRHfrjxTDz3GyJJVOeMmMrTxH4uCaGpOX=0A=
Z8tN6829J1roGw4oKDRUQsaBAeEDqizXMPRc+6U9vI5FXzbAsb+8lKW65G7JWHym=0A=
YPOGUt2hK4DdTA1PmVo0DxH00eWWeKxqvmGyX+Dhcg+5e191rPsMRGsDlH6KihI6=0A=
+3JIuc0y6ngdjcp6aalbuvPIGFrCRx3tnRtNc7He6cBWQoH9RPwluwARAQABwsOs=0A=
BBgBCgAgFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmbyLVgCGwICQAkQsoi1X/+c=0A=
IsHBdCAEGQEKAB0WIQSilC2pUlbVp66j3+yzNoc6synyUwUCZvItWAAKCRCzNoc6=0A=
synyU85gD/0T1QDtPhovkGwoqv4jUbEMMvpeYQf+oWgm/TjWPeLwdjl7AtY0G9Ml=0A=
ZoyGniYkoHi37Gnn/ShLT3B5vtyI58ap2+SSa8SnGftdAKRLiWFWCiAEklm9FRk8=0A=
N3hwxhmSFF1KR/AIDS4g+HIsZn7YEMubBSgLlZZ9zHl4O4vwuXlREBEW97iL/FSt=0A=
VownU2V39t7PtFvGZNk+DJH7eLO3jmNRYB0PL4JOyyda3NH/J92iwrFmjFWWmmWb=0A=
/Xz8l9DIs+Z59pRCVTTwbBEZhcUc7rVMCcIYL+q1WxBG2e6lMn15OQJ5WfiE6E0I=0A=
sGirAEDnXWx92JNGx5l+mMpdpsWhBZ5iGTtttZesibNkQfd48/eCgFi4cxJUC4PT=0A=
UQwfD9AMgzwSTGJrkI5XGy+XqxwOjL8UA0iIrtTpMh49zw46uV6kwFQCgkf32jZM=0A=
OLwLTNSzclbnA7GRd8tKwezQ/XqeK3dal2n+cOr+o+Eka7yGmGWNUqFbIe8cjj9T=0A=
JeF3mgOCmZOwMI+wIcQYRSf+e5VTMO6TNWH5BI3vqeHSt7HkYuPlHT0pGum88d4a=0A=
pWqhulH4rUhEMtirX1hYx8Q4HlUOQqLtxzmwOYWkhl1C+yPObAvUDNiHCLf9w28n=0A=
uihgEkzHt9J4VKYulyJM9fe3ENcyU6rpXD7iANQqcr87ogKXFxknZ97uEACvSucc=0A=
RbnnAgRqZ7GDzgoBerJ2zrmhLkeREZ08iz1zze1JgyW3HEwdr2UbyAuqvSADCSUU=0A=
GN0vtQHsPzWl8onRc7lOPqPDF8OO+UfN9NAfA4wl3QyChD1GXl9rwKQOkbvdlYFV=0A=
UFx9u86LNi4ssTmU8p9NtHIGpz1SYMVYNoYy9NU7EVqypGMguDCL7gJt6GUmA0sw=0A=
p+YCroXiwL2BJ7RwRqTpgQuFL1gShkA17D5jK4mDPEetq1d8kz9rQYvAR/sTKBsR=0A=
ImC3xSfn8zpWoNTTB6lnwyP5Ng1bu6esS7+SpYprFTe7ZqGZF6xhvBPf1Ldi9UAm=0A=
U2xPN1/eeWxEa2kusidmFKPmN8lcT4miiAvwGxEnY7Oww9CgZlUB+LP4dl5VPjEt=0A=
sFeAhrgxLdpVTjPRRwTd9VQF3/XYl83j5wySIQKIPXgT3sG3ngAhDhC8I8GpM36r=0A=
8WJJ3x2yVzyJUbBPO0GBhWE2xPNIfhxVoU4cGGhpFqz7dPKSTRDGq++MrFgKKGpI=0A=
ZwT3CPTSSKc7ySndEXWkOYArDIdtyxdE1p5/c3aoz4utzUU7NDHQ+vVIwlnZSMiZ=0A=
jek2IJP3SZ+COOIHCVxpUaZ4lnzWT4eDqABhMLpIzw6NmGfg+kLBJhouqz81WITr=0A=
EtJuZYM5blWncBOJCoWMnBEcTEo/viU3GgcVRw=3D=3D=0A=
=3Dx94R=0A=
-----END PGP PUBLIC KEY BLOCK-----=0A=

--------------tqnHgB6YWxIuteD0hHPTwN5b--

--------------JvQ4TwDPiKkVsXoXjdImlliA--

--------------MGvW19UhlqtxliZlQIqhwF6a
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEopQtqVJW1aeuo9/sszaHOrMp8lMFAmifY9EACgkQszaHOrMp
8lMspA//RkJugOSDatq61vIP0givDwYeG0VWvpPVhVtx1g+jrh0DTLQw2aWPxoM/
cZhxnGbdhgUKkgiQy3D4fxV5hnOhvVe9PAgye22ObITS6B8ii4WezQX5oFBzHQIF
Dq9AIAQPH3NILl6aoDf2UqxkC+t0WdSLeHTAmnJjbN9sauKiXR8lhZZGZRzVQ1xF
KGYVM8vVxhE0pebIGeGWRGB/tJA1BDCdbpPj1kgJZOQWyD8kT1DPNuJ7mUibIgUp
DEp+XlXCzH+YCoJg0k2g6zgZsKIfIAbfGDrgDTHoEHhVIQBv9SZun6E5vxbBKUcn
QjevYSuYerW3apkPADqJhj53Kmx8s+RJV2MonR17ECw8A/wPMZP7pR9z15vuvzXZ
bSfo0W/hrrBLuj3zUdpcO1Vc+EcaTIZZ+a0hS4/FdYvJqYeX2PCtHWyeYEPJEIZJ
QRrkPrwJm1u5hdUJiXMkh0v+kWKRo61oKyaLIzehH6ieG610Wisk0oUMvV83sc0D
vcuxIFJnlS9Xy8UBcDP7ow9XrqhrAtBMIP8W9Phci0IearJ6cwcgYNIMunFRwF3s
BVLhV4KnfbgPwtWrwwycVcTcXLw7QMkBRfBPeSgqBBIRBU5kQRjx4JaTFXCcugp4
Ja/ccxKsbMGur734lf3qTPLgeXeBDtgoA0TEa4dFfixqGuFx6i0=
=6YFy
-----END PGP SIGNATURE-----

--------------MGvW19UhlqtxliZlQIqhwF6a--
