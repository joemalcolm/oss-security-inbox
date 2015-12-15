X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2516" "Tuesday" "15" "December" "2015" "13:13:39" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151215181339.56C3442E8EB@smtpvbsrv1.mitre.org>" "60" "[oss-security] Re: CVE request Qemu: net: vmxnet3: host memory leakage" nil nil nil "12" "2015121518:13:39" "[oss-security] Re: CVE request Qemu: net: vmxnet3: host memory leakage" (number mark "U       cve-assign@m Dec 15   60/2516  " thread-indent "\"[oss-security] Re: CVE request Qemu: net: vmxnet3: host memory leakage\"\n") "<alpine.LFD.2.20.1512151335220.28945@wniryva>" ("<alpine.LFD.2.20.1512151335220.28945@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20133 invoked by uid 550); 15 Dec 2015 18:13:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20115 invoked from network); 15 Dec 2015 18:13:51 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, luodalongde@gmail.com
In-Reply-To: <alpine.LFD.2.20.1512151335220.28945@wniryva>
Message-Id: <20151215181339.56C3442E8EB@smtpvbsrv1.mitre.org>
Date: Tue, 15 Dec 2015 13:13:39 -0500 (EST)
Subject: [oss-security] Re: CVE request Qemu: net: vmxnet3: host memory leakage

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Qemu emulator built with a VMWARE VMXNET3 paravirtual NIC emulator support is
> vulnerable to a memory leakage flaw. It occurs when a guest repeatedly tries
> to activate the vmxnet3 device.
> 
> A privileged guest user could use this flaw to leak host memory, resulting in
> DoS on the host.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2015-12/msg02299.html

>> Vmxnet3 device emulator does not check if the device is active
>> before activating it, also it did not free the transmit & receive
>> buffers while deactivating the device, thus resulting in memory
>> leakage on the host. This patch fixes both these issues to avoid
>> host memory leakage.

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/net/vmxnet3.c but that
may be an expected place for a later update.

"does not check if the device is active before activating it" seems to
be similar to a CWE-372 ("Incomplete Internal State Distinction")
issue. Use CVE-2015-8567 for this aspect of the report.

"did not free the transmit & receive buffers while deactivating" seems
to be similar to a CWE-772 ("Missing Release of Resource after
Effective Lifetime") issue. Use CVE-2015-8568 for this aspect of the
report.


>> I've added a check in vmxnet3_deactivate_device() to avoid double free.

We think this may mean that the double free existed only in an early
version of the patch, and did not exist in any shipped QEMU code.
There is no CVE ID for the double free.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWcFaHAAoJEL54rhJi8gl5ehYP/0xjfZb8tF5OVXvfjx+KIxue
pVYd4nId6wld+KSXED7qnLxVimc87zRiTq8tcezOUqRnzqtRq69i7r95MspsfTLX
rf69q7lHPrci30a1lM2+CEz2H8FP07SMLAzibvKtZ+pQfeZ2IrdLbXs8dnHZ5oAw
Jcy/7NKa3FcV8GU8+A9Fa34T6P3frmcOBLmCHuduyRNx98IFNC+SI7y9Z2lxp7LC
m8SWQ1zELRbg/hqNmzaiADxyrlIZHzMosqAZuq8fRsrT4YwEp0ls93RSxV2Ix3Gb
OfO99e8eC50IK2hVisJeXDvB08SGXkUOqxkwAtfVhk6PeomqmqDqrcJ4bkj5udq9
xnzquGlJNbVvWwpA9DOkP3GPyngtfTGa85DNtK8b5I0p0ocl37NyMT8PSi81GdVZ
KdRgfWxOpThfudPSSn+S+dRHFFjelwO6/nVPLy3Yw/DOzlACZytrGfD76XAdbs2h
79rj4snSvHTI17D59dz5FddJwdGn34SF+BSxURcgBeddnP7zyeQKM5lECoG71uCa
bL+gA0stcjE9Kmo8+JK8U9VCV5SJJ75n20uMfgP/PXK4llpocwdiBaHR2o7n5Saq
wMJyeVbHlwfH4MNENEQ+YA9SlF9KpxBTfZla5BU+HbHq2/QZi0Tjd8m9pZFZvASS
Kn4Qv+X11/Hhe2eal2//
=Egny
-----END PGP SIGNATURE-----
