X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2285" "Sunday" "13" "September" "2015" "16:31:29" "+0000" "Luke Faraone" "lfaraone@debian.org" "<1442161889.9920.4.camel@debian.org>" "65" "[oss-security] CVE-2015-0854: Insecure use of system() in shutter" nil nil nil "9" "2015091316:31:29" "[oss-security] CVE-2015-0854: Insecure use of system() in shutter" (number mark "        lfaraone@deb Sep 13   65/2285  " thread-indent "\"[oss-security] CVE-2015-0854: Insecure use of system() in shutter\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1541 invoked by uid 550); 13 Sep 2015 16:36:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27734 invoked from network); 13 Sep 2015 16:31:42 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:message-id:subject:from:to:date:content-type
         :mime-version;
        bh=G4qav1wsyESIXDw8kGifmrMTkb8cxMOW0yCbB/jFQZo=;
        b=mSW0iU1VcRhI6nHhDrDSm21XIAtDHmoZea9u25EJ3hZcvkyBndVQgQ71oD+zlK9gBl
         aR8ax2aU/xV6ZePdIthoPb+sRrgWRVnJr6ac+sTtnz+UTmJqtIGw7P1RGrG4qBPBnUHW
         HC/jmQzRirLTRtg92Sz4cCwoHa6DzdD+uwwDhJrorXgty9h+kQHuhLRjrex5bC3fkabt
         91g2rwdHsAiB31+MEDEALAlkD0YZ16STQvTbL/d4kBXiYEn1LrhQSG7E0vwjUAfGkPLr
         50qyfoSNG+/EgxLT3iMOeGzMCf6/Wc9X3+sCZHOWfFBSn7A4zafFmQO3MY/ifzLoRr3Q
         EHHQ==
X-Gm-Message-State: ALoCoQkvP5g9UXNZZNXgKjlAe9R1m5Z1RvlWqWtoDI/GskukN4xiZ7gCEq88E4qoQaE7sKliqCQtg+0kY8IMnArwW18ZiFcsHQ==
X-Received: by 10.50.83.6 with SMTP id m6mr11945656igy.90.1442161890611;
        Sun, 13 Sep 2015 09:31:30 -0700 (PDT)
X-Relaying-Domain: luke.wf
Message-ID: <1442161889.9920.4.camel@debian.org>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-+d912BaG67sFA6efPQYR"
X-Mailer: Evolution 3.12.11-0ubuntu3 
Mime-Version: 1.0
Date: Sun, 13 Sep 2015 16:31:29 +0000
From: Luke Faraone <lfaraone@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-0854: Insecure use of system() in shutter
To: oss-security@lists.openwall.com

--=-+d912BaG67sFA6efPQYR
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

In the "Shutter" screenshot application, I discovered that using the
"Show in folder" menu option while viewing a file with a
specially-crafted path allows for arbitrary code execution with the
permissions of the user running Shutter.

STEPS TO REPRODUCE:
     1. Put an image in a folder called "$(xeyes)"
     2. Open the image in Shutter
     3. Right-click the image and click "Show in Folder"

The `xeyes` program (if installed on your system) should start.

Lines  54+ of
share/shutter/resources/modules/Shutter/App/HelperFunctions.pm:
        sub xdg_open {
        	my ( $self, $dialog, $link, $user_data ) =3D @_;
        	system("xdg-open $link");
	}

Because `system` is used, the string is scanned for shell
metacharacters[1], and if found the string is executed using a shell.

[1]: http://perldoc.perl.org/functions/system.html

CVE-2015-0854 has been assigned for this issue.

This bug has existed since (at least) 0.85.1, and although a patch is
available a fixed version has not been released.

Upstream bug: https://bugs.launchpad.net/shutter/+bug/1495163
Debian bug: http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D798862

Regards,
Luke Faraone


--=-+d912BaG67sFA6efPQYR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJV9aThAAoJEFrOjW4MFKRwfNsQAKKL58/rOL4KPw4Xrr+yi8Tj
abRh8L0ireSqCPXZP8NYu+/9ko8rGhCm6HSu7XNuWiDbuaLvIeWDQA8WSsNDFbyr
rpCIVPrHXXMP3i7dJo9tEJJvkD8pNLnTQfDxb13bdHsrxh5GjNr9epucpi7xnLEH
goM3aOijgjLr9gJFCVLgdi+QNuR9LvH1GgM6kSkY/99WiH71Ii2H/zZTy9KY4EUP
yhoJZsAgTP9HSmFiEpW2GaSVb3AaUdnmr9w3L6UPA4D1aRisQ3YGG+GZmWkydUTO
PQoDiUls2ouYjHSVbKD6cJm0YkLQKH4I3nT7S5NOMCJQhUBGJ+poAQ8hwjzTLHJ/
34LjwOU/brMTIGQFojHvpzZBOOM69ZYJX/dLmT29onKxqLQ3ZqspqyEEHSlQyPrF
s6OXRta+Q/FkPigQPN1e2hQAe/gzadZSS5uPUt2r9fOV1m0yt0GCxTkQN5Kve0QI
eKHkzNW6xNNQZpJqxE1FTUN0vQKtkg9FuMNC4eCr8DE2dcZQHOA5j9sXeS2eqTQo
ESjIa19gaE12CIG1ftS3kMLOw4/0+a+iLbTtvRxl+5gWDJK2VMN+RJ/zbDui1LLV
x1WZpXbntbSLddxHntAFUlNnQTbyIYKUEbGB87mr+2MKUHou3FxNK5Cyb5pALtag
/milh39JaHTE77LeOpsa
=VIc1
-----END PGP SIGNATURE-----

--=-+d912BaG67sFA6efPQYR--
