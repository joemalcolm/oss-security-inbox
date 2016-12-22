X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1579" "Thursday" "22" "December" "2016" "18:59:21" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<81a289a4d4114679beb6de0627777384@imshyb02.MITRE.ORG>" "39" "[oss-security] Re: CVE request Qemu: display: virtio-gpu: out of bounds read in virtio_gpu_set_scanout" nil nil nil "12" "2016122223:59:21" "[oss-security] Re: CVE request Qemu: display: virtio-gpu: out of bounds read in virtio_gpu_set_scanout" (number mark "U       cve-assign@m Dec 22   39/1579  " thread-indent "\"[oss-security] Re: CVE request Qemu: display: virtio-gpu: out of bounds read in virtio_gpu_set_scanout\"\n") "<alpine.LFD.2.20.1612201818230.29699@wniryva>" ("<alpine.LFD.2.20.1612201818230.29699@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22092 invoked by uid 550); 22 Dec 2016 23:59:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22052 invoked from network); 22 Dec 2016 23:59:33 -0000
From: <cve-assign@mitre.org>
To: <ppandit@redhat.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<zhenhaohong@gmail.com>
In-Reply-To: <alpine.LFD.2.20.1612201818230.29699@wniryva>
Message-ID: <81a289a4d4114679beb6de0627777384@imshyb02.MITRE.ORG>
Date: Thu, 22 Dec 2016 18:59:21 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request Qemu: display: virtio-gpu: out of bounds read in virtio_gpu_set_scanout

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the Virtio GPU Device emulator support is
> vulnerable to an OOB read issue. It could occur while processing
> 'VIRTIO_GPU_CMD_SET_SCANOUT:' command.
> 
> A guest user/process could use this flaw to crash the Qemu process instance
> resulting in Dos.
> 
> http://git.qemu.org/?p=qemu.git;a=commit;h=acfc4846508a02cc4c83aa27799fd7
> http://git.qemu.org/?p=qemu.git;a=commit;h=2fe760554eb3769d70f608a158474f

>> The scanout id should not be above the configured num_scanouts.

Use CVE-2016-10029.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYXGfnAAoJEHb/MwWLVhi2XawP/jE9QxYK30gG1aMK8peEuX3a
b59gBHobECBcTLX2A8NUXN7/C5fIUhOUwiAj00sHEZjyZkJA8NONIfC3ussRlrkU
GfFnFnYT6h5mprlh9EGaiXjENCGxWFYTZ1PeAieGpJV4VPWDzGr49L7p8lleLKS5
arhNsgBXnJO/H6Wlk2JGlZRQAR6B+0rmhrpvQzZz0ry711f3sdkJ0bPIqPr3SrMS
SBlARTOYKueTenW3z/o3U1YxKUx/y9/pkXbaEcRueGuUfCDQ7VEone4VzuqQG7Wo
AJvkLoPX81TMShec4A9AKjMOohtDlDpnMB5afCHL8940u05BVLBk9n8Nw7hZbXZ+
oETpGdXAVtXnJodBwfvY/tWQ5mJIkcCXNJefGEw1a0xM1JmGbYnfXCrqNEBJKboJ
UAmL1wx6k4XZ698/akQupRkIIsSsEi3pwuK+3RBnHtbmkRiKVyiA0oRWyLFvas7u
1Ij+iYb8xPGFdgAF/CuGvhkqsNWuZJIK0J8Qgxq7Tobt/EPdU86yt3cY4BjRBLr4
VVOt9hjJKoUiIyszmeuwEK10G9UxqSu9RqK6siAOj+hEJCoMeqWx9Cdi2QgUaRwX
saqhI5Y0pvcxccU/BN6spVWzRMpCp49D8t610pCEfLQE18mp+BqRAsPAN39j9RXZ
V9XNIsxkhbOaBh0BwUqV
=8Vzd
-----END PGP SIGNATURE-----
