X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3569" "Wednesday" "17" "February" "2016" "19:08:45" "-0500" "Daniel Micay" "danielmicay@gmail.com" "<1455754125.23003.18.camel@gmail.com>" "70" "Re: [oss-security] Address Sanitizer local root" "^Date:" nil nil "2" "2016021800:08:45" "[oss-security] Address Sanitizer local root" (number mark "        danielmicay@ Feb 17   70/3569  " thread-indent "\"Re: [oss-security] Address Sanitizer local root\"\n") "<20160217221921.GB24130@port70.net>" ("<20160217221921.GB24130@port70.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16356 invoked by uid 550); 18 Feb 2016 00:09:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16335 invoked from network); 18 Feb 2016 00:09:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:subject:from:to:date:in-reply-to:references:content-type
         :mime-version;
        bh=BQQ3MFCvhX16WagW4lFJj4xJ67fk5c4iTL9JhKGGyl8=;
        b=AdzjiQ1fb2T/O7mBjxuJMI+Sddw6bt9PhVZtjbt7EMja7AoKubh/r2lSeeZPlnZbsl
         P/RWwmvkFI6N699ydklFRqg5JDKmUfG7STPbvbgjj7xJqVcX7dcE+ZSAfosZV96rHUTo
         2beO4+hS3WKo6bTdNCl0LofVtwbX5MPn5nBgsVjjlgW3awExk0EL68/OGg+KlD7wcP8F
         TUzG+3kJRz8LK4aaXlwdxJQ1eY3Qyw61+Kgftj1ce1ZonEruxmbuLfISNlgPZLcp4bF4
         E8EzsyApn5pN3GWnTxRW1OJjG/qumlPALlcPoqPb9jL3VyyrncrW8KzvTCM+vIXv1w2s
         gDYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:content-type:mime-version;
        bh=BQQ3MFCvhX16WagW4lFJj4xJ67fk5c4iTL9JhKGGyl8=;
        b=PW1Dx+Ny28BQ/ul7CkGH6dsY4FHNTOt6JvZfcZr+t9LJLT9Kn68OryfjF/WoDD+Hb8
         Jz9fV9075pOVipo8kYXWo9WBt/e7YSMHQcV3aOCJeOU3SM4qEU++VyJKdCIANubxzWi7
         x5EvYgnYtBSHOw4ZQs1fyyms7iRPJkqNmEs4mtAhegiM82HCzBG9nL8uzaNWs9BQUvX+
         DwrPJFAA/WoTi765DooYIgEdjmGsUjg9eckVPBhLxJAmAz7XNSDHpCcGsiWTguR0hQGv
         B0dGztpSqvN/OKN2qaOJcn24HUMJFJdxwORd/BIWUilAxwx55wvWTFMbmzmeMs2Mq9BV
         Plqg==
X-Gm-Message-State: AG10YOSdleZOBT53PhnP8fdgrEqNaXDMsFdhFma6X7JX4+wilidu7a+E8TSsapO9as9mNQ==
X-Received: by 10.55.74.197 with SMTP id x188mr5536232qka.104.1455754131171;
        Wed, 17 Feb 2016 16:08:51 -0800 (PST)
Message-ID: <1455754125.23003.18.camel@gmail.com>
In-Reply-To: <20160217221921.GB24130@port70.net>
References: <20160217221921.GB24130@port70.net>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-L9t3eDSDYsdlMoWwwqBl"
X-Mailer: Evolution 3.18.5 
Mime-Version: 1.0
Date: Wed, 17 Feb 2016 19:08:45 -0500
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Address Sanitizer local root
To: oss-security@lists.openwall.com

--=-L9t3eDSDYsdlMoWwwqBl
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

ASan is also far from providing full memory safety and to a large extent
it defeats Address Space Layout Randomization. It was strange to see a
hardening effort enabling both PIE and ASan. Even without taking the
runtime issues into consideration, it can make exploitation easier. It
doesn't work with PaX ASLR for a reason. It's also incompatible with PaX
UDEREF on x86_64 but that's a separate kind of issue since it could be
altered to reserve the mappings in a way that's compatible.

ASan's bounds checking is great at detecting the common cases of
overflow for debugging, but it's far from exhaustive. An attacker would
be able to bypass it in the general case. It would make it too hard to
exploit some vulnerabilities, but it won't prevent exploitation in
general.

The use-after-free and double-free detection is based on the same
quarantine technique in Valgrind. It can only detect the issues before
allocations are flushed out of the quarantine by memory pressure. It
does mitigate many vulnerabilities but comparable double-free detection
could be done in malloc without the drawbacks (two flat arrays providing
a ring buffer for a FIFO quarantine + a hash table). The same thing
applies to write-after-free but not use-after-free, since that would
require instrumentation in the code. A write-after-free can be detected
by filling allocations with junk and then checking for it when it's
flushed from the quarantine rather than instrumentation. It doesn't need
to do the whole allocation to be useful, so there's a large range of
tuning for performance. The junk data could come from a stream cipher
seeded from the address if desired, but it doesn't seem important.

It makes a lot of sense to use UBSan in the trapping mode for hardening,
as it has no runtime and is simply adding extra checks branching to an
instruction aborting the process. That includes the bounds and object-
size sanitizers for bounds checking where object sizes are statically
known. They could even be extended to cover cases where the compiler can
figure out runtime size bounds at compile-time (for example, usage of
memory directly after allocation with malloc(n)).

Using ASan doesn't seem advisable. There would need to be an investment
in remaking it with hardening in mind. It might not make sense to use
the same design at all. For example, Intel MPX is much more oriented
towards usage in production, including for hardening.=

--=-L9t3eDSDYsdlMoWwwqBl
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJWxQuNAAoJEPnnEuWa9fIqGjkP/1E+HxQiyrCcOz5onZkUcek3
upS0GwSpc3Cm/cDiiQOIVHwcgZqEKjEZpjsUD3vbgPsoSzWkp5qVs+0dKn/A/Oq7
zI9qmwN2Mpt5+DuSF8ycIfgtM7FvuEIKPVjvk7ZpGzkTqcAJcJYjImxh0NvWLFQ1
dTyr8rTC+87H1l11mxtum/gNiJhG1L/3THEohi1kt2Ti3BfHC0CaG+fflO8gpLQr
uWx/SyBy/TG+vaL1q9qjlJvK99K7EomApO843zP9J6AeBErDugWy+agLw+9Zwvf3
QSsaQOxFuLO9lHwYgmJChzzUrqMYO+3m6/OPwtr7W3Q5/lZs10ehIFrRoXptYPAH
Nti3PQQ/4c6NN2zwVnDiqx1YMFkxFTu+7MQsgGCr+enRMifKc2dXM6eaVuAfUsNO
Obno++s4te8CyNU7lgFGdMV3AWThuSeazbo+LBn64OMAF2b6phzdyjFZXxPMtHe/
Rves5GPwb2it5CYd9xjK6aN2UqisPsZml3sFIpVPVAenHA1sPFgSqRQR2NM5+/8l
n0adjD+cZS0ThXz9K4bmfOLVn4a0BC1ct9BwX5Ts6UKId7qjG3Iisx9hK6m9zN+S
aguehyzSZuWZ2i0U3t2MCickbjd3sxiuu9yXQU/o6Q8x/L2Up4MyNyJLnHT2aTZi
nadpSnWQvsy5Eb29EPHw
=y4Pe
-----END PGP SIGNATURE-----

--=-L9t3eDSDYsdlMoWwwqBl--

