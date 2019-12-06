X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2765" "Friday" "6" "December" "2019" "16:07:21" "+0300" "ValdikSS" "iam@valdikss.org.ru" nil "70" nil "^Cc:" nil nil "12" nil nil (number mark "        iam@valdikss Dec  6   70/2765  " thread-indent "\"[oss-security] Re: [CVE-2019-14899] Inferring and hijacking VPN-tunneled TCP connections.\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: [CVE-2019-14899] Inferring and hijacking VPN-tunneled TCP connections." nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25877 invoked by uid 550); 6 Dec 2019 13:37:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14185 invoked from network); 6 Dec 2019 13:07:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=valdikss.org.ru; s=google;
        h=subject:references:cc:to:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=SavKa9L0BL2eS1jxCeY6Ui5zOh07XTz0xMVT5gz/KJw=;
        b=nMSKB4b/SReSR9Q1OVANGq/WfNXJMl2ZMTwCOa2fVrCkhZ03b/L0DP6iCv5lSR1jLS
         vUyPNhXLSzaNLB811sKCSUUWupggbmtlec9y7hr4CFD/nUxRNr6q3JpRjOCmsRGvNVRx
         1QozFWBdu1X2R7Ve3RgrFjR/fOOofHsYgOj8E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:references:cc:to:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to;
        bh=SavKa9L0BL2eS1jxCeY6Ui5zOh07XTz0xMVT5gz/KJw=;
        b=CfZYMVdzDt7LfHF+6RVPkwwWxrM6rQhiCHDVGI584go+SmpFRWPIpMj/coiwWRjgYi
         ld8OdzuO2h7ZZnimpJGMTvJjNq7yb5kanGMF9sYKDJdCzMfVDaHUpgRjk5c+9ikxqkMK
         Nv4rAEuqf35TBcLz6+xhZvV2e0yE5yYmbvP8h2+f91vuFd6mtWP7TB8y9k2rBF0hQVwi
         Sl60ykpwNr6VBx1lA7rzKAav0xf2rtvj8tSQB1TjAZV++A2MHv2gxfHmnb1sQpXQV8aV
         TALuCd6DQ4IRLNE8CPMpIy8e6qU30x7vVoYJ5Z9y8q24ePXA9pqDjTzkOjcw156cIibH
         dLtA==
X-Gm-Message-State: APjAAAWwuKNpxJYahkjrLpvrTqeS6w3pJZxZRT3j9+Tg8dghXRoDU2+w
	9AFyslW8CpNnnaOptMxGcXrvPw==
X-Google-Smtp-Source: APXvYqzTvhw9Xd45zyVeFa1u2k5fOI/i1lTVTOCy2Cq1a+9Vk1vt1F7Tcgb1GW/6ejsON//zw+1lng==
X-Received: by 2002:a1c:4e03:: with SMTP id g3mr11062269wmh.22.1575637643687;
        Fri, 06 Dec 2019 05:07:23 -0800 (PST)
References: <x1-RV+hh15HfGRZMhxOex4VSsUoLvw@gwene.org>
Autocrypt: addr=iam@valdikss.org.ru; prefer-encrypt=mutual; keydata=
 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
Message-ID: <882addbe-cea2-96c3-f59a-b79607884403@valdikss.org.ru>
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:60.0) Gecko/20100101,
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <x1-RV+hh15HfGRZMhxOex4VSsUoLvw@gwene.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="f9J6GcQdhNaH9Hr7VoRC9cilqXl6mlMB2"
Cc: "William J. Tolley" <william@breakpointingbad.com>,
 Noel Kuntze <noel.kuntze+oss-security@thermi.consulting>
Date: Fri, 6 Dec 2019 16:07:21 +0300
From: ValdikSS <iam@valdikss.org.ru>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: [CVE-2019-14899] Inferring and hijacking VPN-tunneled TCP
 connections.
To: oss-security@lists.openwall.com

--f9J6GcQdhNaH9Hr7VoRC9cilqXl6mlMB2
Content-Type: multipart/mixed; boundary="FkligpfEIORc8tZYA6icgG4oxRGPH0fAy"

--FkligpfEIORc8tZYA6icgG4oxRGPH0fAy
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Please also check my article on this topic from 2015
https://medium.com/@ValdikSS/another-critical-vpn-vulnerability-and-why-por=
t-fail-is-bullshit-352b2ebd22e2

I used the same technique but with UDP, and it works (at least worked) with=
 Linux, OS X, Windows and Android.

I used it with old p2p Skype, which allowed to get users' IP address using =
special "resolver" software or services,
by user nick name. After getting IP address, you could send UDP packet to t=
he user from your IP address (without
spoofing) and receive the reply from Skype user, but with VPN source IP add=
ress, which allowed to detect
whether the exact Skype user is connected to the VPN, and to which one, giv=
en that his connection is direct (without NAT).

This also (still) applies to Bittorrent uTP protocol.


On 05.12.2019 05:38, unknown wrote:
> Posted by William J. Tolley on Dec 04
>=20
> Hi all,
>=20
> I am reporting a vulnerability that exists on most Linux distros, and
> other *nix operating systems which allows a network adjacent attacker
> to determine if another user is connected to a VPN, the virtual IP
> address they have been assigned by the VPN server, and whether or not
> there is an active connection to a given website. Additionally, we are
> able to determine the exact seq and ack numbers by counting encrypted
> packets and/or...
>=20
>=20



--FkligpfEIORc8tZYA6icgG4oxRGPH0fAy--

--f9J6GcQdhNaH9Hr7VoRC9cilqXl6mlMB2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: https://keybase.io/verify

iQIzBAEBCAAdFiEEMiogvXcpmS32v71gXNcgLu+I93IFAl3qUokACgkQXNcgLu+I
93K5YhAAkFnRMQrxH1GIYwqzFR6KdBarngtSBGfM8nCjA03eytM1ds15yplDcX+7
7ljoBbc7xIMonpF3Vh9jEE8uOFV1CsG/6/qmSibNsaEJe1mUCi/8hUkN1IVk3GmO
iXH1kEJuBemmhmNt7FZJdu7xGBYKm5WUVe6/6mM5CAgeTa5cjX9cEEiwa49YLb7a
aa48ltIuDYCNwwG23j06+GbOk6CqlNkomv4GuuPShgypBYlBYYYG9D2v4ScKYmhl
9mZEnd7U6jTBedCY833zb3i0RDhg5HZm2qCLJPwz9mvp0nDem1Qv8v22sVTl/++r
X3bcpdaN9GwM2nUnmZJ/BPysbG/cVFyi+/KdKprFQt8nSeyWvRlKb/X/azgd1Gom
3JvmywHjIKOj4CSpYZ4PmX0sXpV9kjnAswuLOw4Aa7xOe4fG/dAZK0e8jMUn1NCp
7PK7vEw+IPGaB0m4Z7J91gdcwMioYhqTHIijjZEHc6Uk7djq4mGoDLo0MkB8AReP
z3QAoVtKEMc7uaQfjE9jSplnqkW4AtPjE34+YD4x523umkE/sDA2FfK6IN2N2nlN
iUWIEp0rE8GzitfPHjUlhuuNv/w/2Dc20DG5+sjELqTsuAFUAkVD9KbHmuR5BFc5
dyxkJuHh+kREDnJC7D8Lml5HfJ3ZRUkY8v8jEYC+AuR0f11JyI4=
=XLD8
-----END PGP SIGNATURE-----

--f9J6GcQdhNaH9Hr7VoRC9cilqXl6mlMB2--
