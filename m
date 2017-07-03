X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2919" "Monday" "3" "July" "2017" "14:35:55" "+0200" "Kristian Fiskerstrand" "k_f@gentoo.org" "<49733f26-1060-6e15-5595-204269483f97@gentoo.org>" "72" "Re: [oss-security] accepting new members to (linux-)distros lists" "^Date:" nil nil "7" "2017070312:35:55" "[oss-security] accepting new members to (linux-)distros lists" (number mark "        k_f@gentoo.o Jul  3   72/2919  " thread-indent "\"Re: [oss-security] accepting new members to (linux-)distros lists\"\n") "<CA+aC4kuK7Cqhn3iRvAC7yoqDNBMUM2ekZEnc3gXtTcpY=vBRHg@mail.gmail.com>" ("<20170628200239.GA25525@openwall.com>" "<CA+aC4kuUKG4CndFjbT=+LSctTXL=Xfrfze6ZE3ZCp7XCHM5OQg@mail.gmail.com>" "<647ec3a7-f2f0-b090-007a-65286b815fa0@gentoo.org>" "<CA+aC4kuK7Cqhn3iRvAC7yoqDNBMUM2ekZEnc3gXtTcpY=vBRHg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1929 invoked by uid 550); 3 Jul 2017 13:11:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7169 invoked from network); 3 Jul 2017 12:36:17 -0000
References: <20170628200239.GA25525@openwall.com>
 <CA+aC4kuUKG4CndFjbT=+LSctTXL=Xfrfze6ZE3ZCp7XCHM5OQg@mail.gmail.com>
 <647ec3a7-f2f0-b090-007a-65286b815fa0@gentoo.org>
 <CA+aC4kuK7Cqhn3iRvAC7yoqDNBMUM2ekZEnc3gXtTcpY=vBRHg@mail.gmail.com>
Message-ID: <49733f26-1060-6e15-5595-204269483f97@gentoo.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.0
MIME-Version: 1.0
In-Reply-To: <CA+aC4kuK7Cqhn3iRvAC7yoqDNBMUM2ekZEnc3gXtTcpY=vBRHg@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="sQ1kPWWIMdCPiH7GfSIh36nvCqSOLMJrQ"
Date: Mon, 3 Jul 2017 14:35:55 +0200
From: Kristian Fiskerstrand <k_f@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] accepting new members to (linux-)distros lists
To: oss-security@lists.openwall.com, Anthony Liguori <anthony@codemonkey.ws>

--sQ1kPWWIMdCPiH7GfSIh36nvCqSOLMJrQ
Content-Type: multipart/mixed; boundary="q0o1FbdEuWmF0kc4QR3UqpAC1RqNccgO7";
 protected-headers="v1"
From: Kristian Fiskerstrand <k_f@gentoo.org>
Reply-To: k_f@gentoo.org
To: oss-security@lists.openwall.com, Anthony Liguori <anthony@codemonkey.ws>
Message-ID: <49733f26-1060-6e15-5595-204269483f97@gentoo.org>
Subject: Re: [oss-security] accepting new members to (linux-)distros lists
References: <20170628200239.GA25525@openwall.com>
 <CA+aC4kuUKG4CndFjbT=+LSctTXL=Xfrfze6ZE3ZCp7XCHM5OQg@mail.gmail.com>
 <647ec3a7-f2f0-b090-007a-65286b815fa0@gentoo.org>
 <CA+aC4kuK7Cqhn3iRvAC7yoqDNBMUM2ekZEnc3gXtTcpY=vBRHg@mail.gmail.com>
In-Reply-To: <CA+aC4kuK7Cqhn3iRvAC7yoqDNBMUM2ekZEnc3gXtTcpY=vBRHg@mail.gmail.com>

--q0o1FbdEuWmF0kc4QR3UqpAC1RqNccgO7
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 07/02/2017 10:58 PM, Anthony Liguori wrote:
> On Jul 2, 2017 1:38 PM, "Kristian Fiskerstrand"<k_f@gentoo.org> wrote:
>> The immediate thought that springs to mind is the [lack of OpenPGP
>> support in bugzilla] which makes it difficult to ensure confidentiality
>> unless disabling all email warnings.
>=20
> I would just assume all email is disabled.  I don't know of a tool that
> does this right so for security sensitive things, I think disabling email
> notification is a best practice.

It wouldn't take much to have a tool that does, mainly what I outline in
the previous post to ensure OpenPGP keyblock management for the
individual users, and as an extension of the scope for that perhaps a
[MemoryHole] implementation to ensure confidentiality / integrity
verification of the RFC822 headers such as Subject. Enigmail users
should already have such support read-only[Note:A]

References:
[MemoryHole]
http://modernpgp.org/memoryhole/
https://wiki.gnupg.org/OpenPGPEmailSummit201607/MemoryHole

Notes:
[Note:A] to toggle it on encrypted subjects on sending you'd use
extensions.enigmail.protectHeaders


--=20
Kristian Fiskerstrand
OpenPGP keyblock reachable at hkp://pool.sks-keyservers.net
fpr:94CB AFDD 3034 5109 5618 35AA 0B7F 8B60 E3ED FAE3


--q0o1FbdEuWmF0kc4QR3UqpAC1RqNccgO7--

--sQ1kPWWIMdCPiH7GfSIh36nvCqSOLMJrQ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEtOrRIMf4mkrqRycHJQt6/tY3nYUFAllaOisACgkQJQt6/tY3
nYUQKgf7BQvdIUdHTaJEiBX0Pr7hUxv1ANSiXYEFWUciBk9Ccw07nwG9kJtFM1qF
7m9n1mxqL/OMW7047qKzGfb+FW07106pgE/CHBzunvDErOpHBwGwiKlR8Jfv4v50
UhLD7kjAywA9PUjpc8+OZXM8zGd9khohB/eUV1r1SgxOSqqylEcOQiWfe5FsI24w
fmW+PpolMswJJvbOvU+0DoyA1W9cbF0sc7brdkrHAjdxrPIEarLtWlBfwiQ85f5e
hSGqg03EAnws2+ZHhsixKJNxRlEC8KoK09/3JfL36dt5GbpVQ3g+8ofLa1XXUK60
OeL/A6XF+tYDZIDcxztufDZZ0JCZZw==
=T9ok
-----END PGP SIGNATURE-----

--sQ1kPWWIMdCPiH7GfSIh36nvCqSOLMJrQ--
