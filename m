X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1817" "Monday" "30" "May" "2016" "19:14:11" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160530231411.B89C63320B3@smtpvbsrv1.mitre.org>" "45" "[oss-security] Re: CVE Request Qemu: block: iscsi: buffer overflow in iscsi_aio_ioctl" nil nil nil "5" "2016053023:14:11" "[oss-security] Re: CVE Request Qemu: block: iscsi: buffer overflow in iscsi_aio_ioctl" (number mark "U       cve-assign@m May 30   45/1817  " thread-indent "\"[oss-security] Re: CVE Request Qemu: block: iscsi: buffer overflow in iscsi_aio_ioctl\"\n") "<alpine.LFD.2.20.1605302310440.13154@wniryva>" ("<alpine.LFD.2.20.1605302310440.13154@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32737 invoked by uid 550); 30 May 2016 23:14:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32716 invoked from network); 30 May 2016 23:14:23 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <alpine.LFD.2.20.1605302310440.13154@wniryva>
Message-Id: <20160530231411.B89C63320B3@smtpvbsrv1.mitre.org>
Date: Mon, 30 May 2016 19:14:11 -0400 (EDT)
Subject: [oss-security] Re: CVE Request Qemu: block: iscsi: buffer overflow in iscsi_aio_ioctl

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the Block driver for iSCSI images(virtio-blk)
> support is vulnerable to a heap buffer overflow flaw. It could occur while
> processing iSCSI asynchronous I/O ioctl(2) calls.

> A user inside guest could use this flaw to crash the Qemu process resulting in
> DoS OR potentially leverage it to execute arbitrary code with privileges of
> the Qemu process on the host.

> https://bugzilla.redhat.com/show_bug.cgi?id=1340924
> https://lists.gnu.org/archive/html/qemu-block/2016-05/msg00779.html

>> at least in the path via virtio-blk the maximum size is not
>> restricted.

Use CVE-2016-5126.

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=block/iscsi.c but
that may be an expected place for a later update.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXTMkCAAoJEHb/MwWLVhi24uQQAJ4N5kMcseYpiFJFYmP8Ytmy
itkiZjCmNUWkPJqyIcYXCPK4Ro50yVRVenEem/9sgD9gRIQ+3qfTzEHKSnOqBAd8
s4cVhhqse3hY9JIk4x+Bt/p75siub51ulE00X2joAdcJZJsWqZpzW/luYUjaiuV7
7tWJ7PMZONe49nsc5mOe4c04QusPDCLyLXcVLKVKdthqQVp3vdWT/0i8GnvuTtQg
2kNOCRogxxZMHQnp5MwfujZ+BnwiHhMNgbaaM+LBou0eNhmST8AVwFAjRL4s0zeK
MguYFDQLocCFgHKGFolNY6536Sdh4s3tj3omN3gniZMhxtqNkOrJGcPV1Mti8UUU
sbbDyPrt/d63GIvBYNUNNWlE9rRsmnFn5pIhG30sLIdXOKNnK2RZO0mnQBBlXbUr
IrE0WCe4r6sLjL9BDcJPqteODgpM+8MQIHwTdUuTKT9/NWy2DRw14msNph9QYZFa
BjQQ8XrdbOrPqNO6awSax8ooUp9ZbqI3Blb5CYPgDRTslBdR85G9qzziEs7Yb9m2
Eb0LpZAuvCuye8iC2Maa116MrNXigMTMFt0hTBCvkLDFmhLmSbtY3DbIckTMErJN
F1H3iTFAIHdN9bOc185TZIGyYOSgfnAIEMEAk77Miajy2I9daKb6h6jU/mGeSuLs
EtF3PrQSiMjrSTr6a52D
=ZB0r
-----END PGP SIGNATURE-----
