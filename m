X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3563" "Tuesday" "25" "April" "2017" "15:52:28" "+0200" "Andrej Nemec" "anemec@redhat.com" "<3805bb04-25a8-5408-30e9-17af80f78d0b@redhat.com>" "94" "Re: [oss-security] CVE request: remote heap overflow in linux networking stack" "^Date:" nil nil "4" "2017042513:52:28" "[oss-security] CVE request: remote heap overflow in linux networking stack" (number mark "        anemec@redha Apr 25   94/3563  " thread-indent "\"Re: [oss-security] CVE request: remote heap overflow in linux networking stack\"\n") "<20170424181756.GA2236@openwall.com>" ("<CAHmME9r_F44PvenZbTK4LyqTucMpV+o75t3FH8CcWF8TyQuhgQ@mail.gmail.com>" "<20170424181756.GA2236@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7416 invoked by uid 550); 25 Apr 2017 13:52:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7398 invoked from network); 25 Apr 2017 13:52:42 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 7B8DA8004E
Authentication-Results: ext-mx03.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx03.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=anemec@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com 7B8DA8004E
References: <CAHmME9r_F44PvenZbTK4LyqTucMpV+o75t3FH8CcWF8TyQuhgQ@mail.gmail.com>
 <20170424181756.GA2236@openwall.com>
Message-ID: <3805bb04-25a8-5408-30e9-17af80f78d0b@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <20170424181756.GA2236@openwall.com>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="QUdrnbBKnmfdXEXOQL9Ua22FSpAQxabg8"
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]); Tue, 25 Apr 2017 13:52:30 +0000 (UTC)
Date: Tue, 25 Apr 2017 15:52:28 +0200
From: Andrej Nemec <anemec@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request: remote heap overflow in linux
 networking stack
To: oss-security@lists.openwall.com

--QUdrnbBKnmfdXEXOQL9Ua22FSpAQxabg8
Content-Type: multipart/mixed; boundary="wb92xSrbvBerafdJ0ktrGUWisntvofUND";
 protected-headers="v1"
From: Andrej Nemec <anemec@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <3805bb04-25a8-5408-30e9-17af80f78d0b@redhat.com>
Subject: Re: [oss-security] CVE request: remote heap overflow in linux
 networking stack
References: <CAHmME9r_F44PvenZbTK4LyqTucMpV+o75t3FH8CcWF8TyQuhgQ@mail.gmail.com>
 <20170424181756.GA2236@openwall.com>
In-Reply-To: <20170424181756.GA2236@openwall.com>

--wb92xSrbvBerafdJ0ktrGUWisntvofUND
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hello Alexander, Jason,

This is the issue that I referenced in [1]. We have internally decided
that it's worth to assign a CVE even though it's public and there is a
risk of duplication because the issue looks serious. I sent a CVE update
to Mitre, we'll see if they catch it and stop possible duplication
assignment.

All credits for this discovery go to Jason.

[1] http://seclists.org/oss-sec/2017/q2/119

Best Regards,

--=20
Andrej Nemec, Red Hat Product Security
3701 3214 E472 A9C3 EFBE 8A63 8904 44A1 D57B 6DDA


On 04/24/2017 08:17 PM, Solar Designer wrote:
> Hi Jason,
>
> On Mon, Apr 24, 2017 at 08:00:10PM +0200, Jason A. Donenfeld wrote:
>> Requesting a CVE for [1], a heap overflow I found in Linux.
>> [1] https://git.kernel.org/pub/scm/linux/kernel/git/davem/net.git/commit=
/?id=3D4d6fa57b4dab0d77f4d8e9d9c73d1e63f6fe8fee
> Thank you for bringing this in here.
>
> I've attached the above URL's content in text/plain form, as required by
> oss-security content guidelines (actual content must be on the list, not
> only included by reference).
>
> The bug is in drivers/net/macsec.c implementing IEEE 802.1AE (MACsec).
> I hope it is rarely used and thus rarely exposed, and Linux kernel
> support for it is rather new, right?
>
> oss-security is no longer a place to request CVE IDs.  You may request a
> CVE ID directly from MITRE:
>
> https://cveform.mitre.org
>
> Once you have the CVE ID, please post it to this same thread in here.
>
> (For non-public issues, it is also still possible to request CVE IDs
> along with notification to the (linux-)distros lists, as long as the
> primary purpose of giving advance notice to the distros is providing
> them with actionable information.  A few of the distros are CNAs, so
> they'd assign CVE IDs from their pools.)
>
> Alexander


--wb92xSrbvBerafdJ0ktrGUWisntvofUND--

--QUdrnbBKnmfdXEXOQL9Ua22FSpAQxabg8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJY/1ScAAoJEIkERKHVe23a6mkQAIZKTZenfC8AED3A7mdeMk6N
tI3v8etqTGo6uUfAo8X2ExUVan2G2rG76bcqlh6fEfWqYx0oucIe2fX/OKU46s9Y
m5DVXgu5PGgKGJ4pjQcRM3FzRaD9XPKhsXtqvyTFDgswNmXEsYYwb3l7H7N0Upz+
eg5azZZUBOhEs3a7kr+Ck8ChOIsUkWMP5eUWDgoN6F2MSRDoQQFuSL0y9WTixDIq
csxV+RtrPS4vEjGxsyV1f2ofiGMlnsBhfVIM//mGpVr47Brxr24oyoUAync/tA0I
JEHzXEhgPO1psKctXlps9DzbBn80jL6UnmqaBkM2cwTchotF4SglGaschqLfQlDU
Jq2+s3Gtho+u4I83cenIQ2EyEuSouwhtzkiCcuqemUeQHhnLi9piosRyI+VoYJyZ
9sccVBPBaE5c0IJFyGlJATv/NianuoclEFR+6i0AJPpSvv46c+AHx9ZyIdN2crgq
D5mLNqWAq8pp+tpG+alg3+YCCdInhjJDrims1eCqsfo08uGR8aZF0QQ2DDN50wq6
yb0GwYn4K+tGGXr0mBsDn45hMQ8qKSnGyf13qBoI+P+NIe9c+VgrvLdkonAyvFT4
juV8t5VJ01LcF2pZfkXxX2/EAnvpIKEfYo7nLjj/KhjYqjD2/ZP2WV2i+wgLs3Fy
1X/O+9NkKilg6NJCGx5J
=UULl
-----END PGP SIGNATURE-----

--QUdrnbBKnmfdXEXOQL9Ua22FSpAQxabg8--
