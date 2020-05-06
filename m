X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2169" "Wednesday" "6" "May" "2020" "14:44:27" "-0500" "Gage Hugo" "gagehugo@gmail.com" "<CAE4Awf9+28ooqR9jH5m=NkARWYazK0Utb8=NzqQzOhC5-1MjpQ@mail.gmail.com>" "71" "[oss-security] [OSSA-2020-003] Keystone: Keystone does not check signature TTL of the EC2 credential auth method (CVE PENDING)" nil nil nil "5" "2020050619:44:27" "[oss-security] [OSSA-2020-003] Keystone: Keystone does not check signature TTL of the EC2 credential auth method (CVE PENDING)" (number mark "U       gagehugo@gma May  6   71/2169  " thread-indent "\"[oss-security] [OSSA-2020-003] Keystone: Keystone does not check signature TTL of the EC2 credential auth method (CVE PENDING)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [OSSA-2020-003] Keystone: Keystone does not check signature TTL of the EC2 credential auth method (CVE PENDING)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20175 invoked by uid 550); 6 May 2020 22:17:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20147 invoked from network); 6 May 2020 19:44:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=doB1oIPrkdD8Fs2eI0t+ofMF6bR2814ntaoRFynv3RE=;
        b=B9jHdzk8/bKGQdtLJcDv8vAUJOhT1+8Y2cSuPbHJx3uO52SD9MSq2vRyOWldalu8pF
         5EZdkXej6crgBtAhA8RcFrSNF0ogkhI241tf7+YYt96IW62Cjt3tE80Ck17Xyypjjyo5
         K5fTENHYnMUeyO3L6rafET6SO5/5P5aHlFpq4HTbl/HVFjSuR6LIEQj2dBM6onv3xmaU
         Gd1Djw6OzT1A4vS/c6JkkFX+vKoeZfbN0mq2QA0lK7v5E6Vzu+Aa2eyGGc+tgt6Izx8l
         HFa8aXJ+oHcUeWk26DwlESC7sSa0TQVZprDBzkE1bYDkPMTEw1FFLxYb4xK1jCWi2q36
         /xTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=doB1oIPrkdD8Fs2eI0t+ofMF6bR2814ntaoRFynv3RE=;
        b=CCAW34FUi6OvHHJFGkZt5Ws77q6c0h7uvuzhgcXREuQMtwWlUZfZq0aD8akJXABFcX
         9yR+v+/JWAko3BJe9bNXsltb7BjPl/D2sqmZJbn0lmJXfKzoLLpk7RGbte0nNdoCNtFu
         0lF9GUadh2bK4tIfe+klnBCphe9OpONSzyDfPihsHlw3CoFggQgKaJlsoSXN3JN5weTA
         IXcllpFq5AN0D297d95IjRO8Vw/Nbafm6Oweq76lEHvhiZmTjQ5T+0ArrGR0kkR9M6ib
         qzH+iW2eU7+hTGV08l7hUMM6GxDCkEQimdhuocj/nAUEJ30GeQjEaw1sJ2z1em3cZL62
         geBA==
X-Gm-Message-State: AGi0PuZ+wJuTCZF8/rPNvYVvbAv8kZBX/wU+W5VqWgSTGCdFtwnyyEWC
	CN1eAlIIjvX0mOkOhugD8kdXqaaCPf1x1FQtKrV8TMo6
X-Google-Smtp-Source: APiQypKP8x/hq+CJuuHY4xQys7xbdhmREGYC/1J9oqUbd+YRtzNjvbK5JsjhdAnHsYERE+s5GJrcSvO75uHi5bXUwCg=
X-Received: by 2002:a25:8043:: with SMTP id a3mr15390481ybn.495.1588794278556;
 Wed, 06 May 2020 12:44:38 -0700 (PDT)
MIME-Version: 1.0
From: Gage Hugo <gagehugo@gmail.com>
Date: Wed, 6 May 2020 14:44:27 -0500
Message-ID: <CAE4Awf9+28ooqR9jH5m=NkARWYazK0Utb8=NzqQzOhC5-1MjpQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000098373d05a4fffee7"
Subject: [oss-security] [OSSA-2020-003] Keystone: Keystone does not check signature TTL of
 the EC2 credential auth method (CVE PENDING)

--00000000000098373d05a4fffee7
Content-Type: text/plain; charset="UTF-8"

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

======================================================================================
OSSA-2020-003: Keystone does not check signature TTL of the EC2 credential
auth method
======================================================================================

:Date: May 06, 2020
:CVE: Pending


Affects
~~~~~~~
- - Keystone: <15.0.1, ==16.0.0


Description
~~~~~~~~~~~
kay reported a vulnerability with keystone's EC2 API. Keystone doesn't
have a signature TTL check for AWS signature V4 and an attacker can
sniff the auth header, then use it to reissue an openstack token an
unlimited number of times.


Patches
~~~~~~~
- - https://review.opendev.org/725385 (Rocky)
- - https://review.opendev.org/725069 (Stein)
- - https://review.opendev.org/724954 (Train)
- - https://review.opendev.org/724746 (Ussuri)
- - https://review.opendev.org/724124 (Victoria)


Credits
~~~~~~~
- - kay (CVE Pending)


References
~~~~~~~~~~
- - https://launchpad.net/bugs/1872737
- - http://cve.mitre.org/cgi-bin/cvename.cgi?name=Pending


Notes
~~~~~
- - The stable/rocky branch is under extended maintenance and will receive
no new
  point releases, but a patch for it is provided as a courtesy.
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEWa125cLHIuv6ekof56j9K3b+vREFAl6zEjwACgkQ56j9K3b+
vRFejhAAvzq3MBwKGXIKsJxQmwVS0RxVFifTAfnKIjBGskG3knWkQHopY0IcmwoZ
3Kv2AnRgFVBuQpZ0t9Y3S3U7KRI63FT+kzA3gy9sB+h7rdqzquxejXvljRMGJlex
WRCOQwRP4prFpzpUqzBg9/bIAyWpkrjJIvz7iJ9U3z6MbrZIjV+YEZ3JIRQTdMUj
MajgwJ4EDynkh8trm63n7Gyuvq8ukj1FCrG1APWJi96HhwNz6XwiqXIWci4CTaEW
sY9v8luETMCyv+nY2pt9IF8wXOaJKJXPTilf6sisjN2zDq+UWgsxEC0sp3h09tnZ
m6cy3OvUQeDmdJVQ/VNsfUTeRYRvYri2u44FaOUBjsNxeZca1U4MCVkAiN9BBzkg
k1Xb8zgGoXaytT/lzzyr67h6ZghKm6cnSUktWnX56847byOMPi/g9q1cu0edUwwC
7SDaQ08JbsEstiXtPVBhatTLxbjlNy5eql6NaZmFQatYJAQKZsasvwV4YBv290mu
OsVHUEqjmYk4b4CZNPQC2681CDtAQpiLuasYiLnxC6I+zBTwfP+6tzP0xVHW4woi
4Jhl/watZMudrtMS3YoOmwZ4iFNJRzQcDWmiAr0CZiC0NGamLjvHWHRslnvmhy92
kSGWLilaMD5vBODXVY82lQHrbl96dPRbpe8/z29sALsEs6aNFYk=
=qyBV
-----END PGP SIGNATURE-----

--00000000000098373d05a4fffee7--
