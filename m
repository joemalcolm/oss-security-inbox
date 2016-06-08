X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1786" "Wednesday" "8" "June" "2016" "16:49:36" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160608204936.89CF8ABC0C1@smtpvmsrv1.mitre.org>" "40" "[oss-security] Re: CVE Request Qemu: scsi: esp: OOB r/w access while processing ESP_FIFO" nil nil nil "6" "2016060820:49:36" "[oss-security] Re: CVE Request Qemu: scsi: esp: OOB r/w access while processing ESP_FIFO" (number mark "U       cve-assign@m Jun  8   40/1786  " thread-indent "\"[oss-security] Re: CVE Request Qemu: scsi: esp: OOB r/w access while processing ESP_FIFO\"\n") "<alpine.LFD.2.20.1606071247030.8126@wniryva>" ("<alpine.LFD.2.20.1606071247030.8126@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5551 invoked by uid 550); 8 Jun 2016 20:49:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5527 invoked from network); 8 Jun 2016 20:49:47 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, psirt@huawei.com, liqiang6-s@360.cn
In-Reply-To: <alpine.LFD.2.20.1606071247030.8126@wniryva>
Message-Id: <20160608204936.89CF8ABC0C1@smtpvmsrv1.mitre.org>
Date: Wed,  8 Jun 2016 16:49:36 -0400 (EDT)
Subject: [oss-security] Re: CVE Request Qemu: scsi: esp: OOB r/w access while processing ESP_FIFO

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the ESP/NCR53C9x controller emulation support
> is vulnerable to an OOB r/w access issue. The controller uses 16-byte FIFO
> buffer the information transfer. The OOB r/w occurs while reading/writing to
> this buffer in esp_reg_read() and esp_reg_write() routines.
> 
> A privileged user inside guest could use this flaw to crash the Qemu process
> resulting in DoS OR potentially leverage it to execute arbitrary code with
> privileges of the Qemu process on the host.
> 
> https://bugzilla.redhat.com/show_bug.cgi?id=1343323
> https://lists.gnu.org/archive/html/qemu-devel/2016-06/msg01507.html
> http://git.qemu.org/?p=qemu.git;a=commit;h=ff589551c8e8e9e95e211b9d8daafb4ed39f1aec

Use CVE-2016-5338.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXWIM2AAoJEHb/MwWLVhi2qZMQAKFtExzVCnlnvI+HcKlNrYDP
KYs8RZZsL35htugWCWGhKd1bu5DZCgKicQJv6Ffxfjbg8mg+X0Gm4hvO4o7swfKL
p9+yHXzO4ULSz2GhlUQmyH5B+oO/0o8fCgLE1B04ngOqLiWDi1qRjjs1FXGBTlgF
RD0RyhNpzAQVQrBwJugpxd6mZ/b/IZ8MqwxcigWwqOwsIdFsT3YTso2dG63t0a4n
JHfC+6bFxDw82AZcJ32jgul59eQAuUrH4/2qMymaHnxLHIexitLl5QpATyKPhSJ9
59lHlEROszYTuRyCQzSJSWahIcbiUXGD4GEkvLyqHzt2GdhjCxHVgPZ3QizHONPz
UDwU91RzZefYE2MCz17QE076n953pQpum/elMpDvsNxwqReR9raT8E67BNccp+kn
LU+J5TdLG41OLrtlKCsseb/2tz8rU0AbHz4kM+r1E7Xj0j180BmL4JPYec4UEsGj
ApB/iAZ2NMpidkOxOUGJSDYq84paN4+2PHyZLdXEdPjTGbJGOe1mt4FxVsuT/+sf
FebH7drSRihl3Fwtb/0mcNHD78nAvGLEn1WzJsbz89cXvcZbtnJ3ay7pqqIU2Gzg
F+QGveEDtq66cFIUBSFpuXvehuqsSarfKcf1el5/xYKKQZO8fsQMmXb6UzVp95Xy
gFwKGtK+wk7BMTXrDUU7
=ThnN
-----END PGP SIGNATURE-----
