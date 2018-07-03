X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1365" "Tuesday" "3" "July" "2018" "10:11:45" "+0200" "Matthias Gerstner" "mgerstner@suse.de" "<20180703081145.GA8116@f195.suse.de>" "36" "Re: [oss-security] accountsservice: insufficient path check in user_change_icon_file_authorized_cb()" "^Date:" nil nil "7" "2018070308:11:45" "[oss-security] accountsservice: insufficient path check in user_change_icon_file_authorized_cb()" (number mark "        mgerstner@su Jul  3   36/1365  " thread-indent "\"Re: [oss-security] accountsservice: insufficient path check in user_change_icon_file_authorized_cb()\"\n") "<20180702173254.GC2555@espresso.pseudorandom.co.uk>" ("<20180702122122.GD8324@f195.suse.de>" "<20180702141024.iudvf2tx7fsf3q66@jwilk.net>" "<20180702173254.GC2555@espresso.pseudorandom.co.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9419 invoked by uid 550); 3 Jul 2018 08:11:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9388 invoked from network); 3 Jul 2018 08:11:58 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20180703081145.GA8116@f195.suse.de>
References: <20180702122122.GD8324@f195.suse.de>
 <20180702141024.iudvf2tx7fsf3q66@jwilk.net>
 <20180702173254.GC2555@espresso.pseudorandom.co.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="SLDf9lqlvOQaIe6s"
Content-Disposition: inline
In-Reply-To: <20180702173254.GC2555@espresso.pseudorandom.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Date: Tue, 3 Jul 2018 10:11:45 +0200
From: Matthias Gerstner <mgerstner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] accountsservice: insufficient path check in
 user_change_icon_file_authorized_cb()
To: oss-security@lists.openwall.com

--SLDf9lqlvOQaIe6s
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

> It might be a good idea to double-check that the result of
> g_file_get_path() starts with "/", doesn't contain "/../" and (just for
> completeness) doesn't end with "/..".

I tested the patch initially and and an isolated test case shows that it
does cover all these cases. No system calls appear to be performed.

Regards

Matthias

--SLDf9lqlvOQaIe6s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAls7L8EACgkQFMQFyXGS
NVPhzg/+Iu2HKXF0kh39DkPGPZdpA1+qMDHYRq8XwyM8F/b9jLmlcYm+foeeIPor
6VKTBmQJmFn2np+p/+/ghNaG8kZo0Pwfv45Fx6zW6K1b1eW+ITiKRWmUApYRR7od
P5n/ZieOw7vZzcAf88tDvSbcE1Zx2CVrUGSDLFMqQkiL+ogurjaW0UbQP7WhO2S5
ZEeY2+8qk7GrUO02XHqfaQg/PQ5J0fy8v+gqnX0hSTu8IYBqiQ+cVdx5jGtvGnqk
umtqbUHVPLk7g8aCG46y2gLV9akQVnlT3NpFVXEi1VcGHf7nGS0lw+vPmxDaqx73
mxG8AOJ6LNAWXN/N1ZHHbJE9+7obHaq1CbgSY+I+Jza/IYQYpvJsdkCiUBoDGNjd
wEE2QaA+9niSZAF2Bdzh8XUK3YgLY0ZRS//SMtPHm5yxdamV4IPY4ggNYlu82vyO
I7RUiY1QuVk7uALlMKihOFAhgGKtII8h+wggop6vhxUrHVprwL1ekTQD3zPIzGoB
GgZOcnhvUQMD5BT9Odctqmb442YpAi6jnmUDpuNQGbCSXpGCaxZzvby3kxhmctb3
LqyCN+9w+WSHPotkflD2O12hcAtGbhFn08TS8QMp6h6FPae/tPvBHM6r6EOQE0/1
1u7gYoqVp/lX+ioW8iI3hVF/FEJbbZa1wQB0KIHjPNJUFdHwzkc=
=WLo+
-----END PGP SIGNATURE-----

--SLDf9lqlvOQaIe6s--
