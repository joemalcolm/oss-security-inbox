X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2335" "Friday" "4" "November" "2016" "14:59:46" "+0100" "Kristian Fiskerstrand" "kristian.fiskerstrand@sumptuouscapital.com" "<16a1c14b-1402-3eab-4e2c-44aa75192d8b@sumptuouscapital.com>" "59" "Re: [oss-security] Re: [SECURITY ADVISORY] IDNA 2003 makes curl use wrong host" "^Cc:" nil nil "11" "2016110413:59:46" "[oss-security] Re: [SECURITY ADVISORY] IDNA 2003 makes curl use wrong host" (number mark "        kristian.fis Nov  4   59/2335  " thread-indent "\"Re: [oss-security] Re: [SECURITY ADVISORY] IDNA 2003 makes curl use wrong host\"\n") "<20161104114855.GA13029@hurricane.linuxnetz.de>" ("<40eb0cc31307456c8bd21fa16e044f90@imshyb02.MITRE.ORG>" "<alpine.DEB.2.20.1611040816000.375@tvnag.unkk.fr>" "<20161104114855.GA13029@hurricane.linuxnetz.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32147 invoked by uid 550); 4 Nov 2016 14:04:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28460 invoked from network); 4 Nov 2016 14:00:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sumptuouscapital-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:cc:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=yLqKZQQkxHtaReM3pQOrr6iNeYMRNxQ8BymNCBPLUNY=;
        b=Hk4Xm/biCRbigzYPxUw3HKxnAkBC5G89kzFqwuAI23hha9wwQQUxGhaUd2QcTbF1M5
         w5h6fjn2AnAFtku3H3OVrUb8RFqBG4NQJMf9h2ilPs5H7c6RTlcNpRn8Cu5QAtTtUmKX
         eY7sH30a0GOzKvnSTL96AipGzqUFgAOamAPUshxORyVOJYPHajZ6wzbHHkB4mePQfjQF
         bYh6p7j+7kqr01M30S+tj6ZIF6Q8Iws/BtYOpMOtDe5xEVSexUoyg0aTqbYYR4dOY/mG
         eULAPnTW/a92BVLpQ7v49HowQI+feArJ6eDYQYxuPYQIQ5x7YEjsmQgck7UozS3ffJLZ
         DNPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:subject:to:references:from:cc:message-id:date
         :user-agent:mime-version:in-reply-to;
        bh=yLqKZQQkxHtaReM3pQOrr6iNeYMRNxQ8BymNCBPLUNY=;
        b=eOcFh1/MzB/AJ74EM0cQdXr9upVIG4kFAbxTn6g4VwXkR2SjSnMYxyyHc1Qw82SVej
         teqczaJlLZdLSRDLvBDggs+TiyE0EOGMZFMnT7itOLHGOBbDzaGyWSZCs6U1OeZcJiZU
         GNEKC+IjTgPQp4SzxH0856bjq1aN5ZbYHz1Qu8oAuaxjsLdqJnW5Yhk25+iWhnlwXl1P
         5ShcRHHYCWMiLlGXfNDwPxXZdk+o0PEeB6uFSEAWCR1TwC9cWtvlqCnYa/T1rf1rP2Xb
         7vopNWBqV4eNuyNpQ4bolbv6SBrbc6kU6j2iSwpJnhBw6AxCliA6vx3DBzlz0gYVoT3A
         5W+Q==
X-Gm-Message-State: ABUngvf9cVOubyC5TGDVVVDkhtyHi6wWgyfCU/7kAmwXmNn0/jrFSpLCNlSC+z2tVqUMFg==
X-Received: by 10.25.215.208 with SMTP id q77mr4432400lfi.126.1478267989460;
        Fri, 04 Nov 2016 06:59:49 -0700 (PDT)
References: <40eb0cc31307456c8bd21fa16e044f90@imshyb02.MITRE.ORG>
 <alpine.DEB.2.20.1611040816000.375@tvnag.unkk.fr>
 <20161104114855.GA13029@hurricane.linuxnetz.de>
Message-ID: <16a1c14b-1402-3eab-4e2c-44aa75192d8b@sumptuouscapital.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <20161104114855.GA13029@hurricane.linuxnetz.de>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="BDgp1EI5WuOgv6cA4uFkIoMSaDX7PGaX9"
Cc: oss-security@lists.openwall.com
Date: Fri, 4 Nov 2016 14:59:46 +0100
From: Kristian Fiskerstrand <kristian.fiskerstrand@sumptuouscapital.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: [SECURITY ADVISORY] IDNA 2003 makes curl use
 wrong host
To: Robert Scheck <robert@fedoraproject.org>

--BDgp1EI5WuOgv6cA4uFkIoMSaDX7PGaX9
Content-Type: multipart/mixed; boundary="pPvPwKoE5iae1ip2mnu2sMAcNhXL51AQG"
From: Kristian Fiskerstrand <kristian.fiskerstrand@sumptuouscapital.com>
To: Robert Scheck <robert@fedoraproject.org>
Cc: oss-security@lists.openwall.com
Message-ID: <16a1c14b-1402-3eab-4e2c-44aa75192d8b@sumptuouscapital.com>
Subject: Re: [oss-security] Re: [SECURITY ADVISORY] IDNA 2003 makes curl use
 wrong host
References: <40eb0cc31307456c8bd21fa16e044f90@imshyb02.MITRE.ORG>
 <alpine.DEB.2.20.1611040816000.375@tvnag.unkk.fr>
 <20161104114855.GA13029@hurricane.linuxnetz.de>
In-Reply-To: <20161104114855.GA13029@hurricane.linuxnetz.de>

--pPvPwKoE5iae1ip2mnu2sMAcNhXL51AQG
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 11/04/2016 12:48 PM, Robert Scheck wrote:
> For those who didn't notice, Florian also started a German thread on the
> public DENIC mailing list (https://www.denic.de/en/service/mailing-lists/)
> about exactly this topic (I'm not sure if there is a public archive).

I believe the archive should be at
https://www.denic.de/service/mailinglisten/public-l/ , although it
doesn't seem updated since april (although if low volume and the
discussion was started today it might only be updated infrequently)

--=20
----------------------------
Kristian Fiskerstrand
Blog: https://blog.sumptuouscapital.com
Twitter: @krifisk
----------------------------
Public OpenPGP keyblock at hkp://pool.sks-keyservers.net
fpr:94CB AFDD 3034 5109 5618 35AA 0B7F 8B60 E3ED FAE3
----------------------------
Nil desperandum
Never give up


--pPvPwKoE5iae1ip2mnu2sMAcNhXL51AQG--

--BDgp1EI5WuOgv6cA4uFkIoMSaDX7PGaX9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJYHJRSAAoJECULev7WN52F3EwH/093TTmfos9vjEDTueMkTwcz
VfKeYIy3SiAl3r0nCQDVNjF7D912rJl9Fj3IWB8DrH1pQCiPCnIjOLt+dl8vTwA4
mHB3ia9qop+3bffKy4I8/tTov0blq9jNJzgKmJ/EdsyAWlbEe5zUmybPA0JPfuDG
jUHVuuKE6IYElzDAmpUBPyZgaI06pExvT1/3Hj0/sRu9fdCJFjYxHsHrRJRxstKr
IiQmJ6im1z6lcDci6QtWw5nIioEWeJ9Hx0Q3SjYB0d0+eZmZG/ekDSnAzB0qBTLg
vpHKIcoxp1k2Wq3LAAVuHC455Z9KaWi00pRt5ZX4ptXQfpYy1ZSz3t6pD+AHX84=
=CEDC
-----END PGP SIGNATURE-----

--BDgp1EI5WuOgv6cA4uFkIoMSaDX7PGaX9--
