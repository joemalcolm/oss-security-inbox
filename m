X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2118" "Sunday" "6" "March" "2016" "13:39:40" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160306183940.531F1332047@smtpvbsrv1.mitre.org>" "48" "[oss-security] Re: CVE request -- linux kernel: pipe: limit the per-user amount of pages allocated in pipes" nil nil nil "3" "2016030618:39:40" "[oss-security] Re: CVE request -- linux kernel: pipe: limit the per-user amount of pages allocated in pipes" (number mark "U       cve-assign@m Mar  6   48/2118  " thread-indent "\"[oss-security] Re: CVE request -- linux kernel: pipe: limit the per-user amount of pages allocated in pipes\"\n") "<416950326.31158071.1456852194971.JavaMail.zimbra@redhat.com>" ("<416950326.31158071.1456852194971.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23843 invoked by uid 550); 6 Mar 2016 18:39:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23822 invoked from network); 6 Mar 2016 18:39:52 -0000
From: cve-assign@mitre.org
To: vdronov@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <416950326.31158071.1456852194971.JavaMail.zimbra@redhat.com>
Message-Id: <20160306183940.531F1332047@smtpvbsrv1.mitre.org>
Date: Sun,  6 Mar 2016 13:39:40 -0500 (EST)
Subject: [oss-security] Re: CVE request -- linux kernel: pipe: limit the per-user amount of pages allocated in pipes

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

>>> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=759c01142a5d0f364a462346168a56de28a80f52

>>> The result is an OOM condition and oom-killer is not able to help
>>> much, as the memory for the pipe data is a kernel memory and a memory
>>> footprint of offensive processes is small.

>> We feel that this should most likely have a CVE ID. The discussion
>> outlines a realistic problem "it is possible for a single process to
>> cause an OOM condition by filling large pipes with data that are never
>> read. A typical process filling 4000 pipes with 1 MB of data will use
>> 4 GB of memory" and the need for a CVE ID does not depend on the
>> details of the solution approach. Also, there doesn't seem to be any
>> general opposition to addressing the problem (e.g., see the
>> https://lkml.org/lkml/2016/1/19/674 post).

> An attacker using this method consumes a kernel memory, which is not
> directly accounted to any per-user limit.

> ... mmap()ed memory mentioned is accounted to per-user virtual
> memory limit

Use CVE-2016-2847.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJW3HjSAAoJEL54rhJi8gl5eMgP+gOBxp5qeeziz74rHT2eRoMg
lvhaCWZD7NM43WbU12ShG9WgeYC/qfrIbf6oraUUMiw7DjBktYhJowAqx0j9/Xjv
YQpaeMz2udLLV2R3ncNmt8xnCnuTkyyhjky/ZfZZNOr+ibHX+Rwy9Fzgcdr9NAzM
zW18cZOEbz6KBu9xJq0YyOMHJ0IV99cuj6BAj/JCXL1+acD//W0XP/tPa1lodkYG
a6k1RdXkOsykf+wiskpCZPu8WcRGYd8H5e4FZX0K6/S369czGJcdM9fWJ/t1j2pQ
f5cQXi4rhZyfwdjwkFXIVHGepz/M9Po4zAG3CyVKOOLe2OAAt6SR9h2uGZ4IexsA
2jVExyY0aD4M3epQUX5s67bNEoVfGFAbNw3ApL/7nOI9QWgxV40MBZ6tcNiG7cIv
R2pY4MGWun8A3WW+jIcwqMTFroXFFawQR9Q+DimRsUed5Ubp2kgjJlszTjB3/BuA
EaNHfGoSRDoJnGGHeoMQ1RFlLlqVjKs49HiSrSlrKLpJK03LZAk7/jBt0fR5Scoh
EhXHra0YacZ/BWT/SLZlHZRMpeu8cDI+lD/xOFsQiUCsW3nlKLNVFNj8J7Gj2ZLP
mSA2rVjbqpg269AwImxIjoxz1ugfzgivbCcNuOMZ6PGm0Ety3IgCkEcDPXKCk97M
ARbZts5OALO7hv3U4yWQ
=yIPt
-----END PGP SIGNATURE-----
