X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1656" "Wednesday" "8" "February" "2017" "23:58:39" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<d18ca7c8134b41a4806e395b18ffa346@imshyb02.MITRE.ORG>" "39" "[oss-security] Re: CVE request virglrenderer: host memory leak issue in virgl_resource_attach_backing" nil nil nil "2" "2017020904:58:39" "[oss-security] Re: CVE request virglrenderer: host memory leak issue in virgl_resource_attach_backing" (number mark "U       cve-assign@m Feb  8   39/1656  " thread-indent "\"[oss-security] Re: CVE request virglrenderer: host memory leak issue in virgl_resource_attach_backing\"\n") "<alpine.LFD.2.20.1702081546460.30815@wniryva>" ("<alpine.LFD.2.20.1702081546460.30815@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24049 invoked by uid 550); 9 Feb 2017 04:58:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23979 invoked from network); 9 Feb 2017 04:58:51 -0000
From: <cve-assign@mitre.org>
To: <ppandit@redhat.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<liq3ea@gmail.com>
In-Reply-To: <alpine.LFD.2.20.1702081546460.30815@wniryva>
Message-ID: <d18ca7c8134b41a4806e395b18ffa346@imshyb02.MITRE.ORG>
Date: Wed, 8 Feb 2017 23:58:39 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request virglrenderer: host memory leak issue in virgl_resource_attach_backing

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Virgil 3d project, used by Quick Emulator(Qemu) to implement 3D GPU support
> for the virtio GPU, is vulnerable to memory leakage issue. It could occur when
> a guest invokes a 'VIRTIO_GPU_CMD_RESOURCE_ATTACH_BACKING' command.
> 
> A guest user/process could use this flaw to leak host memory leading to DoS.
> 
> https://cgit.freedesktop.org/virglrenderer/commit/?id=40b0e7813325b08077b6f541b3989edb2d86d837
> https://bugzilla.redhat.com/show_bug.cgi?id=1420266

Use CVE-2016-10214.

This is not exactly the same as CVE-2017-5578 (from the
http://www.openwall.com/lists/oss-security/2017/01/25/2 post).

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYm/MvAAoJEHb/MwWLVhi2A+gP/0kbCwh8jpQOSzRwlB24UF/2
NgP17KXlmr/hfHEjilX4w+0z0TvJMUpd58otvLFJiu+ZruJtveoY6qcZ65vc4j2W
bSRqmSvpwLRRYCVgsgXpCXItyjuxcGtpGUTEDsUeam6N6aOw1UCeBS472C0/j4cO
QRqlQWfxJpccUlwGKV4BcvlqE6Dw+NonJq3HXuVdw4M8fJHz4DMEtjKqIT+M8ied
n8bYgEl1czHCdkopD5IxbFuOPZRKBVIVvnIFN9+F9bb6IuyQfHr1staZzTa49Nub
+J4PjLFSeWDkDxSKKVMvCfkxTQ+WV+uXWxL7X2/KaNfJSS5oxNw4pSvuUj8kSe9f
qRQDamEdpSDZD8jW2ziKLjNTe2rRXKOl7i+Uzq0UU4hSteVlsSXSWynN5Hav5oae
GJZKQb4mbAmiVZ3uStERpWfR6xCNhgbuh0P7pb4hI91fGyelMNK693a2YbC0F0k8
dnHhVNxrKzwNeMBxvqlfkeK37y1VgawVivdMJY6SbVWo+2C0Wwo1+FiUMug+mnYH
uY0GNcgRJ+FfpwG8L8odEAjXD4YsrR7KY9q53kMCQ8ZBt/pTEuIaDPV9lmB87RGU
3iy32pnus/u/bmIM48UUU0OQ1H4uVJatiqssjoGGgtAehFFx9wNjRaMFXZusPU7K
o/ARln99V0GyjXav57Y9
=nWDl
-----END PGP SIGNATURE-----
