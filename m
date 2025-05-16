Received: (qmail 10035 invoked by uid 550); 16 May 2025 08:32:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 10004 invoked from network); 16 May 2025 08:32:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1747384356; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=2ezF5Waz/qHlj2rXCZiLRJ/3GY3JzDdbUGfAZYD8TfU=;
	b=X21Nf6Xs9IcWeMsL56TnHgAOnCSCMQkylbfeu67xR+mDYK7EsvsFEH5WIuYuqEcZj2AEET
	Oz9LiLzxxGN3cUBXjxT62SARfjlFcfxojdPtc1R+ZO62kvHpmjcVQPxoW7BJ2bTMBpuj+a
	NihvSTz1AHOHvT8xGcX8266ZzzypIYE=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1747384356;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=2ezF5Waz/qHlj2rXCZiLRJ/3GY3JzDdbUGfAZYD8TfU=;
	b=Nou++7J3/4nF7G5A0ECtA1KfG9idWqBnsXilQGBVxUXgtcO5cL5wFT+gyzLhDrLQqI11i6
	ENb17odnjvB2UaAA==
Authentication-Results: smtp-out2.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1747384356; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=2ezF5Waz/qHlj2rXCZiLRJ/3GY3JzDdbUGfAZYD8TfU=;
	b=X21Nf6Xs9IcWeMsL56TnHgAOnCSCMQkylbfeu67xR+mDYK7EsvsFEH5WIuYuqEcZj2AEET
	Oz9LiLzxxGN3cUBXjxT62SARfjlFcfxojdPtc1R+ZO62kvHpmjcVQPxoW7BJ2bTMBpuj+a
	NihvSTz1AHOHvT8xGcX8266ZzzypIYE=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1747384356;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=2ezF5Waz/qHlj2rXCZiLRJ/3GY3JzDdbUGfAZYD8TfU=;
	b=Nou++7J3/4nF7G5A0ECtA1KfG9idWqBnsXilQGBVxUXgtcO5cL5wFT+gyzLhDrLQqI11i6
	ENb17odnjvB2UaAA==
Date: Fri, 16 May 2025 10:32:35 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <aCb4I6AwLnGeruFC@kasco.suse.de>
References: <aCISrQTbLQjaxBZS@kasco.suse.de>
 <CAK84RTXnye4-qBA0Yfachi-8gQHZc2bdcSS=9Zi4cfpaDhCFmg@mail.gmail.com>
 <aCR-A6lIgS2h8efj@kasco.suse.de>
 <yxzsn67mzkjf2bxwkjah6u5q54yg2mqj7tlysm7mjeo4xytwhr@24dslwvnetyr>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hl4sVRz/oCcOGu/R"
Content-Disposition: inline
In-Reply-To: <yxzsn67mzkjf2bxwkjah6u5q54yg2mqj7tlysm7mjeo4xytwhr@24dslwvnetyr>
Subject: Re: [oss-security] screen: Multiple Security Issues in Screen
 (mostly affecting release 5.0.0 and setuid-root installations)

--hl4sVRz/oCcOGu/R
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 16 May 2025 10:32:35 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] screen: Multiple Security Issues in Screen
 (mostly affecting release 5.0.0 and setuid-root installations)

Hi,

On Thu, May 15, 2025 at 04:09:51PM +0100, Stuart Henderson wrote:
> On 2025/05/14 13:26, Matthias Gerstner wrote:
> > Indeed, this is the bugfix release announced by upstream here:
> >=20
> > https://lists.gnu.org/archive/html/screen-users/2025-05/msg00005.html
>=20
> There are two different versions of the tar.gz; at present, some of the
> gnu.org mirrors have one, some have another. The earlier one includes
> .o and other generated files, also there are differences to some source
> and headers around WINESC_WIN_CARET.
>=20
> It would probably be helpful to make a 5.0.2 release to make it a little
> more clear.

these inconsistencies confirm the impressions we gained during the
coordinated disclosure. We believe that there are no well established
(release, development) processes existing in the GNU Screen upstream
project anymore.

I don't think this list is the right place bring forward these issues,
however. You can try on the screen-devel mailing list [1], where some
issues with the release tarball already seem to be discussed.

[1]: https://lists.gnu.org/archive/html/screen-devel

Cheers

Matthias

--hl4sVRz/oCcOGu/R
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmgm+CMACgkQFMQFyXGS
NVO52A//Z5K8AoTBDl3mUA5k1PHKCsjKyJT9A+S9r6/wqGG1NyUSeCC3u9JcO4mq
HTf4XeyTiOS/WhFrYR3bl3BTw2kx94mlgWaYTZmA9rIafzuRZLEYxfGS+nKluX0N
4sDW/W5rMmeijMs30FmbMYYK29/wCAa/NVfrycBaauBkdDFSiUzrzuioHSurQvBQ
K8RTZ6nmuORZ57haLOJXaERaH6zgg7gT/KBcdWZ+5Lp1F/qtO7uqV4WLjS3pTs+N
Cn8lU01SHVlcZdukcF9UrmkFEG+V2/BwhmCb27Coi5KmqNthKVmOPd/QFY0PaTAZ
cthKAHlH7vkwLQg9yhoMWvQeTX+YZWJ3zaFZNzTEjWBfsyfsqyFNs5ehnLO8RO3G
dniH9WK0VqDPfNPkOTPPPIYbltlbKtX4dLa6nuPutkx2Z3TFXtjF/u9z5XNjgHDy
ZHQD0QqcZB33Dwn0sGYuSbuVtkHPS6qrqBFhNYYEiDJnZdWasuoTwCZMSqK4olFP
VzfO2HAe8slB6aiSFc84oPEoHoUP/mIZfRZ9aGLD08gBKhH7KDAovMPv8/p07gfc
+EXP8m6sBKr28cGVvClwMez4jsS4bJ2Blw0I/kbQVpM4tCj8+plMZhuqUlOq7tCQ
1hzEb0+zTCDDE7fibt82b0cXvyAnehcpgXAjm1CZhNL8EfOrYck=
=BITe
-----END PGP SIGNATURE-----

--hl4sVRz/oCcOGu/R--
