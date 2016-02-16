X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1944" "Tuesday" "16" "February" "2016" "09:46:28" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160216144628.DD5EE34E018@smtpvbsrv1.mitre.org>" "45" "[oss-security] Re: CVE request Qemu: usb: multiple eof_timers in ohci leads to null pointer dereference" nil nil nil "2" "2016021614:46:28" "[oss-security] Re: CVE request Qemu: usb: multiple eof_timers in ohci leads to null pointer dereference" (number mark "U       cve-assign@m Feb 16   45/1944  " thread-indent "\"[oss-security] Re: CVE request Qemu: usb: multiple eof_timers in ohci leads to null pointer dereference\"\n") "<alpine.LFD.2.20.1602161702480.9762@wniryva>" ("<alpine.LFD.2.20.1602161702480.9762@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3581 invoked by uid 550); 16 Feb 2016 14:46:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3560 invoked from network); 16 Feb 2016 14:46:41 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, zuozhi.fzz@alibaba-inc.com
In-Reply-To: <alpine.LFD.2.20.1602161702480.9762@wniryva>
Message-Id: <20160216144628.DD5EE34E018@smtpvbsrv1.mitre.org>
Date: Tue, 16 Feb 2016 09:46:28 -0500 (EST)
Subject: [oss-security] Re: CVE request Qemu: usb: multiple eof_timers in ohci leads to null pointer dereference

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Qemu emulator built with the USB OHCI emulation support is vulnerable to a
> null pointer dereference issue. It could occur when OHCI transitions to a
> OHCI_USB_OPERATIONAL state, leading to creation of multiple eof timers. A
> privileged user inside guest could use this flaw to crash the Qemu process on
> the host, resulting in DoS.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-02/msg03374.html
> https://bugzilla.redhat.com/show_bug.cgi?id=1304794

>> When transitioning an OHCI controller to the OHCI_USB_OPERATIONAL
>> state, it creates an eof timer object in 'ohci_bus_start'.
>> It does not check if one already exists. This results in memory
>> leakage and null dereference issue. Add a check to avoid it.

Use CVE-2016-2391.

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/usb/hcd-ohci.c but
that may be an expected place for a later update.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWwzU6AAoJEL54rhJi8gl5lwgP/A9qJ0XBRrulTbKeVQ/An+Vd
rgu6xMleEk4DlX/V7WP28GYsrMcsL1Eqr6PBozcC2oEDQRuBeHCmym1A2uu8UEcP
FAukVUGglNSa7tv7lCJFSHDfiaEAS3BUfQhkVf5FIF7HbTfV+pqtIJXB4QvzrFkJ
Y8mrW58rEXWxcTnZANNVhU24i5abvxZACa79wHnhiashR+teQC8JCb4orgMk/1ZQ
uni2BFgpLD1ZVsVw/ZGwfK+fhHqMPN0fmjGtyGhxvmooIEreolH5wjcPZMe2zUjv
KtcFJ9eK1HocWSso3NYj4EpbInF9KQzENv/cgtKxRhe0Jz5SYk/i2kFN+aV3l/T0
4vwShU644Y44c8wR8yAq17DQXDRA2h5BrBRuSfntTMGdnkF1Zg9m6fqMGu+HFZJs
go6+dSDPmVrW8pfcLlW7vtiDK8+iKLHhPMlR//AfrYt+n3Q2wbAc6U+xtjDN6Cwk
bb4jIurHR21E/jmvql1fbS4tVwALCZ5cMNk62QMQjBHgWtj6sFRqMPu9DbdE0u4x
CNKbhbKsUlpuBBTAjw2h3V96DGZmIqn1V5BlFc6WktwLEAICIQ6Wm97S1pA5nK+2
KT0kPeQDmw4QL9AsuOFWqqJjsT1kxcv45+mD6WVc3GdGE8l3Rb3qpU2ipsG2osui
oUKlYtWgzaNVBADmTzbr
=9tAj
-----END PGP SIGNATURE-----
