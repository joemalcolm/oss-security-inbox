Received: (qmail 18261 invoked by uid 550); 14 Nov 2023 19:23:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13759 invoked from network); 14 Nov 2023 19:19:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=ipsumj.de; s=js1;
	h=Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID; bh=DOC/t+TNsMLFvCJKkz32HrRGfRUnNe1xX65NhCQ3qPY=;
	b=k+r2JwceJEp/L2naY8b5sf4zwY+QQzwSbfxZ4J5xj+yPOfIZ1CUwdZ2D1u8Q9y3T/7SgeIDg/cX5URSU5KlObR+hb/tmv6R7OzvauKPZ0Kzv7c05mkWH3ZXk4QCMMByUsGIrAYiebvnt5s26K6nl+Yx2Y+i5+LYcW7Sc+SgQN0FkX2YTwiw0YXG2ZEtpqC6XoQGzIAQgZqTPPu67UBhvxyv8KRJgrY+aaZFUrfEMNj+iABuyHsbUhpALKohdbLYzEDVVBgsGghUy77HPPR8GKYm4kXqaLF0Qrm+hIii5YaHFVT1adExPgC0/bDHws/41RGKsywyX5Ioj+oVPMxg3BW4cDEL78C8DmZUYUwSTnugsWwpm2sQCxD05TOcfDM2+wCQLkQQzOgzYEiTDZ2QY4zTmQwEJgJR8sJNkhG8Z/OeQj3UqGO8kaoGbAZtL5AOfNC90unH3yTz6AyulTUDYPBzLyhsv39r1hjlmmqEDZuxFN01cDEwrJ4yrfg+vjWDbGFgWOsiy03qJBrlMQCdmnObz4/TdmJujWtV5cYIKTjXrKpsl4d7ayFpMW8g1EUOd5D+S3bMxt4PRr+/EdO7EHOEdiz3gp79jnv/MCF9X9CZ7huoxn/2YenJ5MDgJsDzn34X2MwHXVX/kW8vsza/xmjFDN5J7iPZ8y5FgQFVfixc=;
Message-ID: <7a2b4406-6f0e-4e4f-be43-a0ec27404063@ipsumj.de>
Date: Tue, 14 Nov 2023 20:19:05 +0100
MIME-Version: 1.0
To: oss-security@lists.openwall.com, Solar Designer <solar@openwall.com>,
 Antonio Gomez Iglesias <antonio.gomez.iglesias@intel.com>
Cc: Tavis Ormandy <taviso@gmail.com>
References: <ae728a21-91d5-463d-9f54-44186a01253d@intel.com>
 <20231114190713.GA11191@openwall.com>
Content-Language: en-US
From: HW42 <hw42@ipsumj.de>
Autocrypt: addr=hw42@ipsumj.de; keydata=
 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
In-Reply-To: <20231114190713.GA11191@openwall.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------U5f3Tiyf1iLk2DECpKtyQBJ1"
Subject: Re: [oss-security] CVE-2023-23583: Intel - Denial of Service -
 Privilege Escalation (Reptar)

--------------U5f3Tiyf1iLk2DECpKtyQBJ1
Content-Type: multipart/mixed; boundary="------------HeHS3095mRt2clu1sjHgMbG0";
 protected-headers="v1"
From: HW42 <hw42@ipsumj.de>
To: oss-security@lists.openwall.com, Solar Designer <solar@openwall.com>,
 Antonio Gomez Iglesias <antonio.gomez.iglesias@intel.com>
Cc: Tavis Ormandy <taviso@gmail.com>
Message-ID: <7a2b4406-6f0e-4e4f-be43-a0ec27404063@ipsumj.de>
Subject: Re: [oss-security] CVE-2023-23583: Intel - Denial of Service -
 Privilege Escalation (Reptar)
References: <ae728a21-91d5-463d-9f54-44186a01253d@intel.com>
 <20231114190713.GA11191@openwall.com>
In-Reply-To: <20231114190713.GA11191@openwall.com>

--------------HeHS3095mRt2clu1sjHgMbG0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Solar Designer:
> On Tue, Nov 14, 2023 at 10:31:51AM -0800, Antonio Gomez Iglesias wrote:
>> Name of the issue: Redundant Prefix Issue
>>
>> Description of the issue
>> Under certain microarchitectural conditions, Intel has identified cases
>> where execution of an instruction (REP MOVSB) encoded with a redundant
>> REX prefix may result in unpredictable system behavior resulting in a
>> system crash/hang, or, in some limited scenarios, may allow escalation
>> of privilege from CPL3 to CPL0.
>> This Redundant Prefix Issue is assigned CVE-2023-23583 with a CVSS Base
>> Score of 8.8 High CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:H/I:H/A:H.
>>
>> Mitigation
>> Intel is providing a microcode update to mitigate this issue: https://gi=
thub.com/intel/Intel-Linux-Processor-Microcode-Data-Files/releases/tag/micr=
ocode-20231114
>=20
> Thank you, Antonio!
>=20
> Here's a writeup and reproducer tool by Tavis Ormandy:
>=20
> https://lock.cmpxchg8b.com/reptar.html
>=20
> The GitHub release page above links to Intel security advisory:
>=20
> https://www.intel.com/content/www/us/en/security-center/advisory/intel-sa=
-00950.html
>=20
> which specifies what CPU generations are affected (from 10th generation
> Intel Core or 3rd generation Xeon Scalable to current), and links to a
> table with "an exhaustive list of processors" matched against this issue
> and previously disclosed issues:
>=20
> https://www.intel.com/content/www/us/en/developer/topic-technology/softwa=
re-security-guidance/processors-affected-consolidated-product-cpu-model.html
>=20
> It also says "Please refer to the technical paper here for additional
> information", where "here" is a link supposedly to "the technical
> paper", but it's a non-existent page currently, so I'm not posting the
> URL yet (not sure if it'll stay the same when the page is published).

I think that link should point to=20

https://www.intel.com/content/www/us/en/developer/articles/technical/softwa=
re-security-guidance/advisory-guidance/redundant-prefix-issue.html

This one can be found in the affected processors table.

Simon

--------------HeHS3095mRt2clu1sjHgMbG0--

--------------U5f3Tiyf1iLk2DECpKtyQBJ1
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEqieyzvOmi9FGaQcT5KzJJ4pkaBYFAmVTyCwACgkQ5KzJJ4pk
aBbDug/+OebPWCyuuvxpXHP+9xaXAcre2/aMymg4OXBH24rwIqelHgC01qPxnTjq
G8qh7UNJLK0bxBHCynBGfvufNuTxFLIoD/kFdoXSVP+OI73e9pFQDDTzaQ1YjIXc
mDxsf88DZIkkIPmOsH5538XWjj0xRVut1CZREb+3V2te+LxUK4wHq2CqNy8ixDrQ
6sfkEpbVEgHyd4L838tR7rULEF+7Tqo9X/1IasmXdA5f/+5M27K1zRitJ9AyVNNV
lHz0orEvGgMKilX32qQoA2Jw+srHrqb0sIdxIl6kQKlQmFRZT3fPG5BIFHjrj/Zd
lPN0ENZ454ojHDQBHoNn4VM2FZO/9dELfVn+Qn05+xJSqoBlaAMyk7Sp54vd3Vow
qtVBwvnbhQIgG3ntnYWd8tkZ2qUP+0ruy+XnkhVx5YfOdu3ob0IoWRXwxzojc8tw
rTgRDi2nVj2jSGp53wpV3TgjZhGUkrRjeGFAhecYle+9Drd2FJon1h1EMlz7+cLp
J03RGpkOlVVxCUuyxl5IVY3HESQXaQsPvOxt4c2ckhKfdvv8jeRfckD/fAnsDRmO
aW2VBCHFgjHOFc12kISjnYhjiXNUBe+FCQmJcDrqNsQEofnyvU/WTt+3QhtxaWhl
JSHoA10qWqn9aoDTPdB+/EN5a0LMb97dEZoIBc60BTcPdxciI1I=
=nHwm
-----END PGP SIGNATURE-----

--------------U5f3Tiyf1iLk2DECpKtyQBJ1--
