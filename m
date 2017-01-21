X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1654" "Friday" "20" "January" "2017" "22:26:54" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<e36d328405be4573a772886c8af4f31b@imshyb01.MITRE.ORG>" "38" "[oss-security] Re: CVE request Qemu: display: virtio-gpu-3d: memory leakage in virgl_resource_attach_backing" nil nil nil "1" "2017012103:26:54" "[oss-security] Re: CVE request Qemu: display: virtio-gpu-3d: memory leakage in virgl_resource_attach_backing" (number mark "U       cve-assign@m Jan 20   38/1654  " thread-indent "\"[oss-security] Re: CVE request Qemu: display: virtio-gpu-3d: memory leakage in virgl_resource_attach_backing\"\n") "<alpine.LFD.2.20.1701202351250.18165@wniryva>" ("<alpine.LFD.2.20.1701202351250.18165@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25990 invoked by uid 550); 21 Jan 2017 03:27:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25969 invoked from network); 21 Jan 2017 03:27:06 -0000
From: <cve-assign@mitre.org>
To: <ppandit@redhat.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<liqiang6-s@360.cn>
In-Reply-To: <alpine.LFD.2.20.1701202351250.18165@wniryva>
Message-ID: <e36d328405be4573a772886c8af4f31b@imshyb01.MITRE.ORG>
Date: Fri, 20 Jan 2017 22:26:54 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request Qemu: display: virtio-gpu-3d: memory leakage in virgl_resource_attach_backing

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> [] Quick Emulator(Qemu) built with the Virtio GPU Device emulator support is
> vulnerable to a memory leakage issue. It could occur while processing
> 'VIRTIO_GPU_CMD_RESOURCE_ATTACH_BACKING' command.
> 
> A guest user/process could use this flaw to leak host memory resulting in DoS.
> 
> https://lists.nongnu.org/archive/html/qemu-devel/2017-01/msg00154.html
> https://bugzilla.redhat.com/show_bug.cgi?id=1415281
> http://git.qemu.org/?p=qemu.git;a=commit;h=33243031dad02d161225ba99d782616da133f689

Use CVE-2017-5552 for this (i.e., a memory consumption issue, not an
information disclosure issue).

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYgtMQAAoJEHb/MwWLVhi2Z6IP/3+ft1EpX+/Dn7Ja15Ss8CvI
JBMEN+BQmrDJhNbGEGIUGectfmW4lB2cIyz4BsCbCx8Pxq13vRB2UxIytncBDyEz
GPtRRp1eC5iLBfJwWXYLftOYDkst7yqbXenLavjoPu2VtvWnD412W+63BhR/fRGe
105WM3tY1Tx7DcCi6Bnhv9cNDIazlgjFQ9YbKdjL99dkLwZo8EIlJD/rcHI82K1f
ugotHzcZ3kw2f/W4lf4kNH1+bCGU3Te0osyNlSgXrAYzWAulnDWwW+F32Syzqnk0
jQ5d0yDBuFOlu1uzb5kpI1Vv1M69lwOYf9XPhCxZ6mDub0BCq1JvNC9CRNNE5Yub
V4CEM6Grgy/OhQs8ZEbGL7H7Sq2gwTGEC5lWKpyxKSpPpitnfOV+aXSaHw494Sl9
LO5BmJvqImD8EjBfyLS+cJD3JLj0k1WIqbzlnGrNMg9kYURa0PJTnUSrNK3m/TpU
KnqwodxLI/sX378ECCkPzz4ibMD5dgAIkyH1qJr/PS2f+LPjFhY9+40wGe5haUGa
a0ibuJ2RNf7SfEDGRytkugwwk2mOs1DtNDhTDf/d3dPVwDywOYHu+WeT2zz6bZ51
0l+576HoGuNtBj8UjofYGtcNIJk2LSe5/oNEd9kR+lzsWM+2jRuqWJSAaZ1p+XOG
SfnRN1+bCmCMywfG4gYb
=Z6dJ
-----END PGP SIGNATURE-----
