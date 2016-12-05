X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1788" "Monday" "5" "December" "2016" "17:15:50" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<8aa9957b29ca4fc4a2502885a96db887@imshyb02.MITRE.ORG>" "44" "[oss-security] Re: CVE request: Qemu: display: virtio-gpu-3d: information leakage in virgl_cmd_get_capset_info" nil nil nil "12" "2016120522:15:50" "[oss-security] Re: CVE request: Qemu: display: virtio-gpu-3d: information leakage in virgl_cmd_get_capset_info" (number mark "U       cve-assign@m Dec  5   44/1788  " thread-indent "\"[oss-security] Re: CVE request: Qemu: display: virtio-gpu-3d: information leakage in virgl_cmd_get_capset_info\"\n") "<alpine.LFD.2.20.1612060030210.20462@wniryva>" ("<alpine.LFD.2.20.1612060030210.20462@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17892 invoked by uid 550); 5 Dec 2016 22:16:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17874 invoked from network); 5 Dec 2016 22:16:02 -0000
From: <cve-assign@mitre.org>
To: <ppandit@redhat.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<liq3ea@gmail.com>
In-Reply-To: <alpine.LFD.2.20.1612060030210.20462@wniryva>
Message-ID: <8aa9957b29ca4fc4a2502885a96db887@imshyb02.MITRE.ORG>
Date: Mon, 5 Dec 2016 17:15:50 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request: Qemu: display: virtio-gpu-3d: information leakage in virgl_cmd_get_capset_info

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator built with the Virtio GPU Device emulator support is vulnerable
> to an information leakage issue. It could occur while processing
> 'VIRTIO_GPU_CMD_GET_CAPSET_INFO' command.
> 
> A guest user/process could use this flaw to leak contents of the host memory
> bytes.
> 
> https://lists.nongnu.org/archive/html/qemu-devel/2016-11/msg00019.html

>> In virgl_cmd_get_capset_info dispatch function, the 'resp' hasn't
>> been full initialized before writing to the guest. This will leak
>> the 'resp.padding' and 'resp.hdr.padding' fieds to the guest.

Use CVE-2016-9845.

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

iQIcBAEBCAAGBQJYReVgAAoJEHb/MwWLVhi24FUP/2ilkbP1yXJnQcYM4TMeEG2x
rzsLbOdftyTIQmSs0o71LKngtkAtCQaq4F9fW2N0/ujJyOyIGA/frcFwbky9x1Ch
mOSH8eZcKPT7rENJ0E8IRYcRlaXtyLe8p1nR/SWCerw4fCZORHAKxffSJX8H64Y0
qJyDwpJ1ws2YJ6eoU892mPygvh7QT6fphBAyiz4bTNCk5yGRTjYDrkoeGfz6fjjP
BWy5P+8Pv0937Gl3z1h9Fqbo87ab3nQ5b0VdWSmNDuheam0/gBLZkRiDmGy6mxca
niUv/7kv8xKV0IafzBwW+X8LY+kbcsA/oPWUkKdhGMyUTLb8WGO4iUpgT3HaD3Om
9M0kZzBGYSIuhmZj1EW0PXxXQAdaDk1Y2IHqLrY1DSM3t78yfAPRKbIDAI9hPVW9
RUuHtIVH7FSpckejg+UEBlheOM3k4z5pv03m3gkKk2IjUnSo5hDVGgVMjGQheKvV
1S4q9zr57+DAq8ugIv0vfRWv7ty3yRgqEfJv8ijXAg4cLQqzS8DyXZMvuD9GKnMl
UWroxU8MoE4MC2wbpGUfMnXpsCxltha80tW3VYj10XiHRHYp1HqambvlEfEBB6wc
X4jX/HNnbcQqdKRn7MUHg2B+Kn5HXFCaVPWxPJKV4bk6FFX4S3VpKd1j9fe9O71o
lLdrMfpXM7v/fBTScHVo
=Boh/
-----END PGP SIGNATURE-----
