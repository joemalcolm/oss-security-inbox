Received: (qmail 1199 invoked by uid 550); 14 Feb 2025 14:41:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26278 invoked from network); 14 Feb 2025 10:11:56 -0000
From: "Yupeng(Roc)" <roc.yupeng@huawei.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] CVE-2025-23359: Nvidia-container-toolkit: GPU
 Container Escape (CVE-2024-0132 fix bypass)
Thread-Index: Adt+xJSbs4y8VfCjQa+AN94fKQd13w==
Date: Fri, 14 Feb 2025 10:11:43 +0000
Message-ID: <91d7ab89e90a440fbd60198705a7a59d@huawei.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.82.211.9]
Content-Type: multipart/alternative;
	boundary="_000_91d7ab89e90a440fbd60198705a7a59dhuaweicom_"
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-23359: Nvidia-container-toolkit: GPU
 Container Escape (CVE-2024-0132 fix bypass)

--_000_91d7ab89e90a440fbd60198705a7a59dhuaweicom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, I am interested in container security. Recently, I found a bypass of CV=
E-2024-0132 fix. The following gives the details.

Severity: Important
CVSS Score: 8.3 CVSS3.1/AV:N/AC:H/PR:N/UI:R/S:C/C:H/I:H/A:H

Affected versions:
- nvidia-container-toolkit >=3Dv1.0.0, <=3Dv1.17.3

Description:
In handling the CUDA Forward Compatibility feature, the NVIDIA Container To=
olkit's libnvidia-container library mounts files from the container's /usr/=
local/cuda/compat directory into the container's library directories (such =
as /usr/lib/x86_64-linux-gnu/). This mounting behavior is susceptible to sy=
mbolic link attacks, which can lead to arbitrary host directories being mou=
nted in read-only mode inside the container, potentially leading to contain=
er escape.

This vulnerability is a bypass of the fix for CVE-2024-0132(the first known=
 GPU-specific container escape).The fix for CVE-2024-0132 restricted scenar=
ios where the mount source is a symbolic link, but it can be bypassed throu=
gh shared volumes and race conditions.Given the widespread adoption of NVID=
IA Container Toolkit in AI/ML infrastructure, we suggest that this issue sh=
ould be addressed promptly.

This issue affects nvidia-container-toolkit: from the v1.0.0 version to v1.=
17.3. Users are recommended to upgrade to version v1.17.4,which fixes the i=
ssue, or use the CDI mode to mitigate.

Credit:
Lei Wang  <wanglei249@huawei.com<mailto:wanglei249@huawei.com>> (finder)

References:
https://nvidia.custhelp.com/app/answers/detail/a_id/5616


--_000_91d7ab89e90a440fbd60198705a7a59dhuaweicom_--
