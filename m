X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1761" "Wednesday" "17" "August" "2016" "23:32:17" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160818033217.E5376B2E013@smtpvbsrv1.mitre.org>" "43" "[oss-security] Re: CVE request: Qemu net: vmxnet3: use after free while writing" nil nil nil "8" "2016081803:32:17" "[oss-security] Re: CVE request: Qemu net: vmxnet3: use after free while writing" (number mark "U       cve-assign@m Aug 17   43/1761  " thread-indent "\"[oss-security] Re: CVE request: Qemu net: vmxnet3: use after free while writing\"\n") "<alpine.LFD.2.20.1608120639040.19256@wniryva>" ("<alpine.LFD.2.20.1608120639040.19256@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17769 invoked by uid 550); 18 Aug 2016 03:32:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17751 invoked from network); 18 Aug 2016 03:32:29 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, liqiang6-s@360.cn
In-Reply-To: <alpine.LFD.2.20.1608120639040.19256@wniryva>
Message-Id: <20160818033217.E5376B2E013@smtpvbsrv1.mitre.org>
Date: Wed, 17 Aug 2016 23:32:17 -0400 (EDT)
Subject: [oss-security] Re: CVE request: Qemu net: vmxnet3: use after free while writing

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the VMWARE VMXNET3 NIC device support is
> vulnerable to a use-after-free issue. It could occur while writing to the
> device once it's disabled.
> 
> A privileged user inside guest could use this issue to crash the Qemu
> instance resulting in DoS.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-08/msg01602.html

>> Vmxnet3 device emulator does not check if the device is active,
>> before using it for write. It leads to a use after free issue,
>> if the vmxnet3_io_bar0_write routine is called after the device is
>> deactivated. Add check to avoid it.
>> 
>> http://git.qemu.org/?p=qemu.git;a=commit;h=6c352ca9b4ee3e1e286ea9e8434bd8e69ac7d0d8

Use CVE-2016-6833.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXtSdZAAoJEHb/MwWLVhi2yw0P/2UheT3YiLmXjnFeSLmHVpXp
0MnPeMcnm4DYFmUZPTWgX9zJ4aR4hIsdsHjLE7MGxOfJ8WJpz8jRyr6E5KbJdnar
yngQY4ibNZr9iejomCLtWiAzKzbv99LDtWel77ox1zmIPzGzuzESzx0J7S958n1X
VXvDuNeEqSZhjueM92CzpZSywy3hiJolemnpzRXlzlhqsSykdoP5GriS58P9As8g
3zRfQ5XQAEZ2WIJ3kOTXtsbpyZrVeWwAfU44Ls/N/yXK0MsVjdZctU381ZYuCYQV
SUHKJhKlGeJB5qXk0DbuZ+/AdvDMAgFDd/XDVQYTB7/E9Gr9qi1STMnx6THjcIp+
SXrEQoarAqldiYvu+p755Lq1zZ5NBwjoLqQYXGuM2lVi/14LPFDnsbDCAYUQQdfB
7qRmiMSOujb5jXc1N0OVZLV/xIW3BMRB6O64jV+qGDFS4jXA8+ix8ay1l59pRa/h
ByZE5eX6OQ+8Y1LXVydMn6jfU8wiow1NbQsG69wtFyEh9VSOaLQdHxj1vGaIH9mx
A5aHzVeQAs6/I1u7e8dMtN7ZK5RKlhV71eYJ2kGnFK2HiPlCEdXtkBXlVdbgWGc9
lv2LNUqp6qZNqR26PeJiTKfhnC+HIJrbbarHWp3grpB8E74kcnJgFll8ME0u2nzz
6O5RnbATL0/ZH1uiz0YP
=rso/
-----END PGP SIGNATURE-----
