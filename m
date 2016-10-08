X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1714" "Saturday" "8" "October" "2016" "11:31:16" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161008153116.ADD9242E066@smtpvbsrv1.mitre.org>" "42" "[oss-security] Re: CVE request Qemu: usb: hcd-ehci: memory leak in ehci_process_itd" nil nil nil "10" "2016100815:31:16" "[oss-security] Re: CVE request Qemu: usb: hcd-ehci: memory leak in ehci_process_itd" (number mark "U       cve-assign@m Oct  8   42/1714  " thread-indent "\"[oss-security] Re: CVE request Qemu: usb: hcd-ehci: memory leak in ehci_process_itd\"\n") "<alpine.LFD.2.20.1610071644500.8956@wniryva>" ("<alpine.LFD.2.20.1610071644500.8956@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28021 invoked by uid 550); 8 Oct 2016 15:31:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28003 invoked from network); 8 Oct 2016 15:31:28 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, liqiang6-s@360.cn
In-Reply-To: <alpine.LFD.2.20.1610071644500.8956@wniryva>
Message-Id: <20161008153116.ADD9242E066@smtpvbsrv1.mitre.org>
Date: Sat,  8 Oct 2016 11:31:16 -0400 (EDT)
Subject: [oss-security] Re: CVE request Qemu: usb: hcd-ehci: memory leak in ehci_process_itd

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Qemu emulator(Qemu) built with the USB EHCI emulation support is vulnerable to
> a memory leakage flaw. It could occur while processing isochronous transfer
> descriptors(iTD), with buffer page select(PG) index that falls beyond buffer
> page array area.
> 
> A privileged user inside guest could use this flaw to leak Qemu memory bytes
> leading to a DoS on the host.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-09/msg06609.html
> https://bugzilla.redhat.com/show_bug.cgi?id=1382668

Use CVE-2016-7995.

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/usb/hcd-ehci.c but
that may be an expected place for a later update.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX+RAjAAoJEHb/MwWLVhi2+GkP/iijvoEQc43FUbjFUHUX7hGF
U63WmvG3sLBr1ZkUGs/ycPfc/jFQJDnqFrbLANsLAM/hrDb/sii942XTTSS2YAAi
+sB4Nhc10DXFRxIfHLezshzQTlKR7qlQQ147ySaTDDOYqcgJoj94tjy22JE7xnVB
0JGsaKkkuZUHlAkkwnT3BIOD3saTUTXTiolxnTwDNQZ0Yq5jm++4S4wrmpVgyw+o
Hv8d9fJkdPvDiLmwMh72XFYE01JnFRbbE9ETdv4DTFBX1NChIFC9BjJnD7vZa/7d
qvxYk3EwM53FWiFFxAGQlkdAGmZGMLnRNs6oxeIZSXByqDN4FW4iBveuE9wgBbF2
NzfkWXNiBChQj2QXbOorgZxrV80BjnN/B+k3501UiWjNy0a5JrEmnP6HVSt209qR
iyNIn9o2CnAkvgnTFmX/n7e8FYAr77EhNCAJ9ti5/xlwxsOyIe/73jf6t6+B0E2J
3XgflusB1EVIiIorRXE8z2PZUDhdI1YaPFWsg09wDeuNuMEmfW8rHEwPS46qCDiD
MYOkhYQakPHJuPLFbM4l62tJxuN9jYf75bmgNU2+LbQFGibcnnn9v02Tl/vMMoLv
lpr2EABB1UOg155JKFFKa2+SwssuoqNmIcDdUO0Y6gv3OYSAi38iIgG/AcCk2/m8
vscLmA0alX3tOSdBSEtL
=1cxH
-----END PGP SIGNATURE-----
