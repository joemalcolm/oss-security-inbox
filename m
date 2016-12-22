X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1828" "Thursday" "22" "December" "2016" "18:57:06" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<0bd84f88552a45a0a0669d5194dfeb93@imshyb02.MITRE.ORG>" "45" "[oss-security] Re: CVE request Qemu: display: virtio-gpu-3d: OOB access while reading virgl capabilities" nil nil nil "12" "2016122223:57:06" "[oss-security] Re: CVE request Qemu: display: virtio-gpu-3d: OOB access while reading virgl capabilities" (number mark "U       cve-assign@m Dec 22   45/1828  " thread-indent "\"[oss-security] Re: CVE request Qemu: display: virtio-gpu-3d: OOB access while reading virgl capabilities\"\n") "<alpine.LFD.2.20.1612201815510.29699@wniryva>" ("<alpine.LFD.2.20.1612201815510.29699@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7998 invoked by uid 550); 22 Dec 2016 23:57:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7975 invoked from network); 22 Dec 2016 23:57:20 -0000
From: <cve-assign@mitre.org>
To: <ppandit@redhat.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<zhenhaohong@gmail.com>
In-Reply-To: <alpine.LFD.2.20.1612201815510.29699@wniryva>
Message-ID: <0bd84f88552a45a0a0669d5194dfeb93@imshyb02.MITRE.ORG>
Date: Thu, 22 Dec 2016 18:57:06 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request Qemu: display: virtio-gpu-3d: OOB access while reading virgl capabilities

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the Virtio GPU Device emulator support is
> vulnerable to an out of bounds memory access issue. It could occur while
> processing 'VIRTIO_GPU_CMD_GET_CAPSET' command.
> 
> A guest user/process could use this flaw to crash the Qemu process instance on
> a host, resulting in DoS.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-12/msg01903.html

>> retrieves the maximum capabilities size to fill in the
>> response object. It continues to fill in capabilities even if
>> retrieved 'max_size' is zero(0), thus resulting in OOB access.
>> Add check to avoid it.

Use CVE-2016-10028.

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/display/virtio-gpu-3d.c but
that may be an expected place for a later update.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYXGfhAAoJEHb/MwWLVhi2GN4P/0mDg9MtY/9ZEuTj9P0t97Cz
By4R/z4PK8qeFBGVYo5ftRVNRKit77pkB1rCLNkeaL891RjNya3LcFqb8JBLm6g3
OP6LXA2GhkNdMNEFTAPg2pmnLqFdauHiRtIm/V9bfbCRbdZ+7Ys2rAcRhfc8N85H
P+V1dHQIvx7VQXwo4pfRdMWXaJZJvbq6Dvvn4wFgcw32HJ39irsiWLa1x3quNmhL
t5jBL3zp6lfTOO7fqUGLUOk9Rs/g2N5XrUTZ0Rc7Cw+1xjy/luWObIGF5fmnkW6M
LbBlVoZmnZBJanoSdPTiwy5fURq1T1IjDC3n1ZRB+poVRsIOvCoFYJAozYHwOYeg
g/kQwY+DYAUh3QE0SHRZJmO/TILS8ghtqrldZtS4WP87d+CMWi6PzMBumScIH9S3
zPZSs0KLuXhWnus4yrFcYHrc/sonqZSfCvejw/Un2XxFb6fjc8VkwEzWZcFlZ+y8
EpyDpSjflZcMsqzTK/ETogYtVcKGjjyg7b4tDRrP5Vjm98HmPSiCC+bLtqTcsF2p
5oBGCwQX2dSNMTKMltUPTNeIdotZkF/6ym6TKnAs9YGGQI0ioxFHuT/6FhF6GAYA
S2Y63sZbbTxDthsohCQBv/KPJFlHZyo1ih1dxRiVXGTqRjYWc+QZvz+mOJ0A07oT
2h/TVl7vPCyM3UTD9Tym
=GOF0
-----END PGP SIGNATURE-----
