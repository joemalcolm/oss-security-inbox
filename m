X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1620" "Saturday" "4" "June" "2016" "03:07:56" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<1465024076.32327.17.camel@gmail.com>" "38" "Re: [oss-security] Re: expat hash collision fix too predictable?" "^Date:" nil nil "6" "2016060407:07:56" "[oss-security] Re: expat hash collision fix too predictable?" (number mark "        danielmicay@ Jun  4   38/1620  " thread-indent "\"Re: [oss-security] Re: expat hash collision fix too predictable?\"\n") "<20160604025647.D1D406C00F8@smtpvmsrv1.mitre.org>" ("<20160604025647.D1D406C00F8@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1764 invoked by uid 550); 4 Jun 2016 07:08:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1742 invoked from network); 4 Jun 2016 07:08:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:subject:from:to:date:in-reply-to:references:mime-version;
        bh=+Wo3BO/oFJxVjvkzTCVk+GZYL2qKV3omiYYZWZTY69g=;
        b=tYgt2LVvQuc8lHp5bLRQNHZkwL4Dg6U5tQoc413hRU+3kO4pbgYrfpUHQZywElkY7Q
         tZCC1KS/ZBUg97FTQJDLDHuY+gmMDeh3uINN65gEM+B/iTKFMdWNfptSfRK/vN44AfEN
         R5+GV4oQlJY6LVJXa+G+Z7ibbmlMve4XTD2nEaLsiwzjJK5C1g6rRCwpDPAINLs9JN5p
         5C+ila6CdyorhnbnJIwcGBEgrRO2uaz7168hD+BL82/+CyHuKut7DTsN4amw0peuJYbG
         mpZQxZ4/hnzMj8XykBivwjlw4wXC3nT+brqnMMdIqbUMezFlob+jpV1M3dYQYbzCuHvs
         oHJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:mime-version;
        bh=+Wo3BO/oFJxVjvkzTCVk+GZYL2qKV3omiYYZWZTY69g=;
        b=RoTftaELahBVu1pvFz1tsM2QsNRuApxZHqLfhiQV2akLeZE6zGnPIROPqwfQtCjFjd
         HCfjB/BknUQ4Q2Rk+efNx2Pc+Qxaj86D2ya1J4g6Zo/rcs/nZGQh33Ep+8VPcKkcWMyf
         2taPq8evdDr78p/DBYUyg1qwsRzR0mLi47BV5U+/2OVNrjWFyUERoHyTxR/cl74jC7v/
         zpLRvu37WMYXLuilDXTq12xeG1fejv8UI1Dx41PBjLQYlCImnsDtfCqXRqipfv/e8yQb
         s1gDjPCkRDUOfn7REiBdcA92h4mw4dtdqo+UqJ64qmJY1E5QEb86HkGGCC26v5btfNsK
         hYNw==
X-Gm-Message-State: ALyK8tKOVhmES8KSp3JSGiRlaoGu4qGn6+fvJX8v3eMi7aLVfmd1cq4ETMjK1xPK9L2gVg==
X-Received: by 10.36.112.199 with SMTP id f190mr4322800itc.6.1465024085060;
        Sat, 04 Jun 2016 00:08:05 -0700 (PDT)
Message-ID: <1465024076.32327.17.camel@gmail.com>
In-Reply-To: <20160604025647.D1D406C00F8@smtpvmsrv1.mitre.org>
References: <20160604025647.D1D406C00F8@smtpvmsrv1.mitre.org>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-vPgYa2lFj0j9NN9y6WmW"
X-Mailer: Evolution 3.20.2 
Mime-Version: 1.0
Date: Sat, 04 Jun 2016 03:07:56 -0400
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: expat hash collision fix too predictable?
To: oss-security@lists.openwall.com

--=-vPgYa2lFj0j9NN9y6WmW
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

It's quite questionable for libraries to be calling thread-unsafe
functions like rand or strtok at all. AFAIK, expat is supposed to be
thread safe and is used in many multi-threaded applications.

A proper hash DoS fix is using a CSPRNG to generate keys for a keyed
hash with meaningful security properties, like SipHash. It's usually
done very poorly, and the quality of the RNG doesn't matter much if key
independent collisions can be generated for the hash function anyway.=

--=-vPgYa2lFj0j9NN9y6WmW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJXUn5MAAoJEPnnEuWa9fIq0qUQAJUISqcfAKM+veZrT78UxuDS
d16c7bOyuA08hlL+9AE7mcAtt7REjGQR5G5UA6pmHXxTes7WzDJnxb4S+VMG5vJy
LsXeioAbpHN4VkNTHVJ7wTqd57/nDC+7vFpQe8vsPsASyWUbjOEQV9enGnYmEWyV
YVZEVPnfKThQTLiibQioTroAHFljjWFUZWei4Ddg6DdR4uipM72isKJZBqMNm0MH
LU+3z0xfaWM0vihV+YyjcIa4OESsGp9y+HNA39Vg+s5ErMjlaEZpKM7Zg0DtIPmc
0LLz40oX1ItXFCem5xKgkmbN5t3sJVCNAfha+7TyLoKgWdz0u5VA96ktxL/N79eu
P0BJ6HECyZD+XKOuP0zhJsdj47qOCt6o2N7t4VVkz76bpW4kpoMyJ99sb4E8ODYh
nh1H2PvPrKCjyDBw6GNOXveN9F7KI+781Y6V5SmtlC6oo/ET2VG476EZCRYeNwqu
ZYLIU1MfsehtQ0E5nO2WLmCjY1TYcVlf32EzUZ063WV/X4FmawwD3w7ZuUszbtaa
5qTMp3ubv2JLCJUCoJucoLLUldVoxg4JLD+ZVQlySmILrTHWyXbpY79slx04ZnMK
jy5e8y71DxUbaQ+pF1mHzDz6A9gOdxKNNiMsehLFzTP7Lk54B0/UBL7mxlsloTNF
a1rFJfTlRy5BU7xnvHSX
=FZfl
-----END PGP SIGNATURE-----

--=-vPgYa2lFj0j9NN9y6WmW--

