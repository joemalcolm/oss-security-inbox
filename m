X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2247" "Tuesday" "18" "October" "2016" "14:14:26" "+0200" "Remi Collet" "remi@fedoraproject.org" "<58a56ff2-6a32-cbfb-514f-afca19b97d39@fedoraproject.org>" "75" "Re: [oss-security] CVE assignment for PHP 5.6.27 and 7.0.12" nil nil nil "10" "2016101812:14:26" "[oss-security] CVE assignment for PHP 5.6.27 and 7.0.12" (number mark "U       remi@fedorap Oct 18   75/2247  " thread-indent "\"Re: [oss-security] CVE assignment for PHP 5.6.27 and 7.0.12\"\n") "<45c3eba1-d26d-7137-f1e6-fb29322fa610@redhat.com>" ("<CAEsznC7n7U35nHEx64ma39PtbqKd6TjPyvAWJMBaP6YRacJEog@mail.gmail.com>" "<45c3eba1-d26d-7137-f1e6-fb29322fa610@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17900 invoked by uid 550); 18 Oct 2016 13:33:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26365 invoked from network); 18 Oct 2016 12:14:43 -0000
X-Virus-Scanned: Debian amavisd-new at mfilter40-d.gandi.net
X-Originating-IP: 90.109.100.243
To: oss-security@lists.openwall.com
References: <CAEsznC7n7U35nHEx64ma39PtbqKd6TjPyvAWJMBaP6YRacJEog@mail.gmail.com>
 <45c3eba1-d26d-7137-f1e6-fb29322fa610@redhat.com>
From: Remi Collet <remi@fedoraproject.org>
Message-ID: <58a56ff2-6a32-cbfb-514f-afca19b97d39@fedoraproject.org>
Date: Tue, 18 Oct 2016 14:14:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <45c3eba1-d26d-7137-f1e6-fb29322fa610@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="KT1xkT21HDogMPVp0QhwF8F5AtOp1AebI"
Subject: Re: [oss-security] CVE assignment for PHP 5.6.27 and 7.0.12

--KT1xkT21HDogMPVp0QhwF8F5AtOp1AebI
Content-Type: multipart/mixed; boundary="tU9hkbUlhtdL4I2TdRUdgmi7pMn416iv2";
 protected-headers="v1"
From: Remi Collet <remi@fedoraproject.org>
To: oss-security@lists.openwall.com
Message-ID: <58a56ff2-6a32-cbfb-514f-afca19b97d39@fedoraproject.org>
Subject: Re: [oss-security] CVE assignment for PHP 5.6.27 and 7.0.12
References: <CAEsznC7n7U35nHEx64ma39PtbqKd6TjPyvAWJMBaP6YRacJEog@mail.gmail.com>
 <45c3eba1-d26d-7137-f1e6-fb29322fa610@redhat.com>
In-Reply-To: <45c3eba1-d26d-7137-f1e6-fb29322fa610@redhat.com>

--tU9hkbUlhtdL4I2TdRUdgmi7pMn416iv2
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Le 18/10/2016 =C3=A0 14:06, Adam Maris a =C3=A9crit :
> On 18/10/16 09:42, Lior Kaplan wrote:
>> Hi,
>>
>> Please assign a CVE for the following issue:
>>
>> Bug #73147    Use After Free in unserialize()
>> https://bugs.php.net/bug.php?id=3D73147
>> http://git.php.net/?p=3Dphp-src.git;a=3Dcommit;h=3D0e6fe3a4c96be2d3e8838=
9a5776f878021b4c59f
>>
>>
>> Thanks,
>>
>> Kaplan
>>
> 16 bugs marked as 'security' were fixed in php 5.6.27 of which only one
> has CVE assigned.
> Here you request CVE for another one issue (even the documentation says
> it's unsafe to use
> unserialize on untrusted input).
>=20
> Are you planning to obtain CVEs also for other security bugs or do you
> treat the rest as
> CVE-unworthy? Or are reporters/community supposed to do it?

All the remaining bugs, despite reported as security issue, involved
some very big strings to reproduce (~2GB)

Which is prevented by any decent memory_limit value
And by max_input_size for remote access.


Remi


P.S. just my 0,02=E2=82=AC, but indeed, CVE-unworthy

> Thanks!
>=20



--tU9hkbUlhtdL4I2TdRUdgmi7pMn416iv2--

--KT1xkT21HDogMPVp0QhwF8F5AtOp1AebI
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2
Comment: Using GnuPG with Thunderbird - http://www.enigmail.net/

iEYEARECAAYFAlgGEiIACgkQYUppBSnxahjtNgCbBj1nsAL1ycl9h0T9WyFGpLZ5
5swAn3T++JiAuihuB+8X5vSmli+APv7c
=Cvqm
-----END PGP SIGNATURE-----

--KT1xkT21HDogMPVp0QhwF8F5AtOp1AebI--
