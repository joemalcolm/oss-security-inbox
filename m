X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3392" "Monday" "13" "November" "2017" "20:38:59" "+0100" "Kristian Fiskerstrand" "k_f@gentoo.org" "<750bd9c8-a236-4149-ddfb-b8cc026b2935@gentoo.org>" "88" "Re: [oss-security] (linux-)distros list use statistics" "^Date:" nil nil "11" "2017111319:38:59" "[oss-security] (linux-)distros list use statistics" (number mark "        k_f@gentoo.o Nov 13   88/3392  " thread-indent "\"Re: [oss-security] (linux-)distros list use statistics\"\n") "<20171113193304.GA27179@openwall.com>" ("<20171113151047.GA23493@openwall.com>" "<5b4758f0-5e66-0851-5e25-6d3b946e05bc@gentoo.org>" "<20171113193304.GA27179@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7835 invoked by uid 550); 13 Nov 2017 19:40:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7782 invoked from network); 13 Nov 2017 19:40:32 -0000
References: <20171113151047.GA23493@openwall.com>
 <5b4758f0-5e66-0851-5e25-6d3b946e05bc@gentoo.org>
 <20171113193304.GA27179@openwall.com>
Message-ID: <750bd9c8-a236-4149-ddfb-b8cc026b2935@gentoo.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <20171113193304.GA27179@openwall.com>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="oLqF6CLRMDOwi8faGpaA6k7lrV3qD0H0F"
Date: Mon, 13 Nov 2017 20:38:59 +0100
From: Kristian Fiskerstrand <k_f@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] (linux-)distros list use statistics
To: oss-security@lists.openwall.com, Solar Designer <solar@openwall.com>

--oLqF6CLRMDOwi8faGpaA6k7lrV3qD0H0F
Content-Type: multipart/mixed; boundary="9nhtLVbs3BjJAl1Rlh0NnBn8rpPURwGc4";
 protected-headers="v1"
From: Kristian Fiskerstrand <k_f@gentoo.org>
Reply-To: k_f@gentoo.org
To: oss-security@lists.openwall.com, Solar Designer <solar@openwall.com>
Message-ID: <750bd9c8-a236-4149-ddfb-b8cc026b2935@gentoo.org>
Subject: Re: [oss-security] (linux-)distros list use statistics
References: <20171113151047.GA23493@openwall.com>
 <5b4758f0-5e66-0851-5e25-6d3b946e05bc@gentoo.org>
 <20171113193304.GA27179@openwall.com>
In-Reply-To: <20171113193304.GA27179@openwall.com>

--9nhtLVbs3BjJAl1Rlh0NnBn8rpPURwGc4
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 11/13/2017 08:33 PM, Solar Designer wrote:
> On Mon, Nov 13, 2017 at 08:13:05PM +0100, Kristian Fiskerstrand wrote:
>> As far as I'm aware I haven't gotten access to edit the wiki page for
>> publishing it.
>=20
> Please feel free to create a page like:
>=20
> http://oss-security.openwall.org/wiki/mailing-lists/distros/stats
>=20
> You don't need any special access for that.

Ah, will look into that soon then.

>=20
>> The wikified stats based on the generated DocuWiki output is available
>> in very basic style at the testing instance:
>>
>> https://wiki.sumptuouscapital.com/doku.php?id=3Ddistros_stats
>=20
> Thank you, Kristian!
>=20
> This lists two very long embargo periods for two Linux kernel issues: 96
> days for CVE-2017-7533 and 28 days for CVE-2017-1000255.  While this is
> useful info, it does not reflect (linux-)distros' lists performance as
> it includes embargo periods from prior to disclosure to those lists.
> Also, we can't reliably know of such prior embargo periods, so our data
> would be inconsistent, which is especially bad for calculating averages.

It is calculated from first report on distros list, that said, for
CVE-2017-1000255 there was some missing data for first publication (it
is public through
https://access.redhat.com/security/cve/CVE-2017-1000255 and
http://www.securityfocus.com/bid/101264 since 9th), so the publication
time is 5.97 days (although not for oss-security posting).

>=20
> I think for our statistics collection, we should primarily use embargo
> periods since disclosure to (linux-)distros' lists, and secondarily
> since the possibly earlier embargo start dates when known (like you did
> now).  Can you add such data?
>=20

That should be the data already used.

--=20
Kristian Fiskerstrand
OpenPGP keyblock reachable at hkp://pool.sks-keyservers.net
fpr:94CB AFDD 3034 5109 5618 35AA 0B7F 8B60 E3ED FAE3


--9nhtLVbs3BjJAl1Rlh0NnBn8rpPURwGc4--

--oLqF6CLRMDOwi8faGpaA6k7lrV3qD0H0F
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEtOrRIMf4mkrqRycHJQt6/tY3nYUFAloJ9NQACgkQJQt6/tY3
nYWnjQf/bPDWWIOoWVu5Kz8QLauUvO6dnpC86/etU5dr7IxLDIJbJaIO4ZMa8Tbp
XvIdlFE06tdLIkTQeeOZAHegmaA4Ogr+Eh4HfILHKYELcd9J96jVIiw357usRC1+
JRceckfvvnmMLNssrLalgzqbsOkSmVtgG64A1FSDE7s638uFikjD0jF1BbE728pJ
KY0fNcaYf95hrXgWxtfVF8OWsAENxoF55P7wZOTdy5C/5LBmsZX4/45OVCK1roVX
tVerIYvz1Zfbv+XQwvrBgJZWIGIK91yqSLiv4KLf8hstNBxgNGNZSUakIMs6UZ/P
uoAEBooWsAHI5986P8g8Wm7OqhgU0g==
=iOXc
-----END PGP SIGNATURE-----

--oLqF6CLRMDOwi8faGpaA6k7lrV3qD0H0F--
