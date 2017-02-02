X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1635" "Thursday" "2" "February" "2017" "01:15:48" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<da71bd1ba8f644a7b81827c5dcdedd60@imshyb01.MITRE.ORG>" "40" "[oss-security] Re: CVE request Qemu: display: virtio-gpu-3d: host memory leakage in virgl_cmd_resource_unref" nil nil nil "2" "2017020206:15:48" "[oss-security] Re: CVE request Qemu: display: virtio-gpu-3d: host memory leakage in virgl_cmd_resource_unref" (number mark "U       cve-assign@m Feb  2   40/1635  " thread-indent "\"[oss-security] Re: CVE request Qemu: display: virtio-gpu-3d: host memory leakage in virgl_cmd_resource_unref\"\n") "<alpine.LFD.2.20.1702012244320.601@wniryva>" ("<alpine.LFD.2.20.1702012244320.601@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32402 invoked by uid 550); 2 Feb 2017 06:16:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32371 invoked from network); 2 Feb 2017 06:16:00 -0000
From: <cve-assign@mitre.org>
To: <ppandit@redhat.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<liqiang6-s@360.cn>
In-Reply-To: <alpine.LFD.2.20.1702012244320.601@wniryva>
Message-ID: <da71bd1ba8f644a7b81827c5dcdedd60@imshyb01.MITRE.ORG>
Date: Thu, 2 Feb 2017 01:15:48 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request Qemu: display: virtio-gpu-3d: host memory leakage in virgl_cmd_resource_unref

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the Virtio GPU Device emulator support is
> vulnerable to a host memory leakage issue. It could occur while processing
> 'VIRTIO_GPU_CMD_RESOURCE_UNREF' command.
> 
> A guest user/process could use this flaw to leak host memory resulting in DoS.
> 
> https://lists.nongnu.org/archive/html/qemu-devel/2017-01/msg04615.html
> https://bugzilla.redhat.com/show_bug.cgi?id=1418382

Use CVE-2017-5857.

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

iQIcBAEBCAAGBQJYksc/AAoJEHb/MwWLVhi2dlwP/jHC0lg6fIrzdhSon1pxLzFJ
yRd3QxpiGOTt+zwK8T4L899ToWxQZDHLwV2QWz1+UGBf5IC1PaEtj03h5tlAWJte
TUoAPT03STXKle3HDxqGuqohUqTeZ27EnEY78z5YIS8ok9txh2Mjy/Mg9GIR9st6
ef1DHl7CwWObMurL//kPInWEFfYQ9/zMpq2KG/xtbBAmmKQlcmTTG+gnTbMy5lZ4
mRWC4PPcUMlHt/wU1QQohIYvRcNKDj2bppvXeOX54TqY2m4hnMspPERIrpfvzX0N
SAUORuztcL7zg5fXtv9d2RFdr1RGD9EVR8kTqv+lcpMWLl1Xgok6P+TNhIXRFiQw
rHY/KEGBgplk0cDPpiT+pLrtntQgUp4nE5Dr18EjVEiju77/js6N19+IzwD/WWV3
i0uN8YMZFrwRuKSUjH27mU1WvmP4vOtwlb+xDVbIdKp7llHxYL9wAViTn+AE6SvM
0Lxi5gwIrnCox7ozz0wBSj8z2CPv9d0UY0ts+dSSljqbGG02eE3QYGAodUifJzv1
EY6lUAfgimzRGTKM32Pt3xkRccEjslaKj1tJopPJd2Ptfgv9CXZ03w2O86/niJY7
dExg6W4ZBYrPMAiAx2mm+V0sHGOAyaEQmKjhYMbHAPe+KizsBJ4LcA1JxXTojULe
KzkJsxObG7XYsmYA/0Vi
=kzd3
-----END PGP SIGNATURE-----
