X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2350" "Saturday" "18" "April" "2015" "00:12:34" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150418041234.B966642E012@smtpvbsrv1.mitre.org>" "57" "[oss-security] Re: USERNS allows circumventing MNT_LOCKED - Linux kernel" nil nil nil "4" "2015041804:12:34" "[oss-security] Re: USERNS allows circumventing MNT_LOCKED - Linux kernel" (number mark "        cve-assign@m Apr 18   57/2350  " thread-indent "\"[oss-security] Re: USERNS allows circumventing MNT_LOCKED - Linux kernel\"\n") "<CAAZDpLd86UzwsK-9QK2HNvubj2qPb97UxKiiVFO2cnWJVRzykA@mail.gmail.com>" ("<CAAZDpLd86UzwsK-9QK2HNvubj2qPb97UxKiiVFO2cnWJVRzykA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12161 invoked by uid 550); 18 Apr 2015 04:12:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12129 invoked from network); 18 Apr 2015 04:12:46 -0000
In-Reply-To: <CAAZDpLd86UzwsK-9QK2HNvubj2qPb97UxKiiVFO2cnWJVRzykA@mail.gmail.com>
Message-Id: <20150418041234.B966642E012@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Sat, 18 Apr 2015 00:12:34 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: USERNS allows circumventing MNT_LOCKED - Linux kernel
To: eric@windisch.us

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> In October 2014, Andrey Vagin reported[1] to the Linux Containers list that
> it would be possible to use user namespaces to circumvent MNT_LOCKED and
> allow unprivileged users to access the directory structure underneath of
> mounts. A PoC was also produced and is public.
> 
> Patches are now available and proposed to Linus[2].
> 
> [1] https://groups.google.com/forum/#!topic/linux.kernel/HnegnbXk0Vs
> [2] http://www.spinics.net/lists/linux-containers/msg30786.html

Use CVE-2014-9717 for the

  "The semantics of MNT_LOCKED are that you aren't allowed to see what
   is beneath. So if you can get under there even by unsharing the mount
   namespace it is an implementation bug in MNT_LOCKED."

issue in the http://marc.info/?l=linux-kernel&m=141271552117745&w=2
post.

The scope of CVE-2014-9717 does not include the entire set of issues
discussed in the msg30786.html post. In particular, a different part
of that msg30786.html page already has a CVE mapping in the
http://openwall.com/lists/oss-security/2015/04/04/4 post.

There currently isn't a CVE ID for the

   "While investigating this issue I also found an issue with
    __detach_mounts. The code was unnecessarily and incorrectly
    triggering mount propagation. Resulting in too many mounts going
    away when a directory is deleted, and too many cpu cycles are
    burned while doing that."

finding (which seems to be in the
http://www.spinics.net/lists/linux-containers/msg30789.html post). If
an unprivileged user could have launched a worthwhile attack by
deleting a directory in certain circumstances, then we can assign a
separate CVE ID for that issue.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVMdexAAoJEKllVAevmvmsYEYH/RP6wqZ1QxfWEGPAhk7uPXOl
6RQePUIzYXzMSPG5dHO4VgSwLwW+PGs6/muJ7DsXTdue+PykD2LRIxu6ycQIxogy
xavEzRJGSZNTtS1X6sVIhdiMuWQQTdNGwEnH4qp5lamVzJQjKcTDRJbSHVpZVydA
0n4Qw6U505KloFVX2Rjk/mvSyHg2COKaBbbkXRa3vV3J9QVlUp1SZgyetQkvMpee
XkpQ6yXsuDM5WsViip41tLqy9ch8JSGFSOdP0uwK0MicWeGIOk7ItS6mQFlTYPvi
pM1eWFrYhU4vfECPcQsG/ATWD0ylZWrydEbk8Qaw6GGOEpEPAjWMAOqa2t4bR5U=
=xBBT
-----END PGP SIGNATURE-----
