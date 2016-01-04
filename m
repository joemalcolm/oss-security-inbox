X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1566" "Monday" "4" "January" "2016" "11:59:33" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160104165933.8E8EA332405@smtpvbsrv1.mitre.org>" "39" "[oss-security] Re: CVE request Qemu: net: vmxnet3: reading IMR registers leads to a crash" "^Cc:" nil nil "1" "2016010416:59:33" "[oss-security] Re: CVE request Qemu: net: vmxnet3: reading IMR registers leads to a crash" (number mark "U       cve-assign@m Jan  4   39/1566  " thread-indent "\"[oss-security] Re: CVE request Qemu: net: vmxnet3: reading IMR registers leads to a crash\"\n") "<alpine.LFD.2.20.1601041941480.17635@wniryva>" ("<alpine.LFD.2.20.1601041941480.17635@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31941 invoked by uid 550); 4 Jan 2016 16:59:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31913 invoked from network); 4 Jan 2016 16:59:45 -0000
In-Reply-To: <alpine.LFD.2.20.1601041941480.17635@wniryva>
Message-Id: <20160104165933.8E8EA332405@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Mon,  4 Jan 2016 11:59:33 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request Qemu: net: vmxnet3: reading IMR registers leads to a crash
To: ppandit@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Qemu emulator built with a VMWARE VMXNET3 paravirtual NIC emulator support is
> vulnerable to crash issue. It could occur while reading Interrupt Mask
> Registers(IMR).
> 
> A privileged(CAP_SYS_RAWIO) guest user could use this flaw to crash the Qemu
> process instance resulting in DoS.
> 
> http://git.qemu.org/?p=qemu.git;a=commit;h=c6048f849c7e3f009786df76206e895a69de032c
> https://bugzilla.redhat.com/show_bug.cgi?id=1270876

>> Instead of asserting, return the actual IMR register value.

Use CVE-2015-8745.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWiqQVAAoJEL54rhJi8gl52usP/R53hBnStbF9uMh/QOzBjtvc
o2jmKr2Az1WXYAeTs08Mui/6bC+c8VW7OSBbnOgfy/vn7D6ddXC6qEAgq0+ngJ/8
FZfxYPFXIfJdTKGed7nsG5YhI7ckEEnxIWxsmW7EmQDXj3UInpvEBfNOR7ogM0WT
1bW5lMhJz90HxKtWqGc3Fcmpk5+tEWZXgWJfTxD7QejFG5g9HKBCWqYj3muQ6/af
HRoJOoonmsFbk6ZmOboIDcIQQU4WiCmaNcKNNy3fyIvlQjABfYLTgwzIH+eeMpN1
FpXwG7ogVczqyes2cVzVS36l7U1EXRd5vUtUi7GDOKRjuuSxckjx2YUea//Ejml0
CTF+7WNGA1kwlywsQJeXOELhhSPvs+Wb9TIdkoZWrG/Sa719G+vcFey+bKC3VXTw
zAG0rHRDOktRKw5x8tAV+mtzcKrMWd3iUH43cvQtYpU9TOPEtytT2ckU2p/zkAEp
Xp9iARSzMeQbHSwAw+2qC6ElAouVItealoH6JpJte5idOTzZkrZOmRP+umpYRJli
dh2vTqMkHCR6AZlrgEjrBzUSNDYRAbVl7oSGgnXjwg+pip7umbWsY7gNAYgJbhpV
ULxqgi1wGLWp/nsfKhWhtLYuv15Uah06G/mJUyoHjqKWJEcaImR9JNu8Q+eqiTOL
haSycTu8WkHEUkHol1QT
=8aFM
-----END PGP SIGNATURE-----
