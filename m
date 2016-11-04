X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1413" "Friday" "4" "November" "2016" "03:08:48" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<b2c66d90c93144128adf042665999c21@imshyb02.MITRE.ORG>" "34" "[oss-security] Re: kernel: fix minor infoleak in get_user_ex()" nil nil nil "11" "2016110407:08:48" "[oss-security] Re: kernel: fix minor infoleak in get_user_ex()" (number mark "U       cve-assign@m Nov  4   34/1413  " thread-indent "\"[oss-security] Re: kernel: fix minor infoleak in get_user_ex()\"\n") "<CABniQZMPWz9XaVm4fjsYC8SZXksNm-63-gzeRkz8Eertv3j-SQ@mail.gmail.com>" ("<CABniQZMPWz9XaVm4fjsYC8SZXksNm-63-gzeRkz8Eertv3j-SQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28251 invoked by uid 550); 4 Nov 2016 07:09:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28219 invoked from network); 4 Nov 2016 07:08:59 -0000
From: <cve-assign@mitre.org>
To: <citypw@gmail.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <CABniQZMPWz9XaVm4fjsYC8SZXksNm-63-gzeRkz8Eertv3j-SQ@mail.gmail.com>
Message-ID: <b2c66d90c93144128adf042665999c21@imshyb02.MITRE.ORG>
Date: Fri, 4 Nov 2016 03:08:48 -0400
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: kernel: fix minor infoleak in get_user_ex()

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> get_user_ex(x, ptr) should zero x on failure. It's not a lot of a leak
> (at most we are leaking uninitialized 64bit value off the kernel
> stack, and in a fairly constrained situation
> 
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=1c109fabbd51863475cd12ac206bdd249aee35af
> https://lwn.net/Articles/705264/

Use CVE-2016-9178.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYHDIZAAoJEHb/MwWLVhi2IVYP/R24MqfqIc1TDy62xNPR8gcu
AagimLd3Vuuqyjf63QNercHvGfDoYnwg/94OsLR/mX+jzd2M4tfXxb4Jr5Rfiul6
9rkwX+/Fd8E5gRu6N494xtbgPOsUApgMAspLOc7iUJ8pUcxe7A1k47F+xJovTeKx
ode5Atqdzgp1yN0QEPcxLG+6fyhDpBG4wwxKaYxDT5CLjkG7PWlNbGmsKhJjCpcA
Dlj/mLNI9nQL0qXIG3tLJfZ+sNOn0Ptq3VPz4osrEVZpGkr0+xQWHpmNYZg0pc80
gmJVIkPH1DnnMeGh88amjMSk3sCGvSiUZKOU8fLPHwYZOBC7Ka44GEBq4yX1CjhD
L5wrMxJAZQVavRbTK4FEsj2agNkBoTSYwiZvMrQioW8CPwJN3WAaVLZiGx6f62Kc
OmFXfltVjFHmMfxyEi4hcyVVNAD0XeIz+gxV9vAFebtbwnjvdRd0uQ7pnwpiYP9N
E+PoZWZMyzhVciI0+UFhxABhA8rPX3ceWH0LiNKzCj2CwZJTwJVbLdLbLih5/7rZ
WNZf/oaV67rAVF5fVwIFhO7+ihyiOIlgduphxgshAgZSBl3UTTuDqQKpaCld6Zhv
G2RUyZy7LPCQysCYhzmFfXoc2mnI1xSgRTtUwhjAHdrIMnFt9FshiADMXcSxdd4G
OxELxPZCTGX4qVO3xmty
=RnaX
-----END PGP SIGNATURE-----
