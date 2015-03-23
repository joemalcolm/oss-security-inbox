X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1363" "Monday" "23" "March" "2015" "20:27:06" "+0200" "Henri Salo" "henri@nerv.fi" "<20150323182706.GE4431@kludge.henri.nerv.fi>" "33" "[oss-security] CVE request: Chamilo LMS 1.9.10 Multiple XSS & CSRF Vulnerabilities" nil nil nil "3" "2015032318:27:06" "[oss-security] CVE request: Chamilo LMS 1.9.10 Multiple XSS & CSRF Vulnerabilities" (number mark "        henri@nerv.f Mar 23   33/1363  " thread-indent "\"[oss-security] CVE request: Chamilo LMS 1.9.10 Multiple XSS & CSRF Vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29856 invoked by uid 550); 23 Mar 2015 18:27:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29835 invoked from network); 23 Mar 2015 18:27:25 -0000
Message-ID: <20150323182706.GE4431@kludge.henri.nerv.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; x-action=pgp-signed
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Rehan Ahmed <knight_rehan@hotmail.com>
Date: Mon, 23 Mar 2015 20:27:06 +0200
From: Henri Salo <henri@nerv.fi>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: Chamilo LMS 1.9.10 Multiple XSS & CSRF Vulnerabilities
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Advisory URL: http://seclists.org/fulldisclosure/2015/Mar/125
Software URL: www.chamilo.org https://github.com/chamilo/chamilo-lms/

"""Chamilo LMS 1.9.10 or prior versions are prone to a multiple Cross-Site
Scripting (Stored + Reflected) & CSRF vulnerabilities. These vulnerabilities
allows an attacker to gain control over valid user accounts in LMS, perform
operations on their behalf, redirect them to malicious sites, steal their
credentials, and more."""

Fixed in: 1.9.11

- -- 
Henri Salo
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJVEFr6AAoJECet96ROqnV08BgP/3NH5eW1Vf88ZjhKT99iUwEH
VxfsvRPVecX0VbZz7cBQ1PcfJAux7qft6SpSECGJNWrwLm1pwVPzsxt2ZB+bD5w6
oOkXCYVUKqp7Zc2CyB3Fde1M2K1tH6dQnLrhHwkYjhXGPqtHb8BgOf7A9AdI7W8x
ZQB5vwfh1hgXkdH4o6h/aU53IdKAMPN37apUHcIG6VJ7myEbjGvBOxa1aUeGYTXg
a7fNnbN8lIJrXqNGX29luttLeeMROkYYRZUzGXc29otCGrz7yCEySgPwQ0J8qQFj
Wkcx9FQaGrWfx7XsRnPzxeM33sR+VPTB5+ApnaFqpPJr1Ifq3mu4Hf4bzytp5C5y
91j6lIyimb4bYPCSW9L7xy+pQVIc8EbMNh6PaNku6f9Ap/DG0EVdsz0woTBRto4g
JdbCoJWzrEUGN2Lw4QK79DOCAie8SfJovUteg38rN86uJyG456N0rAmqfAAjWvAM
JDjOEzqxlDoRaoPqDhkukv/JbVSzLm3zr6KuXlM66Gk6FqKGB/+vNrz26wWM880Q
Pnu3Eck45yvy+Hlwxvv54i162EdgD39EGmAlb0ef+ziu1Ml4SYkxeQnm3ywIAvH+
ypbV0pyPwq1Wu8RbTRdVTwVGHe0WRPHWwBVIoCFfaLzuv5xX7wAHziuM6klkOVoE
ULS6Hpw949OCSmauAxcS
=hUg1
-----END PGP SIGNATURE-----
