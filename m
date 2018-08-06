X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2672" "Monday" "6" "August" "2018" "12:27:03" "-0400" "=?iso-8859-1?Q?St=E9phan?==?iso-8859-1?Q?e?= Graber" "stgraber@ubuntu.com" "<20180806162703.GB6609@castiana>" "73" "[oss-security] CVE-2018-6556: lxc-user-nic allows for open() of arbitrary paths" nil nil nil "8" "2018080616:27:03" "[oss-security] CVE-2018-6556: lxc-user-nic allows for open() of arbitrary paths" (number mark "U       stgraber@ubu Aug  6   73/2672  " thread-indent "\"[oss-security] CVE-2018-6556: lxc-user-nic allows for open() of arbitrary paths\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16129 invoked by uid 550); 6 Aug 2018 17:45:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10024 invoked from network); 6 Aug 2018 16:27:19 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Dj+y4yvdpHfDU0ndnj+X+8d6lrPtUVt9+6X7GN/AH+g=;
        b=K3J0g5X3jDPqb8PTXVNERDJdvz7qaMqE+1ae55uDovvMw6QuqM4gqB+5EKnZTjdvCX
         /GcCLO9LN79vJHDrT363h3W9htidJim7eMkC0lhF5m2J2yggHaQAGjYzuE0q75q+qEjl
         veR6GJmrx2mpNknduZ4TAjKB1a4xJhHJmoGt/UfjH13UGPRSF205p7dWRHCsbwI0L8au
         L/D/WeE8l3iZciCUAtXYCREHBO/cYqOVV92ESvRyhK+ovgj1JEDC7RX0wBCl/IDoybPf
         p1uJa3rNmwH5JgsGefc/srd8w8kp7WO7Tn+oCWfhvfeaJ/CRVk8XiM2e3FX+VCAL81YH
         58Pw==
X-Gm-Message-State: AOUpUlH8xmv9rs2A+bpyYWgvgzFU+jXJboM3mujza1MqekJwOQtit3ll
	soGdGzrZwKyyQ6F8NY2IZHDd+ygO3fI=
X-Google-Smtp-Source: AAOMgpdPO0G2PQyrGmW6UuWfsz7KHHMMHqpnbekfCh/7rk6viFyZ3Mxx9wGVs171+Og5WLkUtkvojA==
X-Received: by 2002:aed:3bb7:: with SMTP id r52-v6mr14797020qte.77.1533572827326;
        Mon, 06 Aug 2018 09:27:07 -0700 (PDT)
Date: Mon, 6 Aug 2018 12:27:03 -0400
From: =?iso-8859-1?Q?St=E9phane?= Graber <stgraber@ubuntu.com>
To: lxc-devel@lists.linuxcontainers.org,
	lxc-users@lists.linuxcontainers.org
Cc: oss-security@lists.openwall.com, Matthias Gerstner <mgerstner@suse.de>
Message-ID: <20180806162703.GB6609@castiana>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ftEhullJWpWg/VHq"
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: [oss-security] CVE-2018-6556: lxc-user-nic allows for open() of arbitrary paths

--ftEhullJWpWg/VHq
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

This is a notice for a security issue affecting the following LXC versions:
 - 2.0.9 and higher
 - 3.0.0 and higher


Description of the issue:
  lxc-user-nic (setuid) when asked to delete a network interface will
  unconditionally open a user provided path.

  This code path may be used by an unprivileged user to check for
  the existence of a path which they wouldn't otherwise be able to reach.

  It may also be used to trigger side effects by causing a (read-only) open
  of special kernel files (ptmx, proc, sys).

This was reported to us by Matthias Gerstner from SUSE and Christian
Brauner on the LXC team took care of finding a workable solution and
preparing the needed updates.


Fixes:
 - stable-2.0: https://github.com/lxc/lxc/commit/5eb45428b312e978fb9e294dde=
16efb14dd9fa4d
 - stable-3.0: https://github.com/lxc/lxc/commit/c1cf54ebf251fdbad1e9716796=
14e81649f1c032
 - master: https://github.com/lxc/lxc/commit/f26dc127bf5d66e8c29f8584c64bd9=
7c9bbbc574

Linux distributions were privately notified with about a week notice and
so should have security updates ready for this already, or will shortly.

We will not be issuing emergency release tarballs for this issue so if
you're maintaining your own build, you should be cherry-picking one of
the fixes above. We do however intend to release LXC 3.0.2 very shortly
which will include this fix among other traditional bugfixes.

References:
 - https://bugs.launchpad.net/ubuntu/+source/lxc/+bug/1783591
 - https://bugzilla.suse.com/show_bug.cgi?id=3D988348

--=20
St=E9phane Graber
Ubuntu developer
http://www.ubuntu.com

--ftEhullJWpWg/VHq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEYC9WdmPlk7y9FPM4xjiXTWR5LWcFAltodtQACgkQxjiXTWR5
LWeyNw//T8CX6fUTrF4/hRDsc7OTeWn+2xU99EXZK+HvGx7+OyZFApoTR6Zk8oo0
OmiEvUteE4T1U4eYyygPi1nAVbYdyJqWE0NajZYptPjZkeLZwCpKTySAnZwNjfyt
4n2PDRpBIYz24VZQroFT5l0PkhoQK175Tgzu4KudyS9ZJzg+0RgUqYCWy9xIpZ63
N21EvhjSZeLteAWOfWYjs1uKihioLdLBTvomA+QmrNQ5ICUTqKpLEcGQ5fpUmxMg
fpGiAMVpNRvdb+gkpICjehRLzAoxJrCfFMAaEtEeb9w7zYcx8acx2V+Ww+MIZIXu
eFY+9CnxPJgGJ6i3oZS45WjQKFaQ7ASRdwhtAl2NaDSTUj/o9FVFlIF+ujmnRsXd
nvUvC3Smg+9+6pmTtisXoqH21s3ZdFKGyzFva5d5KLmZnBTc35FWKu0ruiGD5Sr0
h/QfxW55wFOiH99yMkvWPGujvlWt/79Qc7+d+Gu7Rb2TzgOaKKc52wdNEYrg6I1e
DX5SZWD8rv5zToNuheetKWRVbNWPqfWN0j1B1aVFSd26AFA2BvWC+9t25OI/d6QT
eAVM/74zrUzVEtmo7S6/zhh4kQW6NoNQB/6WWQpeffBYhAxbgHy9BIX+GYPfuA/J
lrFhgrTFfrzOxnTBqbYG1iblGYjchFQ7A+aIIluySxWZHYuALrA=
=SdlZ
-----END PGP SIGNATURE-----

--ftEhullJWpWg/VHq--
