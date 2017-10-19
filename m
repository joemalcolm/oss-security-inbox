X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1827" "Thursday" "19" "October" "2017" "12:44:28" "-0700" "Seth Arnold" "seth.arnold@canonical.com" "<20171019194428.GK20315@hunt>" "44" "Re: [oss-security] CVE-2017-8805: Unsafe symlinks not filtered in Debian mirror script ftpsync" "^Date:" nil nil "10" "2017101919:44:28" "[oss-security] CVE-2017-8805: Unsafe symlinks not filtered in Debian mirror script ftpsync" (number mark "        seth.arnold@ Oct 19   44/1827  " thread-indent "\"Re: [oss-security] CVE-2017-8805: Unsafe symlinks not filtered in Debian mirror script ftpsync\"\n") "<CAOfWR+GW8oR8+uSKeETF3+mzhhzH5-GiRuJr2sGOnhodefHRaQ@mail.gmail.com>" ("<20171017162507.e7lx6fbnleugoxxa@waldi.eu.org>" "<CAOfWR+EHYftu3Hqbu0qGvk_kk3au-Gkj_WEH95syC3n-QuNnxg@mail.gmail.com>" "<CABMkiz5UkRvC7FRFQ_9nAfG=+gqGXTb-67faWu=s4n=mXghZtA@mail.gmail.com>" "<CAOfWR+GW8oR8+uSKeETF3+mzhhzH5-GiRuJr2sGOnhodefHRaQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3830 invoked by uid 550); 19 Oct 2017 19:44:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3808 invoked from network); 19 Oct 2017 19:44:42 -0000
Message-ID: <20171019194428.GK20315@hunt>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20171017162507.e7lx6fbnleugoxxa@waldi.eu.org>
 <CAOfWR+EHYftu3Hqbu0qGvk_kk3au-Gkj_WEH95syC3n-QuNnxg@mail.gmail.com>
 <CABMkiz5UkRvC7FRFQ_9nAfG=+gqGXTb-67faWu=s4n=mXghZtA@mail.gmail.com>
 <CAOfWR+GW8oR8+uSKeETF3+mzhhzH5-GiRuJr2sGOnhodefHRaQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="0FM4RQAc0jwHekq5"
Content-Disposition: inline
In-Reply-To: <CAOfWR+GW8oR8+uSKeETF3+mzhhzH5-GiRuJr2sGOnhodefHRaQ@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Thu, 19 Oct 2017 12:44:28 -0700
From: Seth Arnold <seth.arnold@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2017-8805: Unsafe symlinks not filtered in
 Debian mirror script ftpsync
To: oss-security@lists.openwall.com

--0FM4RQAc0jwHekq5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Oct 18, 2017 at 04:55:07PM -0400, Robert Watson wrote:
> Removing the ability for rsync to copy symlinks pointing to targets outside
> the mirror tree would greatly cripple it. I need to understand how the
> danger is worth the loss of this functionality.

Note that the fix isn't modifying rsync, the fix is modifying the ftpsync
script that calls rsync:

+    RSYNC_OPTIONS=${RSYNC_OPTIONS:-"-prltvHSB8192 --safe-links --timeout 3600 --stats --no-human-readable"}

https://anonscm.debian.org/cgit/mirror/archvsync.git/commit/?id=d1ca2ab2210990b6dfb664cd6776a41b71c48016

Of course for people who run this mirroring tool as a specific user
account and set file permissions appropriately this is more or less a
no-op. But this is a useful hardening for people who run the ftpsync
command as a user with too many privileges. (I wouldn't have bothered
filing for a CVE for this change; I see it as a simple hardening change.)

This option shouldn't cripple ftpsync as a well-run repository is highly
unlikely to have symlinks pointing out of the tree. A repository with
symlinks pointing out of the tree is already not a suitable rsync source.

Thanks

--0FM4RQAc0jwHekq5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBCgAGBQJZ6QCcAAoJEPMhclmdjS6XqT4H/2Woj3PvN90ke1kkdEZ6IDbR
SyxyE801ywPHzbI2o6HIl8vsmMYfA5xS0WMQ50vu4txXWkL8mJvYr0gUZJFoksKf
38qx/on3QW1anM8Ug7glCqwFlR0F6c4HLnMmYn4zfZtUsPRPfiKHoojxczY1Jt4e
HTAX51LIn2MNBb6ZUfOk5cYRzw/rQB0eI7t9uV9CYkWc3c5BIjNzGxN0aBglgYa6
gTRvk5lseSVduL4DZ1eVWtsxBpWUjtAC7FdtkXcWCHkNtQZJ/og/i7mbM8jLEhfX
nysF776U9660K6avdAxUE2gAS+UbcZTi+kcn6HrcJkKw03vRk5SvRj0c+SiXUJI=
=+wb+
-----END PGP SIGNATURE-----

--0FM4RQAc0jwHekq5--
