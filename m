X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1593" "Saturday" "15" "October" "2016" "12:42:23" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161015164223.DC55E52E011@smtpvbsrv1.mitre.org>" "40" "[oss-security] Re: CVE request Qemu: dma: rc4030 divide by zero error in set_next_tick" nil nil nil "10" "2016101516:42:23" "[oss-security] Re: CVE request Qemu: dma: rc4030 divide by zero error in set_next_tick" (number mark "U       cve-assign@m Oct 15   40/1593  " thread-indent "\"[oss-security] Re: CVE request Qemu: dma: rc4030 divide by zero error in set_next_tick\"\n") "<alpine.LFD.2.20.1610141638130.13950@wniryva>" ("<alpine.LFD.2.20.1610141638130.13950@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32442 invoked by uid 550); 15 Oct 2016 16:42:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32414 invoked from network); 15 Oct 2016 16:42:36 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, psirt@huawei.com
In-Reply-To: <alpine.LFD.2.20.1610141638130.13950@wniryva>
Message-Id: <20161015164223.DC55E52E011@smtpvbsrv1.mitre.org>
Date: Sat, 15 Oct 2016 12:42:23 -0400 (EDT)
Subject: [oss-security] Re: CVE request Qemu: dma: rc4030 divide by zero error in set_next_tick

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the JAZZ RC4030 chipset emulation support is
> vulnerable to a divide by zero issue. It could occur while computing its
> periodic timer's next tick value.
> 
> A privileged guest user could use this flaw to crash the Qemu process instance
> on the host resulting in DoS.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-10/msg02577.html

Use CVE-2016-8667.

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/dma/rc4030.c but
that may be an expected place for a later update.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYAlsIAAoJEHb/MwWLVhi2+64P/2Jr6tZwPQJcfz2igrYRV7Rj
CdEpz77vj+57XV+DwcnxgFtZAh1KnZ6KKwlVsLSuNAI7pRmeP33DtSMRt3ICT8kh
ON+ZpSG8SaT2qQ3tDitB2gN1QXgm/1V6Y90b2qmcgj0SBadXvWAhdkbMFgvGFWrS
+XpHlDw8gGkfSGYj3oQZ6VCl3G6ZaH/AsU27l9IwjT9/ow1IZreSSnBEKcNy6pe3
f+ONhuESyxLrro6Oq4rD9uzk/8K8MpzG/UaVylfRZ9nM7Glgdye2yL0vaB/k7k+1
CMqfgKnYo0si2QSopTUtdShUOXgJSRHtNku9EC+vy2ggstF8J8qm3u4xHupn2Da/
fNALN1VFuuoOfnt18DKHH0JrWFKGw4XfhoawJqevfc8ronrJR3SGkBQGgXfw8Cvy
+yHaEoFBVfqeXcygPesGuPSMHy7fG0uKu2o14Cu2fNHiH6MyQoUhDdKl2QQImWY4
dQYk9z+XMDkJk3DxKzRUbtF9klBsidPJOJ8Jw2o6wI9vjmWsyuc+b4UsjypPCpAI
0DN5DdXtAMkO+ZY8/yPkIgnb1w048qyR9IqncDXO6InBcHWTCv14vZ+6UpwCZCl6
o3MkN7yE0OtM8MAQEDfiS/j6CsKp0UMMhx4HYZP/bQr+kgrLh0WOJqK4Rj/Ew7dq
1ZQLVkYSPzfxBYZAYDOJ
=eFPo
-----END PGP SIGNATURE-----
