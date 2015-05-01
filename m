X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1888" "Friday" "1" "May" "2015" "23:41:22" "+0000" "mancha" "mancha1@zoho.com" "<20150501234122.GC18039@zoho.com>" "49" "Re: [oss-security] On sanctioned MITMs" nil nil nil "5" "2015050123:41:22" "[oss-security] On sanctioned MITMs" (number mark "        mancha1@zoho May  1   49/1888  " thread-indent "\"Re: [oss-security] On sanctioned MITMs\"\n") "<20150501225815.GA628@openwall.com>" ("<20150501191522.GA18039@zoho.com>" "<20150501225815.GA628@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23930 invoked by uid 550); 1 May 2015 23:41:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23906 invoked from network); 1 May 2015 23:41:45 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; 
  s=zapps768; d=zoho.com; 
  h=date:from:to:subject:message-id:references:mime-version:content-type:in-reply-to; 
  b=U6PiijBKTHeaEdN6c06Bs7uobOu5uvefDrCSaU7U9lIsH82WxS8rE4TlD4oiYxte4DghDr5bTlex
    xA6Q8PWsKmUr+wnNRLbk/hSiW7hFbCf9P2i0g5K/DfQDhgi45Zn9  
Message-ID: <20150501234122.GC18039@zoho.com>
References: <20150501191522.GA18039@zoho.com>
 <20150501225815.GA628@openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ILuaRSyQpoVaJ1HG"
Content-Disposition: inline
In-Reply-To: <20150501225815.GA628@openwall.com>
X-PGP-Key: http://hkps.pool.sks-keyservers.net/pks/lookup?op=vindex&search=0x25168eb24f0b22ac
X-PGP-FP: 56B7 100E F4D5 811C 8FEF  ADD1 2516 8EB2 4F0B 22AC
X-Zoho-Virus-Status: 1
Date: Fri, 1 May 2015 23:41:22 +0000
From: mancha <mancha1@zoho.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] On sanctioned MITMs
To: oss-security@lists.openwall.com

--ILuaRSyQpoVaJ1HG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, May 02, 2015 at 01:58:15AM +0300, Solar Designer wrote:
> Hi,
>=20
> I feel that this is borderline off-topic for oss-security because of
> no specific relevance to Open Source, unless the discussion is somehow
> refocused on aspects that are directly Open Source relevant - e.g.,
> "should we block these CDNs (and how) in Open Source software's
> SSL/TLS certificate validity checks because of those specific risks" -
> that's just an example of what would bring the discussion on-topic for
> this list, not an actual suggestion (I think such blocking would be
> bad).

Hi.

Yes, that might not have been clear because I didn't say so explicitly.
But, implicit in my post was a question of how infosec and its
intersection with OSS (i.e. security policies in FF/Chromium/etc.)
should consider this situation and its implications.

--mancha

--ILuaRSyQpoVaJ1HG
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVRA8iAAoJEB4VYy8JqhaDrO8P+wdob8v8oXLC9KZB5qL4ypjy
ED1EfVXl7XclhZyfbYMOYRSPWXm9qGBLpMy5F9E0VmtDGzO49lC4uMhZcEUoBT+9
BgHjAOxnduUUH38+m22Uw8lfUMSd7dRWmWPcq13lMAs2ztjtmEY8xJtbdIKc4q8M
EocflYbMu9eX0gtkPdfURK5+MyzDx+FBlzt3e0d4hFsTbhQF77hyem1DdX/YKI3e
LDCqUzxO0LcvGQK+o29zpn3F5EbUSCHmP7dVdfmQWgyxoT67Acx+qbF3e4yDxFCR
68nUBpyd4DZ/5XN1vcnbuuvY6/g9XKj1EO3b2ARWA0tF+zlaWirRbaWrmUj/ldGQ
nxqeHLx9DauAeHdzQzRgKic/TR1XTBpTOkOBs+X2PDfTn15cSq/FBo9xFLQKrMBN
kFMn1l+VQbsMpL3pDMPWHX5JsuII4tBul9yVtYg+9hJ+Kot7F2yRNzG3ffVCeymS
p5ZDxZxQavVS++lfMR7oj+za+zqzGq2Nq5bQyAyBkXM7FsvSXJaNqgmwQjNLBQNM
6gKRPGJuvKwn3RygCOssi+upUC4xzzAyGYih/YQ1f5mBPjfqp2Ow7p+s38q2JHQR
DTaXc0waNjKDNgAdJX1Zl6GXay+a35UfejGAyl0EtPDT1j8nCZwkqkUCuHncmY64
MxcVwQTnzyJ0Up9LBF+Z
=Oqxi
-----END PGP SIGNATURE-----

--ILuaRSyQpoVaJ1HG--

