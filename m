X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2104" "Wednesday" "13" "July" "2016" "11:41:53" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160713154153.BC9736C0989@smtpvmsrv1.mitre.org>" "54" "[oss-security] Re: CVE requests for Drupal Core - SA-CORE-2016-002" nil nil nil "7" "2016071315:41:53" "[oss-security] Re: CVE requests for Drupal Core - SA-CORE-2016-002" (number mark "U       cve-assign@m Jul 13   54/2104  " thread-indent "\"[oss-security] Re: CVE requests for Drupal Core - SA-CORE-2016-002\"\n") "<CAMYtjAppEswaDgzgB4Wf9vPFJZVcco3M1KTR68hVCawtR4u1xQ@mail.gmail.com>" ("<CAMYtjAppEswaDgzgB4Wf9vPFJZVcco3M1KTR68hVCawtR4u1xQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25970 invoked by uid 550); 13 Jul 2016 15:42:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25952 invoked from network); 13 Jul 2016 15:42:05 -0000
From: cve-assign@mitre.org
To: pere@orga.cat
Cc: cve-assign@mitre.org, security@drupal.org, oss-security@lists.openwall.com
In-Reply-To: <CAMYtjAppEswaDgzgB4Wf9vPFJZVcco3M1KTR68hVCawtR4u1xQ@mail.gmail.com>
Message-Id: <20160713154153.BC9736C0989@smtpvmsrv1.mitre.org>
Date: Wed, 13 Jul 2016 11:41:53 -0400 (EDT)
Subject: [oss-security] Re: CVE requests for Drupal Core - SA-CORE-2016-002

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://www.drupal.org/SA-CORE-2016-002
> 
> Saving user accounts can sometimes grant the user all roles (User
> module - Drupal 7 - Moderately Critical)
> 
> A vulnerability exists in the User module, where if some specific
> contributed or custom code triggers a rebuild of the user profile
> form, a registered user can be granted all user roles on the site.
> This would typically result in the user gaining administrative access.

Use CVE-2016-6211.


> https://www.drupal.org/SA-CORE-2016-002
> https://www.drupal.org/node/2749333
> 
> Views can allow unauthorized users to see Statistics information
> (Views module - Drupal 8 - Less Critical)
> 
> An access bypass vulnerability exists in the Views module, where users
> without the "View content count" permission can see the number of hits
> collected by the Statistics module for results in the view.
> 
> The same vulnerability exists in the Drupal 7 Views module (see
> SA-CONTRIB-2016-036).

Use CVE-2016-6212 for both the issue in Drupal Core and the issue
in the Drupal 7 Views module.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXhmCYAAoJEHb/MwWLVhi2ynoQALLaB0MVbyjGwof2sl9iAbiX
pTLnCnGhO6ecpwWJdtRB4W4DEF6L/h3X7ggiohGaD6okdQtjLF8ykSrvb2mciAsE
gOjNpN9qK16hjAcd2DtSnXn32Qz1tFpFYYIWdSthO1hlI6Sr24B3E9lYtBoAhC1/
VudXovTed0jBW95EvS0lWPMYcOGEtSoQ3rLOKEcnQqzIrlH6hs3bRQNsZLgupsB1
dGY4gsHFleDZKyZLP15KWbONnyfS6jHp7SIXne977vgWKpDYy/5+XSN7YvKks/Ju
q3a0oLn8N4CreZrCIWl6CbgG0iA75xzlgsgayg+xRabFEavL2EonPPJIvBj3TxtM
d2RVPnfGGuLmvOh+c5fBYs6gVftRJa9nUaIXou+1Xs6LQo5RDypFPCDzpblcWSe8
QX0AXVE/lCGP1szzCXPqUFWoXMFvwlnFnIwPpJrwO/eADc8P6XsOwsvDbqMFEzlI
r5Mj+d0/5q5NrCf9GWjSi7YTrDQa1ft8SkUsgyCtRwmYIhUyuSIzStoPM+MvLOQv
grzXK6F4QqH33z7ru+fdbq5XIIGmk2dQOtgY+MZXxVDNcVmSgZOvwInMMUgnuKpR
uF78CqNit4FfzyOngGGDR901xfxY9PuHjAbdY2rwITsflsFPWw6z8O+7z0T98IWo
XXHA0Ya2kF2RiLDCX1fN
=CcX4
-----END PGP SIGNATURE-----
