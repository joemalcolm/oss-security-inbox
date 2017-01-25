X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1570" "Wednesday" "25" "January" "2017" "03:40:49" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<46d26ca4fe15417db616d3cb54f2b07a@imshyb01.MITRE.ORG>" "37" "[oss-security] Re: CVE request Qemu: display: virtio-gpu: host memory leakage in virtio_gpu_resource_attach_backing" nil nil nil "1" "2017012508:40:49" "[oss-security] Re: CVE request Qemu: display: virtio-gpu: host memory leakage in virtio_gpu_resource_attach_backing" (number mark "U       cve-assign@m Jan 25   37/1570  " thread-indent "\"[oss-security] Re: CVE request Qemu: display: virtio-gpu: host memory leakage in virtio_gpu_resource_attach_backing\"\n") "<alpine.LFD.2.20.1701232352210.20901@wniryva>" ("<alpine.LFD.2.20.1701232352210.20901@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24427 invoked by uid 550); 25 Jan 2017 08:41:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24409 invoked from network); 25 Jan 2017 08:41:01 -0000
From: <cve-assign@mitre.org>
To: <ppandit@redhat.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<liqiang6-s@360.cn>
In-Reply-To: <alpine.LFD.2.20.1701232352210.20901@wniryva>
Message-ID: <46d26ca4fe15417db616d3cb54f2b07a@imshyb01.MITRE.ORG>
Date: Wed, 25 Jan 2017 03:40:49 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request Qemu: display: virtio-gpu: host memory leakage in virtio_gpu_resource_attach_backing

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the Virtio GPU Device emulator support is
> vulnerable to a memory leakage issue. It could occur while processing
> 'VIRTIO_GPU_CMD_RESOURCE_ATTACH_BACKING' command.
> 
> A guest user/process could use this flaw to leak host memory resulting in DoS.
> 
> https://lists.nongnu.org/archive/html/qemu-devel/2017-01/msg00151.html
> https://bugzilla.redhat.com/show_bug.cgi?id=1415795
> http://git.qemu.org/?p=qemu.git;a=commit;h=204f01b30975923c64006f8067f0937b91eea68b

Use CVE-2017-5578.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYiGO1AAoJEHb/MwWLVhi2tUAP/2Iz9iGa9RRpcc8Ppq4ilreh
v/hllIcxHHmFB0n5vCktzLCtyANdU8YtELEow2VMIzHPgz7A4XYqEZRxcKwEmDti
faoxcjbuTpJBuQFbm0EA9V3wEqSEKG86JPTHS8cpR/m2WSWZqre3cIMnSNkDwCkq
KIJXy6urc8rBW+HNu+C+21lDyAWcjjXMEwY+nKVTDm9XovvxAmGXaLh59JY2ezrM
7X9mZi/iRADkx9vAH2oIPI69v9YidArmmwiec2zs0SAlAMuNXYw61hZOCZw9agS/
9Mj7xUqi9qxhqcnHnACiIvVfCdw2eoNS7GW0gLVSE+dEjpIf8hYsshK+ga7GD3xD
YhqN89Bq7V8mkvqXmZP9bx+WpAG9/x72+lF2L9fcmFMYfVVvhYTStFsgk0lXt64m
ZfyHvnU1IWUL6cCT2r918oubHgtCQEYEz7lMEFAjeSTPbe6GyQrbes4E2zXpn5zO
3kQfnw+6vMN5q6YUOzsdYdb4d4ofJ4zybgI0BD+AZq0cAbxg+mr9Vb149fx1tVBy
HTIgelALPWExAZwypRiZRmFryh3GFgmnSyV+u2TtyBp3O5CedzqKNX8ZYWVKPBGg
/4ENdngGTv7pKbWHl8YhtS8AreDe3b+HoFSN1N6UYsMVuXiIpF7SNwh8QRdSPbJx
acgNchNrffIyMEZ69vbT
=J/T4
-----END PGP SIGNATURE-----
