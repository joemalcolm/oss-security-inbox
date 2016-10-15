X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1658" "Saturday" "15" "October" "2016" "12:47:23" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161015164723.AD7EC6C0661@smtpvmsrv1.mitre.org>" "41" "[oss-security] Re: CVE request Qemu: char: divide by zero error in serial_update_parameters" nil nil nil "10" "2016101516:47:23" "[oss-security] Re: CVE request Qemu: char: divide by zero error in serial_update_parameters" (number mark "U       cve-assign@m Oct 15   41/1658  " thread-indent "\"[oss-security] Re: CVE request Qemu: char: divide by zero error in serial_update_parameters\"\n") "<alpine.LFD.2.20.1610141644230.13950@wniryva>" ("<alpine.LFD.2.20.1610141644230.13950@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11847 invoked by uid 550); 15 Oct 2016 16:47:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11823 invoked from network); 15 Oct 2016 16:47:35 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, psirt@huawei.com
In-Reply-To: <alpine.LFD.2.20.1610141644230.13950@wniryva>
Message-Id: <20161015164723.AD7EC6C0661@smtpvmsrv1.mitre.org>
Date: Sat, 15 Oct 2016 12:47:23 -0400 (EDT)
Subject: [oss-security] Re: CVE request Qemu: char: divide by zero error in serial_update_parameters

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the 16550A UART emulation support is
> vulnerable to a divide by zero issue. It could occur while updating serial
> device parameters in 'serial_update_parameters'.
> 
> A privileged guest user could use this flaw to crash the Qemu process instance
> on the host, resulting in DoS.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-10/msg02461.html
> https://bugzilla.redhat.com/show_bug.cgi?id=1384909

Use CVE-2016-8669.

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/char/serial.c but
that may be an expected place for a later update.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYAlsWAAoJEHb/MwWLVhi2ZNgP/3Q2O/R4RvBqZ3ySzmRc4kBJ
KZMiY1SO+pPhKz2ogREuCqE6/ioBa9181Jcd7b+VsDXqhYLpIqvfr/gOA2QfQRJW
OS2JYBpHf36RT8CzPnSKq825UjpYLj3tObbv/BiGuIEqU0Eky79Q/sFkOqCZJZn/
vFKwuSqNtqcvD6c1fQWz5BQQhgYOqZtPNPeDvdV6AGSh7qny/wjpA57LrGqv16M+
FX5iBo0nmOB9SPPHBGIMQlXq7hIq73mnhqu6hXNqrZo9ZDEBSf+t2bRzufNi4o47
WefYhqJ/J8Sku+X28ul+BndLhmo/XYhlwXVgp4gv5I+ybEW/l+8+VZvRCyjiVmrl
DtZyp9N2FMXqueJeMk85D7Qn2v6Us1gfLjk22GfYiP9H+z+8KGbiHf8EjHj7vuCC
OFE0guEqT80ev/hAP65NAidxVxquuxEkAiu2gGDUhnImi5kBY038Df4mPju8tYIo
W5H/kFK6vzHayyF8/JZlz5XbdhMQsX3aQ51sfvgxQTkyjNJ8/ZpLVDLdQRMmDpvG
jE1QuOXaO+CNAnluwFfcGkkSA7JZw2AgVYGy8yWhHSF3eFG1YR5pf6eu+c0S+Oug
rjATBMRpPmGi9WWooDi1i/F6FkFS/wTbHyUGeNtHG8lWqAWYFjV7IGyJ4IK1CICK
3v8A+xpCXBAJY7oQbNmw
=eIjR
-----END PGP SIGNATURE-----
