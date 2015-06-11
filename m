X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1172" "Thursday" "11" "June" "2015" "17:11:13" "+0000" "mancha" "mancha1@zoho.com" "<20150611171113.GA26244@zoho.com>" "34" "[oss-security] OpenSSL Sec Adv 20150611" nil nil nil "6" "2015061117:11:13" "[oss-security] OpenSSL Sec Adv 20150611" (number mark "U       mancha1@zoho Jun 11   34/1172  " thread-indent "\"[oss-security] OpenSSL Sec Adv 20150611\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3269 invoked by uid 550); 11 Jun 2015 17:12:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3130 invoked from network); 11 Jun 2015 17:11:35 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; 
  s=zapps768; d=zoho.com; 
  h=date:from:to:subject:message-id:mime-version:content-type; 
  b=XP19y4SH0zVEWY/eBOpmrTT8vNjZcZt9F2euBXhxvhwAQBvB5IESBiZ7MdScbfkRVvigB9vu9Wmu
    YZ3Qj+ElokR3u6ZoB0HZpg80gQRDsIv1vZCBT+peClHI7n6wdd9U  
Message-ID: <20150611171113.GA26244@zoho.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sm4nu43k4a2Rpi4c"
Content-Disposition: inline
X-PGP-Key: http://hkps.pool.sks-keyservers.net/pks/lookup?op=vindex&search=0x25168eb24f0b22ac
X-PGP-FP: 56B7 100E F4D5 811C 8FEF  ADD1 2516 8EB2 4F0B 22AC
X-Zoho-Virus-Status: 1
Date: Thu, 11 Jun 2015 17:11:13 +0000
From: mancha <mancha1@zoho.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] OpenSSL Sec Adv 20150611
To: oss-security@lists.openwall.com

--sm4nu43k4a2Rpi4c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

FYI, today OpenSSL released new versions (1.0.2b, 1.0.1n, 1.0.0s, and
0.9.8zg) to address several security issues [1].

--mancha

[1] http://openssl.org/news/secadv_20150611.txt

--sm4nu43k4a2Rpi4c
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVecExAAoJEB4VYy8JqhaDU8QP/0Ts5fG1fz9jgMDHY2NNRHof
qcQo7jaU8xxY9b2Wloo/e6uoeDZwXceqcemt9cHRLvb6oLyJGAyb+O8jD4/ranPB
Oie0SHCMA2tMTSwcYyatquFTSc82KIZ+HwMZyUswQcZB81RWRZB7naO2NLcNjdWj
x7tm8R7BlN0ZaMswheyXFS1gVdhjDuOz7am5geaD5caN1VhKCcay7Xz81j9pRWTe
heyl9BIkgLMn1u7otkhj2zCHq3Ou5wA6V2cGLEYt8kpvYUYGetpyC9YaeumCbvEG
eXYRtlbJwKv1J6roCP+AzPomWPAwrSpesFib/NEAlcTGVwkqpFXiUA2T1KytoJRw
3c8XecJs2MrPgaINAqJzCk+BDo99QxqhZcLIMABnFptJNkiMk8qSiut3fuGHUY0w
Ev1LiLrzkj2ssRP+LpVHOTbGUjiSlV8Nct8swqcdmYIMQWjWJxzzXTc0jP6Vfc9J
Oi8a4U7o7eM1+ZHgQ1w/K9Bm8O76QvmQG//G5fHqNfarShrznE4wSmLZZSUpUhLY
bwMzpVU1YExr2F7tfSAYC7iygtths/sOrlakeeFLSASNAglc5Yef3aBrZO1QFZtv
gAw74Y/oc4uoLvqZ97JivRWLlI3tiyd+9PCVVwpsQ+DHlIJYyxZ8ggKP/t8JaZc3
JilAB4MA7jjtivWHyIWi
=IXjl
-----END PGP SIGNATURE-----

--sm4nu43k4a2Rpi4c--

