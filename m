Received: (qmail 10204 invoked by uid 550); 18 Oct 2025 18:25:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23577 invoked from network); 18 Oct 2025 07:48:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=lahtoruutu;
	t=1760773679;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=wDbKNZlFokDK+IQFzljy9dn2ygZ9X5ty43DW0+XJqtA=;
	b=KzcDnmUhXcU2TzW7ANUUVK9pyQU/lSwUoJMWpruzWOOH4q9V5/iUm144DFDegt92GltcvR
	eWGgSLj4TglVTwLUHa20ZgpahiZRj4SRXIeYziC7TEwtyQE3R+CIp5Qp61GQw2PHPyN2vi
	4GZ1PFUtzxUwKLRhGMimvzLWoI+UdQjxv5QxsJSpNXnKUvq9t433iDLet2wGL3ldAVIXyM
	Um+Aq4u735HGllnfFxGXLwPjE/c496B/00OJKexAdwzArtEq+0WqAh+bVD9r26tYACSFVy
	94jx2obyxQaOwytbCv5Gqufoo29wWw4csaWlnQG7o+lHovcdywEZLdmqC+zyPA==
ARC-Seal: i=1; s=lahtoruutu; d=iki.fi; t=1760773679; a=rsa-sha256;
	cv=none;
	b=vFxlhfeOVMxjAjP78KSdv7g7ijl8ivP14STQS9SqIdV6lZDLhJy7qGmMTunIRLOTXdXwec
	Jkh0hEXweUiLL0Qx8KctYO1HEpBsps9xi3EhSSbJuQb1kI4LB8hnNHDQZXnQXT5NKIt6sm
	0kM/z22X9NYUyaE+30ghJTY7IMaHl0M121P7ooBGHJvEYDLTBr49lPyqpRXzW6r+pEzxpH
	6pt+NXiWvMyN8U0ErcpHbIf0VSfX/Qx1fDk0/okoEMfPXZuPd6TGvx2WPTsVdfP2tEuXVA
	yhuKg5bOibcnTi04zuxA1Ih4ngGZX5DYVNWsvZ96teEg/YDFXmT8goXvwGMuFg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=bbb smtp.mailfrom=bbb@iki.fi
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
	s=lahtoruutu; t=1760773679;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=wDbKNZlFokDK+IQFzljy9dn2ygZ9X5ty43DW0+XJqtA=;
	b=RC9IIt3Btx+dU+NPJhpzK0XhNAejBaJIXj//29ymOZBfc+k+zZC7R1SIS5bLzCJEpL4Ttm
	E9D2H8Ojq09IrCpsyGyNwcGgGbGSsqNr2vJfLtzGq664td5kunB6ZmA1kaJZV9Sm4z7RyW
	N4TaB1LhIFiL3Ir8yRkL9ZaJ9GPIh4uw2z817r42abQVc5Ze05SLRk4+JffaENmwPCD7fE
	JjmVd9NymE3E7V0sq6SoqO7Kaz85JIp7DMo+CdbDhgKvPwNXPK2HMcR9dXaJ/dHgU1OZJX
	ENxLjkBg94VphwFzrTYcMT2vu443yTLqyzO87ei1F0jS6RB0cYvC9K8Jr2igUA==
Date: Sat, 18 Oct 2025 03:47:56 -0400 (EDT)
From: Billy Brumley <bbb@iki.fi>
To: oss-security@lists.openwall.com
In-Reply-To: <a5948a82-c85b-443c-9adb-9d6985359828@gmail.com>
Message-ID: <d74cbc65-644-aa18-d2a0-7eb34c4ff@iki.fi>
References: <fd686bd9-d2a7-89f9-f438-7ed38e127591@iki.fi>  <CAH8yC8nZDxYF1NyGjHn8yOADBioNwPB4WTjUZGPmbRTvPLq2tw@mail.gmail.com>  <ME0P300MB0713AA2595680B38B28287AEEEEAA@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>  <CAFRnB2XECXsKDSuvBCeWHwC9apboBdvhYCEFrUo2TuonHs1yFw@mail.gmail.com>
  <CAF8qwaB=b0EDUTckx-ZHdAHkj-_kN9xPmfVFJP8XxCUq-W9Q5Q@mail.gmail.com> <a5948a82-c85b-443c-9adb-9d6985359828@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256; boundary="1757367822-1301164514-1760773679=:25770"
Subject: Re: [oss-security] BoringSSL private key loading is not constant
 time

--1757367822-1301164514-1760773679=:25770
Content-Type: multipart/mixed; boundary="1757367822-2081928780-1760773054=:25770"
Content-ID: <8a98a9b4-99b1-4822-96ed-d410dff6137c@iki.fi>

--1757367822-2081928780-1760773054=:25770
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Content-ID: <89488e4-a5b2-7af1-222-9d96ec205692@iki.fi>

Howdy Folks,

A lot of questions piled up directed at David Benjamin. I was patiently=20
waiting for on-list responses, but I'm not seeing any, so I'll jump in.

> Applications could emit warnings when loading such keys

They could certainly do that, Hanno. I know you're aware of this but just=20
for general knowledge, there's Vaudenay's seminal work on padding oracle=20
attacks

https://en.wikipedia.org/wiki/Padding_oracle_attack

Not that that maps directly here -- I'm just pointing out, even the act of=
=20
emitting a warning / error can be leaky, too and cause -- in general --=20
security issues.

Newer versions of OpenSSL silently modify these keys at runtime, but ofc=20
that is not persisted

$ cat priv_128_0.pem
-----BEGIN PRIVATE KEY-----
MC4CAQAwEAYHKoZIzj0CAQYFK4EEACIEFzAVAgEBBBCneCRP4EljgOADB0hiscbz
-----END PRIVATE KEY-----

$ openssl pkey -in priv_128_0.pem
-----BEGIN PRIVATE KEY-----
ME4CAQAwEAYHKoZIzj0CAQYFK4EEACIENzA1AgEBBDAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAKd4JE/gSWOA4AMHSGKxxvM=3D
-----END PRIVATE KEY-----

For the young eager security researchers on the list, if you want to find=20
some non-constant-time code to point at for your paper: script "git=20
bisect" on the above openssl command, and it'll lead you to an OpenSSL=20
commit where that's happening. (And my gut tells me it's very likely that=20
correction is not constant time in the traditional model.)

> Does the file size of the private key file also leak this information?

At first glance it might seem so, Jacob. But the ECPrivateKey OID encoding=
=20
format contains lots of optional fields, and you don't know if those=20
fields are present until you decode it :shrug:

So when you see varying file sizes with these keys, it could be for many=20
different reasons, unfortunately.

> This appears to be a misunderstanding of the ECPrivateKey format

No, David, there is no misunderstanding at all. We studied tons of=20
different formats and wrote about it in 2019 (but you know that, already)

https://www.usenix.org/conference/usenixsecurity20/presentation/garcia

We even discussed with the BoringSSL security team in 2019, and you=20
dismissed us. If you would've taken the time to read the paper and=20
understand our contribution to the security community, you'd know that.

> The issue is that =E2=80=9Crandme.py=E2=80=9D calls the Python hex() func=
tion on an
integer

No, David, rofl.

ROFL.

For those still reading, this would be like when you submit a PoC exploit=20
for an OOB write vulnerability, and you'd get a response like

"The issue is in your harness, you're sending unexpected inputs"

NO THAT'S NOT AN ISSUE OR BUG, IT'S THE WHOLE GOSH DARN EXPLOIT

But ofc David knows it, he knows I'm encoding the keys deliberately like=20
that, he's just trolling me on-list, and spreading misinformation in=20
public in an attempt to wipe the egg from his face.

Still waiting for the "sorry, we screwed up, we'll fix it" from BoringSSL.

David, mea culpa is free, you can stop digging the hole any time you want.

Cheers,

BBB

--=20
Dr. Billy B. Brumley, D.Sc. (Tech.)
Director of Research, ESL Global Cybersecurity Institute (GCI)
Kevin O'Sullivan Endowed Professor, Department of Cybersecurity (CSEC)
Director, Platform Security Laboratory (PLATSEC)
Rochester Institute of Technology
Cybersecurity Hall 70-1770
100 Lomb Memorial Drive
Rochester, NY, 14623-5608, USA
S/MIME public key: https://people.rit.edu/bbbics/bbbics@rit.edu.crt
S/MIME public key: https://people.rit.edu/bbbics/bbb@iki.fi.crt
https://www.rit.edu/directory/bbbics-billy-brumley
https://www.rit.edu/cybersecurity/=

--1757367822-2081928780-1760773054=:25770--

--1757367822-1301164514-1760773679=:25770
Content-Type: application/pkcs7-signature; name=smime.p7s
Content-Transfer-Encoding: BASE64
Content-Description: S/MIME Cryptographic Signature
Content-Disposition: attachment; filename=smime.p7s

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

--1757367822-1301164514-1760773679=:25770--

