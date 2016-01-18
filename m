X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3926" "Monday" "18" "January" "2016" "13:38:17" "-0500" "Scott Arciszewski" "scott@paragonie.com" "<CAKws9z0RM_1BVD1PZoaax0jGi74_nx119-9RzQagjhMqOJYxXQ@mail.gmail.com>" "105" "[oss-security] Re: [FD] It essentially wins crypto vulnerability bingo! gilfether/phpcrypt" "^Date:" nil nil "1" "2016011818:38:17" "[oss-security] Re: [FD] It essentially wins crypto vulnerability bingo! gilfether/phpcrypt" (number mark "        scott@parago Jan 18  105/3926  " thread-indent "\"[oss-security] Re: [FD] It essentially wins crypto vulnerability bingo! gilfether/phpcrypt\"\n") "<569CADA7.8070701@mivargroup.nl>" ("<CAKws9z2psDS2P25SOykpaR0QUiMZd1Pe1q4Q3ia_YyXXh-ptGQ@mail.gmail.com>" "<569CADA7.8070701@mivargroup.nl>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29707 invoked by uid 550); 18 Jan 2016 18:38:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28665 invoked from network); 18 Jan 2016 18:38:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=paragonie-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type:content-transfer-encoding;
        bh=0I3XFk+3wRl3lyCzz3fNKWYtVKD44uUIiW3xyXrk7v0=;
        b=OE0SX7ZLqS5SzpcFOCmXPXlMlrP6+eZh35WzS3vEL3+7LyCTjylxgGjqL4adXmdVh3
         wNAa2Yw8EGEnvbA3uh69RBVBlLIl+zat/TjInAzMAqXfxqPGFt+Fw7XFSXmQl8WlUq6H
         HX5KugVpbuACLTsMDM2N2n8dsBdgjwW6Ryy6q25I217yOcDLQezgTj5pdwza1eTffRgT
         9lH3zYOh05MOgJSlT51zitwp+mo25ZlW2rRZUWL+wvRiOj4/DWFbRXTBbnLchW0jd9GI
         tTMUV9/KfEH1vKfjwE7J8eYxlun9DHVQZr2/Ee03OkYrmRlPt48IwZD6yiUCP3sCtFUx
         H0Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type:content-transfer-encoding;
        bh=0I3XFk+3wRl3lyCzz3fNKWYtVKD44uUIiW3xyXrk7v0=;
        b=JGiLVK6vjXnjoLzAT8iTrq53ZIMZnyAcw9EN6Whz9SNKuOoqGBjs7cveMfnH3aVr8Z
         ZerwYo171nhS/ar2SoEhd7y4QKKxl0jRyAqI4gO13DVuWAJyrEranCWj/m4FWO6WxvmN
         YUwgPY74FTYQGEXkW7jlL25S7LGMAq/Pkn24JNiQqcreQy2i+XEf475TuyL7A0AbvjWi
         P0M7kTJJ/idgfBnja1iQ38KhekX6Z9NtbGe2u1LJFFW/DZGbAWrRUMwUJhWhtUE0telw
         dh5nSP5oD/ItUhO07QMUf8vth67ufZfHXQoeJn9pHnWu7QJbl44QTgOVma7+Iedm3WSt
         OHpg==
X-Gm-Message-State: ALoCoQmGOWpqM1QxeZy6F0SQkJNaRbg4GJYi4/ljqmGsgKB5UYNFsr9Oal1Km8fEol5T2dgfm3irYoRy0Xh/K35z/NvucTPM2A==
MIME-Version: 1.0
X-Received: by 10.25.218.137 with SMTP id r131mr7294441lfg.63.1453142297256;
 Mon, 18 Jan 2016 10:38:17 -0800 (PST)
In-Reply-To: <569CADA7.8070701@mivargroup.nl>
References: <CAKws9z2psDS2P25SOykpaR0QUiMZd1Pe1q4Q3ia_YyXXh-ptGQ@mail.gmail.com>
	<569CADA7.8070701@mivargroup.nl>
Message-ID: <CAKws9z0RM_1BVD1PZoaax0jGi74_nx119-9RzQagjhMqOJYxXQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 18 Jan 2016 13:38:17 -0500
From: Scott Arciszewski <scott@paragonie.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: [FD] It essentially wins crypto vulnerability bingo! gilfether/phpcrypt
To: Bart van Tuil <bvantuil@mivargroup.nl>, fulldisclosure@seclists.org, 
	oss-security@lists.openwall.com

On Mon, Jan 18, 2016 at 4:17 AM, Bart van Tuil <bvantuil@mivargroup.nl> wro=
te:
>
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>
> I don't get something:
>
> > 4. https://github.com/paragonie/EasyRSA (reluctantly included for
> > people that really believe they need RSA)
>
> ...What's, in your opinion ofcourse, t
> he wrong thing about
> implementing RSA in a decent web application? PHP is used for much,
> much more than building simple frontpages without a backend (where
> this might be a senseless complication). RSA is still the way to go
> about implementing accessible asymmetrical crypography...
>
> I do agree, wholeheartedly, that building your own cryptographic
> primitives is just an expensive way of ultimately fooling yourself.
>
> Just wondering...
>
>
> All the best,
>
>
> Bart
>
>
> <rant>
> PS:
> All this bashing on PHP really tires me - it's getting old and
> redundant. And no - im not a PHP developer.
> </rant>
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v2.0.22 (MingW32)
>
> iQEcBAEBAgAGBQJWnK2nAAoJEEnUI2SRQ818biYH/1uKMFgwvkj2iBax/0NJlNTH
> 2Tfd6HLjesvaHUUpQGnvlOILszBoULOlzSsbIXkeLAob/nRyMll7MNI1UExzxub2
> 3tJzmzXenMCT+3en9vCr1eBkEZBCGKWudTLYoEYSanzK1aKr2N4aZEFxYzKWq+fX
> v3hZQuqbISnUvk5UzSdpKW8ZHEMdjhdqt9h7q2BH7m/z5o72jHDBkOFpflCRzIu3
> xlH0ctxFT1F0C071Dk+I5zdAOnERqM/68wDvJ0fHYmobtKPfMDgu8nSqYyB5LpUK
> U1R4zAe/Jpuxkx9DWZb2f0BK7SrZwX9jDs+BPkDZ1tpN6rV2z3toaXtrWjMbwWM=3D
> =3Do7rc
> -----END PGP SIGNATURE-----
>
>
> This email and any attached files are confidential and intended solely fo=
r the intended recipient(s). If you are not the named recipient you should =
not read, distribute, copy or alter this email. Any views or opinions expre=
ssed in this email are those of the author and do not represent those of th=
e   company. Warning: Although precautions have been taken to make sure no =
viruses are present in this email, the company cannot accept responsibility=
 for any loss or damage that arise from the use of this email or attachment=
s.
>

> What's, in your opinion ofcourse, the wrong thing about implementing RSA =
in a decent web application?
> ...
> RSA is still the way to go about implementing accessible asymmetrical cry=
pography...

No it's not. You should, in order of best to worst, choose:

1. ECDH/EdDSA over Curve25519 or Curve448. Use ECDH for determining a
shared secret key for symmetric key cryptography (i.e. ChaCha20 +
Poly1305), use EdDSA for deterministic signatures. This is what
libsodium's crypto_box() and crypto_sign() do.

2. ECDH/ECDSA over NIST P-256, if you really have to implement support for =
them.

3. 2048-bit e=3D65537 RSA, using OAEP for encryption and PSS for
signatures, with MGF1+SHA256. You should also hire an expert to review
your implementation and parameter choices.

Most people who implement RSA implement PKCS1v1.5 padding, which has
been publicly known to be vulnerable to a chosen-ciphertext + padding
oracle attack. SINCE 1998. Also, e =3D 3 RSA signature with PKCS1v1.5
padding is what broke Firefox's certificate validation a few years
back.

That's a lot of land mines to overcome, and do you really expect a
line-of-business web developer to dodge them all? Even if they
succeed, the security of RSA hinges on the difficulty of prime
factorization; something that improvements in index calculus attacks
are weakening every year. It's a sinking ship.

Contrast with libsodium. All you need is crypto_sign() and
crypto_sign_open(). Or crypto_box() and crypto_box_open(). All of
which uses modern, side-channel-resistant elliptic curve cryptography.
It couldn't be much simpler while also being conservatively secure.

Stop implementing RSA. You're setting yourself up for failure.

> PHP is used for much, much more than building simple frontpages without a=
 backend (where this might be a senseless complication).

Of course.

Scott Arciszewski
Chief Development Officer
Paragon Initiative Enterprises
