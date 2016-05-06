X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2663" "Friday" "6" "May" "2016" "11:40:21" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160506154021.7AD8B72E002@smtpvbsrv1.mitre.org>" "69" "[oss-security] Re: CVE Requests: Linux: BPF flaws (one use-after-free / local root privilege escalation)" nil nil nil "5" "2016050615:40:21" "[oss-security] Re: CVE Requests: Linux: BPF flaws (one use-after-free / local root privilege escalation)" (number mark "U       cve-assign@m May  6   69/2663  " thread-indent "\"[oss-security] Re: CVE Requests: Linux: BPF flaws (one use-after-free / local root privilege escalation)\"\n") "<20160506131455.GA17272@lorien.valinor.li>" ("<20160506131455.GA17272@lorien.valinor.li>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24058 invoked by uid 550); 6 May 2016 15:40:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24040 invoked from network); 6 May 2016 15:40:33 -0000
From: cve-assign@mitre.org
To: carnil@debian.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20160506131455.GA17272@lorien.valinor.li>
Message-Id: <20160506154021.7AD8B72E002@smtpvbsrv1.mitre.org>
Date: Fri,  6 May 2016 11:40:21 -0400 (EDT)
Subject: [oss-security] Re: CVE Requests: Linux: BPF flaws (one use-after-free / local root privilege escalation)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> A use-after-free flaw via double-fdput in bpf was recently fixed in
> Linux. Details:
> 
> https://bugs.chromium.org/p/project-zero/issues/detail?id=808
> 
> Fixed via:
> https://git.kernel.org/linus/8358b02bf67d3a5d8a825070e1aa73f25fb2e4c7
> 
> And as well reported/forwarded in Debian:
> https://bugs.debian.org/823603

Use CVE-2016-4557.

(Additional notes about this: in 808, the first paragraph describes
intentional behavior. The kernel/bpf/verifier.c attack surface for
unprivileged users is also relevant to one or more previous CVEs such
as CVE-2016-2383. Also, the paragraphs after "There are two problems
with this approach" describe kernel behaviors that make CVE-2016-4557
exploitation more reliable. We do not currently feel that these
behaviors should have CVE IDs. For example, the paragraphs mention
"abusing the writev() syscall and FUSE" and "has to wait for the
attacker-owned FUSE filesystem to resolve the pagefault, allowing the
attacker to suspend code execution in the kernel at that point
arbitrarily.")


> bpf: fix refcnt overflow:
> https://git.kernel.org/linus/92117d8443bc5afacc8d5ba82e541946310f106e

Use CVE-2016-4558.

(The "program refcnt" and "map refcnt" problems are not precisely analogous but
we feel that the one ID, CVE-2016-4558, is sufficient.)


> bpf: fix check_map_func_compatibility logic
> https://git.kernel.org/linus/6aff67c85c9e5a4bc99e5211c1bac547936626ca
> 
> Not sure though if the later one has a security impact.

We have not yet assigned a CVE ID to
6aff67c85c9e5a4bc99e5211c1bac547936626ca in case someone else wants to
provide additional information.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXLLoiAAoJEHb/MwWLVhi2dnQP/2P3MLVWWfYTlmj6mOLImmtM
Ag8ChZX2PpdGd69SxwryOKpEGnyfu30/teUp3AiZW8f4M9eAftFSl0dICJip3wS5
9zhi4KhQYDOlTi6xujXYSG7KUQVckyLkCurxwhsW8rGs9xUNKrMkrivcCu94SANk
a0tg2FIoTcXyVTPSs6V4LwhyDAChLDFUCCuqNwFupvWRqshdkI6cjE4rJ1al8iP4
ujfWtJlqFnofvL6vEE3ZEAe7Y8N2ZN22z2E3dM+9CKyEdZ+Gij/8YKBThYKjC2Ku
bZ5jEJjvlGZyXGg+k40XFT5r8k+1LUE2uLk0eNCN/3Sc/LgeDMKmSqfiAX+LsGS1
s+8vDweQ72Q1OoxoiChvoK5d0e4RT/5UtinjA3h/1yABBFJ/4StwTjZkkSHr8o7a
JD60QEG8PEdzz8hEFh6FyoaLXcz52PKe54cI2kbqiKfXytJMOmrNSf/v/hBMVjFV
CzT1ZYmIQUxhllqNzxmangWnijCq0eNCUCEHvgc6qNwPyQTsB5uj0cqaDaKkmH2z
5Wyt2sFvVsIi3vFZr8y7mjM243V7hH5xXurhUOFIzhzF5YvTZ/eaq8ibpolBgyrB
CleVL3ok8uy0ikCblzVnHgEqsYl3GX4CMF4PMeayIO9seo5iPuh5eGutgdwuLDlV
osmgYu9VbVVb8mMPATPw
=V36N
-----END PGP SIGNATURE-----
