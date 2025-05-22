Received: (qmail 30295 invoked by uid 550); 22 May 2025 13:45:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5248 invoked from network); 22 May 2025 13:40:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=openssl.org; s=google; t=1747921227; x=1748526027; darn=lists.openwall.com;
        h=mime-version:user-agent:date:to:from:subject:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8JuUQ54aMwy4RB6+jcs4CoPFAlEt9giGMiKnacd9BUk=;
        b=Uah3vmLOFuc/j5a4awiPB5+MDwkfuKnemVz2GTJA00AhysmyP9r5lGVjA3qTHfsIYa
         AaG6C/EIlPDiKJV3zW0NcMchdA/eL9Vv6HSdI73cw5qssTyUwZEr82MP+o8hTapK9rgi
         wguBdP06Sk3zh3hA2hLraBI3fCdu+flrQKQxQuf1Rc5ZMoWqa5/+pDb4TCUF60rYbGcq
         Klhm76Wwd3wEDuAKyzeD0DdG7d4Y+dXnAUO6hBJrSdxVKttOKi6tiKmOuHFfev6qIpPk
         SQOXXdpjX+G0QQ3U6/pswWsaptsFBcB1snnxbhoyvZ7q9Qt8pINjSl+4LjEokvJR5ePG
         x8aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747921227; x=1748526027;
        h=mime-version:user-agent:date:to:from:subject:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8JuUQ54aMwy4RB6+jcs4CoPFAlEt9giGMiKnacd9BUk=;
        b=iDQwLGdvOx9BEskykHXAP1X3hvDKUllObzVJp1nnJcLd8c+LcdA6RQAL1GFGX3QxWJ
         L0F+qnN145rmkh8t32O10kGm2WaiQVRP035fuKat+QWFfYo2koLBhjNarAh+M5kwO4p8
         cxmnNc8vNc94zotG832ucBs8IizbSRLJFR72ZTq6KEwLvlVkk/3GACMzFsBu/hwkY7GE
         RoVy76IS9GCYS2nffzETZCsk9bUcmWnzZcmujyZcqJS5rp9qmKoR3O9LKp93nzZWBE17
         d0AqM3iOhn5ri1gwllsdBs5CsCbM45akF8FtJ9pq20448cP8d2gw7TO8/goTwjMgdcpz
         iDOA==
X-Gm-Message-State: AOJu0YxQva4bp0+iVpbnrVNC4eEDu39ull9y6tD/X2y4Ogou2omtWp0F
	jY+GEhaWH3xGkfZ7mSh2bHpvEX+DBZvcY3PrC3g6LjHarhCE1GcIU1dJxn+iSnr8BNs0wOWu0YA
	01Q3TQGU=
X-Gm-Gg: ASbGncu4aLHtTa1V/0FivCO5JhM8Pa3Xeg0AEzVkZYqbxufz8UmTNgpikojfD41VKN6
	ErhnL7J/q19SyPD4XKf7PxNZcQiOiNRQy9SbKBIIgmko6w4TfSanhAw3ySH2zkkko62cqE+vLGy
	aPZJCoYmwTc5JOGf53q6b8iqy1jTMJMR50XUiN+qIDdAw6tTtI8YPuW87TjvNjN7i4CrLb0u/mt
	y240pOe/AJDbLm9kPg5r0S14M5lByckbXv0O/5UARrKswcMhZU+CpEARwby7btoY7ENNtEi7qGr
	oG456xE1y2+yC3zV/iJwVcS4jHIReVSgP4kfkeRUHCvi4lEkUWIMnmg=
X-Google-Smtp-Source: AGHT+IFVMl0rclbBAtFca92ZurNb/6KK2tY6lt8TRMHQRjWSUQwgEk+u6kAzb7cXMNg2zsKjMOUqkg==
X-Received: by 2002:a05:600c:154f:b0:43c:eeee:b713 with SMTP id 5b1f17b1804b1-442fd664a29mr187296395e9.20.1747921227478;
        Thu, 22 May 2025 06:40:27 -0700 (PDT)
Message-ID: <c9c52fdd3d5ab6ad6dd29a7d29625714c7e232ce.camel@openssl.org>
From: Tomas Mraz <tomas@openssl.org>
To: oss-security@lists.openwall.com
Date: Thu, 22 May 2025 15:40:26 +0200
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-Aaqc43N+r2R9t4O3IBB7"
User-Agent: Evolution 3.54.3 (3.54.3-1.fc41) 
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-4575: OpenSSL: The x509 application adds trusted use instead of rejected use

--=-Aaqc43N+r2R9t4O3IBB7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

OpenSSL Security Advisory [22nd May 2025]
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The x509 application adds trusted use instead of rejected use (CVE-2025-457=
5)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D

Severity: Low

Issue summary: Use of -addreject option with the openssl x509 application a=
dds
a trusted use instead of a rejected use for a certificate.

Impact summary: If a user intends to make a trusted certificate rejected for
a particular use it will be instead marked as trusted for that use.

A copy & paste error during minor refactoring of the code introduced this
issue in the OpenSSL 3.5 version. If, for example, a trusted CA certificate
should be trusted only for the purpose of authenticating TLS servers but not
for CMS signature verification and the CMS signature verification is intend=
ed
to be marked as rejected with the -addreject option, the resulting CA
certificate will be trusted for CMS signature verification purpose instead.

Only users which use the trusted certificate format who use the openssl x509
command line application to add rejected uses are affected by this issue.
The issues affecting only the command line application are considered to
be Low severity.

The FIPS modules in 3.5, 3.4, 3.3, 3.2, 3.1 and 3.0 are not affected by this
issue.

OpenSSL 3.4, 3.3, 3.2, 3.1, 3.0, 1.1.1 and 1.0.2 are also not affected by t=
his
issue.

OpenSSL 3.5 is vulnerable to this issue.

OpenSSL 3.5 users should upgrade to OpenSSL 3.5.1 once it is released.

Due to the low severity of this issue we are not issuing new releases of
OpenSSL at this time. The fix will be included in the next release of 3.5
branch, once it becomes available. The fix is also available in commit
e96d2244 (for 3.5) in the OpenSSL git repository.

This issue was reported on 2nd May 2025 by Alexandr Sosedkin (Red Hat).
The fix was developed by Tom=C3=A1=C5=A1 Mr=C3=A1z.

General Advisory Notes
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

URL for this Security Advisory:
https://openssl-library.org/news/secadv/20250522.txt

Note: the online version of the advisory may be updated with additional det=
ails
over time.

For details of OpenSSL severity classifications please see:
https://openssl-library.org/policies/general/security-policy/


--=-Aaqc43N+r2R9t4O3IBB7
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQJGBAABCAAwFiEE3HAyZir4heL0fyQ/UnRmohynnm0FAmgvKUoSHHRvbWFzQG9w
ZW5zc2wub3JnAAoJEFJ0ZqIcp55teroP/3Vn6MDQs4Q1oYdFu2SKClqt3gP/vmvO
Nyjp8WZ9yHVRHoJvKNNoBExqyOQ8XcVQfXrMqUU+u3Vw6lPYSq7ObaYRTj6VYcHC
C7+rmLvX6PBFquYRG3CpPMrTlRyIwC4c2YKrm71FcqpcEZ+H/Yvg6nivPUGZ0EX7
3YYTJ9WciZX0VqltkPxBcMsmdU1MgB2mSAzMXA99hyTgm4nCIMW2SA8uAmEmseu9
KnzBo3Az6Olbmv6H6Vi+RO7yUeEAHXE6EObd6XV/Act0oMoFlEY/wdJ/05E0p1WH
a6FVsCDg+keGhyq7QURJvSRF/IkK0VKHHwoHO0bIRESxJr9pNdYkl9qodTxlPErH
k5n0SlBVlE7szNN67DOQbbcQne8FIWcRnlQnNKso4WYvA8wa5n+lYDwimrSTrQjn
bS2B+uT4XT2S/1gbIL20WfCKqQjqHu4divbMPlFPMEMeeNhaphc2k+DAPQEflzfe
Ftd6zYjB5jiI9AY3SuKvOSpGR3E1uTQgu1ptSShzZV/MoVaudO4aPG7vBwzmjxmP
knlPLw+0Qt/oM4iiWEaXCJuxVMNHUsO9NBNNnQRBbexH2uzDazzsuecUPbWaOBqw
rWDuF5lEDoXAGPUELDGrb8F83fUoHEgKt0hAMBF5RaTeMEZwyT240LrXx41dG4d5
7v9FcYQ8o9cp
=BIVd
-----END PGP SIGNATURE-----

--=-Aaqc43N+r2R9t4O3IBB7--
