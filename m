X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1575" "Thursday" "8" "December" "2016" "01:34:10" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<da73f650466b4b789d5d46768478703d@imshyb02.MITRE.ORG>" "40" "[oss-security] Re: CVE request Qemu: display: virtio-gpu-3d: information leakage in virgl_cmd_get_capset" nil nil nil "12" "2016120806:34:10" "[oss-security] Re: CVE request Qemu: display: virtio-gpu-3d: information leakage in virgl_cmd_get_capset" (number mark "U       cve-assign@m Dec  8   40/1575  " thread-indent "\"[oss-security] Re: CVE request Qemu: display: virtio-gpu-3d: information leakage in virgl_cmd_get_capset\"\n") "<alpine.LFD.2.20.1612061653090.2165@wniryva>" ("<alpine.LFD.2.20.1612061653090.2165@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28405 invoked by uid 550); 8 Dec 2016 06:34:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28385 invoked from network); 8 Dec 2016 06:34:22 -0000
From: <cve-assign@mitre.org>
To: <ppandit@redhat.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<liq3ea@gmail.com>
In-Reply-To: <alpine.LFD.2.20.1612061653090.2165@wniryva>
Message-ID: <da73f650466b4b789d5d46768478703d@imshyb02.MITRE.ORG>
Date: Thu, 8 Dec 2016 01:34:10 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request Qemu: display: virtio-gpu-3d: information leakage in virgl_cmd_get_capset

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator built with the Virtio GPU Device emulator support is vulnerable
> to an information leakage issue. It could occur while processing
> 'VIRTIO_GPU_CMD_GET_CAPSET' command.
> 
> A guest user/process could use this flaw to leak contents of the host memory
> bytes.
> 
> http://lists.gnu.org/archive/html/qemu-devel/2016-11/msg00059.html

Use CVE-2016-9908.

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

iQIcBAEBCAAGBQJYSPv1AAoJEHb/MwWLVhi2qoIQAIk8ONXgNCxXa2Ikd9HOn88n
h8NNQszbalHBui/MHF9vQhJGRGJ4iRZdu9mSnLgxJU+6huTkaWFYevul2Vwb7SEb
HgS2SQx5d3hLwObCjSqHt/PfuT6lPDlH6h0Gjt4lViFUPAPPORc/5bI0jRAGWd2N
pC9tsUNsq9dl00pdyox6KpqiklsvVVPKA7spkPMw5uAR2DK/B7HTyJeKuaKJ2XQq
wVkgpCa6im86AW+zV14KRMwftNUO5H0zkXOkib/h/DuVUNzhClY2PStxePLTmqTi
pnaSeZcTr5Ti/FMMhtOtS5LOlV35wkpah/dHzDFNZW5Fk54AAeoxVsPr6tKa3VdH
a5izyLu05pk/B84cvOL2wl93Stt2NnZudI1JqUvPt5nfwDasVL8g/5XbHgmZhqcN
74uZf5Zo9V9ae0dET73laQTcIXUy6vEk7nvV0mmA5uTrLVS4fGMdOJI9gQVAZkqW
+NzWs1FJZpNRo4kQCszAC39agb2FXRseMNO8h2bON5CgyPtpa5pL+mVNJ00iPmri
8X8RDM3h6VupDy1gF6eBFzVRVnhxgvxHf3g8P5qcoxLr0/U75XcPthy9943NDr6C
FU6G897DnS9UkWhc1M+g3sLgj/wO1KrpSzf+ppshD5IOxsraAWg5AXRXvEPs6Du0
vmgrb/UXnHL9UxJjy7Xo
=/c0X
-----END PGP SIGNATURE-----
