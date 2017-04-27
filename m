X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2695" "Thursday" "27" "April" "2017" "16:14:27" "+0200" "Andrej Nemec" "anemec@redhat.com" "<9d804ae1-0f52-2d83-f3a1-52a97d28e903@redhat.com>" "78" "Re: [oss-security] CVE Request: Two memory corruption vulnerabilities ldns 1.7" "^Date:" nil nil "4" "2017042714:14:27" "[oss-security] CVE Request: Two memory corruption vulnerabilities ldns 1.7" (number mark "U       anemec@redha Apr 27   78/2695  " thread-indent "\"Re: [oss-security] CVE Request: Two memory corruption vulnerabilities ldns 1.7\"\n") "<2192b13b-52ef-4464-db55-36f45f97b258@splone.com>" ("<2192b13b-52ef-4464-db55-36f45f97b258@splone.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32059 invoked by uid 550); 27 Apr 2017 14:14:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32041 invoked from network); 27 Apr 2017 14:14:41 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 3862E7971D
Authentication-Results: ext-mx01.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx01.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=anemec@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com 3862E7971D
References: <2192b13b-52ef-4464-db55-36f45f97b258@splone.com>
Message-ID: <9d804ae1-0f52-2d83-f3a1-52a97d28e903@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <2192b13b-52ef-4464-db55-36f45f97b258@splone.com>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="0Q4rWP1cODqdbBu8wpD7DUIvlk0Gnqw4n"
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Thu, 27 Apr 2017 14:14:29 +0000 (UTC)
Date: Thu, 27 Apr 2017 16:14:27 +0200
From: Andrej Nemec <anemec@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: Two memory corruption vulnerabilities
 ldns 1.7
To: oss-security@lists.openwall.com

--0Q4rWP1cODqdbBu8wpD7DUIvlk0Gnqw4n
Content-Type: multipart/mixed; boundary="fgfu38c27vl88AVhP9iNIsauk7epcMqiF";
 protected-headers="v1"
From: Andrej Nemec <anemec@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <9d804ae1-0f52-2d83-f3a1-52a97d28e903@redhat.com>
Subject: Re: [oss-security] CVE Request: Two memory corruption vulnerabilities
 ldns 1.7
References: <2192b13b-52ef-4464-db55-36f45f97b258@splone.com>
In-Reply-To: <2192b13b-52ef-4464-db55-36f45f97b258@splone.com>

--fgfu38c27vl88AVhP9iNIsauk7epcMqiF
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello Stephan,

Unfortunately, CVE assignments are not done through this list anymore.
You need to visit [1] and request a CVE by filing out the form. Could
you please look at it and let the list know about the assigned CVE?

Thanks!

[1] https://cveform.mitre.org/

Best Regards,

--=20
Andrej Nemec, Red Hat Product Security
3701 3214 E472 A9C3 EFBE 8A63 8904 44A1 D57B 6DDA

On 04/27/2017 12:54 PM, Stephan Zeisberg wrote:
> Hi,
>
> i discovered two memory corruption vulnerabilities (double free) in ldns
> 1.7.0:
>
> * https://www.nlnetlabs.nl/bugs-script/show_bug.cgi?id=3D1256
> * https://www.nlnetlabs.nl/bugs-script/show_bug.cgi?id=3D1257
>
> and reported it to https://www.nlnetlabs.nl/bugs-script/
>
> Both fixed in upstream (in development branch):
> * for bug 1256: https://git.nlnetlabs.nl/ldns/commit/?id=3Dc8391790
> * for bug 1257: https://git.nlnetlabs.nl/ldns/commit/?id=3D3bdeed02
>
> Could you please assign CVE(s) for the vulnerabilites?
>
> Thanks,
> Stephan


--fgfu38c27vl88AVhP9iNIsauk7epcMqiF--

--0Q4rWP1cODqdbBu8wpD7DUIvlk0Gnqw4n
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJZAfzDAAoJEIkERKHVe23aFIsQAMJKglW5Y7daoiKlIPd0Qqyk
eE3rRGCBLIuqkRB18huNY1iDkF8lIeSY7XZtaKHgoq4t6JzFThWRYdH2fuJ2yxqg
eb3hwj3ypWkY+W79IcekXBLmHeXaJgZMvD6tQm3RzucSOCgQI4GQxgF9VxK6Ssnr
zCYMx5NiZXBfd5aYC22UWyZb0Nrzggrvb6cbpGmb3dVyGbfA81YmBEvBt0i5DNag
mtxuAoDQveC9QbXIu0JqQ0Vt7Nol/P6xZoQ1/oMHt+bBW1qxeDOeuNXspO/M3vEv
+ExFXStgApZuGAxuRKKouQhGIYYTnrMHgaqvgprPxTWJUx4zeaPXpnLRXXTC9nxD
QIA/C36Na57etIiFbqbVhRufgZiZ7f4uGalzd/h4BcoyexO2nbWUzRRNkroLkKvK
wlZ/Rx3yI1fhawQ5OF9F0v86NBp0pwuVxXizSWQ8YOOBOlHyPbmpTRKRdEqMj1A1
MdNje8vBaC+eVHLvclAO0i0eV9PIbVTtqtFqpQ3loi0mzHCZTm7HaKKKcmHhdYd1
Cdrz7fb2ikYWFH4rP4Wh6DekJnHn58wDXK+mDGKznHVkph/x3sYp+LYv/E1htdam
CuUKB3OsdbvcxDgaPcPLP2yxSwKyzdckTSjk8HNuPBK0FYOdu45fl5IIFds4ww/9
V4OF+jWboCmSiYHFUGml
=b8e3
-----END PGP SIGNATURE-----

--0Q4rWP1cODqdbBu8wpD7DUIvlk0Gnqw4n--
