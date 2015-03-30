X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2336" "Monday" "30" "March" "2015" "17:49:54" "-0500" "Tyler Hicks" "tyhicks@canonical.com" "<20150330224953.GC6329@boyd>" "70" "Re: [oss-security] CVE Request: PHP SoapClient's __call() type confusion through unserialize()" nil nil nil "3" "2015033022:49:54" "[oss-security] CVE Request: PHP SoapClient's __call() type confusion through unserialize()" (number mark "        tyhicks@cano Mar 30   70/2336  " thread-indent "\"Re: [oss-security] CVE Request: PHP SoapClient's __call() type confusion through unserialize()\"\n") "<20150330234201.410bcbb8@redhat.com>" ("<550C769F.5010801@truel.it>" "<20150330234201.410bcbb8@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15526 invoked by uid 550); 30 Mar 2015 22:50:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15507 invoked from network); 30 Mar 2015 22:50:09 -0000
Message-ID: <20150330224953.GC6329@boyd>
References: <550C769F.5010801@truel.it>
 <20150330234201.410bcbb8@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hOcCNbCCxyk/YU74"
Content-Disposition: inline
In-Reply-To: <20150330234201.410bcbb8@redhat.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: security@php.net
Date: Mon, 30 Mar 2015 17:49:54 -0500
From: Tyler Hicks <tyhicks@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: PHP SoapClient's __call() type
 confusion through unserialize()
To: oss-security@lists.openwall.com

--hOcCNbCCxyk/YU74
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2015-03-30 23:42:01, Tomas Hoger wrote:
> On Fri, 20 Mar 2015 20:35:59 +0100 Andrea Palazzo wrote:
>=20
> > I'd like to request a CVE for the PHP Sec Bug #69085.
> >=20
> > Description:
> > SoapClient's __call() method is prone to a type confusion
> > vulnerability which can be used to gain remote code execution through
> > unsafe unserialize() calls.
> >=20
> > Info:
> > https://bugs.php.net/bug.php?id=3D69085
>=20
> There is another unserialize issue fixed in 5.6.7, 5.5.23 and 5.4.39
> and currently listed on PHP 5 Changelog page:
>=20
> http://php.net/ChangeLog-5.php
>=20
> Fixed bug #68976 (Use After Free Vulnerability in unserialize()). (CVE-20=
15-0231)
> https://bugs.php.net/68976

I believe that the ChangeLog-5.php page contains a typo since NVD claims
that CVE-2015-2787 corresponds to PHP bug #68976:

 https://web.nvd.nist.gov/view/vuln/detail?vulnId=3DCVE-2015-2787

Tyler

>=20
> While this lists CVE, it's CVE that was assigned to an issue fixed in
> 5.6.5, 5.5.21 and 5.4.37:
>=20
> Fixed bug #68710 (Use After Free Vulnerability in PHP's unserialize()). (=
CVE-2015-0231)
> https://bugs.php.net/68710
>=20
> New id seems to be required for the new issue.
>=20
> --=20
> Tomas Hoger / Red Hat Product Security

--hOcCNbCCxyk/YU74
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVGdMRAAoJENaSAD2qAscKkc4QAM71gYpow1xwJk89ArsaBdBd
jVYFhDAFs9TsFgKHetfwogcQmG0oRMMve52JaJyLQwKtQiUFCp3WpR+4DkkImnG8
xgNK8S82ah9+p8p0lCn0jKLnuvlTxYoAiyFzcyQLkD2Y7J5hNJB2fO1AMt9Zw7AQ
D4HEIZx+kKJYWkXYO1GIWN/iUAV4PK0TjsaXD0Hp0emlIBjoaLr7hDSofdas411W
wJSsrL0xrL0JksY/Fdqy5TMH83FeTzcm7sMkkzdSr67+QMon1Keo1Z1qZKKZWl78
DlfLNuzKQRHry97Exxx9A54znFPaEcRcs05pURjYAkrrdPJvbSGZ9mQl/zZh6ypU
baz9b56Z+fLLGbPte31BEpgAVQ7h61X5GgmPAKXc2USIJbh11j1N1FcUBCBktcg1
w1XFIGn2ac6c3O6Z7v++hQJFFZtFy2b5LTwTajQ8IqPSOAhlD8OG0kqr3jfiQz+m
QdBUKgbsZKCtRh6I63cUP/L4QZoBYIi9NMiRd8TDv9tSScn1LhUJo2PFS1OOYQwW
Y8XkoVsSqjvZmGBLgvzuemfG6Awat8z9/4bJl88rt6ydnVUWAczvl0ab11uQ+pVT
O7Dkt3XYl5Qg+f1/9ZKxx9/zIL1mq9gMHRz2XFMB4ZwrQARFu8xkxKuav17IR6UA
R7wqq+AjfeYaDEF83ckp
=grPj
-----END PGP SIGNATURE-----

--hOcCNbCCxyk/YU74--
