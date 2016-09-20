X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1777" "Tuesday" "20" "September" "2016" "15:08:34" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160920190834.6093EABC04D@smtpvmsrv1.mitre.org>" "41" "[oss-security] Re: CVE Request Qemu: usb: xhci memory leakage during device unplug" nil nil nil "9" "2016092019:08:34" "[oss-security] Re: CVE Request Qemu: usb: xhci memory leakage during device unplug" (number mark "U       cve-assign@m Sep 20   41/1777  " thread-indent "\"[oss-security] Re: CVE Request Qemu: usb: xhci memory leakage during device unplug\"\n") "<alpine.LFD.2.20.1609200003200.13498@wniryva>" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13976 invoked by uid 550); 20 Sep 2016 19:08:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13958 invoked from network); 20 Sep 2016 19:08:46 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, liqiang6-s@360.cn
In-Reply-To: <alpine.LFD.2.20.1609200003200.13498@wniryva>
Message-Id: <20160920190834.6093EABC04D@smtpvmsrv1.mitre.org>
Date: Tue, 20 Sep 2016 15:08:34 -0400 (EDT)
Subject: [oss-security] Re: CVE Request Qemu: usb: xhci memory leakage during device unplug

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the USB xHCI controller emulation support is
> vulnerable to a memory leakage issue. It could occur while doing a USB device
> unplug operation; Doing so repeatedly would result in leaking host memory,
> affecting other services on the host.
> 
> A privileged user inside guest could use this flaw to cause a DoS on the host
> and/or potentially crash the Qemu process instance on the host.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-09/msg02773.html
> http://git.qemu.org/?p=qemu.git;a=commit;h=b53dd4495ced2432a0b652ea895e651d07336f7e
> 
> If the xhci uses msix, it doesn't free the corresponding
> memory, thus leading a memory leak. This patch avoid this.

Use CVE-2016-7466.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX4YgUAAoJEHb/MwWLVhi2ggQP/2DNMvmdNLOKphMe5SZwN1OG
pYSTUN1hLW4abmL3deZExJCf/zVnF70tCcussvYPVi2TvheXLefPBeuMVoUAktm1
1CdkDzpdQf/C+Ht48c2W/dh5LVvT90/ZQR/t7rKfttcM8efHjWFnCoYsgewyrTbv
iZyVKCHG1Ww0Mobjh19eLKgwymCAF4fjT5bY8IItwCyNOXfj+MiKh4lH31Ja3RBw
7jfJFfxRjjUippAukxuZ70EOlyGPxWO8Ln6/w2NVHYNPWKzjakc+8vXlv7bZi0bZ
boJOPrVeoyGoQsoqDwshfOv7TSmvz2edCvn9zbL2I07Je8tn4goY02MLB0sxOS89
dlasZ0MPEsmG+OrtDKDQ8C+tPAkXZ9egbFitp+bPSiFB8cLN3LyE99vhzIVe+IEZ
jizMhnbGOpmLyXjDb7CfoCoZXbOxD4KHaSpLj1kS+tCdyWTRANoRccOVgMNOEnXL
3568h8XWTLQ3tyUwEuRqeTSu889iBM453JwSGvWYxC8wyBHxI64uXddwsfHqrljF
nM++SLFhiVouccTBOdG5My7KBoRKlK5nQ0/stiXU9ACFPuLnnbR+iDqrdBwEW6jR
ycD6fgB3i0c6NXs17pWBGQup89UPpJjdEYFiukr1g0dUIH0u1Adf7EuzW9U+amJq
QqiwCA/ontAPMEBeCNxA
=RuAu
-----END PGP SIGNATURE-----
