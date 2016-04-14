X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1817" "Thursday" "14" "April" "2016" "11:16:42" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160414151642.2DD166C0020@smtpvmsrv1.mitre.org>" "45" "[oss-security] Re: CVE request Qemu: i386: leakage of stack memory to guest in kvmvapic.c" nil nil nil "4" "2016041415:16:42" "[oss-security] Re: CVE request Qemu: i386: leakage of stack memory to guest in kvmvapic.c" (number mark "U       cve-assign@m Apr 14   45/1817  " thread-indent "\"[oss-security] Re: CVE request Qemu: i386: leakage of stack memory to guest in kvmvapic.c\"\n") "<alpine.LFD.2.20.1604132336250.29012@wniryva>" ("<alpine.LFD.2.20.1604132336250.29012@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24303 invoked by uid 550); 14 Apr 2016 15:16:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24283 invoked from network); 14 Apr 2016 15:16:54 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, donghai.zdh@alibaba-inc.com
In-Reply-To: <alpine.LFD.2.20.1604132336250.29012@wniryva>
Message-Id: <20160414151642.2DD166C0020@smtpvmsrv1.mitre.org>
Date: Thu, 14 Apr 2016 11:16:42 -0400 (EDT)
Subject: [oss-security] Re: CVE request Qemu: i386: leakage of stack memory to guest in kvmvapic.c

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Qemu emulator built with the Task Priority Register(TPR) optimizations for
> 32-bit Windows guests, is vulnerable to a information leakage issue. It could
> occur while accessing Task Priority Register(TPR).
> 
> A privileged user/process inside guest could use this issue to leak host
> memory bytes.
> 
> https://bugzilla.redhat.com/show_bug.cgi?id=1313686
> https://lists.gnu.org/archive/html/qemu-devel/2016-04/msg01118.html

>> When processing Task Priorty Register(TPR) access, it could leak
>> automatic stack variable 'imm32' in patch_instruction().
>> Initialise the variable to avoid it.

Use CVE-2016-4020.

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/i386/kvmvapic.c but
that may be an expected place for a later update.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXD7OfAAoJEL54rhJi8gl5NBYQAKBSeM2gEBAxQGcp0H36CMHx
rLWnSGdlLDaM5bv0wnVZcLCu11AB2IXbNuAhYbqVRQXUVVNMjSdqGPLKA6wh2J0D
jPf7ur2NZ+IkhYMQBbISQo+8OuHq/64BITfw+uIyEpwn/TpemTst0msVE9gTJ307
0Rv96p7Fr4JhndHp270OdxysYnXl886pBSuh1aQOg0QSdZb1Ij1j85Q5+N6b8VbU
mVyjRnAMTiVSFVqnED3qxZTJ9ZGrKVXbr470569D7PepR+L5kdG2lN/eeSiBSXKk
iihqYwmlL21+7dCrJNWDe82UAkk6D1qjXibvpcT4+K890Fw1RSlLQiNNpbX/cVaY
Tg4dA8txzW7IuU9dHuI8/x1Usg/XLf0YYUghtQ93wjVZqk+AkkZdh4kCwSA7q6QW
wDWNagwX0FTmRmGPKvHLy5IRGOKhqmQ8IMSOG3/sWG0hbbTBK7xJxh/8hudjk66J
NaeBosQw7AkUj9QTw/YZk6+yIPlbpEMiiJENMsmkq+cocp2qtu1XPNVf7yODe2Ap
3B7OheWRaGq9SJZjAbK9PSnDGcZUmmjEHrpJn6m4CpjUWHTw4A1cfCiTgKQRibTO
TMlR9QoYDL/GEzdm6hi8QrO1gjhIFahtU3jZyek27DF7pSd+UZ0MoizxpCLb5+5X
kw7IG5V5vr0N+jlmOj64
=9E7h
-----END PGP SIGNATURE-----
