X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1739" "Monday" "4" "January" "2016" "07:57:06" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160104125706.727B93321D0@smtpvbsrv1.mitre.org>" "45" "[oss-security] Re: CVE request Qemu: net: ne2000: OOB r/w in ioport operations" nil nil nil "1" "2016010412:57:06" "[oss-security] Re: CVE request Qemu: net: ne2000: OOB r/w in ioport operations" (number mark "U       cve-assign@m Jan  4   45/1739  " thread-indent "\"[oss-security] Re: CVE request Qemu: net: ne2000: OOB r/w in ioport operations\"\n") "<alpine.LFD.2.20.1601041714500.15987@wniryva>" ("<alpine.LFD.2.20.1601041714500.15987@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19872 invoked by uid 550); 4 Jan 2016 12:57:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19851 invoked from network); 4 Jan 2016 12:57:18 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, liuling-it@360.cn
In-Reply-To: <alpine.LFD.2.20.1601041714500.15987@wniryva>
Message-Id: <20160104125706.727B93321D0@smtpvbsrv1.mitre.org>
Date: Mon,  4 Jan 2016 07:57:06 -0500 (EST)
Subject: [oss-security] Re: CVE request Qemu: net: ne2000: OOB r/w in ioport operations

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Qemu emulator built with the NE2000 device emulation support is vulnerable to
> an OOB r/w access issue. It could occur while performing 'ioport' r/w
> operations.
> 
> A privileged(CAP_SYS_RAWIO) user/process could use this flaw to leak or
> corrupt Qemu memory bytes(3).
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-01/msg00050.html
> https://bugzilla.redhat.com/show_bug.cgi?id=1264929

Use CVE-2015-8743.

This was already public in 2015 in, for example, the
https://lists.gnu.org/archive/html/qemu-devel/2015-12/msg04863.html
post.

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/net/ne2000.c
that may be an expected place for a later update.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWimuNAAoJEL54rhJi8gl5ltkP/i3MzYVDYPDAWO3bpbhIZtiZ
rEwnrcHd3E4ObDpc1yPu3xYSRCIqeFykO6z8UWpXlQofa0FY9rPw11sSMFQ1mTWI
eJu2flvwEQzjMj/LkPtq0diCObZPgrBdYtev63d+SbTM+vr5y3+aFlo4sD6wru3s
WR2lbJQ3+tqo/Srguw3+7wfwk0VRKvaEUuPzVLaEW67vnovN1FCcNE/l8peeXh4y
fwXYhdWsxfUycbzHfIm9BPPF9QiLU0HWtEGNe/vEm12RSjwo33M2qpuO7/FZbHZc
jXgjVtYN5UpWHTJmkUU8f9XdgJ/5kBB7aWvHRwJs4WcZHvKQEtaVzARKVbhS5FoP
6igGmgopIMBM0m5QvcWnEKBZQQ1FJtReWdlDN45I92AymX6qNntDJD0lg3qeyzte
brSDk8+nr/EiP0P5+7vPIwYvaYrTpFeXJl4wvPjo05IahSpUegqWUBQblr6/zNxL
gOFziozu6yE9UhrTOiCxLYkAhDUWvTsh30rbH8fvxDUxTeveJaUh8G06aIoOTGUu
h1VTbSfURQYRmxdWQY4L+r1cvmIzdVpe/Cu1BypIUggT1B3nSlvFiXbxZMlTLu/v
SVB6SgFHwBMAuwA/01BdAHvLCyWYdxdHsSRQkOC2Qr0FTMnRLwBEd9NoyMd6v9Y1
5cK66VL09ZI7HupaiK+e
=aw2o
-----END PGP SIGNATURE-----
