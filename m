X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2024" "Tuesday" "29" "December" "2015" "01:33:52" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151229063352.8963134E043@smtpvbsrv1.mitre.org>" "47" "[oss-security] Re: CVE request Qemu net: rocker: fix an incorrect array bounds check" nil nil nil "12" "2015122906:33:52" "[oss-security] Re: CVE request Qemu net: rocker: fix an incorrect array bounds check" (number mark "U       cve-assign@m Dec 29   47/2024  " thread-indent "\"[oss-security] Re: CVE request Qemu net: rocker: fix an incorrect array bounds check\"\n") "<alpine.LFD.2.20.1512282237320.29644@wniryva>" ("<alpine.LFD.2.20.1512282237320.29644@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3824 invoked by uid 550); 29 Dec 2015 06:34:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3806 invoked from network); 29 Dec 2015 06:34:04 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, luodalongde@gmail.com
In-Reply-To: <alpine.LFD.2.20.1512282237320.29644@wniryva>
Message-Id: <20151229063352.8963134E043@smtpvbsrv1.mitre.org>
Date: Tue, 29 Dec 2015 01:33:52 -0500 (EST)
Subject: [oss-security] Re: CVE request Qemu net: rocker: fix an incorrect array bounds check

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Qemu emulator built with the Rocker switch emulation support is vulnerable to
> an off-by-one error. It happens while processing transmit(tx) descriptors in
> 'tx_consume' routine, if a descriptor was to have more than allowed
> (ROCKER_TX_FRAGS_MAX=16) fragments.
> 
> A privileged user inside guest could use this flaw to cause memory leakage on
> the host or crash the Qemu process instance resulting in DoS issue.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2015-12/msg04629.html
> https://bugzilla.redhat.com/show_bug.cgi?id=1286971

>> While processing transmit(tx) descriptors in 'tx_consume' routine
>> the switch emulator suffers from an off-by-one error, if a
>> descriptor was to have more than allowed(ROCKER_TX_FRAGS_MAX=16)
>> fragments. Fix an incorrect bounds check to avoid it.

Use CVE-2015-8701.

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/net/rocker/rocker.c but
that may be an expected place for a later update.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWgiicAAoJEL54rhJi8gl5xgMP/0m/6rggx4QjsM1bvTzJxs6T
VyoOVeWKJVqO2qMtl0eHwhsQZty8O26Qbyewqvt13551IjbYxbvHLZzo/wwN1b16
oiQjdsjSZyR+Uw3GYLmmEf2Np1EvRsvAO+wqOzhJ1I/ktbrP1V1Z7Zi6pt2HHDmq
jQaPvHv4jjd00bvmO6zWvrAPQZlwK5IWhQsB3QM9zZOBik95q9N2VstM6lLzMu2U
VlGa0CHW7VUtOiN8Bw+iBFXyv8ZAgrOrtMbgIwt6EjlYefuNOrVFhp9EEvNONegW
mOaj6Xucm44gVGO0NkHcH6XILFwdESs7T57pvqLlDbCOhVSZpX/Xq9PO+ZqiI3AD
7EpbV6tye2GodfvLtxOu0WKaHAbZRKK9ynWo3zVCOcsHDmS864w4eZZexj+fGgsg
dpY3c9j+otN1J+bgRaNGvKapQ0LrJAffXMk5iTb4233KF0/SSnmAMbU46lI/Sn7d
E6PGoHkosmPPQvjaNLf3BOetzKSO7cQj9CJ1Uen2RsuTHlJ3FoyAdUs5nk33Z96z
wiiHTl7duEtslr3mHq6xwynbgfDyPvlnrchMS8Q8NBUf2fUnKiDK6zdsiH3s14dh
QA8F6eDCEIxqGyKM0UMAYiUTcejx0NtZ5TFSTR5LCx+CmSbtm2wJhBiGOz4r797b
iCXQR5QRr2Ml8Zq6nk8/
=idCx
-----END PGP SIGNATURE-----
