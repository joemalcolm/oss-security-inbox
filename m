X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1228" "Thursday" "19" "March" "2015" "14:42:30" "+0000" "mancha" "mancha1@zoho.com" "<20150319144230.GA30392@zoho.com>" "35" "[oss-security] OpenSSL sec. advisory" nil nil nil "3" "2015031914:42:30" "[oss-security] OpenSSL sec. advisory" (number mark "        mancha1@zoho Mar 19   35/1228  " thread-indent "\"[oss-security] OpenSSL sec. advisory\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32474 invoked by uid 550); 19 Mar 2015 14:47:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32428 invoked from network); 19 Mar 2015 14:47:42 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; 
  s=zapps768; d=zoho.com; 
  h=date:from:to:subject:message-id:mime-version:content-type; 
  b=vzXk9kEoutnTvlo0Qey7+nHd6Qv1XjdjKrnhtFnNdxgnby1ljtEmkqLClqlA5y0LTzK/0CqGBc2S
    YSRPh1ETtK5f1/p7KqoG7PxySwh0UOr2HMqKtIuIoj4rnZ/LuJHa  
Message-ID: <20150319144230.GA30392@zoho.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DocE+STaALJfprDB"
Content-Disposition: inline
X-PGP-Key: http://hkps.pool.sks-keyservers.net/pks/lookup?op=vindex&search=0x25168eb24f0b22ac
X-PGP-FP: 56B7 100E F4D5 811C 8FEF  ADD1 2516 8EB2 4F0B 22AC
X-Zoho-Virus-Status: 1
Date: Thu, 19 Mar 2015 14:42:30 +0000
From: mancha <mancha1@zoho.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] OpenSSL sec. advisory
To: oss-security@lists.openwall.com

--DocE+STaALJfprDB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

OpenSSL advisory for 13 new vulnerabilities here:
https://openssl.org/news/secadv_20150319.txt.

Their site seems to be getting overwhelmed (timing out often for me).
So, I've copied it here as well: https://dpaste.de/rTdM.

--mancha

--DocE+STaALJfprDB
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVCuBWAAoJEB4VYy8JqhaDonEQALQumWNDHD2Xi8xcO3C1JIC5
UOtsEShRJyAf9hoNZTMh83pxSNasnZjaN7ysGxxta8ybUFbxwonyZ+uPUt7SJIMO
SjPpfK4IRYw1QKqNJ1Wv7DoXLSsg8+S9T3uxuITOaR5uXm/Gsg81Y+3U3zdQWZbs
UZEBscsjnqSXThWscNSBoRmQ4NySUuTWJddJDJxyWmojbjzifKZHVZLjysHvU9lZ
mIVdsET87yG10G3cw7Mi3tv2ggZTos29TL1z979rB5NZLQtA3AOA4wLJczzY37+O
nC6SOy+CLs9TjLFQ9uxhO4oAsEhYJzhGWP21nQ30pkogmeLcWGEfpWqqRargvmzC
i23PBLs7xZaRvaZYsbPOaxZCsnyoa6bS9MOxIBtULR2/EuTMkgA45l5gokUhidai
f4m0vNZWm90x7Hzsz3xLZZgefKsIgLhwAbWFrn9JuPj9rlvi9X33MfU/NDzW1Fhj
Juh7KbzRde7NoG8QBSveH4PCzIWBg1nM9ZL+JdQC4ImCIoMTdhckUdmws6JGbsfE
342auhBrl6h8aEE2RUlUmXdJpyfu7WFr1x2skveo/U8gnJ8ohnhop2iO9en2o9qG
g7tyCCyqZ7fvr49Zrf4HuNhNT/jzAnSVMLRK+Tds4xzd8lf0xOmYiMSfWbyEV6sf
85fD0NJes7/J6LJgLOtG
=ffRo
-----END PGP SIGNATURE-----

--DocE+STaALJfprDB--

