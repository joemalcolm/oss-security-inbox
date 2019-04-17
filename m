X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1682" "Wednesday" "17" "April" "2019" "23:20:03" "+0200" "Jan =?utf-8?B?UG9rb3Juw70=?=" "jpokorny@redhat.com" "<20190417212003.GM22360@redhat.com>" "44" "Re: [oss-security] 3 pacemaker security flaws" "^Date:" nil nil "4" "2019041721:20:03" "[oss-security] 3 pacemaker security flaws" (number mark "U       jpokorny@red Apr 17   44/1682  " thread-indent "\"Re: [oss-security] 3 pacemaker security flaws\"\n") "<5c545c03-5ae3-8ad5-f3e1-b6b8c6f873e7@redhat.com>" ("<5c545c03-5ae3-8ad5-f3e1-b6b8c6f873e7@redhat.com>") nil nil nil nil nil nil nil "Re: [oss-security] 3 pacemaker security flaws" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3368 invoked by uid 550); 18 Apr 2019 08:06:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1723 invoked from network); 17 Apr 2019 21:20:18 -0000
Message-ID: <20190417212003.GM22360@redhat.com>
Mail-Followup-To: oss-security@lists.openwall.com
References: <5c545c03-5ae3-8ad5-f3e1-b6b8c6f873e7@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="m8yuz6kcWj4yJ5vq"
Content-Disposition: inline
In-Reply-To: <5c545c03-5ae3-8ad5-f3e1-b6b8c6f873e7@redhat.com>
User-Agent: Mutt/1.5.23.1-rc1 (2014-03-12)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]); Wed, 17 Apr 2019 21:20:06 +0000 (UTC)
Date: Wed, 17 Apr 2019 23:20:03 +0200
From: Jan =?utf-8?Q?Pokorn=C3=BD?= <jpokorny@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] 3 pacemaker security flaws
To: oss-security@lists.openwall.com

--m8yuz6kcWj4yJ5vq
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 17/04/19 15:10 +0530, Huzaifa Sidhpurwala wrote:
> Jan Pokorn=C3=BD from Red Hat has discovered 3 security issues with the
> pacemaker package. Details and proposed patches are available in this ema=
il.

Using the opportunity to fix encoding shenanigans in my surname above,
and to point out to the respective, already merged pull requests for
master and 1.1 branches respectively that also carry an additional
patch that popped up just in time to be added at all, for being
partly related to the prior behavioral changes:

https://github.com/ClusterLabs/pacemaker/pull/1749
https://github.com/ClusterLabs/pacemaker/pull/1750

--=20
Jan (Poki)

--m8yuz6kcWj4yJ5vq
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJct5iDAAoJEGG7sjqej43iifIP/jHmKzhUKHNKz6C7nvILCYvT
FS4FrfGf4kobBJIfUYUVtonKG4Kii3U9J/1iMsOPjLRL7LwW2gOAe5CzAUD6NKXW
yv0owpF6yTXzx0kOnTU6mU7xZbTdpX4AuzrrxVJjmWShMDXEW/bNn3eJG+ZW8JVL
jVfid6UAvqdy9tCkIUtgLS9z0A8dmimS6AToCynAgbg00cpci47hP650WZLKzMT+
yH9MJCOYbMtjWbnX4s+NW7NM4q06iO/N1ZBFo9yvGdpjE8hOTDJOe7eEiIesUlao
pq1w2GNK3B8z08TQkKvODs6ikrXvDx9e+ZZGraxpaJohclcHwwXQWNxCI2yme4a6
YTUrZ2wIBO5YtT5rvpg6h+W/lyCTV0/X4uRc2MCxvFmGoTDkp3HfPj/A3HF3khiR
wWxyBZgS2pVj3yjjjtLQiL/dkYUCZKJo4Z9HwUO/bnVuZk7+eI/3rrkHKiu0kysQ
ozyF+6xw3EYfuaq8XOAEvwx5EghDVzwVYezqW5m79tRf+BHpeyRXH1Ezh2V0kltC
11G1Tg1k6SU9v8y3bkgLtDYT4m/vUxfVEbMrUO60JoBZkJ0TFlgLGK3TCsRdlebG
HAViMng143PdZms8QtaDKJzAQsq0jyMM6WHM0BG0NY7YR5zGkXvHOYF4oDpXOSBU
c7JxeWH/t9+oFyngH9u/
=jKHZ
-----END PGP SIGNATURE-----

--m8yuz6kcWj4yJ5vq--
