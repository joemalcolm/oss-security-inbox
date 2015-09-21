X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1656" "Monday" "21" "September" "2015" "13:57:49" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<5600451D.5060404@gmail.com>" "41" "Re: [oss-security] Samsung S4 (GT-I9500) multiple kernel vulnerabilities" nil nil nil "9" "2015092117:57:49" "[oss-security] Samsung S4 (GT-I9500) multiple kernel vulnerabilities" (number mark "        danielmicay@ Sep 21   41/1656  " thread-indent "\"Re: [oss-security] Samsung S4 (GT-I9500) multiple kernel vulnerabilities\"\n") "<55FFC9BD.6030503@quarkslab.com>" ("<55FFC9BD.6030503@quarkslab.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27905 invoked by uid 550); 21 Sep 2015 17:58:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27874 invoked from network); 21 Sep 2015 17:58:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-type;
        bh=zGSWn/SbngxGYvI855w359c3RcRz+f8lX7LvWhz6FEg=;
        b=bDUA8AlBS2xffJ0v66E63+waOJv/j1oCc4o+u9IfjhQX9aEJ3dJnjnI+g8gmNweyh5
         z2aiStvngv3n6aMUxUoaHgir0/NkHKrDuVIeKNmKj3Cfu8M6C1qcw2omYgML6f4UIn48
         0Ra7CCh1ya9hvcy6bUFLrVy9uSPkBoTqxfZoeKvRJUljY4eES8zIqcKv/EFFRdU6z7cX
         SMZYFRrVIFs/KRJFyB/mqFKF0Tvv/3gOy0xYIsvj0gqG1MjNyGUTiNyErqqXMRXOA59H
         /ebiz8kjCMPHZ/2HnSGq77l/5/cMYQQb10ChDpWhxNc4osxvW0RZZZ8uB+yzJTKg6PYr
         maew==
X-Received: by 10.50.79.166 with SMTP id k6mr12269332igx.24.1442858274495;
        Mon, 21 Sep 2015 10:57:54 -0700 (PDT)
References: <55FFC9BD.6030503@quarkslab.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <5600451D.5060404@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <55FFC9BD.6030503@quarkslab.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="g4Spol4O8smuHsO3OvLlFlPX7bNlwrsN9"
Date: Mon, 21 Sep 2015 13:57:49 -0400
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Samsung S4 (GT-I9500) multiple kernel
 vulnerabilities
To: oss-security@lists.openwall.com

--g4Spol4O8smuHsO3OvLlFlPX7bNlwrsN9
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Further evidence that PaX/grsecurity are extremely important.

CVE-2015-1800 is prevented by the STRUCTLEAK GCC plugin.

The CVE-2015-1801 issues would have been caught by the ARM port of
UDEREF in non-exploit usage. I'd guess that a port of UDEREF to an
Android kernel would uncover more of these.

It's sad that Samsung never addressed this. I guess they might now that
there's a CVE, as vendors generally only backport security fixes when it
becomes an image problem.


--g4Spol4O8smuHsO3OvLlFlPX7bNlwrsN9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJWAEUhAAoJEPnnEuWa9fIq5qwP/2EQ0P7WPV8w418N9kV+Ud7Y
Dy8JZAAnJHO3G1YVfz4wBrl0AVugwl4mD2xZLQKV9gr6pfWwhTR7l4nn7rsXu/4k
pGomGJjGz2s24V3ikXRwD/Ru8kpMrn2sfSy0JrkeEyCOEWdzxUue2IpYx4X3h4y0
G++x5FQeGy0BuRKDaVXLjGc2Tb+RU9lipiXKI4b82dUnR3EHwVtVbrTsaWQpQKeF
qdhLXJqUVq9G5IzN8eWBmclf7QBkan5fKRBI1LdKlMQyRmNKFucYpJY70fvfbdWW
VWKcYTI+yyfnZ0NNDESXvSjXI3ChGX7aMVR2UIuuteG+6WZnZpyYWKyAkipvbK07
tBd4B9sCCMdaJDbQnFgACzBh+gJcKfpFNjaub6pz7stPpe8YP0WmHo4mKmLi0oH9
CRldV4IG1nHRL2K7avRO9UESW7tjmXRBYp6lxgmRe9TRNMIIfHnSrJQ9/jztEYIr
FdwkZsK26KhbHSIWNLpz+KcTe29w7mKN0FKAAVgfUhX8XM/S6aMPaV5DJ14bwMJ4
B00VsauXqdXFV1zcSMGHVJKMp3OE/VzK5gQxtQZGNrLiWlwVTfT1egLJobgoEUr5
pvdolgESzf7v/f/BAAXR/1ZvuaGAq2vFIvdIYvGR4qjzkUcqyLG4oSbQtDN8/nju
OK1p/pisJiT0TTg3t/+l
=lh0I
-----END PGP SIGNATURE-----

--g4Spol4O8smuHsO3OvLlFlPX7bNlwrsN9--
