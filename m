Received: (qmail 6059 invoked by uid 550); 27 Sep 2025 11:31:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26171 invoked from network); 27 Sep 2025 01:04:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758935053; x=1759539853; darn=lists.openwall.com;
        h=in-reply-to:autocrypt:from:content-language:references:cc:to
         :subject:user-agent:mime-version:date:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Amd3Yr04p59cn0ShiJc8xmgO1MntCgTYer/foiX7YCY=;
        b=HcB50GfJoHHJTbCGGbvZhKHBbU/+OZTsys3VZs2YmiKpINzU3iPjUdaFAGK1TEoboN
         tCyiTLOFEpsP//ayqPdZZ9j4W3hZnJTB6/1NpFkyCymB+Thpau2BEz8Xlmj2ikum4GaZ
         JkcLHpoVb6a4mmjzU9hws+sYPPgxwrlNW6Q8lahhIXBzxt96rRUFeVloh18PSklA/o7N
         AEFjWc5mDUoHltpEfL6XK5JnbeKKXya8HmxTqxmmvxqjVW2Tftk/921RdUQu3bquTDY7
         qZGXX3+eP9eQgB8Gzh5rpka9nGdvRZBp2Gy8s2404frC/+EJDWqpX+/tcaffq/F8N5bu
         I7Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758935053; x=1759539853;
        h=in-reply-to:autocrypt:from:content-language:references:cc:to
         :subject:user-agent:mime-version:date:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Amd3Yr04p59cn0ShiJc8xmgO1MntCgTYer/foiX7YCY=;
        b=HmVJt7GYcnnh1iuhG1PelPio+247AQDnr7vdNkb8h3SvPU2TKcAk8wOJYpK1lsEpRR
         DsWsvoHbLK+q+rl0nK972ALmsCziTdefj/Rv7pOmpbO25q/OzJc+KT8CeI3Cxl4coUcK
         AfBg9zesNImGRew4VYwERbjJOxf+EWqwGmhzDWHuFaOiJFKNqgGXcR2rR3ZQzfCwRFv4
         2rSgRJbTZpVasDV5fNA1KRZGJHWS2ZAtKSpcxCcurs7RSeFJI0KM6RDv0UAD2gRvy2ds
         dFCJpc8YRZrStkFfeCwvxQX1sWB0rANo1U7mc1ZexafpXofVMFEASdiTMOG2Rbrs2+XD
         Ly1A==
X-Forwarded-Encrypted: i=1; AJvYcCVtqAWK70uM9J23reybHTcewcwPM+uswvIowEc2epLew0VGuv0N6PK7KbNVkYOBdzW0/7ejklvz1pl9Jms=@lists.openwall.com
X-Gm-Message-State: AOJu0YxK67dHLXPQL6rj2fEmpkNAGrEEzT9h+2miBGAPWQetmaxNNxop
	dHqqj+St3CCihUG9qSFbVdOIZETZl817DOBIckeI7hUiVSFiudM2HNZC
X-Gm-Gg: ASbGncvGPV0N25OosJ8kObZK2xudCmpz54FlkKPP+mM9KclD6BYWnH54XNzZ4hAn/XZ
	7kGe8hsVbJeTlSArhlLU7S92zfxBJ7REVKwCqprOqcXKIsQ1HGf7VGcpvoT3jW8f3ttaI85uMzt
	vHGYRC1Kq/epqn7dXAfEOJPb/6y88lFTDYJII86pJpBu6dZgS9elA/PdaMM2OGAqA0v2KFxlLOG
	unJWfKMd/4b1tSefzjABv0nxA7ZqshnmnDO4cEXrrH36T/Zd3iGfYNrqq3bKOcY+0j49UxZ0IYn
	fqYqe6A0XjTuG9FuBVw6V9SOImyglMIMVP57U5LT4UjV4nV+lUK9SPPSbKEpusQP60tG7+HpHjw
	2aAtfpi4ztPF+ZMU1OsMDoGBumssFAai/mGUZqMIWjX2HgvSPcuWlkZF/NOOdU63G6qOAkuKC1i
	Xn906IpTkYvDWs43YtFXOFYKYSETrWqcJwP7I=
X-Google-Smtp-Source: AGHT+IESws2gbce/TEPblJ8A391Wi4CMNeKqtviTX9JkGO1vrTVlmH2QrLU0bIwwCfQzfVFxXCJ8pA==
X-Received: by 2002:a05:690c:7485:b0:74b:e290:1e2e with SMTP id 00721157ae682-7640624f3a5mr101124397b3.52.1758935053485;
        Fri, 26 Sep 2025 18:04:13 -0700 (PDT)
Message-ID: <607fcfda-ab5f-4a9a-a341-2a9e2beede20@gmail.com>
Date: Fri, 26 Sep 2025 21:04:08 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: jcb62281@gmail.com, oss-security@lists.openwall.com,
 Peter Gutmann <pgut001@cs.auckland.ac.nz>,
 "Adiletta, Andrew" <ajadiletta@wpi.edu>, Solar Designer
 <solar@openwall.com>, Andrew Cooper <andrew.cooper3@citrix.com>
Cc: "openssh@openssh.com" <openssh@openssh.com>, "Tol, Caner" <mtol@wpi.edu>,
 "Sunar, Berk" <sunar@wpi.edu>, "Doroz, Yarkin" <ydoroz@wpi.edu>,
 "Todd C. Miller" <Todd.Miller@courtesan.com>
References: <92a89d5d-e0de-c713-e7d2-83f971574eff@mindrot.org>
 <20250923032113.GA14348@openwall.com>
 <BL1PR01MB772308134BF946DF07159A05C11CA@BL1PR01MB7723.prod.exchangelabs.com>
 <43743160-7c83-4c4e-ad77-52e5058636c5@gmail.com>
 <ME0P300MB0713919015F954023D6D63FAEE1CA@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
 <0ea3da20-739e-4608-8869-9d5882a8f003@gmail.com>
 <544d9d89-2a0a-4901-84ab-40c07c9c7bcd@gmail.com>
 <a715936d-759a-4c2f-8498-6da12f0fba3a@gmail.com>
 <dac51d5e-e9a9-4e8d-b044-7da3316c9252@gmail.com>
 <06836fd6-a1eb-4af8-a5f9-012b37a6c162@gmail.com>
Content-Language: en-US
From: Demi Marie Obenour <demiobenour@gmail.com>
Autocrypt: addr=demiobenour@gmail.com; keydata=
 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
 +MYSfkEjBz0E8CLOcAw7JIwAaeBT
In-Reply-To: <06836fd6-a1eb-4af8-a5f9-012b37a6c162@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------tZjM0RGTU1aVBerEW0TnQVs0"
Subject: Re: [oss-security] Re: [EXT] Re: [oss-security] CVE-2023-51767: a
 bogus CVE in OpenSSH

--------------tZjM0RGTU1aVBerEW0TnQVs0
Content-Type: multipart/mixed; boundary="------------kLARvUiUlXIT89Kh22dubNY0";
 protected-headers="v1"
From: Demi Marie Obenour <demiobenour@gmail.com>
To: jcb62281@gmail.com, oss-security@lists.openwall.com,
 Peter Gutmann <pgut001@cs.auckland.ac.nz>,
 "Adiletta, Andrew" <ajadiletta@wpi.edu>, Solar Designer
 <solar@openwall.com>, Andrew Cooper <andrew.cooper3@citrix.com>
Cc: "openssh@openssh.com" <openssh@openssh.com>, "Tol, Caner" <mtol@wpi.edu>,
 "Sunar, Berk" <sunar@wpi.edu>, "Doroz, Yarkin" <ydoroz@wpi.edu>,
 "Todd C. Miller" <Todd.Miller@courtesan.com>
Message-ID: <607fcfda-ab5f-4a9a-a341-2a9e2beede20@gmail.com>
Subject: Re: [oss-security] Re: [EXT] Re: [oss-security] CVE-2023-51767: a
 bogus CVE in OpenSSH
References: <92a89d5d-e0de-c713-e7d2-83f971574eff@mindrot.org>
 <20250923032113.GA14348@openwall.com>
 <BL1PR01MB772308134BF946DF07159A05C11CA@BL1PR01MB7723.prod.exchangelabs.com>
 <43743160-7c83-4c4e-ad77-52e5058636c5@gmail.com>
 <ME0P300MB0713919015F954023D6D63FAEE1CA@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
 <0ea3da20-739e-4608-8869-9d5882a8f003@gmail.com>
 <544d9d89-2a0a-4901-84ab-40c07c9c7bcd@gmail.com>
 <a715936d-759a-4c2f-8498-6da12f0fba3a@gmail.com>
 <dac51d5e-e9a9-4e8d-b044-7da3316c9252@gmail.com>
 <06836fd6-a1eb-4af8-a5f9-012b37a6c162@gmail.com>
In-Reply-To: <06836fd6-a1eb-4af8-a5f9-012b37a6c162@gmail.com>

--------------kLARvUiUlXIT89Kh22dubNY0
Content-Type: multipart/mixed; boundary="------------Cgrhb04gEBoII5dX7muuAqcV"

--------------Cgrhb04gEBoII5dX7muuAqcV
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 9/26/25 20:06, Jacob Bachmeyer wrote:
> On 9/26/25 09:19, Demi Marie Obenour wrote:
>> On 9/25/25 22:33, Jacob Bachmeyer wrote:
>> [...]
>>> It seems highly likely that Rowhammer is an inherent consequence of DRAM
>>> density beyond a certain limit and highly *unlikely* that reducing DRAM
>>> density below the "Rowhammer threshold" will prove to be an acceptable
>>> solution.
>> See https://arxiv.org/pdf/2407.09995 for the proper solution: store a
>> per-row activation counter alongside the row itself, and when any row
>> in a bank exceeds the threshold, take action.
>=20
> I am somewhat skeptical about this, simply because there have been many=20
> "proper solutions" to Rowhammer that have thus far failed.

Have any of them had a proof of correctness?  MOAT at least claims to,
and if that proof is correct, then either it is secure or one of the
assumptions it is based on is invalid.

>>> [...]
>>>
>>>
>>> The stack is intrinsically aligned on much finer than page granularity;
>>> introducing additional "jitter" to the locations of stack variables (and
>>> spilled registers) is a solution available today with minimal cost.=C2=
=A0 All
>>> you need is "size_t slide_size=3Drandom_stack_slide_size(); void *
>>> slide=3Dalloca(slide_size); memset(slide,0,slide_size);" near the top of
>>> main (and possibly other functions to "mix it up" more) and a function
>>> random_stack_slide_size() that gives an appropriate unpredictable value.
>>>
>>> The key is to avoid trying to prevent bits from being flipped (that
>>> proverbial ship has sailed on current hardware) but instead prevent an
>>> attacker from being able to predict accomplishing something useful with
>>> those bit-flips.
>> I suspect that in general this is provably impossible.
>=20
> You suspect that ASLR is generally provably useless?=C2=A0 "Sliding" the=
=20
> stack is the same basic principle as ASLR.

ASLR is an awesome mitigation.  It definitely makes attacks much harder.
I have yet to see a case where it provably makes an attack impossible.
If you are aware of one, I would love to know.

> The "Rowhammer Mayhem" attack evades ASLR by exploiting the kernel's=20
> physical page allocation policy, effectively converting the significant=20
> address to an ordinal page number ("Nth page allocated") and offset=20
> instead of a virtual or physical address.
>=20
>> My hope is that
>> EU regulations like CRA and PLD will force hardware recalls when defects
>> like Rowhammer are detected.
>=20
> You realize that legal cudgels like that could very well kill the entire=
=20
> computing industry if it turns out that Rowhammer is due to physical=20
> limitations, right?

There is no law saying that DRAM must be used, or that it must have
a feature size as small as it has.  A larger feature size (bigger
capacitors) could stop the attack, albeit at great expense.
Increasing the refresh rate and noise margins would also help.

Another option is to cryptographically authenticate every row.  If
a full-width MAC is used, the attacker must flip at least 129 bits
and they have absolutely no margin for error: even a single error
will be detected.  If the attacker cannot do this (and I have seen
no paper suggesting they can), this prevents Rowhammer from being
a memory corruption vulnerability.  If the memory is also encrypted,
this reduces Rowhammer to denial of service at worst.  DRAM rows
are very wide, so the cost of the MAC can be amortized across a
large number of bits.

The burden should be on hardware vendors to create hardware without
security holes.  Formal verification at the HDL level can catch
defects in the source code.  Some proofs might be able to be
generated automatically, while others might have to be written by
hand and machine-checked.  For other issues, there is no solution
I know of other than being extremely careful in the design process.

If defects like Rowhammer, Zenbleed, or Spectre forced product
recalls, there would be a massive economic incentive to produce
hardware that lacked such defects.  I suspect this would solve the
problem in fairly short order.  The question is whether the
economic cost of doing so -- and of not doing so -- is something
that society, and end users, are willing to pay.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)=

--------------Cgrhb04gEBoII5dX7muuAqcV
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

--------------Cgrhb04gEBoII5dX7muuAqcV--

--------------kLARvUiUlXIT89Kh22dubNY0--

--------------tZjM0RGTU1aVBerEW0TnQVs0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEopQtqVJW1aeuo9/sszaHOrMp8lMFAmjXOAgACgkQszaHOrMp
8lOo+g//YjlbLAT5q+Q5YDb3fXZJ7Qbr4rldjERhU/yYE16qGHUo2jlRyHZf61jq
0PXavCB6HitkcqkRTIK7XFCkYMPFKYeF/tZVsXY87oiQina7BGLwuZb2I8LIzdeC
6vj7I/CU2hJPIW3fBlFfJ9S6ZX3e0BbUHQdeE3+7CGxumhNiCAllDCJOLfpDx4lK
ObqmhaiUBwZYTmLS57n7KY4AxWyTSMJ1u3uBzJKGluYtAc4qkg6krCAiH0HjSzFk
mmuH/2NI8TbIn65nS5Vnezq8G+6UEFZ4qWlnEPSg4Zb+cevvm4yTp4zttKwonTsk
YuIY9+yaHPr/x/VUd9zjDloqG1PPYm5WdgLTpDDEn/B2ZzmLLAhbqWw3jRvknYve
bAyITrvTPv7VH/artkW7E8rNK5tRshqWL1cfFcV2EtWHYd0kWIWIyi6Dd/WksTL9
1BGuS7Q7q3zb/Z4eMWOzl4tP2dhU8CV9RYfHsd2AYU4nDK9kMHER2kqxXt3nZE+w
9qZWXhxKTtme9L8e2mnCLmJP9WtYT310f2Av3IUMKDUft9yJEXERaNrpeCCXlKHS
1xTMxsyLvqunFegYn6FigfSZpP+9DiWCTWKtTAy2U7A+L05egjSBwNL0bRnAZ7Ie
B8qg0mpgRlmWyMWaiF/ZOZ2ctL+M2OB6/cGD5wpp9dhWr5lEoV0=
=seyq
-----END PGP SIGNATURE-----

--------------tZjM0RGTU1aVBerEW0TnQVs0--
