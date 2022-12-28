Received: (qmail 28003 invoked by uid 550); 28 Dec 2022 15:37:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22436 invoked from network); 28 Dec 2022 15:31:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hardenedbsd.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vuofHjDm4STYXNdGsep6aD4JXI32+stKyT0rMvY0yIE=;
        b=gtw3JBQVK415jmrBeDvapjJYJdJrnltnKNSkGA6YgrLtP2bs/93MkQJeCOIQjucj2f
         jZ1To18EjK2jj0xhwN8IYMiq6Xg5V/SPv5nZlAucA3ifJ4UAbPbg5X3GMMFD4ImRFlfu
         DJbtp9w36RU53oYDAzNd29JbudrOxckr34nj6U+d9FMncElAubAJ6NiUceU+gLE6umJn
         z6D7sclZS0mLbXhJnd26xqMG2dfmuKWyl6XP/Yyaf2A0JcD1cory6tUYo/TPu2YMttAA
         ZAm4dfTdT/xpiY0SVWQ6xCzNiFlrWcmNlJbolRbXkuSOqJhvyzlCXB04MdpLlyKrX841
         OYfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vuofHjDm4STYXNdGsep6aD4JXI32+stKyT0rMvY0yIE=;
        b=eSGz0FGB8wZc+UgSg+YeqmL6F8n/Ou/ca/m+L+1eS35Qk9P2fKhgW8jo1SPpAUV66E
         pMvBhY7sLgdineAXK4Mr3YvL21BXzhlnKcd6NjUVmn3rCJEZ4Ljq3TsM3SsNqDR9bnEP
         4d37kwUNEr5ixWE+R6PNjChGWh3O2/JWYmgZXdgKPKjB43z1VaQGFd9FaQdWSvn2VNfG
         ypgYduayjCoAB2b+cHHpFPs+e8dyQ/Uj3GctOXT0HeLP4ygiDaScTpitVWvPuxgKJug2
         0qF5aiHlEUS2aLpByBq5mn2UEGvgU0hS/orwy7GshqLa0S71JvBzKUVGVtMEwJYDEHrz
         LuOw==
X-Gm-Message-State: AFqh2krF3Z+3I7i2A0zWQfLzkN6+0rhpbWM05KcamWVAj4eR7rjyCvlz
	1gqvmVPNW2aSmukApSTBX0oSE/q37MjBhgX8cIYNc4ucn8iprpnbDl+ujYYKzuxVqhqh3SAVjWW
	oOVVZNvj6+hYmXgORiQAB6zSPj2MHbABIpOjvXHDcHOtwrYtWx1MkAj/Dg+Xz1X9LM78vHmZXEH
	Q0AxGZZmKsei+gnk2fog==
X-Google-Smtp-Source: AMrXdXsJ7fP4Q5mz0Ra/FOpqE5hbViJkZkTFXPjbP9L+A24yyFhTx8aCgTBTZVxN/TmkNlUjEx+7sQ==
X-Received: by 2002:ac8:534c:0:b0:3a9:8183:6a04 with SMTP id d12-20020ac8534c000000b003a981836a04mr43048522qto.54.1672241498856;
        Wed, 28 Dec 2022 07:31:38 -0800 (PST)
Date: Wed, 28 Dec 2022 10:31:37 -0500
From: Shawn Webb <shawn.webb@hardenedbsd.org>
To: oss-security@lists.openwall.com
Cc: Alejandro Colomar <alx.manpages@gmail.com>,
	Michael Kerrisk <mtk.manpages@gmail.com>,
	linux-kernel@vger.kernel.org, linux-man@vger.kernel.org
Message-ID: <20221228153137.4w4bhaqt4fb5vlio@mutt-hbsd>
X-Operating-System: FreeBSD mutt-hbsd 14.0-CURRENT-HBSD FreeBSD
 14.0-CURRENT-HBSD 
X-PGP-Key: https://git.hardenedbsd.org/hardenedbsd/pubkeys/-/blob/master/Shawn_Webb/03A4CBEBB82EA5A67D9F3853FF2E67A277F8E1FA.pub.asc
References: <Y6SJDbKBk471KE4k@p183>
 <Y6TUJcr/IHrsTE0W@codewreck.org>
 <1a1963aa1036ba07@orthanc.ca>
 <20221228152458.6xyksrxunukjrtzx@mutt-hbsd>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="k7cz6avvpg6f66a7"
Content-Disposition: inline
In-Reply-To: <20221228152458.6xyksrxunukjrtzx@mutt-hbsd>
Subject: Re: [oss-security] [patch] proc.5: tell how to parse /proc/*/stat
 correctly

--k7cz6avvpg6f66a7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 28, 2022 at 10:24:58AM -0500, Shawn Webb wrote:
> On Tue, Dec 27, 2022 at 04:44:49PM -0800, Lyndon Nerenberg (VE7TFX/VE6BBM=
) wrote:
> > Dominique Martinet writes:
> >=20
> > > But, really, I just don't see how this can practically be said to be =
parsable...
> >=20
> > In its current form it never will be.  The solution is to place
> > this variable-length field last.  Then you can "cut -d ' ' -f 51-"
> > to get the command+args part (assuming I counted all those fields
> > correctly ...)
> >=20
> > Of course, this breaks backwards compatability.
>=20
> It would also break forwards compatibility in the case new fields
> needed to be added.
>=20
> The only solution would be a libxo-style feature wherein a
> machine-parseable format is exposed by virtue of a file extension.
>=20
> Examples:
>=20
> 1. /proc/pid/stats.json
> 2. /proc/pid/stats.xml
> 3. /proc/pid/stats.yaml_shouldnt_be_a_thing

To expand upon this idea, lets define an example json file:

{
	"schemaver": "20221228001",
	"name": "cat",
	"state": {
		"raw": "R",
		"intval": 1,
		"Pretty": "(Running)",
	},
	"tgid": 5452,
	"pid": 5452,
	"ppid": 743,
	"uid": {
		"real": 501,
		"effective": 501,
		"saved_set": 501,
		"fs": 501
	}
}

And so on.

--=20
Shawn Webb
Cofounder / Security Engineer
HardenedBSD

https://git.hardenedbsd.org/hardenedbsd/pubkeys/-/raw/master/Shawn_Webb/03A=
4CBEBB82EA5A67D9F3853FF2E67A277F8E1FA.pub.asc

--k7cz6avvpg6f66a7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEA6TL67gupaZ9nzhT/y5nonf44foFAmOsYVkACgkQ/y5nonf4
4fonfA//aKcBZ1LuRMDhEhGwkR7Iq3V988pnjIrfeJzNM33Cpf4zWtfsyR73gStD
29peSWTP+L9hg6A9K9FcvcbseYYYhlegTtqPtxdbEbL7fqBzm2LDLD9Vh3RTQE1Z
qYMOXSGRjbjivPfoDDGXlFahY5Lqt5NX5w1/wfR+4NpbpGZ/VyXo48XtSmiG9XuV
+LDGIQ1FOul4M1XqqD3CApJsjuOmwtLGQxQIcatQYgkOin9uN1O8bYMVHiXXPEJp
q+s+gZIT9sxHLKvNbAjw3WRzTHMPNPk2PTxLkNjxBbrxd428UNamJlPmLwPsp2xg
OucAMb3coSh+Af71K7f+bZ6lv/ZAVKbA0Vpmun887rww/dlcPKUd+DpdVKc2JK8k
pvQy/OZIly8+uggmx3qfz8svjpR0wD68v5wX/i/+UXsszgp9ArlCKbAlORTxea+A
5R7wQi9QS0jKk04zMA5GZ2W8gEFgjRYdjPe3oIt64mcbHKE8qaj3kZNjgoyqXl7e
zmMjP776S8ot/aPsHTho9sizi8RuqjMbX3q4TePjWajbJC99Akqoo6Ah/x2rNZ54
U3l5aQAEOw8E/sMYAjBNMVIJFZz9yEyDgeYqXBOI3zl68h6A/hdDtd75higpM1Qo
8pHkUFFYDOBKfaIdJmDR4QNf/DPOYQaW9RZFrF6p6c2L5WPdOko=
=Epsn
-----END PGP SIGNATURE-----

--k7cz6avvpg6f66a7--
