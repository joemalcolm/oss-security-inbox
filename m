X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2188" "Thursday" "26" "May" "2016" "14:24:03" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160526182403.AD26C72E014@smtpvbsrv1.mitre.org>" "52" "[oss-security] Re: CVE Request Qemu: scsi: megasas: out-of-bounds write while setting controller properties" nil nil nil "5" "2016052618:24:03" "[oss-security] Re: CVE Request Qemu: scsi: megasas: out-of-bounds write while setting controller properties" (number mark "U       cve-assign@m May 26   52/2188  " thread-indent "\"[oss-security] Re: CVE Request Qemu: scsi: megasas: out-of-bounds write while setting controller properties\"\n") "<alpine.LFD.2.20.1605251800090.15974@wniryva>" ("<alpine.LFD.2.20.1605251800090.15974@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1493 invoked by uid 550); 26 May 2016 18:24:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1455 invoked from network); 26 May 2016 18:24:15 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, liqiang6-s@360.cn
In-Reply-To: <alpine.LFD.2.20.1605251800090.15974@wniryva>
Message-Id: <20160526182403.AD26C72E014@smtpvbsrv1.mitre.org>
Date: Thu, 26 May 2016 14:24:03 -0400 (EDT)
Subject: [oss-security] Re: CVE Request Qemu: scsi: megasas: out-of-bounds write while setting controller properties

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the MegaRAID SAS 8708EM2 Host Bus Adapter
> emulation support is vulnerable to an out-of-bounds write access issue. It
> could occur while processing MegaRAID Firmware Interface(MFI) command to set
> controller properties in 'megasas_dcmd_set_properties'.
> 
> A privileged user inside guest could use this flaw to crash the Qemu process
> on the host resulting in DoS.

> https://lists.gnu.org/archive/html/qemu-devel/2016-05/msg04340.html

>> When setting MegaRAID SAS controller properties via MegaRAID
>> Firmware Interface(MFI) commands, a user supplied size parameter
>> is used to set property value. Use appropriate size value to avoid
>> OOB access issues.

Use CVE-2016-5106.

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/scsi/megasas.c but
that may be an expected place for a later update.

Note that this issue was originally disputed in
https://lists.gnu.org/archive/html/qemu-devel/2016-05/msg04410.html
but the dispute was later resolved, and
https://lists.gnu.org/archive/html/qemu-devel/2016-05/msg04340.html
stands as the final vulnerability description.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXRzzKAAoJEHb/MwWLVhi2zloP/0/55owAdqXLYJpgkVtd9DtD
MeJGK8ZZSCTiQl5eNTmh7qxklu360ijisJZ3/JSnZMm4Ic+Wrs66/XxN+F3Z+cc7
uSUG+FVRZBcX6ynJhyOs+6odKq/DsXDT0aRFuSZjpSQzruJQh44PCHp0KdiZccFf
RJiNBq7+TTY1CIZtp5PnrUWU8tax05olnJxqO0xJC36kSk77Apu97cAg0aQKjd+n
jSL66eOviTPOSFrcAgGbLqo6Q1NDrk2hiTf7+GZAr3oGraOZ5Kx0AYMMo66RWF03
/5PvhWBOMI67ic9n5Zag2OBZnxb5nr07IgsO+yiXmRePKRnYMu3s7vvp0asBvolU
DzlYXIofT1bR2xasuxba6E9cq/v13sKFVOyHWcslpAZg/eiP/2J+oR+sh7qGkUoN
g+7FF6H2qDZC4hQa09ivyP6mwdrGh7R7p3JUK2ic6uohNBl2z7I+IPQq8t+3f9L3
vTOJA9nvEzbGR/416j70T0q36vTB5Miv0cg4PkoMoc5Xe7akb7/Yo/UCtkpUvEHq
A/vqfo7lhge1xKL4aPIgLpe5BmjbPgsiAAEqBoH/J7V/2WVlylw9FKdGyW1pb8MH
5i/u4jZJCTlzqICs5UDUh6XMRr2WQxm9rJidtNnGFFSyOMhu5m4FsMXoIb9739Ro
9XTzzUiK1dyJnWxI8anO
=MoXX
-----END PGP SIGNATURE-----
