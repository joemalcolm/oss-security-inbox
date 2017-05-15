X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1573" "Monday" "15" "May" "2017" "23:31:35" "+0800" "Yao Wei" "mwei@lxde.org" "<20170515153135.g4n5kcqvk5ghdb4m@madoka.m-wei.net>" "36" "[oss-security] CVE-2017-8933 libmenu-cache: socket may be blocked by another user" nil nil nil "5" "2017051515:31:35" "[oss-security] CVE-2017-8933 libmenu-cache: socket may be blocked by another user" (number mark "U       mwei@lxde.or May 15   36/1573  " thread-indent "\"[oss-security] CVE-2017-8933 libmenu-cache: socket may be blocked by another user\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15912 invoked by uid 550); 15 May 2017 15:33:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15541 invoked from network); 15 May 2017 15:31:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lxde-org.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=7VDxKNOFEpHTuXzNI+Dsfu9NIzhpnaSTnNONtx4hiwA=;
        b=yCei3fK12fCxEPMgq1P5UFIejvrEhrw04cT7zL9sUHVJT10fGbqIHbYu2j4vBafrNX
         a2ekJSJp6PYJUGqRMuQFGXqE9XTassnS45z9h6d6OSCTm3jYfgl78aOhZBuOnFcVBlSQ
         6po1+fouxqo/i/bxTeDBtBRkImwfhfbXp4a97/RVuf65+WhtRb9M6XFKaVnjKZW6+Nmk
         g98VJJnn6ZnXgGGaaM3ghp2c3TmP177kbxl7vW1Jx8RpgDX/bDMhw8K13PI5ssGHqOfL
         TZAG/YRrXhduDZD+pumhKgrnbZUc7MMrXwfqPt8sBK2BCZYa+KeqVE7a7RtCdo3pbaz6
         Lk+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=7VDxKNOFEpHTuXzNI+Dsfu9NIzhpnaSTnNONtx4hiwA=;
        b=UB8PTNpinCOGf7+A9hCoRvLtRK6OJxx7Tw6NlmstpArlGnYouH5J0dzH+9KUbdXeqD
         Lh/q+Bs3lW3rWRWGDMQXeYvLYnFOJLr4mMs9ye9a1x9Gi7X9NAiXjFKLyiWlGKFjldlU
         YzOw11aDxWbNh+uwnRvaBw5BZ6Fmlh4cTWxotHnzcaJ70ric08acBgg0QZoXbVg2PyNZ
         1N8ZRBnwdjGpFvrJs+T1J7WbVs1oUw++bmouwiASqSmP1f5G9mqndPwZE7+46JQwsyxa
         Mj5AoCU2XSLfIWqFRXydOwEDQse4mcmOyap4G4vIQm3cv2rOVW4JOQyYx7XCJYsdGKej
         SYDg==
X-Gm-Message-State: AODbwcAaDBpYnXz6rK6YNIForXH0d6I2N3LC10/oZYi9wNZLDHgh+brO
	vTQZM0kI0fREBx7W
X-Received: by 10.99.44.9 with SMTP id s9mr2530796pgs.72.1494862300348;
        Mon, 15 May 2017 08:31:40 -0700 (PDT)
Date: Mon, 15 May 2017 23:31:35 +0800
From: Yao Wei <mwei@lxde.org>
To: oss-security@lists.openwall.com
Message-ID: <20170515153135.g4n5kcqvk5ghdb4m@madoka.m-wei.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="n5ogt74mtxz3m5mp"
Content-Disposition: inline
User-Agent: NeoMutt/20170306 (1.8.0)
Subject: [oss-security] CVE-2017-8933 libmenu-cache: socket may be blocked by another user

--n5ogt74mtxz3m5mp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

The socket placed in /tmp is predictable and public-writable. Therefore
if one user placed a symlink to another socket instead of socket for
another use then said another user will either be unable to get menu, or
will receive menu of some other user.

This bug has been assigned to CVE-2017-8933 [1].  A fix has been
committed to menu-cache's git repository [2].  LXDE developers are
working on a release which fixes the problem.

[1]: https://git.lxde.org/gitweb/?p=lxde/menu-cache.git;a=commitdiff;h=56f66684592abf257c4004e6e1fff041c64a12ce

--n5ogt74mtxz3m5mp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE/tVDSEUoffJikxSJz7v84LdPGxQFAlkZydYACgkQz7v84LdP
GxQJRRAAk7TBSQA9I7OTW4BTu1fDUJ6/HtQ6mQgFv6IT4m2n8KyLSlV6wsKpGcbc
jSWKcLCQ1yGt02SxPB1temK4IGtha8RBfF/kXirdYWOl8/yeBtR00yVV8U6tQBde
KnoYpj6r/qJ++Q67S9EcPl8nUn7nz59fAJSp7BS9u9JDKNlFo8Sfb9P+Cb1naysi
NrFVX1KHRSHt5kbnxikYniqvTwFFC3/PxvniVzne7uOqltClDXzEgeOf1AzhUQfQ
6K4y2PXA4+7RpKyq5v/y4cCYmxVH+K608UmoPeLrV8rrIPtLuTUPVe9RLByKx8Tb
R2H3SC6wCXJkXA9kxs6cm+9DugZaEJzfnNVUsTvWEKURPG08fNyLsNTx3t/K+kza
y4yUSlbAQTulxIERT0YfOiLBT/LB/JsztfdaMH4dC4CZ/liZu7wLhtI9VL2JJLcX
FSYt/c5jiHKrYmBlShIMCgCAsoUEBRjDNNSb7WuYO/3aGSR5drCa955cKDqu9ob1
SlkhE+1un53jZ5WyfiRGTtiOW9dji7pA8sM4dq1u9kewUS/kcKlcEHofAAFXgDjV
o63s44laZbDDjGy/TK9feKNAALsDvC3+sYEnQyTuqHutNxHmlFunKnJ5CsQT2lo3
hJoOAtwY6SlU2pmD0AVefV7zWv9Qbq3LCAZlmcpuS7oRjdvVjqQ=
=v1fQ
-----END PGP SIGNATURE-----

--n5ogt74mtxz3m5mp--
