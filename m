X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1861" "Monday" "18" "April" "2016" "12:12:41" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160418161241.6E4973AE019@smtpvbsrv1.mitre.org>" "45" "[oss-security] Re: CVE request - samsumg android phone msm_sensor_config function write some range kernel address with any value" nil nil nil "4" "2016041816:12:41" "[oss-security] Re: CVE request - samsumg android phone msm_sensor_config function write some range kernel address with any value" (number mark "U       cve-assign@m Apr 18   45/1861  " thread-indent "\"[oss-security] Re: CVE request - samsumg android phone msm_sensor_config function write some range kernel address with any value\"\n") "<CAODc34+BJ7bSmCJfe7g6jjAj+xDfj0ZyZCrUuiM7f_Gs1+XbYQ@mail.gmail.com>" ("<CAODc34+BJ7bSmCJfe7g6jjAj+xDfj0ZyZCrUuiM7f_Gs1+XbYQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26303 invoked by uid 550); 18 Apr 2016 16:12:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26285 invoked from network); 18 Apr 2016 16:12:53 -0000
From: cve-assign@mitre.org
To: throber3@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CAODc34+BJ7bSmCJfe7g6jjAj+xDfj0ZyZCrUuiM7f_Gs1+XbYQ@mail.gmail.com>
Message-Id: <20160418161241.6E4973AE019@smtpvbsrv1.mitre.org>
Date: Mon, 18 Apr 2016 12:12:41 -0400 (EDT)
Subject: [oss-security] Re: CVE request - samsumg android phone msm_sensor_config function write some range kernel address with any value

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

>             The v4l-subdev driver provides an ioctl system call
> interface to user space clients for communication. When processing
> this communication, the msm_sensor_config function uses the
> user-supplied value gpio_config.gpio_name as an index to a buffer for
> write operations without any boundary checks.
> 
> kernel/SM-G9008V_CHN_KK_Opensource/Kernel/drivers/media/platform/msm/camera_v2/sensor/msm_sensor.c
> 
> msm_sensor_config
> 
>              fix:
>              http://security.samsungmobile.com/smrupdate.html#SMR-JAN-2016
>              SVE-2015-4958: msm_sensor_config security issues

>> A vulnerability using without checking the boundary of buffers can
>> lead to memory corruption. The applied patch avoids an illegal access
>> to memory by checking the boundary.

Use CVE-2016-4038.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXFQcVAAoJEHb/MwWLVhi29+4QAJqIKrKg3nHrIRLo3As2XVYk
XRR2wf3C5QNOiUxF9O8GNmjY7AFsmKt7PiqRJ2wlHhz1zk/+eTuun3DTaGvE16Ni
ouaNJ+4CQExCOrXKaVfjvbIvg7eWKfh6BZpF0aimIF2I6YhDC8ndc9zT/1HZhwkM
u44A+HlJWuS9a0msUImOatTr3HKpE1bmaFDmUwH9GkhHYm/6juypbXLXVeeyKS+1
P7qyzF5pTl9ODwtY7zIu+wfL0x3oDkxg9Gi/JU1XIpfixxIeLmtp6UOFfE9+8Wgo
HR9hITU61KLtjd/db+5l24KyqpTOQkhOCfxi1tm1bX5EozlfCGReLQMBK6toloKL
isxDO1oUREc2gmoT2GXvMzqkqaVV5J5qZ69bKBX/Y2BPIZ+U7woVE7Ctdj0TTX1v
Y5cLdude4R02gqmIEopW0EgkAW34pU2izlur5V006O01HuKpywPwdNAEJbAcbcT8
fagMDmE+eQsyfjbrualJv/BfxlnmxMdhAzsUPzZbRVXnxGmwDlE/mtFvKsc1K4hc
KrFCurxRAGufI1nXXZT1YY6DRStFKts2gSxJJbYoip49T8f8B+cUfD7rdDyBLGjr
80f4dof6KZFXr9aoq6Dfn4c1+DtfSZUx59+nb8Dv1hK2cYQiP/ZfYFG3bPZ30jfu
2Ha3vXCFz5R/FR0vUywf
=pyJr
-----END PGP SIGNATURE-----
