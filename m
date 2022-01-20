X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1348" "Thursday" "20" "January" "2022" "20:41:24" "+0100" "Kim Alvefur" "zash@zash.se" nil "38" "Re: [oss-security] Prosody XMPP server advisory 2022-01-13 (Remote Unauthenticated Denial of Service) (CVE-2022-0217)" "^Date:" nil nil "1" nil nil (number mark "        zash@zash.se Jan 20   38/1348  " thread-indent "\"Re: [oss-security] Prosody XMPP server advisory 2022-01-13 (Remote Unauthenticated Denial of Service) (CVE-2022-0217)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Prosody XMPP server advisory 2022-01-13 (Remote Unauthenticated Denial of Service) (CVE-2022-0217)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15876 invoked by uid 550); 20 Jan 2022 19:42:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15632 invoked from network); 20 Jan 2022 19:41:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=zash.se; s=2021;
	t=1642707692; bh=/je3UKHOUxJlNc9h48YWtMlbWRALmTJYEpsj2m1QwCc=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=ObQdooNwQSd6hy7AgCa4pkyL/dA9xQzZmloikSeXlUYU1X95E0mNwS3watf1peGk9
	 XU0eisxWiAtD7PUNHdP2TAZ/20zGB5MhLLsofnAsfy2jxWehktAxY5XmNVMGNTKDWF
	 3ZIZ5oHvfZBryEVpQNMlNBJcsshlOWt1TSRZg+4JgkhpNKbqTASf8DCzbe7UcA5PaF
	 8/aGEeAEwLEA2rfXDKCv6BJZ6fwfJtdgzfvIQOAh1vwlmD1xptyt36kj7VNFxAAKgE
	 PwoICN9GE4rk2vJzM+VB2f5BQ/bl07zf8X6gVpLfpaV4+Fgt7zfJNS6AM3eipg0/Qf
	 WMmGiIuFbr9mw==
Message-ID: <Yem60C2ibSoIyAMt@carcharodon.zash.se>
References: <2193597.LkMCQtBBq3@sinistra>
 <5010537.PsH9TYb4DV@sinistra>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5DEcSs1hcLcinORQ"
Content-Disposition: inline
In-Reply-To: <5010537.PsH9TYb4DV@sinistra>
Date: Thu, 20 Jan 2022 20:41:24 +0100
From: Kim Alvefur <zash@zash.se>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Prosody XMPP server advisory 2022-01-13 (Remote
 Unauthenticated Denial of Service) (CVE-2022-0217)
To: oss-security@lists.openwall.com

--5DEcSs1hcLcinORQ
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

The fix for this issue introduced a regression in the from of a memory
leak (of the unintentional reference variety, not a true leak).

A fix for can be found in this commit:
https://hg.prosody.im/trunk/rev/e5e0ab93d7f4

--=20
Regards,
Kim "Zash" Alvefur

--5DEcSs1hcLcinORQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEPlIRnvhTxZZ4279rre2ad7Z60ykFAmHpuuQACgkQre2ad7Z6
0ylPUA/+Jl70ctLXvJPTTVoIy4b/YJ5+O+2nb3WfJqmh2Gw6qAzybl0Je9lRFOUL
hER8FTjTr9ouwYAJt2Rz5dcERA+yn77IJg+l6GWjTPlx9L33/raFC6gwZd5T/r1T
3waszcyJKEk2gCbJZtye8UfTysv6e7cKWjzQZ2HynQXJCoDZNONFR4TN5vGFUOBU
rnpdi4LAG74IqOh5pPzkBDVtj2zbKfFgz/TmmURt1osUvSMH1Oxh4/klXSJt2l/i
JNTMRnsAfcJzwZ82xCbXFG1x8MyWCAqqNpgHhAfRcwk6nTINPrJjgfqLqRcbamNZ
E4DE5OkOFTnVvbeDwYNkwZ+aeGVpo8yFYVk7NFqHmB322KCKIhct22G9wv1XlaKT
KW9I04OkWCnoulKpoYPRH39qBNKeQMNsmBBbWFWlaqxIi+HESYelBkZJ4ZCsnYkR
CcaCEh22r0fYNWRe8WNc5ZB/+aPYcN3EvFoRR3xhbStamVXA6LfRvQ4iqqNMgGgY
8vh1vm9HwuuGlExAuZfx54Nmlb+AYVC0lSP6PGhnFBfBdHcgv2S4UJNmc99flBp3
DS8tz6tOx4jhUmwnCQRnZOp0JW6Ed1BlgAgYjmUOIfzUn/hEc7ogfcBOtm6nHdo7
/GIzkw+tpEWfDVB42CO3bJALMUn/EbZuG7oF+8gFCjXF/NIjvtY=
=9NaB
-----END PGP SIGNATURE-----

--5DEcSs1hcLcinORQ--
