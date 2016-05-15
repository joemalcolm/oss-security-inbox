X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1472" "Sunday" "15" "May" "2016" "10:20:22" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160515142022.4BFE7332008@smtpvbsrv1.mitre.org>" "38" "[oss-security] Re: CVE Requests: Linux: use-after-free issue for ppp channel" nil nil nil "5" "2016051514:20:22" "[oss-security] Re: CVE Requests: Linux: use-after-free issue for ppp channel" (number mark "U       cve-assign@m May 15   38/1472  " thread-indent "\"[oss-security] Re: CVE Requests: Linux: use-after-free issue for ppp channel\"\n") "<57385812.2030402@gmail.com>" ("<57385812.2030402@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5646 invoked by uid 550); 15 May 2016 14:20:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5628 invoked from network); 15 May 2016 14:20:34 -0000
From: cve-assign@mitre.org
To: sploving1@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, g.nault@alphalink.fr
In-Reply-To: <57385812.2030402@gmail.com>
Message-Id: <20160515142022.4BFE7332008@smtpvbsrv1.mitre.org>
Date: Sun, 15 May 2016 10:20:22 -0400 (EDT)
Subject: [oss-security] Re: CVE Requests: Linux: use-after-free issue for ppp channel

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

>    The ppp channel did not take reference on its network namespace
> when it was registered and unregistered, which causes a use-after-free
> issue. Details:
> https://lkml.org/lkml/2016/3/17/569
> Fixed via:
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=1f461dcdd296eecedaffffc6bae2bfa90bd7eb89

>> ppp: take reference on channels netns

> Fixed in linux-stable 4.5.4

Use CVE-2016-4805.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXOISqAAoJEHb/MwWLVhi2pt0P/RXsGFFEKEkonzo9IdSJ/tZZ
MTsM+l8dZzpHFh44HTbI+GnzilwX5TdtZADLR8a4mfLvnF+qxoMMf/rZBrmokkAI
I0b5UfM+37twvWDnj7pKDYHn5LdsGsZW+z6WeXddhwdry9scB04xnVCgXni0SOJ4
Fhmu72ykxgoZ4nT9gqT62nGbFHsLlS3mhF3lobmJwaFp3kiP1AL/NaaAzVdYX1T0
bcIjRoJoRpKzIXURSIyQ+WnmtoMB5KvnQQgDZvsmqk9dLe0iWiZamAV8reKiIaHN
ZbKiDsDSQzqHJ1IsY/CT08Uj+WFyn3bbikrbo2WmxVZd1kuvJCzB/uD1zLny5vLG
GWWml1isPA8jTMH5AT8ZcTED+vPgN+a55JpOkUKSUq/thlwhdv+5smE/ZqUQaTZK
6M910FY9AA+75AdA6RR+PKzbB6UnwaJS71oEGXELzwJw7UtdooUHHqJK9Y5mPH5J
ysYb3vrEUiPvRuZyuWSXi1jk/MMHGmG/lInXhWFirvwh1jt5XYKJP5uJN+qfMwCg
WBBvUOinqUwDu0C42wrpM5NkCfFE/o854+EurHuJ7nXOQjrX+Zzd5eAZkhFNJeej
iCX4C/FV5QLpQnahtsbZeYrtl8FKJ/4yJty5KxnE+S/V4ic4H06zA00j3XPZD4jz
U6E7HOPcRqdPhitNBIHt
=RgAh
-----END PGP SIGNATURE-----
