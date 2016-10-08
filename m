X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1597" "Saturday" "8" "October" "2016" "11:29:44" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161008152944.DC87242E058@smtpvbsrv1.mitre.org>" "40" "[oss-security] Re: CVE request Qemu virtio-gpu: memory leak in virtio_gpu_resource_create_2d" nil nil nil "10" "2016100815:29:44" "[oss-security] Re: CVE request Qemu virtio-gpu: memory leak in virtio_gpu_resource_create_2d" (number mark "U       cve-assign@m Oct  8   40/1597  " thread-indent "\"[oss-security] Re: CVE request Qemu virtio-gpu: memory leak in virtio_gpu_resource_create_2d\"\n") "<alpine.LFD.2.20.1610071639580.8956@wniryva>" ("<alpine.LFD.2.20.1610071639580.8956@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17878 invoked by uid 550); 8 Oct 2016 15:29:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17857 invoked from network); 8 Oct 2016 15:29:59 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, liqiang6-s@360.cn
In-Reply-To: <alpine.LFD.2.20.1610071639580.8956@wniryva>
Message-Id: <20161008152944.DC87242E058@smtpvbsrv1.mitre.org>
Date: Sat,  8 Oct 2016 11:29:44 -0400 (EDT)
Subject: [oss-security] Re: CVE request Qemu virtio-gpu: memory leak in virtio_gpu_resource_create_2d

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the Virtio GPU Device support is vulnerable to
> a memory leakage issue. It could occur while processing virtio GPU command
> VIRTIO_GPU_CMD_RESOURCE_CREATE_2D.
> 
> A privileged user/process inside guest could use this flaw to exhaust host
> memory resulting in DoS.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-09/msg04129.html

Use CVE-2016-7994.

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

iQIcBAEBCAAGBQJX+RAeAAoJEHb/MwWLVhi2gn8P/2WXoxRXiXfBxIc5Yt2YZjoZ
+zqKhswXFESnQY3JC+qlkFVvg2sSoakc4gxkGHEx/2TOCVay4jQpw8hOU7njwEcA
kLgOLYeSjQ0OhsSQ/sC3PPTe81GFVbYx7oWr9DcL/gcwj+/Yu1FIuIzt/PbsAiUz
3l9j+TbNt98rhFgzmtFHzBRBhBgxQQZSFyFjpPTk4C9OJoiwygEifKAsdxOrA/WS
ZQciImoinC5tAFbAJws8CcXy2vO6evxeEynULX0KeoMneh5opMAZmnZmaTpccTb2
niLYlsPJivoDW1RxcXC2Bag29258PKq5A3j7Oo9GVvbGpa5EqAIVQOQGSuwg/Y+G
PAQ0KxWwdPDlY3Kl6kz0Pz7qGUzQrtNdGzy5IKdCB+INfh4zmDTiGwyNFprIH/dN
nSGbun+Xqi36K53a0quCxRzbudYGpiLzspWZmFml+Gn8Nx5O/6nCJCfQg0vRGBhD
FE80+vo06KR5RGqDUgyBvvqloRtc/S+RoWEuLeXJoRG53MgD6yFKY6hqYIvNePLX
yduwq534m0nR077H7r16z/oQJlcRid+nRjtHLATvUj2FSJ60OeP4YyorMGg04MLn
clotlx8GYkbBVBgNGuqxg6mKvb2Aks2wKRYU81R4gE9v/8BfIEErsQn4617iNu5T
VgECwvU7fbVvd5W1mQ3a
=9OnQ
-----END PGP SIGNATURE-----
