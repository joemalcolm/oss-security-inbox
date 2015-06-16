X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1493" "Tuesday" "16" "June" "2015" "10:19:02" "-0500" "Tomek Rabczak" "tomek@matasano.com" "<AD3411DA-2668-4BF5-AD45-798DC686D806@matasano.com>" "42" "[oss-security] Cross-Site Request Forgery in Spina CMS" nil nil nil "6" "2015061615:19:02" "[oss-security] Cross-Site Request Forgery in Spina CMS" (number mark "U       tomek@matasa Jun 16   42/1493  " thread-indent "\"[oss-security] Cross-Site Request Forgery in Spina CMS\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28408 invoked by uid 550); 16 Jun 2015 15:19:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28367 invoked from network); 16 Jun 2015 15:19:16 -0000
X-Virus-Scanned: amavisd-new at matasano.com
From: Tomek Rabczak <tomek@matasano.com>
Content-Type: multipart/signed; boundary="Apple-Mail=_3AAD4D20-FAF6-4245-9655-7E4646A0E692"; protocol="application/pgp-signature"; micalg=pgp-sha512
Date: Tue, 16 Jun 2015 10:19:02 -0500
To: oss-security@lists.openwall.com
Message-Id: <AD3411DA-2668-4BF5-AD45-798DC686D806@matasano.com>
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
X-Mailer: Apple Mail (2.1878.6)
Subject: [oss-security] Cross-Site Request Forgery in Spina CMS

--Apple-Mail=_3AAD4D20-FAF6-4245-9655-7E4646A0E692
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

I discovered the lack of protect_from_forgery in Spina CMS
(http://www.spinacms.com/) which is a Rails engine that users can use in th=
eir
Rails applications. This causes a CSRF vulnerability across the entire engi=
ne
which includes administrative functionality such as creating users, changing
passwords, and media management. A fix has been pushed and can be found her=
e:
https://github.com/denkGroot/Spina/commit/bfe44f289e336f80b6593032679300c49=
3735e75.

I'd like to request a CVE for this vulnerability.

Thanks,
Tomek Rabczak

--Apple-Mail=_3AAD4D20-FAF6-4245-9655-7E4646A0E692
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQEcBAEBCgAGBQJVgD5mAAoJEEHk6NJCTYs1QmQH+gOgox5gilCrbryal/1P4OfP
xownG3JLQLi08V8FO0CZ9R90ABjzMq5cWM1vIKB5ntk80v5m7NF5vjsyBzE4boVV
W4A7uQu+HjaE0l/E5kmo+5AbfzGSdsrFOL2tClXWjdQYbCmd8bN3nEhNVAm3yfpS
xS/ZOueGg9BHfy3XWxO1Fyqn7B28RrlcOuuWARFguAYB2WRIGjZhit76m334CudF
q4ggydgBqPYxTHEnmOZjmLWFe95j/MFpPkL7Sybi9lS8gfgmGIj9sjcCI9u8Yyel
y3ypCv6ybdqhYQ9KH2cCZ1GUcMwzG+pI3nx6LXngxkfw25o3QONBvagHar49Jjc=
=rVRp
-----END PGP SIGNATURE-----

--Apple-Mail=_3AAD4D20-FAF6-4245-9655-7E4646A0E692--
