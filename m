X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1424" "Friday" "12" "June" "2015" "01:37:33" "+0000" "mancha" "mancha1@zoho.com" "<20150612013733.GB26535@zoho.com>" "41" "Re: [oss-security] OpenSSL Sec Adv 20150611" nil nil nil "6" "2015061201:37:33" "[oss-security] OpenSSL Sec Adv 20150611" (number mark "        mancha1@zoho Jun 12   41/1424  " thread-indent "\"Re: [oss-security] OpenSSL Sec Adv 20150611\"\n") "<20150611171113.GA26244@zoho.com>" ("<20150611171113.GA26244@zoho.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7457 invoked by uid 550); 12 Jun 2015 01:37:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7439 invoked from network); 12 Jun 2015 01:37:55 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; 
  s=zapps768; d=zoho.com; 
  h=date:from:to:subject:message-id:references:mime-version:content-type:in-reply-to; 
  b=gxW9rdYGiZEi4cbpP3gTweC1sAJqvUXRzDIAQN/EiXGCwQb7zMGd/laEcT+pUTkFeeR/LOH30lSy
    BDjebT6iRHSCuZQ1ijfX4T/scEj3qLmvLTeJ8ARRbWsJbYxECvOQ  
Message-ID: <20150612013733.GB26535@zoho.com>
References: <20150611171113.GA26244@zoho.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="i9LlY+UWpKt15+FH"
Content-Disposition: inline
In-Reply-To: <20150611171113.GA26244@zoho.com>
X-PGP-Key: http://hkps.pool.sks-keyservers.net/pks/lookup?op=vindex&search=0x25168eb24f0b22ac
X-PGP-FP: 56B7 100E F4D5 811C 8FEF  ADD1 2516 8EB2 4F0B 22AC
X-Zoho-Virus-Status: 1
Date: Fri, 12 Jun 2015 01:37:33 +0000
From: mancha <mancha1@zoho.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] OpenSSL Sec Adv 20150611
To: oss-security@lists.openwall.com

--i9LlY+UWpKt15+FH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 11, 2015 at 05:11:13PM +0000, mancha wrote:
> FYI, today OpenSSL released new versions (1.0.2b, 1.0.1n, 1.0.0s, and
> 0.9.8zg) to address several security issues [1].
>=20
> --mancha
>=20
> [1] http://openssl.org/news/secadv_20150611.txt

Heads up to vendors pushing upgrades; there might be some ABI breakage:
http://marc.info/?l=3Dopenssl-dev&m=3D143407129721271&w=3D2.



--i9LlY+UWpKt15+FH
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVejfdAAoJEB4VYy8JqhaDiPoP/2tGAsh4P7w2oN/ZdkOt1RO0
8WgzbCa25B9EODozYHgHYh264VAsVbVzw/94hR05Vzt26oBsKrCEFYoGtK5VGbXD
J1K/2YxdalUoqDnWvvRR4bDu7AP+PeyhQsakDb7l6oefr1whFL/7/FVVcNd85auU
/8zKBgfQf7ZRti4FkZyBVNs5anki92K8U5mldhF9IuXK/p6ZcUCWRq7YQrFz1sza
WCYmYiCvYNl5opLC2cHC+v72h60hLWbAfcQd/4mTRu9ASzavFjkLOPGTZrV1y3bs
Sut+H/Lst4TYHhD2If6IqNU/RqKnb3C7qSTnkaLeo4r2O0Qu6roUq6j1i+F8VoRk
VK9eibBMH0fLZoxKLXTLWpqSHTHx2ErOyybg+AlcMjwGaiE7AoDHeZP+o6nCK2Mo
F33RjzVZ01XT++bB5XZq3wGeEP4MRRLtfuaGltmANYlLkvgeDKbRE7/kFJ++ca9V
vkPQ0upvWzZe5UTx3Vcm6HlM1h2FvEHAUcgfzGPqTKGQKKPF3hQaCeddz94AWvSn
kctL3+y4yHm5lfzhZ9Ukkzxn15V8lXkYfTrao5AXF8wm7NW6d7qBLYOXDNCIzNQ2
IyriIiy1zo/T5ydDQtddnVXkcAwnSR7L9/GFSmFz0//8iFdGjyFVdSRbG7XfVOCA
OiAl5j1sYUSSSV6xB6Jk
=k3bV
-----END PGP SIGNATURE-----

--i9LlY+UWpKt15+FH--

