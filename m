X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1848" "Friday" "9" "September" "2016" "10:41:17" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160909144117.133EB332057@smtpvbsrv1.mitre.org>" "45" "[oss-security] Re: CVE Request Qemu: vmware_vga: OOB stack memory access when processing svga command" nil nil nil "9" "2016090914:41:17" "[oss-security] Re: CVE Request Qemu: vmware_vga: OOB stack memory access when processing svga command" (number mark "U       cve-assign@m Sep  9   45/1848  " thread-indent "\"[oss-security] Re: CVE Request Qemu: vmware_vga: OOB stack memory access when processing svga command\"\n") "<alpine.LFD.2.20.1609091835510.24544@wniryva>" ("<alpine.LFD.2.20.1609091835510.24544@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15466 invoked by uid 550); 9 Sep 2016 14:41:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15445 invoked from network); 9 Sep 2016 14:41:29 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, luodalongde@gmail.com, liqiang6-s@360.cn
In-Reply-To: <alpine.LFD.2.20.1609091835510.24544@wniryva>
Message-Id: <20160909144117.133EB332057@smtpvbsrv1.mitre.org>
Date: Fri,  9 Sep 2016 10:41:17 -0400 (EDT)
Subject: [oss-security] Re: CVE Request Qemu: vmware_vga: OOB stack memory access when processing svga command

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the VMware-SVGA "chipset" emulation support is
> vulnerable to an OOB stack memory write issue. It could occur while processing
> VGA commands in 'vmsvga_fifo_run' routine.
> 
> A privileged user inside guest could use this flaw to crash the Qemu process
> resulting in DoS.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-09/msg01764.html

>> When processing svga command DEFINE_CURSOR in vmsvga_fifo_run,
>> the computed BITMAP and PIXMAP size are checked against the
>> 'cursor.mask[]' and 'cursor.image[]' array sizes in bytes.
>> Correct these checks to avoid OOB memory access.

Use CVE-2016-7170.

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/display/vmware_vga.c but
that may be an expected place for a later update.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX0sm4AAoJEHb/MwWLVhi2QsIP/1hKnB1uJWV/u/21SPfEbDSs
LcjSDPxTljCGmH2AY3csiyhStvZNwQqkCiIr11ZC9Vq9EH/0dWvdO6MfN+Bcx6NT
EczC6JpUbxGDlRPXx/+9A68KCXFNFBZG2qhntm0EXpn0r8LNE/6l/7EFuidd7daZ
T8+zH1tn0PvRXT3k7tbKflxeTu/VppdJk9JHCgeTFkB6ENUdBSM/+me/ttFH4TcC
BCVYzZ8leENIMZSSbnYEX/gvLLDDKIU0+1VvJzoqRDT/djG7grMrNMrEUBq0OaYl
Hw1ME4zbh54xuMPLKriMLPtux5rc3zQzYtXqdIpR5u68GJrTp7OIyUPhhKEUEx3v
xN0nAJnV67gBgUQliwyiZ/P3Mt6VCHzHdmytl2Te/DwoRgS1m04OjhLuJUFj9YXY
0s3RoWa+U8hFvnS77H43pbMyIUnggf/ZXfy/bcjd43Hcevkoe9PJqbCifxVwTaG6
8+lRoPB7552alZKBrpQt/nOnLdvsFN9FZt3B9yqNGTAvgYTNBIsIZ7MlHuAR0CME
n34G5MbDBY9yb2USkW1jCstoqjwpwmA0+wV8pE8kVE8cg0ZXs9oCh1TGovqIF3c4
zZMgpXHqCy7jdbzmsDu7vLVcGpnG2twNS4vHQTJCDCl5lECYJw52VENjUiolNNQ8
zHBSkSZBXvMZRaT+5aIR
=i+cy
-----END PGP SIGNATURE-----
