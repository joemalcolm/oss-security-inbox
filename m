X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1585" "Monday" "10" "October" "2016" "13:51:45" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161010175145.900E46C0754@smtpvmsrv1.mitre.org>" "40" "[oss-security] Re: CVE request: Qemu: 9pfs: host memory leakage in v9fs_read" nil nil nil "10" "2016101017:51:45" "[oss-security] Re: CVE request: Qemu: 9pfs: host memory leakage in v9fs_read" (number mark "U       cve-assign@m Oct 10   40/1585  " thread-indent "\"[oss-security] Re: CVE request: Qemu: 9pfs: host memory leakage in v9fs_read\"\n") "<alpine.LFD.2.20.1610101653450.27939@wniryva>" ("<alpine.LFD.2.20.1610101653450.27939@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32280 invoked by uid 550); 10 Oct 2016 17:51:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32258 invoked from network); 10 Oct 2016 17:51:57 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, liqiang6-s@360.cn
In-Reply-To: <alpine.LFD.2.20.1610101653450.27939@wniryva>
Message-Id: <20161010175145.900E46C0754@smtpvmsrv1.mitre.org>
Date: Mon, 10 Oct 2016 13:51:45 -0400 (EDT)
Subject: [oss-security] Re: CVE request: Qemu: 9pfs: host memory leakage in v9fs_read

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the virtio-9p back-end support is vulnerable
> to a memory leakage issue. It could occur while doing a I/O read operation in
> v9fs_read() routine.
> 
> A privileged user/process inside guest could use this flaw to crash the Qemu
> process instance resulting in DoS.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-09/msg07127.html

Use CVE-2016-8577.

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/9pfs/9p.c but
that may be an expected place for a later update.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX+9Q0AAoJEHb/MwWLVhi25+sQAIvJVq0jkV+yHeVKA95GPwuC
u1Khmdz9uLRHxSriWfHRM8P/lHHFaJ6YIS8Dn1BvcWh6b/96xkjML9uKl2O2Zmb/
EIJu2RZk4vKJV7+XGv2uKxxd+ysfMTCwSB5ktJh9id5fKSbLrMNsIRmrAty3CA98
+pW2HRSUFUdygfBB8Ubd2OAIdWL5Ggfd3zKC5CV0q77+qYTFiupXXZGgOr0Yxaky
7tsf/aviEJPraro5vWwC3Qtg12CEn+wz/WimFFi4P4ejDFUWPQOcIjMScvfIEwOT
0n+lzysBA0pU3okv0CVkq1WeG5eCuC5+sN40zWp3tlEGNRXQAsyY27uoMMT4qgAw
0lvLe77ZgXRsM3HbS8TfxhJy75dHyJTNymyWjfTRkdC1Gii3FyK2bpQuOeq8fnr3
v1FEqnhoPGSgzWSdjlu367gEZ78KuaLgD2qqmxyvUmum127dhiBkGmhSqSSCbmNd
NVWAzXeKWUbZv0jT4qigZ/68zXCoRdXUBCe4hsknjevAUA+h/wI/L8KB1rQC4gw9
ZZAtUotefB67bfMSdMsVLT6e2aR6laBrwOTttqf6dDStTgVeeSfpmUezaD7nXv92
1gihMM+4S7HM8wJVjd1c415Q25Vtk72S/1hpuEQse24tbcs5bfXLWrvhHjWXUCBJ
LY2WgmOMb06yZp0j8SJs
=8uAy
-----END PGP SIGNATURE-----
