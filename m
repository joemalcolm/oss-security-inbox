X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1659" "Thursday" "8" "December" "2016" "01:36:58" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<e70a1c4d0998472088fc16181d68f78c@imshyb02.MITRE.ORG>" "42" "[oss-security] Re: CVE request Qemu: display: virtio-gpu: memory leakage when destroying gpu resource" nil nil nil "12" "2016120806:36:58" "[oss-security] Re: CVE request Qemu: display: virtio-gpu: memory leakage when destroying gpu resource" (number mark "U       cve-assign@m Dec  8   42/1659  " thread-indent "\"[oss-security] Re: CVE request Qemu: display: virtio-gpu: memory leakage when destroying gpu resource\"\n") "<alpine.LFD.2.20.1612070146350.9956@wniryva>" ("<alpine.LFD.2.20.1612070146350.9956@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17595 invoked by uid 550); 8 Dec 2016 06:37:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17570 invoked from network); 8 Dec 2016 06:37:10 -0000
From: <cve-assign@mitre.org>
To: <ppandit@redhat.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<liq3ea@gmail.com>
In-Reply-To: <alpine.LFD.2.20.1612070146350.9956@wniryva>
Message-ID: <e70a1c4d0998472088fc16181d68f78c@imshyb02.MITRE.ORG>
Date: Thu, 8 Dec 2016 01:36:58 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request Qemu: display: virtio-gpu: memory leakage when destroying gpu resource

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the Virtio GPU Device emulator support is
> vulnerable to a memory leakage issue. It could occur while destroying gpu
> resource object in 'virtio_gpu_resource_destroy'
> 
> A guest user/process could use this flaw to leak host memory bytes, resulting
> in DoS for a host.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-11/msg05043.html

>> the 'iov' and 'addrs' field in resource is not freed

Use CVE-2016-9912.

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/display/virtio-gpu.c but
that may be an expected place for a later update.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYSPwEAAoJEHb/MwWLVhi2PNkQAJ04jluxiwMJkFYyHnxywbvq
uhCBuwqncHIs/MUMLdYrNB3NvUQm1W4DmF1iVOKpP/r4jhXbZ52cS89hEbCfFL/W
rPsr5H1tVLyUmXEroMxoyT9RJRlNlMp4FXTYCmbsZStqW+KLsXc/IiiUqfPJfw00
qo2AHZc4xMpSqYKSUPwZYN4UG4uosve1mYcmII7CTg2nTFqeFeufq6A+N8/HKpFC
dYp4fcGkM1B8V4W2FL95oWalMUmDjFGnVfXQrlSnJB1XcOEFqsebcUq7xFcE2psi
FCYkoz098xv1TIYWCwIj3Oscl/AH8SDtrXokXbtYqxbeq0mKIkaTqtLsj4CiooxY
KhuJs27nJZJZZve15r2CZ6g8poHMZH+WdSWrF4tZNlgDsOojLnrI8+vPqknfM91B
8AxAuEGPcGSFa9JHSP8EhJ7Jr1aahoL4OqJQSSesqk9PckKQREsLqS5cnMEQj+OE
mHe4a2bPj900Okq5SXnnZt1t8T8WyIzgC2rgfDuMuCfoC38NF1dRjQ8TcK0oL6r6
sK52vKKO9Rmo/JLdVkjjgvu0UZZ5c21FfhJbKROkWYE9TmNc+Kuf2f5ypk1bHzA6
A3fB5mNz2nwV95JyQgr+TVyfT1Pf0mZfl1U/gRJE0M7t3m3DYQiYXeWJ9heRKgQj
+G1h8Edu8sXg+DMskaTQ
=vdtL
-----END PGP SIGNATURE-----
