X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1648" "Sunday" "30" "October" "2016" "15:41:46" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<6aa34810a3694877b8edb2afbfb85e00@imshyb02.MITRE.ORG>" "40" "[oss-security] Re: CVE request  Qemu: 9pfs: information leakage via xattribute" nil nil nil "10" "2016103019:41:46" "[oss-security] Re: CVE request Qemu: 9pfs: information leakage via xattribute" (number mark "U       cve-assign@m Oct 30   40/1648  " thread-indent "\"[oss-security] Re: CVE request  Qemu: 9pfs: information leakage via xattribute\"\n") "<alpine.LFD.2.20.1610281122370.12679@wniryva>" ("<alpine.LFD.2.20.1610281122370.12679@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28400 invoked by uid 550); 30 Oct 2016 19:41:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28336 invoked from network); 30 Oct 2016 19:41:58 -0000
From: <cve-assign@mitre.org>
To: <ppandit@redhat.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<liqiang6-s@360.cn>
In-Reply-To: <alpine.LFD.2.20.1610281122370.12679@wniryva>
Message-ID: <6aa34810a3694877b8edb2afbfb85e00@imshyb02.MITRE.ORG>
Date: Sun, 30 Oct 2016 15:41:46 -0400
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request  Qemu: 9pfs: information leakage via xattribute

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the VirtFS, host directory sharing via Plan 9
> File System(9pfs) support, is vulnerable to an information leakage issue. It
> could occur by accessing xattribute value before it's written to.
> 
> A privileged user inside guest could use this flaw to leak host memory bytes.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-10/msg01790.html
> http://git.qemu.org/?p=qemu.git;a=commit;h=eb687602853b4ae656e9236ee4222609f3a6887d

>> if the guest
>> reads this memory before writing to it, this will leak host heap memory
>> to the guest.

Use CVE-2016-9103.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYFktzAAoJEHb/MwWLVhi2bhYQAIL6yUfJTuXN+dfnWKCuqg/Z
eFf9ZkNoPojFWIe8c/++zXZB7OIdfWBQS3L8cPDGOGersI0AqCbgIfwPtrSkYUAK
xpqjCQnCMM0Rwcz+vzDkG5WgxsJbaykOaiScWooupXdcbVcun15+la34gDayztRg
7ZadVB/h+aEMX0G9OVhqb0Iw8AD6fmWbGIxY2+1ecb16FJbd2E48MYMMiud/QDRo
Map9XS688v5vpEyoxSVXOP2lYlhu7mR2SvCnIBmk8vIFM3rW+bdZIJ1O38xunHRY
kcPcwsArnzM+9Ww9zQL//Saf7U8dDkbt7GXVfngj7I5hedq9FhiJnDIgFoHjhveN
9tMSWtJ5GlxfaxLBY17gn2qVD8ufwUTDHzCKM+JIulefDvTA+JmC4OHtUJASRq0r
gx3uzimWNp08aROJsl2YWVszi43IHjVh2Md3+o8gzbH9X7Z4dsU9IBefwN4fbypH
W6FKbWLBHlndLUxTrtdehDpqK8B2AX9iP/dLPrLMfTVS/4v7sWUmwBV6AEYrBAqo
LjuOHfu8RTbBFhXd04mqNl/hErpb+dmPIgnBydx9AXaVnwAaXXZn6qc535s3sblq
CBgxX9jwShg+bjfSc42QHNE3ysrE96YQHkT16hWMxUbc2pzA9iVdpJsOZBnQNj5f
z7ekgfP+KudJuOrXXZME
=Hcjr
-----END PGP SIGNATURE-----
