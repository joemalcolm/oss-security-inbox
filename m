X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3255" "Monday" "3" "July" "2017" "15:37:38" "+0200" "Kristian Fiskerstrand" "k_f@gentoo.org" "<713762f9-3ee0-724c-e56e-6103a2aa2b6c@gentoo.org>" "74" "[oss-security] Bugzilla implementation of OpenPGP and Memory Hole (Was: Re: [oss-security] accepting new members to (linux-)distros lists)" "^Date:" nil nil "7" "2017070313:37:38" "[oss-security] Bugzilla implementation of OpenPGP and Memory Hole (Was: Re: [oss-security] accepting new members to (linux-)distros lists)" (number mark "        k_f@gentoo.o Jul  3   74/3255  " thread-indent "\"[oss-security] Bugzilla implementation of OpenPGP and Memory Hole (Was: Re: [oss-security] accepting new members to (linux-)distros lists)\"\n") "<49733f26-1060-6e15-5595-204269483f97@gentoo.org>" ("<20170628200239.GA25525@openwall.com>" "<CA+aC4kuUKG4CndFjbT=+LSctTXL=Xfrfze6ZE3ZCp7XCHM5OQg@mail.gmail.com>" "<647ec3a7-f2f0-b090-007a-65286b815fa0@gentoo.org>" "<CA+aC4kuK7Cqhn3iRvAC7yoqDNBMUM2ekZEnc3gXtTcpY=vBRHg@mail.gmail.com>" "<49733f26-1060-6e15-5595-204269483f97@gentoo.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3504 invoked by uid 550); 3 Jul 2017 13:40:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32078 invoked from network); 3 Jul 2017 13:37:59 -0000
References: <20170628200239.GA25525@openwall.com>
 <CA+aC4kuUKG4CndFjbT=+LSctTXL=Xfrfze6ZE3ZCp7XCHM5OQg@mail.gmail.com>
 <647ec3a7-f2f0-b090-007a-65286b815fa0@gentoo.org>
 <CA+aC4kuK7Cqhn3iRvAC7yoqDNBMUM2ekZEnc3gXtTcpY=vBRHg@mail.gmail.com>
 <49733f26-1060-6e15-5595-204269483f97@gentoo.org>
Message-ID: <713762f9-3ee0-724c-e56e-6103a2aa2b6c@gentoo.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.0
MIME-Version: 1.0
In-Reply-To: <49733f26-1060-6e15-5595-204269483f97@gentoo.org>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="04gvUnAJ4t11GnlwPcS9K24DmW0RdiSH3"
Date: Mon, 3 Jul 2017 15:37:38 +0200
From: Kristian Fiskerstrand <k_f@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Bugzilla implementation of OpenPGP and Memory Hole (Was: Re:
 [oss-security] accepting new members to (linux-)distros lists)
To: oss-security@lists.openwall.com, Anthony Liguori <anthony@codemonkey.ws>

--04gvUnAJ4t11GnlwPcS9K24DmW0RdiSH3
Content-Type: multipart/mixed; boundary="4ePcA3j06hhdKrxd6kNsSUS1159uJgbq1";
 protected-headers="v1"
From: Kristian Fiskerstrand <k_f@gentoo.org>
Reply-To: oss-security@lists.openwall.com
To: oss-security@lists.openwall.com, Anthony Liguori <anthony@codemonkey.ws>
Message-ID: <713762f9-3ee0-724c-e56e-6103a2aa2b6c@gentoo.org>
Subject: Bugzilla implementation of OpenPGP and Memory Hole (Was: Re:
 [oss-security] accepting new members to (linux-)distros lists)
References: <20170628200239.GA25525@openwall.com>
 <CA+aC4kuUKG4CndFjbT=+LSctTXL=Xfrfze6ZE3ZCp7XCHM5OQg@mail.gmail.com>
 <647ec3a7-f2f0-b090-007a-65286b815fa0@gentoo.org>
 <CA+aC4kuK7Cqhn3iRvAC7yoqDNBMUM2ekZEnc3gXtTcpY=vBRHg@mail.gmail.com>
 <49733f26-1060-6e15-5595-204269483f97@gentoo.org>
In-Reply-To: <49733f26-1060-6e15-5595-204269483f97@gentoo.org>

--4ePcA3j06hhdKrxd6kNsSUS1159uJgbq1
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

[Changing subject as it has likely gone too off target with the previous
one]

On 07/03/2017 02:35 PM, Kristian Fiskerstrand wrote:
> On 07/02/2017 10:58 PM, Anthony Liguori wrote:
>> On Jul 2, 2017 1:38 PM, "Kristian Fiskerstrand"<k_f@gentoo.org> wrote:
>>> The immediate thought that springs to mind is the [lack of OpenPGP
>>> support in bugzilla] which makes it difficult to ensure confidentiality
>>> unless disabling all email warnings.
>>
>> I would just assume all email is disabled.  I don't know of a tool that
>> does this right so for security sensitive things, I think disabling email
>> notification is a best practice.
>=20
> It wouldn't take much to have a tool that does, mainly what I outline in
> the previous post to ensure OpenPGP keyblock management for the
> individual users, and as an extension of the scope for that perhaps a
> [MemoryHole] implementation to ensure confidentiality / integrity
> verification of the RFC822 headers such as Subject. Enigmail users
> should already have such support read-only[Note:A]

Just to add that when I say read only here it goes to the encrypted
subject aspect of things (as, perhaps, inferred from the note). Enigmail
should already, by default, use MemoryHole for signed messages in
OpenPGP/MIME mode, which should be visible as a separate first MIME part
e.g of this email.

--=20
Kristian Fiskerstrand
OpenPGP keyblock reachable at hkp://pool.sks-keyservers.net
fpr:94CB AFDD 3034 5109 5618 35AA 0B7F 8B60 E3ED FAE3


--4ePcA3j06hhdKrxd6kNsSUS1159uJgbq1--

--04gvUnAJ4t11GnlwPcS9K24DmW0RdiSH3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEtOrRIMf4mkrqRycHJQt6/tY3nYUFAllaSKIACgkQJQt6/tY3
nYXpnQf/TqabE0jOnvmuPXVMbI1tcpFCjN+FJAVggGUGT599EmRF5TQNWqUWlCAx
CeSo0F5pNOke+yofVNneGAFobKfAuaXIxJAJswd6dSN0VZID5ela4P/DGou7WAA1
VmTLuEMljVYmN9qez9KTcgYkgnx33ZCZWMYKmKCtNahpNDPE5EL4V72mQvO0HtE+
SAotoGRlQDbChLMvkba/dGGaY9i0Lv1SyRB5Nu6JCW54Jw3T+8pBh0i3Fj0SUL2U
jGBU/SC0zIZxnHPGjb+z/fNbZ6xwNL+fdQYkIbpjaXvr74lw5aBPms6puXTTMiD9
eBG6cUN4xOKwhcibCGjeBOBL6jYI6Q==
=j77z
-----END PGP SIGNATURE-----

--04gvUnAJ4t11GnlwPcS9K24DmW0RdiSH3--
