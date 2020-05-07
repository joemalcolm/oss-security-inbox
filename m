X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4610" "Thursday" "7" "May" "2020" "15:59:49" "-0500" "Gage Hugo" "gagehugo@gmail.com" "<CAE4Awf-414JWXMCg4MFUKYKzzZpA4OoGkBYVP-0P=ekzDiButg@mail.gmail.com>" "154" "[oss-security] Re: [OSSA-2020-003] Keystone: Keystone does not check signature TTL of the EC2 credential auth method (CVE PENDING)" nil nil nil "5" "2020050720:59:49" "[oss-security] Re: [OSSA-2020-003] Keystone: Keystone does not check signature TTL of the EC2 credential auth method (CVE PENDING)" (number mark "U       gagehugo@gma May  7  154/4610  " thread-indent "\"[oss-security] Re: [OSSA-2020-003] Keystone: Keystone does not check signature TTL of the EC2 credential auth method (CVE PENDING)\"\n") "<CAE4Awf9+28ooqR9jH5m=NkARWYazK0Utb8=NzqQzOhC5-1MjpQ@mail.gmail.com>" ("<CAE4Awf9+28ooqR9jH5m=NkARWYazK0Utb8=NzqQzOhC5-1MjpQ@mail.gmail.com>") nil nil nil nil nil nil nil "[oss-security] Re: [OSSA-2020-003] Keystone: Keystone does not check signature TTL of the EC2 credential auth method (CVE PENDING)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1380 invoked by uid 550); 7 May 2020 21:17:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24258 invoked from network); 7 May 2020 21:00:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=2HxqtIaqoYtuyhltxkKKmh3RuUMTMW7oQIu2XWjLFxI=;
        b=TDuYXbGVxjnUCD1gYYu7luwPmL89BjrcKOxuh4cQXv4d6/+dmmMH/zrYBjJuYBo4+h
         Acg8vzEJTv3m5r882n45B7YYMiVxTAU6v/DWNDpgA9fA68sFBrGqt8M4OQkURygiEewW
         HViDNkKcbG0yel5xRNspBo3lKamRFsnmJxuQjWCSkaRwyXSH5WwCp9eUFmrowjVBSGT7
         IkeVBjLy3I6BMrtAE66gt/WL0apeoZEl/vzFfLvbL9mw1JEYk9EZmn37dtnxhb3e55Xv
         2l8pUdTsk5I9C92Gvymb7RAFGCHRlHt1k+dp0N5SEua1n8PTKh2HyNUNhEwbFisUlhnv
         1z8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=2HxqtIaqoYtuyhltxkKKmh3RuUMTMW7oQIu2XWjLFxI=;
        b=Ie/PKmyp6fFCN1AFyxZfJeaMGWH2PEJnfGoLDG1J8gOwNti292Oa/lS4/clpOp4D7M
         1K+0il1L89bWub4pAVfIjpt0qV9oQOXiUtsP75EWOB5oP37zCk4SbsPRYEc1S8Y5duPQ
         VSXyEjJVhmE6gDZlAmkVpMVOgccFo+cUvK0Y211PuRs0UgOuBN3ebRkI0M5MEuVBRlRl
         cWr6PLjZTtDuWhjLUG45cYD1HVObGnIDHiibLNVtpCaBVcCeP97iO/Fo12f+z9nCzmKS
         kZdEZNlUPGKCTkjl2KLef3JDva02j7MJbJwetZ/AAzvx/HJgTzUW0eKszat2RXGrOaef
         qYNQ==
X-Gm-Message-State: AGi0PubuHt590RtRr9lnXoH2BC976oKgi9CSBbe5aVF9pbOJqTV4m3G6
	bvdUNdfRQ4VNMj639ssfnXMO7GElaDiCBDpQZ19XqkOukFE=
X-Google-Smtp-Source: APiQypLHGinbH9QAI6cA7GQmx3vBxrb8SsnaIrHHycGm7LeJoKTTKy39NzkLejt6ORDiWEZSyiRO5YhqhQpg9LSL+0c=
X-Received: by 2002:a25:ca8b:: with SMTP id a133mr26234863ybg.367.1588885201015;
 Thu, 07 May 2020 14:00:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAE4Awf9+28ooqR9jH5m=NkARWYazK0Utb8=NzqQzOhC5-1MjpQ@mail.gmail.com>
In-Reply-To: <CAE4Awf9+28ooqR9jH5m=NkARWYazK0Utb8=NzqQzOhC5-1MjpQ@mail.gmail.com>
From: Gage Hugo <gagehugo@gmail.com>
Date: Thu, 7 May 2020 15:59:49 -0500
Message-ID: <CAE4Awf-414JWXMCg4MFUKYKzzZpA4OoGkBYVP-0P=ekzDiButg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000fed7c805a5152903"
Subject: [oss-security] Re: [OSSA-2020-003] Keystone: Keystone does not check signature TTL
 of the EC2 credential auth method (CVE PENDING)

--000000000000fed7c805a5152903
Content-Type: text/plain; charset="UTF-8"

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

======================================================================================
OSSA-2020-003: Keystone does not check signature TTL of the EC2 credential
auth method
======================================================================================

:Date: May 06, 2020
:CVE: CVE-2020-12692


Affects
~~~~~~~
- - Keystone: <15.0.1, ==16.0.0


Description
~~~~~~~~~~~
kay reported a vulnerability with keystone's EC2 API. Keystone doesn't
have a signature TTL check for AWS signature V4 and an attacker can
sniff the auth header, then use it to reissue an openstack token an
unlimited number of times.


Errata
~~~~~~
CVE-2020-12692 was assigned after the original publication date.


Patches
~~~~~~~
- - https://review.opendev.org/725385 (Rocky)
- - https://review.opendev.org/725069 (Stein)
- - https://review.opendev.org/724954 (Train)
- - https://review.opendev.org/724746 (Ussuri)
- - https://review.opendev.org/724124 (Victoria)


Credits
~~~~~~~
- - kay (CVE-2020-12692)


References
~~~~~~~~~~
- - https://launchpad.net/bugs/1872737
- - http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2020-12692


Notes
~~~~~
- - The stable/rocky branch is under extended maintenance and will receive
no new
  point releases, but a patch for it is provided as a courtesy.


OSSA History
~~~~~~~~~~~~
- - 2020-05-07 - Errata 1
- - 2020-05-06 - Original Version
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEWa125cLHIuv6ekof56j9K3b+vREFAl60dXoACgkQ56j9K3b+
vREOnxAAtrb94nekVD1bjsjmp2bJsJoN4alwIySMJzDAXp9aU2j23jS3pEixLuBN
lkK6AA7BwKY5HgNtEeWrau+Ri+GOyYlhRMXZy+z+JC6+9qYxdFwcatL6yLYwkrOF
pMREuwbENZMBgl3HgIotJU/RqilZXf+7OLCO9ZaciaYvXkM3e5TswxYme9S+9r57
OQ6veWVEfTTadTK+wp9tZ4RzPcgKAwiCEX2w1uYBCAMrh+GAWFBEiD4J7IEOvs2u
TgnI/znFnQSb1f2CIYENGRevBFRvtILfovMI71rgwgNrof15Z6G6U3PW+yLPFaWg
rqQd3wEmmUPNF/RQdOIngktTXEkQI1DsUkCg/75EZlDVBayUP1qyP1nlK/uAwRoX
w0p6cPS/rREiOuCfCUKJ6tGg8e4/5o55cwbX/Bv/4KQxqCpD5W7XB1y81A0xnwsz
btBZkio3KZZltCST+dNrmLIm3ZxdGQoC+wA+BweaAiMZf2HP8sSOxegDOGhWvBPm
p23fH1kToH6vnGdGnp5SAIEcFg8Cu8LFVovZFHvfaN84XkRyX3Yqc+n88IauF0re
pFf1iegTAArgminNCuTKKswLNgLr5J6SkKH/LTb3/hKgduRabRzKcBreP371fuvP
K5/QCmXEyOT8HbQstWaEXmy9FvDh35lvmXtaKWBhB0LR8kWAY8s=
=fTyp
-----END PGP SIGNATURE-----

On Wed, May 6, 2020 at 2:44 PM Gage Hugo <gagehugo@gmail.com> wrote:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA512
>
>
> ======================================================================================
> OSSA-2020-003: Keystone does not check signature TTL of the EC2 credential
> auth method
>
> ======================================================================================
>
> :Date: May 06, 2020
> :CVE: Pending
>
>
> Affects
> ~~~~~~~
> - - Keystone: <15.0.1, ==16.0.0
>
>
> Description
> ~~~~~~~~~~~
> kay reported a vulnerability with keystone's EC2 API. Keystone doesn't
> have a signature TTL check for AWS signature V4 and an attacker can
> sniff the auth header, then use it to reissue an openstack token an
> unlimited number of times.
>
>
> Patches
> ~~~~~~~
> - - https://review.opendev.org/725385 (Rocky)
> - - https://review.opendev.org/725069 (Stein)
> - - https://review.opendev.org/724954 (Train)
> - - https://review.opendev.org/724746 (Ussuri)
> - - https://review.opendev.org/724124 (Victoria)
>
>
> Credits
> ~~~~~~~
> - - kay (CVE Pending)
>
>
> References
> ~~~~~~~~~~
> - - https://launchpad.net/bugs/1872737
> - - http://cve.mitre.org/cgi-bin/cvename.cgi?name=Pending
>
>
> Notes
> ~~~~~
> - - The stable/rocky branch is under extended maintenance and will receive
> no new
>   point releases, but a patch for it is provided as a courtesy.
> -----BEGIN PGP SIGNATURE-----
>
> iQIzBAEBCgAdFiEEWa125cLHIuv6ekof56j9K3b+vREFAl6zEjwACgkQ56j9K3b+
> vRFejhAAvzq3MBwKGXIKsJxQmwVS0RxVFifTAfnKIjBGskG3knWkQHopY0IcmwoZ
> 3Kv2AnRgFVBuQpZ0t9Y3S3U7KRI63FT+kzA3gy9sB+h7rdqzquxejXvljRMGJlex
> WRCOQwRP4prFpzpUqzBg9/bIAyWpkrjJIvz7iJ9U3z6MbrZIjV+YEZ3JIRQTdMUj
> MajgwJ4EDynkh8trm63n7Gyuvq8ukj1FCrG1APWJi96HhwNz6XwiqXIWci4CTaEW
> sY9v8luETMCyv+nY2pt9IF8wXOaJKJXPTilf6sisjN2zDq+UWgsxEC0sp3h09tnZ
> m6cy3OvUQeDmdJVQ/VNsfUTeRYRvYri2u44FaOUBjsNxeZca1U4MCVkAiN9BBzkg
> k1Xb8zgGoXaytT/lzzyr67h6ZghKm6cnSUktWnX56847byOMPi/g9q1cu0edUwwC
> 7SDaQ08JbsEstiXtPVBhatTLxbjlNy5eql6NaZmFQatYJAQKZsasvwV4YBv290mu
> OsVHUEqjmYk4b4CZNPQC2681CDtAQpiLuasYiLnxC6I+zBTwfP+6tzP0xVHW4woi
> 4Jhl/watZMudrtMS3YoOmwZ4iFNJRzQcDWmiAr0CZiC0NGamLjvHWHRslnvmhy92
> kSGWLilaMD5vBODXVY82lQHrbl96dPRbpe8/z29sALsEs6aNFYk=
> =qyBV
> -----END PGP SIGNATURE-----
>

--000000000000fed7c805a5152903--
