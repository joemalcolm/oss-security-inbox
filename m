X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3042" "Tuesday" "30" "August" "2016" "17:44:45" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160830214445.7AB4C8BC454@smtpvmsrv1.mitre.org>" "68" "[oss-security] Re: CVE request: Qemu: 9p: directory traversal flaw in 9p virtio backend" "^Cc:" nil nil "8" "2016083021:44:45" "[oss-security] Re: CVE request: Qemu: 9p: directory traversal flaw in 9p virtio backend" (number mark "        cve-assign@m Aug 30   68/3042  " thread-indent "\"[oss-security] Re: CVE request: Qemu: 9p: directory traversal flaw in 9p virtio backend\"\n") "<alpine.LFD.2.20.1608301244260.2278@wniryva>" ("<alpine.LFD.2.20.1608301244260.2278@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26151 invoked by uid 550); 30 Aug 2016 21:44:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26133 invoked from network); 30 Aug 2016 21:44:57 -0000
In-Reply-To: <alpine.LFD.2.20.1608301244260.2278@wniryva>
Message-Id: <20160830214445.7AB4C8BC454@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, fwilhelm@ernw.de
Date: Tue, 30 Aug 2016 17:44:45 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: Qemu: 9p: directory traversal flaw in 9p virtio backend
To: ppandit@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the VirtFS, host directory sharing via Plan 9
> File System(9pfs) support, is vulnerable to a directory/path traversal issue.
> It could occur while creating or accessing files on a shared host directory.
> 
> A privileged user inside guest could use this flaw to access undue files on
> the host.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-08/msg03917.html
> https://lists.gnu.org/archive/html/qemu-devel/2016-08/msg04231.html

Use CVE-2016-7116 for the issue fixed by the
http://git.qemu.org/?p=qemu.git;a=commit;h=56f101ecce0eafd09e2daf1c4eeb1377d6959261
commit.

We feel that it is possible that there are related issues that are
also vulnerabilities.

http://git.qemu.org/?p=qemu.git;a=commit;h=fff39a7ad09da07ef490de05c92c91f22f8002f2
mentions "Empty path components don't make sense for most commands and
may cause undefined behavior, depending on the backend." The patch
blocks these empty strings. Would it be best to consider this a
vulnerability fix (i.e., because the undefined behavior might be
security-relevant)?

http://git.qemu.org/?p=qemu.git;a=commit;h=fff39a7ad09da07ef490de05c92c91f22f8002f2
also makes a change to forbid '/' characters, with the rationale that
the specification requires clients to send individual path components,
not full path strings or substrings containing a '/' character. Does
this also fix a vulnerability?

http://git.qemu.org/?p=qemu.git;a=commit;h=805b5d98c649d26fc44d2d7755a97f18e62b438a
prevents creating files named "." and ".." (just those two specific
filenames, not all pathnames containing those characters). Does this
also fix a vulnerability?

It is possible that up to three additional CVE IDs are needed.

Finally, if fixing the directory traversal itself requires both
http://git.qemu.org/?p=qemu.git;a=commit;h=56f101ecce0eafd09e2daf1c4eeb1377d6959261
and
http://git.qemu.org/?p=qemu.git;a=commit;h=fff39a7ad09da07ef490de05c92c91f22f8002f2
(for '/' characters), please let us know.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXxf2eAAoJEHb/MwWLVhi22MMP/im48rJglD7qNjob6Mqfim9G
Kcl2QF4HSkV0XvgqAq8NUd2s4UHhI+iuRLSkpGW7DCKMTQjmN/xi8IV5WUo696rj
OD09I4svi10o9WZIxnaNlAGsib1tPcutONQS+ul0j2MbVqIp8b9wnzeCNhSYyHXp
KVTiquivOQPxb+tFtNRD/YM0ph1hIoEHKWhpPq2ZC8eqlLP8i5qjw9AHBPL/uTxY
rMippuJCUrnzaZM7cQe2hr5Jf7HKScpct/DeZiU5uhZDYzwwSHa6vMVClN9xbvud
nMbar9BKJIscSgSTJqmmSLlDinCGANsO6voEM3vpdr0u/ABy6mHfJCqgGFltesa/
/pHBBDzYYHDzTCZ0FyvloRVPSkCRyoOa+5MUZ26d9b7/xApPCGrQDF3P+QIC1Qv1
eEC+dTHHzxNzsFlvmlcPE4VPcRTg3tR6iLBGxwIRATs2JPgPREyuiJeo+jROAMxJ
ivQfZos9O3Sxat/JfsFS9Dsu3fYKqQFBI2NNX03GK6Cj/MRKCGk4W+MPCyvLk3lV
ArWo4yKI8/Rck4ufFOQ+Xe9vq8aqwPwKICX5yrzwOAwUvSgk1xL4BeanUKKWNYuK
0DcHzhmdeG5/XfPUdTjFHkb4eJXQ5JwgEjfgG/gD+mt9SngzUwX54b5piaY3BdTI
ARsgi+SnlhEpKAfzmkeJ
=KDIm
-----END PGP SIGNATURE-----
