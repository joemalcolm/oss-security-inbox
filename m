X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1716" "Sunday" "6" "March" "2016" "21:59:38" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160307025938.A687152E014@smtpvbsrv1.mitre.org>" "42" "[oss-security] Re: CVE request Qemu: net: out of bounds read in net_checksum_calculate" nil nil nil "3" "2016030702:59:38" "[oss-security] Re: CVE request Qemu: net: out of bounds read in net_checksum_calculate" (number mark "U       cve-assign@m Mar  6   42/1716  " thread-indent "\"[oss-security] Re: CVE request Qemu: net: out of bounds read in net_checksum_calculate\"\n") "<alpine.LFD.2.20.1603031632120.7999@wniryva>" ("<alpine.LFD.2.20.1603031632120.7999@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5363 invoked by uid 550); 7 Mar 2016 02:59:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5339 invoked from network); 7 Mar 2016 02:59:50 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, liuling-it@360.cn
In-Reply-To: <alpine.LFD.2.20.1603031632120.7999@wniryva>
Message-Id: <20160307025938.A687152E014@smtpvbsrv1.mitre.org>
Date: Sun,  6 Mar 2016 21:59:38 -0500 (EST)
Subject: [oss-security] Re: CVE request Qemu: net: out of bounds read in net_checksum_calculate

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Qemu emulator built with the IP checksum routines is vulnerable to an OOB read
> access issue. It could occur while computing checksum for TCP/UDP packets, as
> the function uses payload length from the packet without checking against the
> data buffer size.
> 
> A user inside guest could use this flaw to read excessive bytes or crash the
> Qemu process resulting in DoS.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-03/msg00671.html
> https://bugzilla.redhat.com/show_bug.cgi?id=1296567

Use CVE-2016-2857.

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=net/checksum.c but
that may be an expected place for a later update.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJW3O3wAAoJEL54rhJi8gl56hUP/RyxPOoTlX09iR6D5mvAkzdX
OZSZuybX3W9X4kkZj4+TXUEAQxEBY7AN1j2QY3uPwb9N9QVXUF827vy+WLiXV0SG
dIYHazeMKeGd5fLthf/DI1PFXxtezOkPkBmE33jlX8bn5O9zpcoSATSl8HKqQQCh
iMdgOf1q1Y7rzz+qQrCbXZTKk7R9j5Q3hLkX8TaMlhdo9sUZwAaxiEuRIbGeuqds
7Id2nu1wfeOy4tptpEzfSYp6d8E9t2VHpnNnL3U5iFrdwc6SnKuKu0okwEIpnHJ3
mDb2FH2SPj2SWO4rdsJh/9WIzL6IvfELwq2tLp5aAsIDIsEgF68/0eawGID9wBDL
+Am7yUyqvogKrFfWYRNo74adbRRsO5Jzda8+MMFvuCGctIHRZCXUSNd7GOHCdkia
FMB7pcfAAZN/GPfAdVHpEZfk4aZqmy3iF28z7kOhFSalw74QQXTbAcoZiybyOJmh
ADcEnIoDfvWhxUG3DBocf05a+5Pp1qLNbvYl9NzBEDkNJxcgVQEnMr4gN/QyFXDI
At/gfwOEh3oCDN3mGvUk9d1lIDuu7yARXVcAPsrePHbpB9bmFLEgQRw0SCg+ezFe
QgdYHQ2dquUBcuTcIrT5wDVGgKNwuCyf+h3PZwMXhIFEcTZJyQgldfJXXiXHfpX+
Ggfm4NI0fXZ8NtgMHo2P
=ObQr
-----END PGP SIGNATURE-----
