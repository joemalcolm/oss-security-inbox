X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1900" "Thursday" "4" "June" "2015" "15:46:18" "+0200" "Alessandro Ghedini" "alessandro@ghedini.me" "<20150604134618.GA1613@kronk.local>" "56" "[oss-security] CVE Request: redis Lua sandbox escape and arbitrary code execution" nil nil nil "6" "2015060413:46:18" "[oss-security] CVE Request: redis Lua sandbox escape and arbitrary code execution" (number mark "        alessandro@g Jun  4   56/1900  " thread-indent "\"[oss-security] CVE Request: redis Lua sandbox escape and arbitrary code execution\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25692 invoked by uid 550); 4 Jun 2015 13:46:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25659 invoked from network); 4 Jun 2015 13:46:30 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=date:from:to:cc:subject:message-id:mail-followup-to:mime-version
         :content-type:content-disposition:user-agent;
        bh=dxMKt9aV7qfsnOqe+0mIC2i6EzCMrUfM+/xt/OyWIRc=;
        b=keNIdPW6f2lfEaciy8JE5QuNzRYTaoei5wKxe4gm2U3lQPpd6fDAk4z/EvUacOFbH/
         bn67xELpOjRgRrzQIXqNaATwYspqHt1iFTdZz81iAfTpGWViysFMRoN7aOrwHoeX/Hmv
         dNPWlcfo2JhWneDql7eAH+MFJzQZtcQB2Bfbee5Mn7ANwdtJObqKoAvhStc6UvCZ96DW
         MocDa+ksKUZ55Yt11SIH5kKB5sSE/GLTal9nN0hEopOvhqz1VHRx6sjtrZ+w1hyesMdW
         lOtA+iXNMZA66I9fSHTdzJYpFTQuIznqFib5MS5nbx9Smb+f1JVA/AnSpElYz6AzgyVW
         13yA==
X-Received: by 10.181.13.199 with SMTP id fa7mr8155542wid.38.1433425579544;
        Thu, 04 Jun 2015 06:46:19 -0700 (PDT)
Message-ID: <20150604134618.GA1613@kronk.local>
Mail-Followup-To: oss-security@lists.openwall.com, cve-assign@mitre.org
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6c2NcOVqGQ03X4Wi"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: cve-assign@mitre.org
Date: Thu, 4 Jun 2015 15:46:18 +0200
From: Alessandro Ghedini <alessandro@ghedini.me>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: redis Lua sandbox escape and arbitrary code execution
To: oss-security@lists.openwall.com

--6c2NcOVqGQ03X4Wi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

redis 3.0.2 and 2.8.21 have been released with the following changelog entr=
y:

> Upgrade urgency: HIGH for Redis because of a security issue.=20
>                  LOW for Sentinel.=20
>=20
> * [FIX] Critical security issue fix by Ben Murphy: http://t.co/LpGTyZmfS7=
=20

https://groups.google.com/forum/#!msg/redis-db/4Y6OqK8gEyk/Dg-5cejl-eUJ

The vulnerability is explained in more detail at:
http://benmmurphy.github.io/blog/2015/06/04/redis-eval-lua-sandbox-escape/

As far as I understand it, the Lua interpreter allows the user to load inse=
cure
bytecode that can be used to bypass the redis Lua sandbox.

The upstream patch fixing this is:
https://github.com/antirez/redis/commit/fdf9d455098f54f7666c702ae464e6ea21e=
25411

I don't think a CVE has been assigned for this yet.

Cheers

--6c2NcOVqGQ03X4Wi
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVcFanAAoJEK+lG9bN5XPLaR4P/R8CBt600LjMlK9DOBAGyLPe
OLhmjo3LzgagJV6Wjv5mmaHPuwwBqg2sS4aM3KaAs7wRJmI/lCPC4a6tEy7VLsix
wGG79uIuxUomNeub9DrleBVbW5kL8uYYLWd/3H4p8RG6ax9Szauis/0JweOwkfdb
gnGf/+s5ADMoIg8qFp2uIlI/KjTMocpIK9Zpgupn7HuvTnxb9zOMZXdwyqkWcpZr
Qx8nWUSEFHI1NQsj+rOznKWhTE1V/s6kt3373+W1rDj6I49Sb9DnLolxIQIFm/53
js8i+mZUXc0dQoxl10wzElqeZoqGhca1KB+t5fARaTADF7SPMizKVWvHajIl5T3N
4LS7cov1j1izMulhte4aUAiB7ZQzKUrmuu0TW825/XCXQXmCimFJhAifYje38r3n
XlfOsb5iNnN+8lPOM96ikNe5V2pRMQFATGxyZFKOd0PDg4COWzlKvJ8OeriTtqc7
G5Caq5igkxyn5wQ+L1loY0EqQWxP0srUJg0mdy11rUj69wnRWNSsds3xa+HpeKsS
xWn9RncCd7HVbmxnJY/cq2rUaaMUfLDllaheKmQza5gzThiB7/6823+xyUW/Umc7
b7fep3h5EQe+nAWiHwBM1ooD2pu0t4Y2Z/A20bn9WuVU+5z4tLGrGVbfoCMlgWE8
YK/Q0xKPG/E24t+nTe49
=1dd5
-----END PGP SIGNATURE-----

--6c2NcOVqGQ03X4Wi--
