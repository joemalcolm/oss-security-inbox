X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1588" "Saturday" "9" "July" "2016" "10:36:03" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160709143603.3DE4F6C1D65@smtpvmsrv1.mitre.org>" "39" "[oss-security] Re: CVE request: apparmor: oops in apparmor_setprocattr()" nil nil nil "7" "2016070914:36:03" "[oss-security] Re: CVE request: apparmor: oops in apparmor_setprocattr()" (number mark "U       cve-assign@m Jul  9   39/1588  " thread-indent "\"[oss-security] Re: CVE request: apparmor: oops in apparmor_setprocattr()\"\n") "<57809C8C.6070902@canonical.com>" ("<57809C8C.6070902@canonical.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7996 invoked by uid 550); 9 Jul 2016 14:36:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7976 invoked from network); 9 Jul 2016 14:36:15 -0000
From: cve-assign@mitre.org
To: john.johansen@canonical.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <57809C8C.6070902@canonical.com>
Message-Id: <20160709143603.3DE4F6C1D65@smtpvmsrv1.mitre.org>
Date: Sat,  9 Jul 2016 10:36:03 -0400 (EDT)
Subject: [oss-security] Re: CVE request: apparmor: oops in apparmor_setprocattr()

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> http://marc.info/?l=linux-kernel&m=146793642811929&w=2
> http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=30a46a4647fd1df9cf52e43bf467f0d9265096ca

>> Note: it may be possible to get a local privilege escalation out of this 
>> bug.

>>> apparmor: fix oops, validate buffer size in apparmor_setprocattr()
    
>>> When proc_pid_attr_write() was changed to use memdup_user apparmor's
>>> (interface violating) assumption that the setprocattr buffer was always
>>> a single page was violated.

Use CVE-2016-6187.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXgQtrAAoJEHb/MwWLVhi2z0wQAIz473jwzdiwtT1tVaOHxuLj
5ptbSsvbr9tiMfiiyKzvxI3bDvXr/6GRI8bfxYq/m+tPA3C9N15pW/7CJqcNW5FH
W7aUiGHqikPMb+nEulObtl8Ib2xnkCmA3vB8WMARavvQzFjlZ2llx20cAOKtO07F
pBkhK1/RHiYVHI7eareqsB9KCrgibiiO58OhrYHtOJhcgGwOPE4Hr1jeg3je53dp
PQWXNOah9lQ9aUV2hXKArDRlEWehH4CTC8fM4Lr5v7Hw3tTa2LAQoOC/dPSdYiJJ
i5KwtXQlSjEbDElg7VBdspA5jntIGKq3XCC9pep0wHh8XtbPNOiJwKSs196nxny/
uS9ChoS4MFWgpNe2MY7wANAWlqNdcnicyQpiiYsyy/W3luumd3LaYayiITjzWPGM
wu29GhYRIcRhaJ3BBzdGKLITCpqrOdlHRkJONYgzfZyFTND7bbC0JkJ70x/JOPww
S16HjC3BEtH+H/3pnYLtZ+PnZ36vdP01Dbp3oRuICcloMSXm5d9eeMQX5JhUq2ms
xLrr0kxwo0fxYAS6C8lR7fAX/ueCY980AcPRWlMzZbeHxsfK+1CMN8Of233PTxx6
WpvN5iSg8OydurewOJKHUdrYERON/afF/FcfqN3vNDHM9oDHXMKlcp0s7APMZf7K
EBChJPlAsaURokHYcm0L
=roE2
-----END PGP SIGNATURE-----
