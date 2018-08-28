X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1189" "Tuesday" "28" "August" "2018" "12:43:16" "-0400" "Daniel Kahn Gillmor" "dkg@fifthhorseman.net" "<87sh2y5tnf.fsf@fifthhorseman.net>" "34" "Re: [oss-security] Travis CI MITM RCE" "^Cc:" nil nil "8" "2018082816:43:16" "[oss-security] Travis CI MITM RCE" (number mark "U       dkg@fifthhor Aug 28   34/1189  " thread-indent "\"Re: [oss-security] Travis CI MITM RCE\"\n") "<20180826005658.GA5795@osmium.pennocktech.home.arpa>" ("<20180825214923.ppes3ivrw73mbmrm@jwilk.net>" "<20180826005658.GA5795@osmium.pennocktech.home.arpa>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1585 invoked by uid 550); 28 Aug 2018 17:00:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1561 invoked from network); 28 Aug 2018 17:00:48 -0000
In-Reply-To: <20180826005658.GA5795@osmium.pennocktech.home.arpa>
References: <20180825214923.ppes3ivrw73mbmrm@jwilk.net> <20180826005658.GA5795@osmium.pennocktech.home.arpa>
Message-ID: <87sh2y5tnf.fsf@fifthhorseman.net>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Cc: Jakub Wilk <jwilk@jwilk.net>
Date: Tue, 28 Aug 2018 12:43:16 -0400
From: Daniel Kahn Gillmor <dkg@fifthhorseman.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Travis CI MITM RCE
To: Phil Pennock <oss-security-phil@spodhuis.org>, oss-security@lists.openwall.com

--=-=-=
Content-Type: text/plain

On Sat 2018-08-25 20:56:59 -0400, Phil Pennock wrote:
> The keyservers are a swamp; if you want to include one key, then include
> the key as static data in your builds/CI configuration, so that it's
> coming from a trusted source each time: your own data.

This is great advice, and not just for builds/CI configuration.

I made a similar suggestion recently to clean up the starttls-everywhere
datafile updater:

    https://github.com/EFForg/starttls-everywhere/pull/65/commits/eb0a28e3fa141d4fb445c00df3ab7f3765ded859

In some ways, the keyserver network has done the OpenPGP community a
disservice, by encouraging OpenPGP users to refer to keys by
fingerprints (or even worse, by key IDs).  While this is a useful
shorthand in some contexts, it's really a security/reliability
anti-pattern when it comes to secure programming.

      --dkg

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQTTaP514aqS9uSbmdJsHx7ezFD6UwUCW4V7pAAKCRBsHx7ezFD6
U8kuAP4lBAP3lkdYONcb1QO9qBZWAMm6Sk26XjUDlwerESBEWAD+IlTTxq9gq79R
vJO/gLdh45CItYPw3lg79yulwoNFhQw=
=ULwX
-----END PGP SIGNATURE-----
--=-=-=--
