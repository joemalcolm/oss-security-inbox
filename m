X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2359" "Tuesday" "25" "April" "2017" "17:25:35" "+0200" "Andrej Nemec" "anemec@redhat.com" "<91c63b3c-0baf-cb69-2520-8ad6c1cd198a@redhat.com>" "69" "Re: [oss-security] CVE request: remote heap overflow in linux networking stack" "^Date:" nil nil "4" "2017042515:25:35" "[oss-security] CVE request: remote heap overflow in linux networking stack" (number mark "        anemec@redha Apr 25   69/2359  " thread-indent "\"Re: [oss-security] CVE request: remote heap overflow in linux networking stack\"\n") "<CAHmME9o1bK=EBApF16+3bDuN3N-JxcdxwwNVNm97U0VcXCUkoQ@mail.gmail.com>" ("<CAHmME9r_F44PvenZbTK4LyqTucMpV+o75t3FH8CcWF8TyQuhgQ@mail.gmail.com>" "<20170424181756.GA2236@openwall.com>" "<3805bb04-25a8-5408-30e9-17af80f78d0b@redhat.com>" "<CAHmME9o1bK=EBApF16+3bDuN3N-JxcdxwwNVNm97U0VcXCUkoQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17571 invoked by uid 550); 25 Apr 2017 15:25:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17532 invoked from network); 25 Apr 2017 15:25:48 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com C06C980515
Authentication-Results: ext-mx03.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx03.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=anemec@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com C06C980515
References: <CAHmME9r_F44PvenZbTK4LyqTucMpV+o75t3FH8CcWF8TyQuhgQ@mail.gmail.com>
 <20170424181756.GA2236@openwall.com>
 <3805bb04-25a8-5408-30e9-17af80f78d0b@redhat.com>
 <CAHmME9o1bK=EBApF16+3bDuN3N-JxcdxwwNVNm97U0VcXCUkoQ@mail.gmail.com>
Message-ID: <91c63b3c-0baf-cb69-2520-8ad6c1cd198a@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <CAHmME9o1bK=EBApF16+3bDuN3N-JxcdxwwNVNm97U0VcXCUkoQ@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="kH6mNcWkDrcuJpns6uOCUrOQQsX2m9IUO"
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]); Tue, 25 Apr 2017 15:25:36 +0000 (UTC)
Date: Tue, 25 Apr 2017 17:25:35 +0200
From: Andrej Nemec <anemec@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request: remote heap overflow in linux
 networking stack
To: oss-security@lists.openwall.com

--kH6mNcWkDrcuJpns6uOCUrOQQsX2m9IUO
Content-Type: multipart/mixed; boundary="50l9hgjdR9HaFDFsaXAcpQt0XHHWiSdhJ";
 protected-headers="v1"
From: Andrej Nemec <anemec@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <91c63b3c-0baf-cb69-2520-8ad6c1cd198a@redhat.com>
Subject: Re: [oss-security] CVE request: remote heap overflow in linux
 networking stack
References: <CAHmME9r_F44PvenZbTK4LyqTucMpV+o75t3FH8CcWF8TyQuhgQ@mail.gmail.com>
 <20170424181756.GA2236@openwall.com>
 <3805bb04-25a8-5408-30e9-17af80f78d0b@redhat.com>
 <CAHmME9o1bK=EBApF16+3bDuN3N-JxcdxwwNVNm97U0VcXCUkoQ@mail.gmail.com>
In-Reply-To: <CAHmME9o1bK=EBApF16+3bDuN3N-JxcdxwwNVNm97U0VcXCUkoQ@mail.gmail.com>

--50l9hgjdR9HaFDFsaXAcpQt0XHHWiSdhJ
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Jason,

Great, thanks for confirmation. Mitre already lists [1] so it seems we
are fine.

[1] http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2017-7477

Best Regards,

--=20
Andrej Nemec, Red Hat Product Security
3701 3214 E472 A9C3 EFBE 8A63 8904 44A1 D57B 6DDA



On 04/25/2017 03:53 PM, Jason A. Donenfeld wrote:
> Hey Andrej,
>
> I actually didn't submit this to Mitre, just to you, so I don't think
> there'll be a duplicate.
>
> Jason



--50l9hgjdR9HaFDFsaXAcpQt0XHHWiSdhJ--

--kH6mNcWkDrcuJpns6uOCUrOQQsX2m9IUO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJY/2pvAAoJEIkERKHVe23aA48P/2VaQnGgZH03vKbTAwhh/d1N
+c3rMx4ZvjUGhPwwRly5UeGH2RXSH/5AoN982BHWTkZrmEuQYtU/eanOXs8PkXvl
NVszcGHyQzmQo+RSe8WtXOSuZfSo29wgjr1oAArAljnPNawpdzdeso5JSPp6j4C7
8cdLc8D22w5o2S/PpalzrKl30eEwKuxJjLzzHRk8QXSFZkKcbxT5anejjwEcm1NF
2U+j/llRiu2KHDu0V7/JWRtLD4ccIciC4iEVAHpMdS+O8O+Tuu4kbbZqau4wrLyP
i7a8aeTDRvpK6VruJkeYrTkpXBtxOsV6I86obav1nAGh3115dt2oKE8Ru6ysSjh/
55TZotDHrJZJZw+12u+Jkc8gF4/Uiyqf2uOZ1W7V+ndbQYmLxpWMYwZv9PSImKwx
73LH0AGLYb98fMXXNchrjooLTk8/HfX7HjIBnjo2GX749rX9IiyDwSrgJQyfbSCY
LbKS323cPhcZR6mrL+myQkq/+jMLI8RjwGdhOvyPEAA8655T2TkT2aXfvPNY85/4
Mn27+0Ew4gzKbW7lnXQWeB0ET2on+8ZaLng6MwOTPUGQCW6rgaBwO52qsomHYeAn
0g9vv/VfPN/7/YmHrHv0bt5bsavRW2TQhDCuaSkShodSm23puFBGHI7jky+b6D0G
2bVX/t060kSPFDcLw1Lx
=uqdi
-----END PGP SIGNATURE-----

--kH6mNcWkDrcuJpns6uOCUrOQQsX2m9IUO--
