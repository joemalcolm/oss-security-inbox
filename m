X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1982" "Monday" "14" "December" "2015" "16:36:03" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151214213603.C609342E414@smtpvbsrv1.mitre.org>" "47" "[oss-security] Re: CVE request Qemu: usb: infinite loop in ehci_advance_state results in DoS" nil nil nil "12" "2015121421:36:03" "[oss-security] Re: CVE request Qemu: usb: infinite loop in ehci_advance_state results in DoS" (number mark "U       cve-assign@m Dec 14   47/1982  " thread-indent "\"[oss-security] Re: CVE request Qemu: usb: infinite loop in ehci_advance_state results in DoS\"\n") "<alpine.LFD.2.20.1512142033580.2864@wniryva>" ("<alpine.LFD.2.20.1512142033580.2864@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22059 invoked by uid 550); 14 Dec 2015 21:36:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22010 invoked from network); 14 Dec 2015 21:36:15 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, luodalongde@gmail.com, kraxel@redhat.com
In-Reply-To: <alpine.LFD.2.20.1512142033580.2864@wniryva>
Message-Id: <20151214213603.C609342E414@smtpvbsrv1.mitre.org>
Date: Mon, 14 Dec 2015 16:36:03 -0500 (EST)
Subject: [oss-security] Re: CVE request Qemu: usb: infinite loop in ehci_advance_state results in DoS

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Qemu emulator built with the USB EHCI emulation support is vulnerable to an
> infinite loop issue. It occurs during communication between host controller
> interface(EHCI) and a respective device driver. These two communicate via a
> isochronous transfer descriptor list(iTD) and an infinite loop unfolds if
> there is a closed loop in this list.
> 
> A privileges user inside guest could use this flaw to consume excessive CPU
> cycles & resources on the host.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2015-12/msg02124.html

>> Make ehci_process_itd return an error in case we didn't do any actual
>> iso transfer because we've found no active transaction.  That'll avoid
>> ehci happily run in circles forever if the guest builds a loop out of
>> idts.

Use CVE-2015-8558.

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/usb/hcd-ehci.c but that
may be an expected place for a later update.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWbzQFAAoJEL54rhJi8gl5bzsP+wRW39K2IWq1yUu33k4+PoGY
7dn74LzPgXlOq96r9orJCMluP8FPh6yPL/VavV8gbCZgGRf/+n0KEUBejP8wYhlJ
+CQPwjMihev8RxDKPz2rMHDohmqnV9N4myzZudRecqcqJ9X8rYZ3T1Ycth2Qz5V+
Y6BdKBgWPGN1gNIltY3+eSyKc2XdU24MGkLF8iuzFwDw2Ab0eVGWMbOUM+yT5qNg
q6FHIhlorQ0Yz4tcaaWaPusrMIsb2q9RneTNSv6K0C53Ijgn3ieJmhqKvE0stJRi
fHQGtx0audvjL7Rs2sA35u2wChZ7MFREUe4iUY8WSRcEI7IOrXeyMl83dRHpI6c6
NbdI6LxUKow4XvlGj+wxwszQBx8+68plscXWze47WSre+fY/3CErZxKL/ImaQtjm
6fAx5Qtu13x0wDMQacmgMdAV6T+rmQH+n7rTJmlpp/gCdAsasQayhsDvu2ojBXQS
nq/cKW7QFkX1bhhNcWGNgMv3D7bxBTwMloor02S/M5XoDEuPFElAGkrVUpC4N6+E
PKCgUO7NLIVvbfeAb+Fo3hhfLV/vk8gvRrHRst/y2cI+mFhyjLdDp7ODsJNNmnba
ZP2cedyD6m3Jx1XO9vNINCCOQUFFtNEdvZ0nscrZdH4//lmLFGC4DbiYI02ErCfZ
ePPfPwCfoyUudwySQKR+
=fJuc
-----END PGP SIGNATURE-----
