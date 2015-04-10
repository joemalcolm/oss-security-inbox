X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4058" "Friday" "10" "April" "2015" "19:28:55" "+0200" "Andrew Shadura" "andrew@shadura.me" "<20150410192855.59f7c8c5@ileemo>" "113" "[oss-security] CVE-2015-0276: Kallithea: Lack of CSRF attack protection enables gaining unauthorised access to users' accounts" nil nil nil "4" "2015041017:28:55" "[oss-security] CVE-2015-0276: Kallithea: Lack of CSRF attack protection enables gaining unauthorised access to users' accounts" (number mark "        andrew@shadu Apr 10  113/4058  " thread-indent "\"[oss-security] CVE-2015-0276: Kallithea: Lack of CSRF attack protection enables gaining unauthorised access to users' accounts\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7913 invoked by uid 550); 10 Apr 2015 17:29:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7854 invoked from network); 10 Apr 2015 17:29:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=shadura.me; s=a;
	h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date; bh=prMRZAKquqUR/bLLxzmuJVVf9o0uZnMYYTSA7nhfLxM=;
	b=FTSykz+YK/Gommbj55Xhorh+A4OOMc9AQyFS8gkpWQlb1aE+gy2fXlvKo51If6TgbUfvMnKUezFhBocVa3kqyT8pqkbG08wmQ+uv2rYtIxZkUQBIJ9PY8c08o0mZwlYtLTAUinTl0f+wSIyyCiFSc4jf4KKG8YLTbSNXnAKqAV8=;
Message-ID: <20150410192855.59f7c8c5@ileemo>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.25; i586-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/esvvW8kejs9rFdQh7zqsEL2"; protocol="application/pgp-signature"
Date: Fri, 10 Apr 2015 19:28:55 +0200
From: Andrew Shadura <andrew@shadura.me>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-0276: Kallithea: Lack of CSRF attack protection enables
 gaining unauthorised access to users' accounts
To: oss-security@lists.openwall.com

--Sig_/esvvW8kejs9rFdQh7zqsEL2
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hello,

We have recently discovered a security issue in Kallithea [0].
API key of repository's creator is exposed by get_repo API method.

Synopsis
=3D=3D=3D=3D=3D=3D=3D=3D

A vulnerability has been found in Kallithea, allowing attackers to gain
unauthorised access to account of a logged in user.

Description
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Pages presentings forms to the user and accepting user's input don't
provide synchronisation tokens to prevent cross-site request forgery.

It is possible to change an email address of a user by tricking them
into clicking a link that initiates the following HTTP request:

    POST /_admin/my_account HTTP/1.1
    Host: <DELETED>
    User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9; rv:35.0)
    Gecko/20100101 Firefox/35.0 Accept:
    text/html,application/xhtml+xml,application/xml;q=3D0.9,*/*;q=3D0.8
    Accept-Language: en-US,en;q=3D0.5 Accept-Encoding: gzip, deflate
    Referer: http://burp/show/1
    Cookie: kallithea=3D<DELETED>
    Connection: keep-alive
    Content-Type: application/x-www-form-urlencoded
    Content-Length: 146

    username=3DmyAccount&extern_name=3Dkallithea&extern_type=3Dkallithea&fi=
rstname=3DmyFirstname&lastname=3DmyLastname&email=3DemailAddress%40example.=
com&save=3DSave

After this, the attacker can request a password reset, the link is then
sent to their new email address. Then the attacker changes the email
address back to the original, and doesn't log out, saving the cookie.

At this point, the attacker has full access to the user's account. The
user can't login (the password has changed), but might think that he
forgot their password, has an account lockout, or an expired account.
The user does a password reset, but the attacker still has the access.

Impact
=3D=3D=3D=3D=3D=3D

The vulnerability allows attacker to steal account of an active user by
using social engineering techniques. In the case the user also has
administrator rights, it is possible for the attacker to gain full
administrator access to the Kallithea instance.

Resolution
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Kallithea project has fixed this issue by adding CSRF checks to the form
generation code. Before the fix, there none of the forms had CSRF
protection, with the fix, all POST forms are protected against CSRF.

There's no fix as a standalone patch, however; instead, it is
recommended to upgrade to the latest 0.2 release which includes lots of
other changes and improvements.

Affected versions
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The issue is currenly present in all Kallithea versions before 0.2.

References
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

[0] Kallithea Project
    <https://kallithea-scm.org/>

[1] CVE-2015-0276
    <http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2015-0276>

[2] Kallithea: Security Notice CVE-2015-0276
    <https://kallithea-scm.org/security/cve-2015-0276.html>

--=20
Cheers,
  Andrew Shadura
  on behalf of Kallithea Security Team

--Sig_/esvvW8kejs9rFdQh7zqsEL2
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJVKAhXAAoJEG6k0jEaLSaNlm0P/0HfSuFMSKzmUtoslhXZJF1s
kNX82W0xhRzXfVupRlwd17ZKvetCfhNVq4yumB2cgl+S9y+1eub5lOwowUaduY6y
5AoiL0J/OX9fJLyd9XUu6jCLbm8MRtJFlga6SgVC8UbDhEkdonJZbQRAPuq96L5x
OKzgGvIc1IhpiUVYUr3CuMTLjAp2kVZHdU0DelNtEt+8o58drEv/b8pDbC7xK8fN
iAMm5+0O/XudPu3QPWSFgJhxgCb1zhBJTZKpBB1wU+JCHgIrCE5mfOvgIUvL/+EL
FHDfCAULTwXRNXHsfR0QPARav/UkwXfpPjMi+ohcWEGcri2SGVdjzVXfAK+Y54Us
Q1iTP8kN6QEe/idO/3CLNAl3qn8XNWSq5fMDPHfXfT17dIsZWwymVJiLW246km0S
rFLv3a1+LbRlu/VufhZ9lUYQeBk3gIySTS6mzGwDVzTF6X4Ncah9TptEvHCws3Hk
nkcAHrdoLxrHd9d2aW3qlyZ2Si+D1jd52TdXk1YALjMHTU7v6OUefJAEEB1SrMK0
yZbGC/aXVqPswYk+IZokC9EtaZ8S8UaMiFuIGpTKteI0k2qdU6H9IawGypTMEf9C
0xb0nywt3kc7XwHc10466fWRggs9lhSAhVeG8+sFhpCKhkRU09GGW+VthDeGg+sb
rijjigeQrGS5CCv9QGRe
=8Q1/
-----END PGP SIGNATURE-----

--Sig_/esvvW8kejs9rFdQh7zqsEL2--
