X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1646" "Monday" "15" "May" "2017" "23:34:50" "+0800" "Yao Wei" "mwei@lxde.org" "<20170515153450.263na5xnq2clfrtu@madoka.m-wei.net>" "37" "[oss-security] CVE-2017-8934 pcmanfm: single instance socket may be blocked by another user" nil nil nil "5" "2017051515:34:50" "[oss-security] CVE-2017-8934 pcmanfm: single instance socket may be blocked by another user" (number mark "U       mwei@lxde.or May 15   37/1646  " thread-indent "\"[oss-security] CVE-2017-8934 pcmanfm: single instance socket may be blocked by another user\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29867 invoked by uid 550); 15 May 2017 15:37:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27761 invoked from network); 15 May 2017 15:35:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lxde-org.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=xnDzzvAPjYom8kQJ33q3PfVOYOQW5vw5hqtu/lDYMHk=;
        b=AvKG5Cj1Xya9gb3GXCLNmhnC3bTtph5lzn6l20CdEzwvlNWtJjFZQPhq2b7AUA7Ux1
         r4zmxYrziSvVotL514GgSlLfzrWyrJIEdxOJYjBLstX38dP5o8MOEa0rTAIuqQPSVzwm
         4ugzRXM51UAIeiY3BL0JwRhg2BF4IFZnO92K88d02qxvkUnl/5uEJBdbjOAjJ6r2/aC4
         B/sFb82A1nAAdDrDSUKbPNJkJ1keB7yC9xCjSJp9Kpm8Xom9E7e3s91wTUTm2dY9vG2n
         YZuuItjoE2gbrV6EnVz0y8dEgk/3/+AVHxWW5gyjCeqwKPfy8iyPHcwPV1r1VHAbTqQI
         fVAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=xnDzzvAPjYom8kQJ33q3PfVOYOQW5vw5hqtu/lDYMHk=;
        b=n6jOE8J2KccFg8/QJPKh5ykq6soW/GNe6t/wEm1fR23Wn8IYbnyiGRbiM4gU0tRwEW
         ZyQv/dYVW9fDlM5n4mX4d8hFHuX2iRjFxG75du1/X512XguNcicgRZnClKIUrLIWef1y
         tvU2rwWQN1heMmnUIBYkvgDsfEglYOBFbvPp1hu0Z94OVYVDwQ0CBNfhzDDqIAasn0L5
         lLximeNe24j96FSBo7LAOp3+vv3Twcb4ebJo5uCZHE7CXav4X+c44CUVlUCXhKfAmasi
         H2P4iKtDZg7QHu2WKVMjP8r6SHu6Pp1bm7MFkyF6QYb6lYt+hzhRsuPq4IZWJIS0lqKK
         DR8w==
X-Gm-Message-State: AODbwcAJighKsfSWO+671V0F5J7Tevyao25lKNOBXR4MhiZsPamVklCJ
	umx8G2BH1XZU6SPZ
X-Received: by 10.99.136.65 with SMTP id l62mr6949990pgd.151.1494862494623;
        Mon, 15 May 2017 08:34:54 -0700 (PDT)
Date: Mon, 15 May 2017 23:34:50 +0800
From: Yao Wei <mwei@lxde.org>
To: oss-security@lists.openwall.com
Message-ID: <20170515153450.263na5xnq2clfrtu@madoka.m-wei.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hkaeqgsqiepb72z3"
Content-Disposition: inline
User-Agent: NeoMutt/20170306 (1.8.0)
Subject: [oss-security] CVE-2017-8934 pcmanfm: single instance socket may be blocked by
 another user

--hkaeqgsqiepb72z3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

The socket placed in /tmp is predictable and public-writable. Therefore
if one user placed a symlink to another socket instead of socket for
another user then said another user will either be unable to use
pcmanfm, or may send requests to the first user's pcmanfm.

This bug has been assigned to CVE-2017-8934 [1].  A fix has been
committed to pcmanfm's git repository [2].  LXDE developers are
working on a release which fixes the problem.

[1]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-8934
[2]: https://git.lxde.org/gitweb/?p=lxde/pcmanfm.git;a=commitdiff;h=bc8c3d871e9ecc67c47ff002b68cf049793faf08

--hkaeqgsqiepb72z3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE/tVDSEUoffJikxSJz7v84LdPGxQFAlkZypkACgkQz7v84LdP
GxRIQBAAmS42uAnphAOaTaf2KXwOd/EakLg+4CW8Rgtr+gve+wGCQj63i3AtsK7t
gXWC26De/CmXzOgXQwQPdAN8GzCOMvnlKwmVMCwtcWfb9OquN4HOklqtCryC0kpV
NJoGSirQTZi88C/L5FclSfqFpoJgSB7VpVoRj2+rRUTOpxrPUJgv0UIEunA6ibSW
JxpEWGAS2UpoAWMq+ojXr0t/Xn14HjDbD5hSTvA7iIAafRQWA8UtS9eVAyAtguB/
BPIceGLO1XnTcJv3g7iZGp2fuoVsFxaZ/ojvk5SGXkM7JLIPZ2CyV0ZP1HwiArw+
ffLknyGwz4YCVAnZNz2nd0Q0aJzEHMqc8ffYEVzHCXGbWp2JfWKuMhv6H1Qq+N9N
NqeXFtETNWVp14v9uaD2y+e8/9h/5N1r8r/uoyd3mxMA09HjCqE+B9Q7biaToISU
kAxvbrSb60oGW4liao1kxwlnqGeZOHE58qoPUMUt1Ku7UNDsdjroVzXJiPGge/p5
j30QMkLMoyP03hiI1dnWAmsAKwBiEVmM0VbNRVanJ1HHIn6sauunA8Dr4OzfjVvB
bfATM0ol74ZbTafudrPeSZqOzf9N+slBQ9B/KVd0h2ZdmLkU4RX6+qZ+sRieXxNC
yLPaxsDOHlBzIiSGtWa4/ieJr77LcFefgwfA5eWmutziw2KnUwg=
=R6AH
-----END PGP SIGNATURE-----

--hkaeqgsqiepb72z3--
