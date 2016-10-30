X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1649" "Sunday" "30" "October" "2016" "15:44:13" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<59c7287f196e4a4987d4987463be8a31@imshyb02.MITRE.ORG>" "40" "[oss-security] Re: CVE request Qemu: memory leakage in v9fs_link" nil nil nil "10" "2016103019:44:13" "[oss-security] Re: CVE request Qemu: memory leakage in v9fs_link" (number mark "U       cve-assign@m Oct 30   40/1649  " thread-indent "\"[oss-security] Re: CVE request Qemu: memory leakage in v9fs_link\"\n") "<alpine.LFD.2.20.1610281505100.17055@wniryva>" ("<alpine.LFD.2.20.1610281505100.17055@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15639 invoked by uid 550); 30 Oct 2016 19:44:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15571 invoked from network); 30 Oct 2016 19:44:25 -0000
From: <cve-assign@mitre.org>
To: <ppandit@redhat.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<liqiang6-s@360.cn>
In-Reply-To: <alpine.LFD.2.20.1610281505100.17055@wniryva>
Message-ID: <59c7287f196e4a4987d4987463be8a31@imshyb02.MITRE.ORG>
Date: Sun, 30 Oct 2016 15:44:13 -0400
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request Qemu: memory leakage in v9fs_link

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the VirtFS, host directory sharing via Plan 9
> File System(9pfs) support, is vulnerable to a memory leakage issue. It could
> occur when calling v9fs_link call.
> 
> A privileged user inside guest could use this flaw to leak the host memory
> bytes resulting in DoS for other services.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-10/msg02608.html
> http://git.qemu.org/?p=qemu.git;a=commit;h=4c1586787ff43c9acd18a56c12d720e3e6be9f7c

>> it doesn't put the 'oldfidp'
>> fid object, this will make the 'oldfidp->ref' never reach to 0

Use CVE-2016-9105.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYFkuHAAoJEHb/MwWLVhi2DMAQAIO5vFhKXH1jUOmYSL9U28Ll
7zekNnjjaInS3IUqygdo9awZVAHmPS93yW3oJJ0jkwYU/TDUtEqDVjLrlylvCfww
OCJFxc6N8bkgRl8XHmSnON0jehx9Gsm7JbM8u6yYYpmEKR6CEawFzO8nT2wBt0SD
zgxurZJ8R7WCIcrhBtVBFECI7HGMnyS3XXx/p4Brd4Tv+oFCFHKaV4a9jZY8fmIq
2Vw9bxLRLNnGLY61GRJNOEk1z836jeeH/S2Ey4vPMDzwRiHd0izXykscMHdVFb/9
vQ+gzOt2VATieZJxRV7JywxLkDf9ZWqRNeIonW4LfZl+acO/lrTWPZZXmIz/JUSy
U6/63ksgKrOMcPlRCStX+GmB5fXQ4BZnTQRW5q2pkYtsoL11KsszoQmSDs/9ou0/
Xm6Duj0UfJGqrUcei8IS01nXSPk+sfnLSyfELe/QxTbd7wHoogjj0L5sdfaTDdDk
JL/STIuVvsJSehH7LwmBC1//xhTUhWf2h+W2W5I43pvgBGvArBtipY0Pr6Gi/k2Q
Uuqc1ZgFtyM70umJRTblBzuiEPAWtExZoTPWfQXmTYHHRqWl+kKZ7no3oMNrDOYl
FbQVdWhUw0lfdyfICJ7U1lW4AiCpNjCs0w2KMT2MEz0OrPpCMQkJaf9swdWdH/Q7
8ygJtNKg5QpmODGyq2Pv
=4oL2
-----END PGP SIGNATURE-----
