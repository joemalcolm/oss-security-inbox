X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2242" "Thursday" "8" "December" "2016" "01:38:18" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<283cdffc6e30491c830b633484ad68b2@imshyb02.MITRE.ORG>" "59" "[oss-security] Re: CVE request Qemu: 9pfs: memory leakage via proxy/handle callbacks" nil nil nil "12" "2016120806:38:18" "[oss-security] Re: CVE request Qemu: 9pfs: memory leakage via proxy/handle callbacks" (number mark "U       cve-assign@m Dec  8   59/2242  " thread-indent "\"[oss-security] Re: CVE request Qemu: 9pfs: memory leakage via proxy/handle callbacks\"\n") "<alpine.LFD.2.20.1612070140070.9956@wniryva>" ("<alpine.LFD.2.20.1612070140070.9956@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27729 invoked by uid 550); 8 Dec 2016 06:38:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27705 invoked from network); 8 Dec 2016 06:38:30 -0000
From: <cve-assign@mitre.org>
To: <ppandit@redhat.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<liq3ea@gmail.com>
In-Reply-To: <alpine.LFD.2.20.1612070140070.9956@wniryva>
Message-ID: <283cdffc6e30491c830b633484ad68b2@imshyb02.MITRE.ORG>
Date: Thu, 8 Dec 2016 01:38:18 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request Qemu: 9pfs: memory leakage via proxy/handle callbacks

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the VirtFS, host directory sharing via Plan 9
> File System(9pfs) support, is vulnerable to memory leakage issue. It could
> occur via its '9p-handle' or '9p-proxy' backend drivers as they do not free
> their respective allocated data objects.
> 
> A privileged user inside guest could use this flaw to leak host memory, thus
> affecting other services on the host and/or potentially crash the Qemu process
> on the host.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-11/msg03278.html

>> 9pfs: adjust the order of resource cleanup in device unrealize
>> http://git.qemu.org/?p=qemu.git;a=commit;h=4774718e5c194026ba5ee7a28d9be49be3080e42

Use CVE-2016-9913.


>> 9pfs: add cleanup operation in FileOperations
>> http://git.qemu.org/?p=qemu.git;a=commit;h=702dbcc274e2ca43be20ba64c758c0ca57dab91d

Use CVE-2016-9914.


>> 9pfs: add cleanup operation for handle backend driver
>> http://git.qemu.org/?p=qemu.git;a=commit;h=971f406b77a6eb84e0ad27dcc416b663765aee30

Use CVE-2016-9915.


>> 9pfs: add cleanup operation for proxy backend driver
>> http://git.qemu.org/?p=qemu.git;a=commit;h=898ae90a44551d25b8e956fd87372d303c82fe68

Use CVE-2016-9916.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYSPwLAAoJEHb/MwWLVhi2DDYP/2J/BVlx1Mb5J7Xm+kF4f2mS
FAI/6LOEmrlhzq89mOW1sHCcM6ocAFaeW7EDyv8+fo+Dy0c45a/fpAKNNtQNIpGz
/8gmkXYsFpz52WJ+JAqkLHGSm859+zOUq61JIhJf0KWsuxvqi+OH214qXxkHSxG9
a/Qd2Q3giiPPVp+3geOlGG4+b9kbyA89utr3dMQ+pNa+66pm3Pu6vuu9SZNq2uMp
fq6Oc2hRYfj+jVbMVbCfQyJfBXxBdgyX89U6ehpFyaEGmlrfd78WuAyYQ9qEaoDF
ivyGJt+J4koqx2qwjFyMDR8lKZ9rCffXkCm3mavamNzG9FnV3qpCxI/4DloveAWn
3cqVFx+b5NcMOpPSiLVNTLchsPoRUsH3jJWGwqBlcShhB5GE7KQ3BJrRfFPyEVtq
rAOHB42Z16I2y6z0xOxuu8Vafc2egNJegIYXfYZfF+2OOtxmGykjnb0IERgMeptZ
aahBOwremjQPEyQB9yIFcrovfUVHtx3ofnfqWqW4BoV0AyN5wAQoK+8smq91ZaJn
fqTtd5rtKBNld4jsbUaX0Udui6Gcy/FQNuT9dBAyuObOoreXEgSWx099h40W+R69
ZG63UhFFNlb9jtZ88azaA54IMdETf8FLaUwdk7K7lNUCsPLI1cbM+3XNQhYHRjmL
XWqSVQ6M+yZo0z5gEnN7
=ezyO
-----END PGP SIGNATURE-----
