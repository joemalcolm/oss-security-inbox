X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2768" "Tuesday" "1" "March" "2016" "13:22:22" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160301182222.6CE67ABC04B@smtpvmsrv1.mitre.org>" "69" "[oss-security] Re: CVE request Qemu: OOB access in address_space_rw leads to segmentation fault" nil nil nil "3" "2016030118:22:22" "[oss-security] Re: CVE request Qemu: OOB access in address_space_rw leads to segmentation fault" (number mark "U       cve-assign@m Mar  1   69/2768  " thread-indent "\"[oss-security] Re: CVE request Qemu: OOB access in address_space_rw leads to segmentation fault\"\n") "<alpine.LFD.2.20.1603011538510.26817@wniryva>" ("<alpine.LFD.2.20.1603011538510.26817@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31799 invoked by uid 550); 1 Mar 2016 18:22:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31779 invoked from network); 1 Mar 2016 18:22:34 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, donghai.zdh@alibaba-inc.com
In-Reply-To: <alpine.LFD.2.20.1603011538510.26817@wniryva>
Message-Id: <20160301182222.6CE67ABC04B@smtpvmsrv1.mitre.org>
Date: Tue,  1 Mar 2016 13:22:22 -0500 (EST)
Subject: [oss-security] Re: CVE request Qemu: OOB access in address_space_rw leads to segmentation fault

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://bugzilla.redhat.com/show_bug.cgi?id=1300771

We understand that the listed patches are to be used together, but the
changes were announced at different times and thus multiple CVE IDs
are needed.


> Qemu emulator built to use 'address_space_translate' to map an address to a
> MemoryRegionSection is vulnerable to an OOB r/w access issue. It could occur
> while doing pci_dma_read/write calls. Affects Qemu versions >= 1.6.0 and <=
> 2.3.1.
> 
> A privileged user inside guest could use this flaw to crash the guest instance
> resulting in DoS.


> http://git.qemu.org/?p=qemu.git;a=commit;h=c3c1bb99d1c11978d9ce94d1bdcf0705378c1459
> https://lists.gnu.org/archive/html/qemu-stable/2016-01/msg00060.html
> http://git.qemu.org/?p=qemu.git;a=commit;h=23820dbfc79d1c9dce090b4c555994f2bb6a69b3

There are all about the same code changes, originally written in March
2015. The issue appears to have security relevance on its own. Use
CVE-2015-8817.


> http://git.qemu.org/?p=qemu.git;a=commit;h=e4a511f8cc6f4a46d409fb5c9f72c38ba45f8d83

As far as we can tell, this is a functionality fix, not a security
fix. It doesn't have a CVE ID. (We understand that it does belong in
the listed set of upstream commits anyway.)

> http://git.qemu.org/?p=qemu.git;a=commit;h=965eb2fcdfe919ecced6c34803535ad32dc1249c

As far as we can tell, this one isn't really a security fix and may
have introduced new bugs that were addressed later. It also doesn't
have a CVE ID. (We understand that it does belong in the listed set of
upstream commits anyway.)


> http://git.qemu.org/?p=qemu.git;a=commit;h=b242e0e0e2969c044a318e56f7988bbd84de1f63

This one is from July 2015 and has security relevance on its own. Use
CVE-2015-8818.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJW1dx+AAoJEL54rhJi8gl5kRYP+gPGf5B/RxtIMXDz9rDXSzKI
NjjHaDbMTwQKlQkQ1qsJnpYUHRrJNoXM2xiRxZxhQv19d8EHKELIJMQ5gfzxMtIn
2NGfWRUQLdBl50Zz8A87xCq7bHsFfFqBffnSMmyjK0ATurQqqrvlJFuH4cAXWrlK
/nTtNHPrSm8yt7GEs2lxYd99A4z0RJyd5gufnGNpvKNkEfeAXA9uS7/oZ5WzUjfX
oS+V+YiEKXJQwmbYJoabYbSF630EWXm7q+QSAD59S31UJFzbM5CV3Da+/2dY9ylB
wna90ypywVCvcDqaOLbT1hWJ6ivMIdTty5MyuHr9mMee0VlbBeEnbFh4uP29H3Vf
yJLFAg5NxvdF4sh/qqs2xdMnEZkx2VcC3R406mxyEMPQRLwiideLZh7oMltwCK0+
RT3P6Rco4ENiiqgknuh3IfeRq8J7OYt7hr0hK8y/ym8U+ndGXgfcQAS7WGJWRMBL
pI7qyJjuSD4LC1EpS9u/CVm+NRR8Xkp0gC6aEIqM/raSD0zI3SU2pAaXosCR4JBp
gRSLtodPrVkiV87tEwUasTLkIkELxQE4m6hJEAnmYChmZDwtxthFNo6u4mQQFzqd
nuh8vvHAPexzlBKaWQkA1e/4VZL7jU0scDioW477y0+eTIADCRYHntfAocE/6rGW
zFZH4qIgz5hD2SjXLxiR
=EOgU
-----END PGP SIGNATURE-----
