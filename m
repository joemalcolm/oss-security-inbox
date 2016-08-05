X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2371" "Friday" "5" "August" "2016" "11:39:40" "+0800" "0xr0ot" "0xr0ot.sec@gmail.com" "<CAG0ev15p0b8Jd5paQn0VDcU0KKdLHhwTKXiSJJr9ysxAZC=fgg@mail.gmail.com>" "68" "[oss-security] Fwd: CVE request - samsumg android phone SVE-2016-6244 Possible Privilege Escalation in telecom" nil nil nil "8" "2016080503:39:40" "[oss-security] Fwd: CVE request - samsumg android phone SVE-2016-6244 Possible Privilege Escalation in telecom" (number mark "U       0xr0ot.sec@g Aug  5   68/2371  " thread-indent "\"[oss-security] Fwd: CVE request - samsumg android phone SVE-2016-6244 Possible Privilege Escalation in telecom\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30374 invoked by uid 550); 5 Aug 2016 03:54:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25649 invoked from network); 5 Aug 2016 03:39:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=6BPGRGgLC6H8o9C7/MR4u/OGAEQ4CMP7SYKxhvs8u9w=;
        b=Qwc++9ClkNCW0/yIuuOvsnnvjyuQZlVeIv959pU9vbzXArECgxnCp5kd/j7Vd5d0B1
         Ev7Q14Y5cSZwW9p++PFyd0ABf7uV0AtoIqbpYBDmNjm05Vfcy5NTM+raXPsiv/lnzmS4
         3xkByU4rw6dAmsY+trj/UDBrxzrgC5uCjjM+0IHZQU4uM965n1hB6AoennoKiy0M9p9Y
         86t7bbApHCZmqTkQJTYNxzCZ5pBCN6WTkEDglUHhAZwdejB/LZaylaCRm8uc9L3Rmaim
         nF353/MMHETCYl7EAeSgO25vvAS7O0H+/TwFBeqFHYs/IGHfQ66TT33lvq2SfQ13y2m+
         tAxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=6BPGRGgLC6H8o9C7/MR4u/OGAEQ4CMP7SYKxhvs8u9w=;
        b=lLCjOoW1nbq9j0/V+9r2rVTFnj/om0865qLXElgLC+JUcSQENTUYOBtBsOW9mLv5pR
         b14IJhZ1YNCnhmHhqAInxxLI1f0I7pw3WTgyP7/wavXD2VcfYfOVEzX5pH1L4M0gF5ls
         t381XwbDYGoVGkcV0OY/ZhdKkKN78qayWUKtOoHs6mYupm36qTWgxMxUxjFRKPYm9hmT
         wfKL4f4JHVJA/pENtDOMX7UcUvrpU+NStR0IDgsOOR1iXahUrL4jIKN5XX45YyJyYOf6
         2tA9b8d6drdlL7oPs4w6YRRXqMywm8pRvlgh1r0QtmwKyVt5+OjLLr021pip8BgPr496
         O6TQ==
X-Gm-Message-State: AEkooutEYO9DnHdpYKUkG7+OPbimuZD03WOL6LlfxO+mLFxdvHFWkQe5R2/+QP5n9Bsq3bRP4xojkQnGtPCfUQ==
X-Received: by 10.28.236.24 with SMTP id k24mr1025789wmh.47.1470368380765;
 Thu, 04 Aug 2016 20:39:40 -0700 (PDT)
MIME-Version: 1.0
From: 0xr0ot <0xr0ot.sec@gmail.com>
Date: Fri, 5 Aug 2016 11:39:40 +0800
Message-ID: <CAG0ev15p0b8Jd5paQn0VDcU0KKdLHhwTKXiSJJr9ysxAZC=fgg@mail.gmail.com>
To: oss-security@lists.openwall.com, mobile.security@samsung.com
Content-Type: multipart/alternative; boundary=001a1146ace2064c4905394ad140
Subject: [oss-security] Fwd: CVE request - samsumg android phone SVE-2016-6244 Possible
 Privilege Escalation in telecom

--001a1146ace2064c4905394ad140
Content-Type: text/plain; charset=UTF-8

---------- Forwarded message ----------
From: <cve-assign@mitre.org>
Date: 2016-08-03 20:50 GMT+08:00
Subject: Re: CVE request - samsumg android phone SVE-2016-6244 Possible
Privilege Escalation in telecom
To: 0xr0ot.sec@gmail.com
Cc: cve-assign@mitre.org


-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> http://security.samsungmobile.com/smrupdate.html#SMR-AUG-2016

> SVE-2016-6242: Possible Privilege Escalation in telecom
>
> Severity: Medium
> Affected versions: L(5.0/5.1), M(6.0)
> Reported on: May 11, 2016
> Disclosure status: Privately disclosed.
> A vulnerability in SpamCall Activity components of Telecom application
> can make crash and reboot a device when the malformed serializable
> object is passed.
> The patch complements the exception handling routine to prevent crash.

Use CVE-2016-6526.


> SVE-2016-6244: Possible Privilege Escalation in telecom
>
> Severity: Medium
> Affected versions: L(5.0/5.1), M(6.0)
> Reported on: May 11, 2016
> Disclosure status: Privately disclosed.
> The vulnerability in SmartCall Activity components of Telecom
> application can make crash and reboot a device when the malformed
> serializable object is passed.
> The patch complements the exception handling routine to prevent crash.

Use CVE-2016-6527.

- --
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXoefoAAoJEHb/MwWLVhi2vr0QAJ693LUFVlPVq2YI5Qp7Yeeb
3MF/kN4Xa9IZGoxNtNomEKfewInUU3jec9nEVyobchIdsJzYzzeL2OMwVjh2CvXU
UjCJylCCdzgXsOqCN2ULgLJlJP1zRHrptMkZsfYuJDIn5LFPtP//sBQuQe8Vmx7+
UsRXCY6eOT+icS7puohFEaUs6eD96Hs/Zob+h5UOozmGQosdZMfLJHyPV30Nr4h9
n/tqxVzWF/cnAZz6byui4y9zRrG7CtxsQ2VQvvVYR63iCJxziTFmBMqtkWnZrhvH
CLKi8M5E5SN9hQvfKDobYUThoDrife5JcPftQr3tOVJSjYA0W6ZqcLP8Aclsko2X
Fnw0SwVXUU80s2rFgZgVRgPHcrcA0EIiEXfrjxbIAU+ht8ACzQaSgF5Csc9/Jld3
hkNEg3JSr5gJsdQNDNuhJA6ysyaPwh8p0X7+9nb84CYmpsMwKAi1BnWyl/FNrGR4
NewVzNbLJmYZUBKjd1sMvn2Q+uvm+iRX9K+muikSXdj5vz5txXkQDU6Vy8Xwyja8
O2gDMrGTzX9DqXpPKCrm8z93EJI+/PT/9DHmLCJwJahtl+u/yN+nagGLl2gtfMAw
5nuE89pMAoZZ/sqBFQ3ir82mVJh/bm2T2sHO+R8ljvkHB3ERQrz3Hs7JIf4mCG1b
cx4bYNZHgZIF+KP1I5oF
=1SXm
-----END PGP SIGNATURE-----

--001a1146ace2064c4905394ad140--
