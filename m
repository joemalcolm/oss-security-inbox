X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1511" "Sunday" "25" "March" "2018" "12:52:51" "+0200" "Marius Bakke" "mbakke@fastmail.com" "<87r2o8jukc.fsf@fastmail.com>" "55" "Re: [oss-security] CVE-2017-15710: Out of bound write in mod_authnz_ldap when using too small Accept-Language values" nil nil nil "3" "2018032510:52:51" "[oss-security] CVE-2017-15710: Out of bound write in mod_authnz_ldap when using too small Accept-Language values" (number mark "U       mbakke@fastm Mar 25   55/1511  " thread-indent "\"Re: [oss-security] CVE-2017-15710: Out of bound write in mod_authnz_ldap when using too small Accept-Language values\"\n") "<E1ezZFn-00031E-TI@romulus.home.bitnebula.com>" ("<E1ezZFn-00031E-TI@romulus.home.bitnebula.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9570 invoked by uid 550); 25 Mar 2018 11:00:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32748 invoked from network); 25 Mar 2018 10:53:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; bh=qHC/rEirDTZ8w1l7yNAKs9Wk6+z4byYCIDTUVpx0Q5s=; b=H4oPrqF6
	4+y6T2v2NANmmbpBuKqSddKd7tiqZ9Y258Kecggj5gN8wLeGk4rU6pRdyeKwMH5T
	ntPDtrQzFB0qByNoe6aG851YkB6k0B5MvLWTqk3sQwDhgYuXes7Gq2zBO1RbUSqj
	1VgRSzOqDnXJd1dYx2smUI0P4VdS60L7XRbBOJRQ4O+mzm7hiGXo/VGq1jZW92uN
	0anoxMI4uTANc2qTEQz8ZaPaBbaDcSKD5DI+p/wboOjDlZzME8q79/eRppDhQDKN
	dRaPcjK/b94lfxysp5z0PEne4chucm1QUN8UpteMWLDY/2AkWnJawXJl7i4yLhbg
	f4huwkJM82K3zw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm2; bh=qHC/rEirDTZ8w1l7yNAKs9Wk6+z4b
	yYCIDTUVpx0Q5s=; b=Gr9Tj7le3UP4vjlYihHq2Z9kcrwrR5gucgRYnc61v+B+/
	8w/1vDndTSXt2LMv+0L+V47x7QJF95cEKl/qq19Elk0bU+mNluM0O5IHFvLrkijL
	ewculmmjnSm2amsfIfsajfWpn6nEdE8lrWonPx65913YQDbZ4ZH0LAK5+BpJTMdl
	7dhXXgPuYmy5pxYyDgeA5z8sAxeDK6mSTqusvQCk4Hx/53S5yylS1mEcF1IT16uy
	8P26de8IIg4PaGg8I1FQt+gttzFDOqT4x2/ph0SnO6TsQ9nuWVAFJjr9poXELHLk
	7Zj8En7XnwqY1N8FV21A+aos9TGkVp5KquOig40XA==
X-ME-Sender: <xms:hX-3WsbufSnmmS9yVl7J2AHCzXgun8-GgMicOjg0sEQw1tnV_Fo5sQ>
From: Marius Bakke <mbakke@fastmail.com>
To: Daniel Ruggeri <druggeri@apache.org>, oss-security@lists.openwall.com, security@httpd.apache.org
In-Reply-To: <E1ezZFn-00031E-TI@romulus.home.bitnebula.com>
References: <E1ezZFn-00031E-TI@romulus.home.bitnebula.com>
User-Agent: Notmuch/0.26 (https://notmuchmail.org) Emacs/25.3.1 (x86_64-pc-linux-gnu)
Date: Sun, 25 Mar 2018 12:52:51 +0200
Message-ID: <87r2o8jukc.fsf@fastmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: Re: [oss-security] CVE-2017-15710: Out of bound write in mod_authnz_ldap when using too small Accept-Language values

--=-=-=
Content-Type: text/plain

Daniel Ruggeri <druggeri@apache.org> writes:

> CVE-2017-15710: Out of bound write in mod_authnz_ldap when using too small Accept-Language values.
>
> Severity: Low
>
> Vendor: The Apache Software Foundation
>
> Versions Affected:
> httpd 2.0.23 to 2.0.65
> httpd 2.2.0 to 2.2.34
> httpd 2.4.0 to 2.4.29

[...]

> Mitigation:
> All httpd users should upgrade to 2.4.30 or later.

[...]

> References:
> https://httpd.apache.org/security/vulnerabilities_24.html

Perhaps I'm hitting an outdated mirror (195.154.151.36), but this page
lists "OptionsBleed" as the most recent CVE, and the download page shows
2.4.29 as the latest release.

I found 2.4.33 by browsing my suggested mirror "manually", but it does
not have the PGP signatures.

https://apache.uib.no/httpd/

I had to go to <https://www-eu.apache.org/dist/httpd/> in order to
verify the integrity.

Please look into it, and thanks for the notices.

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEu7At3yzq9qgNHeZDoqBt8qM6VPoFAlq3f4MACgkQoqBt8qM6
VPrM9QgArSlLmZzDTItyBUOaPgU5ZosvfRzEhOOMjXHErRX0kkqO8sktVRmxgvSQ
bVcqkPdiP3sPse75KalJH+JSt5XuiHPkfaouRtiEJOQV5cRJ06h93GZuCfyh0q0l
hO1+myAj0HG4ymrap2DqynO67fgu//WIlPCa+fjCGPukJZ/FqL87bNH1OIMBCLUZ
wTD6SQZmWWi2SN8Qpc2Smt2UnvxrKxR71j6ZEZqzuvH5PTyEoRG9P3rSsXFjn+C4
Ld/t3dlskmkrcfZAMve8xcVoOJ0GjO7ETZlIAmowYSzdlJQ8sR8B0GQVhr2gWNAq
+6Fr5IxWzvf36MdLPffHycTyJND8GQ==
=aOWr
-----END PGP SIGNATURE-----
--=-=-=--
