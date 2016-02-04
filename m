X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2536" "Thursday" "4" "February" "2016" "11:02:45" "+0100" "Andreas Stieger" "astieger@suse.com" "<56B321C5.40600@suse.com>" "65" "[oss-security] Re: Socat security advisory 7 - Created new 2048bit DH modulus" "^Cc:" nil nil "2" "2016020410:02:45" "[oss-security] Re: Socat security advisory 7 - Created new 2048bit DH modulus" (number mark "        astieger@sus Feb  4   65/2536  " thread-indent "\"[oss-security] Re: Socat security advisory 7 - Created new 2048bit DH modulus\"\n") "<20160202193606.7345E8BC044@smtpvmsrv1.mitre.org>" ("<20160202193606.7345E8BC044@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28596 invoked by uid 550); 4 Feb 2016 10:03:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28544 invoked from network); 4 Feb 2016 10:03:09 -0000
References: <20160202193606.7345E8BC044@smtpvmsrv1.mitre.org>
Organization: SUSE Linux GmbH
Message-ID: <56B321C5.40600@suse.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.0
MIME-Version: 1.0
In-Reply-To: <20160202193606.7345E8BC044@smtpvmsrv1.mitre.org>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="fFMQg4Q4G2hUIsTir4UiI53bS9rmQfEqF"
Cc: cve-assign@mitre.org
Date: Thu, 4 Feb 2016 11:02:45 +0100
From: Andreas Stieger <astieger@suse.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Socat security advisory 7 - Created new 2048bit DH modulus
To: oss-security@lists.openwall.com

--fFMQg4Q4G2hUIsTir4UiI53bS9rmQfEqF
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hello,

On 02.02.2016 20:36, cve-assign@mitre.org wrote:
> >   In the OpenSSL address implementation the hard coded 1024 bit DH p
> >   parameter was not prime. The effective cryptographic strength of a key
> >   exchange using these parameters was weaker than the one one could
> get by
> >   using a prime p. Moreover, since there is no indication of how these
> >   parameters were chosen, the existence of a trapdoor that makes
> possible
> >   for an eavesdropper to recover the shared secret from a key
> exchange that
> >   uses them cannot be ruled out.
>
> This was sent to the oss-security list as a published advisory, not as
> a CVE ID request. We would expect that one or more parties (e.g.,
> Linux distributions) are planning to re-announce this to a different
> audience in a way that would make at least one CVE ID especially
> useful. Our question is about whether anyone needs two CVE IDs.

SUSE acknowledges that one CVE ID would be useful for the "was not
prime" finding, and would not need a second CVE ID.

SUSE distributions, except for the openSUSE Tumbleweed rolling community
distribution, is not affected:
https://bugzilla.suse.com/show_bug.cgi?id=3D964843

Andreas

--=20
Andreas Stieger <astieger@suse.com>
Project Manager Security
SUSE Linux GmbH, GF: Felix Imend=F6rffer, Jane Smithard, Graham Norton,
HRB 21284 (AG N=FCrnberg)




--fFMQg4Q4G2hUIsTir4UiI53bS9rmQfEqF
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJWsyHLAAoJECzWqVXhWUVGK4UQAJiEDv8en+0msAX22YR/84zH
OSIvErnZ/INmMGeG8WRcbdFIwBt+i9b6R13OsczjM4FncPs+DLWRF84gOxVJ5uUR
IQ+j16s/o4h1VMKmWIGFJ3PtahVnI4GDgL52kyHMBSNWfnTzeJqz65+K2uF1UlNa
oO+/qSTzZwKrjd4i7Hvpe6F5rDyYBrqAir1ids1yV2mqAoF8B91tmL83jGuytmc3
bdPPA/b1OtuZ7ak+jEJJrz4dZhWT0TqgHGKK3iYFWKlv92FcalfpE6xNRXiquuus
oErnp/QGvocFiot+l/UO4O5fvIuiySrsCHfmi6igEqZrT8xI/w1d/CAVjVJbcgUA
fEyV9m8Aee8d8YYBsVK7+a2MNVDo+BKtHqGBQqx7yL7/9fDqcd4K8XQp7UfvhfaH
RNj29jcqW5mp2tRAKzEhLF0Svqmp4rJrlV02njBDuRwLmv+ARiT1mfVP4HrBL8hz
8GTWdQHAesfq5T8j7BTBiBc+TG00ucI8mp2zsCnSzx3YUAFGosb7yCIRrWmwAo0S
B+8ysNWa2+Laq7DUxmUUNr9nBKS9de/mfv+b1Rg1+qjrpGpkHk3h0bmfDksD6xXF
OSz07q/nFgxW6PBq/wTvISHnD0MZpvkcMcLmJyEUnQCo30ikcFHU8rhmqMGT1gKi
2qDGD929xyWI4rJ/1xfS
=CibR
-----END PGP SIGNATURE-----

--fFMQg4Q4G2hUIsTir4UiI53bS9rmQfEqF--
