X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2364" "Thursday" "29" "October" "2015" "14:56:45" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151029185645.DDCB16C0008@smtpvmsrv1.mitre.org>" "55" "[oss-security] Re: Heap overflow and endless loop in exfatfsck / exfat-utils" nil nil nil "10" "2015102918:56:45" "[oss-security] Re: Heap overflow and endless loop in exfatfsck / exfat-utils" (number mark "        cve-assign@m Oct 29   55/2364  " thread-indent "\"[oss-security] Re: Heap overflow and endless loop in exfatfsck / exfat-utils\"\n") "<20151024103116.4877253d@pc1>" ("<20151024103116.4877253d@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12237 invoked by uid 550); 29 Oct 2015 18:57:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12149 invoked from network); 29 Oct 2015 18:56:57 -0000
In-Reply-To: <20151024103116.4877253d@pc1>
Message-Id: <20151029185645.DDCB16C0008@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu, 29 Oct 2015 14:56:45 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Heap overflow and endless loop in exfatfsck / exfat-utils
To: hanno@hboeck.de

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blog.fuzzing-project.org/25-Heap-overflow-and-endless-loop-in-exfatfsck-exfat-utils.html
> https://github.com/relan/exfat/issues/5
> https://github.com/relan/exfat/commit/2e86ae5f81da11f11673d0546efb525af02b7786

Use CVE-2015-8026 for the "AddressSanitizer: heap-buffer-overflow ...
WRITE of size 110" report for the
exfatfsck-heap-overflow-write-verify_vbr_checksum file. If anyone
wants to show that another part of the
2e86ae5f81da11f11673d0546efb525af02b7786 commit fixed a different
vulnerability that wasn't reported in the
25-Heap-overflow-and-endless-loop-in-exfatfsck-exfat-utils.html post,
then a second CVE ID may be available.


> Another malformed input can cause an endless loop, leading to a
> possible denial of service.

> Especially at risk are systems that are configured to run filesystem
> checks automatically on external devices like USB flash drives.

>> Detect infinite loop in rootdir_size().
>> 
>> Otherwise malformed FS can cause hang on mount.

We don't feel that this endless-loop issue should necessarily have a
CVE ID. There may be some environments in which the attacker can cross
a privilege boundary by inserting a flash drive to trigger CPU
consumption and/or inability to complete the boot process. Often,
shutting off the computer would be an equally effective DoS.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWMmuCAAoJEL54rhJi8gl5RvcP/1kmWwmJ42pXPCgS3vCdyw6m
vhdeSg7CbeEQy6BarY6al6QFSaVOqkaHbRp90SnSC784TaVlquESMgDPzr3bR9aF
bHl1G+6GoLMMDMgpccWvWVY/R4J4EER1TEtuw/mQkI7I9K5+PXawtBDottQULCNh
AUuPsMr22o0mEGZYc8FUsQqX4iHHvMwCTNKDvEdC95zZHBSQjWi+B6zw+xcFfjnI
tx99ROQUTqbYph2jJ4je27R8HuqQ1Abus/oXCZ7sr/EjjVqs5Yd5jTUaTU2HCgUs
sJPFYqkBckepR/J46fzjdbJL2WKMQ9cbMCd6AW/NTc2vEwH47mSZwu1br+G92Omb
y9Nbs+jZok7/HBLfc48ST+OgiZmgQS06wvAHPUpej9OtMu643xF/ghWVP3PN9+Vm
Ls+QIigvfiS4HnRCxMi1WFLt6fzpnHmhqptf9PN5ItE9hPI4rkhRBPIRYw2gwVcB
onSZHfFH1FMxMHsqRaiNjIjOe3W2cazTlDJLQ/MmK+nWzDmbC9MBBEckTDOOENOA
WzDHd2RxcUvuV+L3LWB+t4l86i7v9JSfUm3iPar4BXyCS4jG+OxW8MrLSrxbWK0Y
vkWdQRdEZcRlIshXpbH57NuazyBEm+nTeGBeHRnYlAEGFB8m/Szk1gszLfKe0DWl
kbvKUr3QemUYT/s8tYrj
=LyLf
-----END PGP SIGNATURE-----
