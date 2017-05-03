X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2851" "Wednesday" "3" "May" "2017" "18:23:09" "+0200" "Pali =?utf-8?B?Um9ow6Fy?=" "pali.rohar@gmail.com" "<201705031823.09198@pali>" "74" "[oss-security] MySQL - Again Riddle vulnerability (public disclosure)" nil nil nil "5" "2017050316:23:09" "[oss-security] MySQL - Again Riddle vulnerability (public disclosure)" (number mark "U       pali.rohar@g May  3   74/2851  " thread-indent "\"[oss-security] MySQL - Again Riddle vulnerability (public disclosure)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32762 invoked by uid 550); 3 May 2017 16:32:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18258 invoked from network); 3 May 2017 16:23:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:user-agent:mime-version
         :content-transfer-encoding:message-id;
        bh=hP8qr7W6el281Hd/OeyHdrW6C/vKKUoys8aiXgPT7PY=;
        b=MDCtjhbXbJ38Gkg+BZVTM1tumVqiZ1g9iME8xVkj3FFH6mz1J2PLkig61nB35G/L3O
         IZ7ztM9wB8akxysQGQceW+/zlEn7VjXYZp1dc9GJgVtioqYcKnIrsFOHVmdWxEhf8WIq
         2D39v5ZHnkUFzZznFUuFEJ9DwzaMn+FWgxhqKoIlg8goilARrHmugcUlEEQpteBQAmxW
         LiPpfH6ryF+w1dqNGxn7J7HxHC3BSHU4AI41OkTHwB+u/x+BkSrYo4fk0zf0qF1bhPBy
         V9exrplJEnymIN2M9AKjc05JQKbj93LcQ16o6XXet+mYSMw4Volw8tp7IgebodNms5C0
         lHsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:user-agent:mime-version
         :content-transfer-encoding:message-id;
        bh=hP8qr7W6el281Hd/OeyHdrW6C/vKKUoys8aiXgPT7PY=;
        b=hLi6Z2lZbZ9TBiFox28paHyjzfZ4zhV74FllhhUZ+VWmwms2y6r6rzptVX352W3cjp
         OE4d27SKI/XyvLju2aB9vt+k7iqyMrCX3kNhqXE92NfWbK1ZPxyQ1BbzvTMGAK1YMdxk
         5jVTbNkOQULjS6mu3PCcDj+LPQ+vlA8LPfpy72IpSdN0Qb5luZ3sBkKFv/S9AYAhIiiU
         W/uoqxkhEO1snozzwJ71y1gw/apFJRr21AtPD0BwnMzbUxtZy2qtxDFnMyPIZPSWCPI0
         2NJDGEpwv88Eo7guNlyWd24eWmh5f4wAYA2W/atsh02uyU5TFAs3RMQ2064tqKm77heI
         sWuQ==
X-Gm-Message-State: AN3rC/4RIwWnbHRBBw+w/CKr3Chhqd2s/onIfBzI01yihrYr8fEudMOn
	7sIQ/mfpJVrU78vJ
X-Received: by 10.223.177.140 with SMTP id q12mr23213305wra.68.1493828592439;
        Wed, 03 May 2017 09:23:12 -0700 (PDT)
From: Pali =?utf-8?q?Roh=C3=A1r?= <pali.rohar@gmail.com>
To: oss-security@lists.openwall.com
Date: Wed, 3 May 2017 18:23:09 +0200
User-Agent: KMail/1.13.7 (Linux/3.13.0-117-generic; KDE/4.14.2; x86_64; ; )
MIME-Version: 1.0
Content-Type: multipart/signed;
  boundary="nextPart2136690.LTKrQyNayS";
  protocol="application/pgp-signature";
  micalg=pgp-sha1
Content-Transfer-Encoding: 7bit
Message-Id: <201705031823.09198@pali>
Subject: [oss-security] MySQL - Again Riddle vulnerability (public disclosure)

--nextPart2136690.LTKrQyNayS
Content-Type: text/plain;
  charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi!

The Riddle vulnerability (CVE-2017-3305) we have it there again.=20

So what happened?

In 2015 was discovered BACKRONYM vulnerability (CVE-2015-3152) which=20
allowed an attacker to downgrade and snoop on the SSL encrypted=20
connection between MySQL client and server. Oracle claimed it was fixed=20
in MySQL 5.5.49. Later in February 2017 I discovered The Riddle=20
vulnerability (CVE-2017-3305) which allowed an attacker to do man in the=20
middle attack. Oracle claimed it was fixed in MySQL 5.5.55.

And now in April 2017 I found out that it is still not fixed in MySQL=20
5.5.55 properly and I named this defect Again Riddle. Basically fix for=20
The Riddle in 5.5.55 introduced Again Riddle.

And what is the problem?

If MySQL client library libmysqlclient.so is compiled from source code=20
without SSL support via cmake switch -DWITH_SSL=3DOFF, then all SSL=20
related functions from libmysqlclient.so return success (non-error)=20
value. And function mysql_real_connect() from libmysqlclient.so connects=20
to MySQL server via plain text protocol, even if client enforced SSL=20
mode with certificate verification. Which means that function for=20
enforcing SSL mode does nothing if libmysqlclient.so is compiled without=20
SSL support. So attacker can do exactly same what for The Riddle=20
vulnerability.

So every application which links to libmysqlclient.so and require SSL=20
encryption of MySQL protocol is affected.

I contacted Oracle, MariaDB and Percona security teams about this=20
problem and after discussion we scheduled public disclosure to May 3.

Oracle decided that this Again Riddle vulnerability would not have CVE=20
identifier and would be part of original The Riddle vulnerability=20
CVE-2017-3305.

I'm not sure if this is correct decision, as MariaDB 5.5 was not=20
affected by The Riddle vulnerability, but is affected by Again Riddle.

I was told that prebuild binaries are not affected as they are compiled=20
with SSL support, but lot of distributions compile libraries from source=20
code by their own which means they could be affected.

I prepared POC program written in C to verify if system installed=20
libmysqlclient.so library is vulnerable or not. You can find it on the=20
new Again Riddle website together with some Q&A:

http://again.riddle.link/

--=20
Pali Roh=C3=A1r
pali.rohar@gmail.com

--nextPart2136690.LTKrQyNayS
Content-Type: application/pgp-signature; name=signature.asc 
Content-Description: This is a digitally signed message part.

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEABECAAYFAlkKA+0ACgkQi/DJPQPkQ1KWogCaAhi994ppX3HEQKx6frV2Kje+
qj0AnRUK8HN6MEtXiG3t6197OGHJhK77
=YCep
-----END PGP SIGNATURE-----

--nextPart2136690.LTKrQyNayS--
