X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2802" "Saturday" "9" "June" "2018" "02:02:43" "+0200" "Marcus Brinkmann" "marcus.brinkmann@ruhr-uni-bochum.de" "<44254614-42f1-9908-a55c-401d20ffc2bd@ruhr-uni-bochum.de>" "78" "Re: [oss-security] CVE-2018-12020 in GnuPG" "^Date:" nil nil "6" "2018060900:02:43" "[oss-security] CVE-2018-12020 in GnuPG" (number mark "        marcus.brink Jun  9   78/2802  " thread-indent "\"Re: [oss-security] CVE-2018-12020 in GnuPG\"\n") "<167bc7e898d02f7bd13c43d272d64178f00e7e23.camel@debian.org>" ("<167bc7e898d02f7bd13c43d272d64178f00e7e23.camel@debian.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9815 invoked by uid 550); 9 Jun 2018 09:00:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23847 invoked from network); 9 Jun 2018 00:02:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ruhr-uni-bochum.de;
	s=mail-2017; t=1528502570;
	bh=V2saMmvgF/po5kVyk8ZGQACa/igPpJYQpQpLyR8ugGs=;
	h=Subject:To:References:From:Date:In-Reply-To:From;
	b=s32DHZmiVYofAI5GFIliOG0ZNvk2uiDblk7MO4c1df7Qo8bKENYLTQm8kNFIa4fD4
	 szNiMgC7sCvnC48l3weQBQY4HtFiF14EgShZIDO6FzZ4gVVVVHs6VqSNImadfoU2eT
	 mYd3mZ6s8HqQzIpxRIEkyc9xkCVTWmhPIKdRllVk=
X-Envelope-Sender: <marcus.brinkmann@ruhr-uni-bochum.de>
X-RUB-Notes: Internal origin=134.147.42.227
References: <167bc7e898d02f7bd13c43d272d64178f00e7e23.camel@debian.org>
Openpgp: preference=signencrypt
Message-ID: <44254614-42f1-9908-a55c-401d20ffc2bd@ruhr-uni-bochum.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <167bc7e898d02f7bd13c43d272d64178f00e7e23.camel@debian.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="xlO75RdwM5bH97tf2vfstcv1O9ECIHRkC"
X-Virus-Scanned: clamav-milter 0.99.4 at mail1.mail.ruhr-uni-bochum.de
X-Virus-Status: Clean
Date: Sat, 9 Jun 2018 02:02:43 +0200
From: Marcus Brinkmann <marcus.brinkmann@ruhr-uni-bochum.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2018-12020 in GnuPG
To: oss-security@lists.openwall.com

--xlO75RdwM5bH97tf2vfstcv1O9ECIHRkC
Content-Type: multipart/mixed; boundary="RQypvR1FxSjORBjeuazVfcHhOkVdoiNqD";
 protected-headers="v1"
From: Marcus Brinkmann <marcus.brinkmann@ruhr-uni-bochum.de>
To: oss-security@lists.openwall.com
Message-ID: <44254614-42f1-9908-a55c-401d20ffc2bd@ruhr-uni-bochum.de>
Subject: Re: [oss-security] CVE-2018-12020 in GnuPG
References: <167bc7e898d02f7bd13c43d272d64178f00e7e23.camel@debian.org>
In-Reply-To: <167bc7e898d02f7bd13c43d272d64178f00e7e23.camel@debian.org>

--RQypvR1FxSjORBjeuazVfcHhOkVdoiNqD
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

On 06/08/2018 09:36 PM, Yves-Alexis Perez wrote:
> Hi everybody,
>=20
> just a heads up, since we weren't notified in advance and it's Friday eve=
ning
> (in Europe at least).

Yes.  I tried to disclose this responsibly with Werner Koch (and in
coordination with other affected projects), but within two hours he did
a unilateral full disclosure without getting back to me.

:(

> There's a nasty vulnerability in GnuPG which can be apparently used to by=
pass
> signature verification when a program calls gpg to verify a signature and
> parses the output:
>=20
> https://lists.gnupg.org/pipermail/gnupg-announce/2018q2/000425.html
> https://dev.gnupg.org/T4012
>=20
> It might be worth checking whether package managers signature verificatio=
n is
> affected.
>=20
> Apt doesn't seems affected at first sight (it uses gpgv) but we'll double
> check.

I am still handling this under responsible disclosure. This is why I
have not spoken out yet, and the CVE is not public. But what you say is
important and correct.

Thanks,
Marcus


--RQypvR1FxSjORBjeuazVfcHhOkVdoiNqD--

--xlO75RdwM5bH97tf2vfstcv1O9ECIHRkC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEPLDoRBatUvfhhlQYiLCNWle2IUAFAlsbGSYACgkQiLCNWle2
IUALPA//ZY6Axu+5uy3ccDoD5x4AXfsf5nIYLG/neRTygRTsuH7wSoruCsHkM15w
xRQVpnuF0Pko/s3pBx3qA930tiMhG96UakYlY5Vz2hceP3WH9MUd4NLz4wNz4bLa
Ac5SlwL9CbCGv3QwuevUjSl3hPANlrIfByUcU45jOjZCwniRL7Q7KYOS3yKMfcUw
oWL05GK7BQkGB/+vluqRm0nBZlSWK3TvDN45R6+5rmQfsRUnAopxR3wF0Sxim2V7
LlUAR66nPbLM7HUT5HEpyNYBjAhCv8rOojjkxrSRE1v8OxGIpnTAesbx0LuoXyHN
x67iSiGUgaTLZHvtQOqJksQCITMjE0zRUGwQSuO88UnOBTcc3zPD31U6PtiH2U6+
rBk27tRw7F2dYLr0ugKmFtIzgGM9cI3RD/gKlN8/kdmIkL7FQcXZaHCzjAxMGDjW
ioGjkHhcNy4g9GaW1ugQWDX3J7rfjEz9uJR4elOHbWVr8wPoeW7Ol/WEhWUSg/st
Ke1FRQpOnSZEcaiUFx8lidGfpbNu6lslaSyDbINNDadQjv3RLHKw+wkXnLCZ9Wfr
AUNDU6zjZg+4nJ3hrQFbEazsxjz7wnEcNkdx/WRRn8aVhgCwsDptHiGFCMWxvzW4
J0h6OuNme+mpNoVEOhV7gzqC/1G9OHUNM6IHv+jJ+LpzsrRHKZw=
=xLCs
-----END PGP SIGNATURE-----

--xlO75RdwM5bH97tf2vfstcv1O9ECIHRkC--
