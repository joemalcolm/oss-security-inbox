X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1631" "Wednesday" "30" "March" "2016" "09:57:35" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160330135735.C05C56C084F@smtpvmsrv1.mitre.org>" "39" "[oss-security] Re: CVE request -- linux kernel: crash on invalid USB device descriptors (ims-pcu driver)" "^Cc:" nil nil "3" "2016033013:57:35" "[oss-security] Re: CVE request -- linux kernel: crash on invalid USB device descriptors (ims-pcu driver)" (number mark "        cve-assign@m Mar 30   39/1631  " thread-indent "\"[oss-security] Re: CVE request -- linux kernel: crash on invalid USB device descriptors (ims-pcu driver)\"\n") "<183593889.43262406.1459342377531.JavaMail.zimbra@redhat.com>" ("<183593889.43262406.1459342377531.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11277 invoked by uid 550); 30 Mar 2016 13:57:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10235 invoked from network); 30 Mar 2016 13:57:47 -0000
In-Reply-To: <183593889.43262406.1459342377531.JavaMail.zimbra@redhat.com>
Message-Id: <20160330135735.C05C56C084F@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed, 30 Mar 2016 09:57:35 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request -- linux kernel: crash on invalid USB device descriptors (ims-pcu driver)
To: vdronov@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> A device pretending to be a device driven by the ims-pcu driver,
> but leaving out either of the two interfaces present on the genuine
> device will crash the driver and possibly the kernel. Thus, DoS
> with physical access is possible. Kernels since v3.10 are vulnerable.
> 
> https://bugzilla.novell.com/show_bug.cgi?id=971628
> http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=a0ad220c96692eda76b2e3fd7279f3dcd1d8a8ff
> https://bugzilla.redhat.com/show_bug.cgi?id=1320060

>> drivers/input/misc/ims-pcu.c
>> ims_pcu_parse_cdc_data

Use CVE-2016-3689.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJW+9rcAAoJEL54rhJi8gl5wvUQAJW92s9jIxSymkHknHHqylhW
tnaKUdv0F4Fm5bIsSe0/eeXR6o6YkdJ0RxzPsPfzej2Ih8lofv2siQcFMMl6t2ea
GzhKLnMpDFOXtq9sib9sDrObAWMNPdPYJaZEMt9v7Bv67AUNHNmjp2/WtwdMluJe
Hls5Sz81XAgqWPgIYI+Y2JbOzeHBQpdcv9E5hOtIM/il+/9LT1hlDly6wNW58OZa
LYyN2o7zHcBjN+1GjqKbwNETKjb/2JwRfxTZgEVt76FnMY+qIPOmMMTBCuPzQR6g
jeCE0jeuZ5O6RDs9hf4eHE+f4oQ7ZA+CsStykp0nQ6EU6Ganzr6TQAlgFhJVjUlc
jocWd+BpF6wUxdlbuy6IMHW7CLBHCgNqLiUVTZePgUEHr3iwxoBmPcvvgqzmihJ5
cbaYfI7jMSR57WMDw0G670+In5ttZxDPeijqOMdcMp5R6unMajr5+WwoCbvp/k6J
ij2EiKF3Ur1FPlSwg01qJE3Z/o67wMAO6G7mr8d/qLXtkDgrFe/XmKdRZWiZEm58
GANKGWu+LYK5f+vK638ls+cCrXVLKziCQdQo+88EIHNt/80wohbcYNX+5n9OPNok
SO9lrGknX4r979+2AyWYKqxhWToOK09TL6ZiiBUxodULusBAGwyTj2epAzAylUwC
dthSTfy0M0szo3ktzMvd
=ILXh
-----END PGP SIGNATURE-----
