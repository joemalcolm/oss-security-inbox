X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1196" "Sunday" "21" "June" "2015" "07:08:32" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150621110832.DBA4052E168@smtpvbsrv1.mitre.org>" "40" "[oss-security] Re: CVE-2015-0848 - Heap overflow on libwmf0.2-7" nil nil nil "6" "2015062111:08:32" "[oss-security] Re: CVE-2015-0848 - Heap overflow on libwmf0.2-7" (number mark "U       cve-assign@m Jun 21   40/1196  " thread-indent "\"[oss-security] Re: CVE-2015-0848 - Heap overflow on libwmf0.2-7\"\n") "<CAEr-gPHOxSadiPW+crbpJUD5qq=W_t6u+0yekVc026Dxg4eEpw@mail.gmail.com>" ("<CAEr-gPHOxSadiPW+crbpJUD5qq=W_t6u+0yekVc026Dxg4eEpw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24276 invoked by uid 550); 21 Jun 2015 11:08:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24223 invoked from network); 21 Jun 2015 11:08:44 -0000
From: cve-assign@mitre.org
To: fernando@null-life.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CAEr-gPHOxSadiPW+crbpJUD5qq=W_t6u+0yekVc026Dxg4eEpw@mail.gmail.com>
Message-Id: <20150621110832.DBA4052E168@smtpvbsrv1.mitre.org>
Date: Sun, 21 Jun 2015 07:08:32 -0400 (EDT)
Subject: [oss-security] Re: CVE-2015-0848 - Heap overflow on libwmf0.2-7

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> invalid read on meta_pen_create player/meta.h (+ patch)
> https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=784205

> heap-buffer-overflow
> READ of size 4
> player/meta.h
> - while (objects[i].type && (i < NUM_OBJECTS (API))) i++;
> + while ((i < NUM_OBJECTS (API)) && objects[i].type) i++;

Use CVE-2015-4695.


> wmf2gd/wmf2eps invalid read
> https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=784192

> wmf2gd/wmf2eps
> heap-use-after-free
> READ of size 4

Use CVE-2015-4696.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVhprFAAoJEKllVAevmvmshbEIAIfLEYL/JRloei5vBHe0v3hm
APMvwwLcDrJFZ1UHznIw3qk11YErS4HhPNsE8Y89ugTUbPAtKuL0iG/ymOCphZx6
M+0BJDkQvyrSxWzp/TO08UYtwLsyK67U7sh6CUoTC/Q3OBz15jA+7FmQ0tcH8VeF
Gx+hu7a3HhSpsbq2gLFH9hWsMJj690OFpoAwqpXzd2T0yn6kIM7EhBc3fCSQp+A2
vKbVZTB6eBOfuf8A5CCCxaCXzGoO8dlQGGAo+XhzxFQARCObDw32u+vIZ9Q9KF2b
+xrWvuXKB5q7QVp3IsYgPoE0BqXiEBTGyTPcv0yXPFgp13y4XJvalfmpbmL+vAo=
=2Ssa
-----END PGP SIGNATURE-----
