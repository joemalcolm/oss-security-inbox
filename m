Received: (qmail 15923 invoked by uid 550); 18 Mar 2026 21:51:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 12218 invoked from network); 18 Mar 2026 21:09:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sanger.ac.uk; h=
	cc:content-type:date:from:message-id:mime-version:subject:to; s=
	sendkey1; bh=SpvRAHx9TgACLYkYxSm74+AQRwh1bifHgnjZSMER/PY=; b=EBq
	os+zKdtxdkoG/F3k4z9XGLi9tIQcK+OeMR7KZaPBHsIV3SxfmLE5erwvk5Ui9lZN
	4+z9ePTp30ov+r1DPof5Qm7YgrCwI6axb8dg757upHcSuypyQZCwwx/17hSX7k0H
	5tDJKUSGiMjutZ2DxYXztt4xqfBLImMpLFBHaCMXeK3znTgocVMf7i6oCgrh6CjA
	8uDJ5WyPjC84L0EU/p1LpA2JGul/CitQjgHegn9wilqU7o6OjFyYYu/m0LadcBmy
	zl6gmzkIxJjCOmYAW+9XSmN60IyAXLJrGdJno15rMCoVSktuFnoyDWV2jMZqYMPP
	NYX9xF/hPUDFdgIDYjQ==
Date: Wed, 18 Mar 2026 21:08:58 +0000 (GMT)
From: Robert Davies <rmd@sanger.ac.uk>
To: oss-security@lists.openwall.com
cc: samtools@sanger.ac.uk
Message-ID: <alpine.DEB.2.21.2603182050030.16613@seq4-head1.internal.sanger.ac.uk>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Authority-Analysis: v=2.4 cv=N/Ik1m9B c=1 sm=1 tr=0 ts=69bb146a cx=c_pps
 a=GB2mOsVFTDkI4gmwoe4Z0A==:117 a=GB2mOsVFTDkI4gmwoe4Z0A==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=x7bEGLp0ZPQA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=-A0x2dZHY_x99t24LF_B:22 a=_MkW9hIkd_p2jkqWG7xA:22
 a=NEAV23lmAAAA:8 a=8r2qhXULAAAA:8 a=aSR_xum1AAAA:8 a=lwDGWbeVAAAA:8
 a=6u3R76RUKJKq-6pqiYwA:9 a=CjuIK1q_8ugA:10 a=8gvLZcY7Nlvl4CGD_6nf:22
 a=dYLx_L0FrD5e4YvVJn9e:22
X-Proofpoint-GUID: gzq0cywQ27OApUqIiE6Nd7-R2b2DjWwT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDE4MiBTYWx0ZWRfX9boCjcuMADR5
 GHR1M0rEDubuL3s9R6mTUwpc6IaMOtps+H11eRv679x1e54IElni15zhYFnA8IlPD9Pyl2x3d/W
 mqnR2vaShHwIj3+H7IS+/WNDWnl3TcvvlwdHi3qP4exYeeikTbJETAZJ+t1rsDcb6vizgULSeLX
 SfKSHd1qon7zeUSTa+t2QG0ew5PZILmcSKz9OLnZFV2LcvhKXO0KJ0sl0uiLAcoU7ei+3JCjnYV
 98kC0DsY7fzDAAzzKuzxKoeKxZiUaDOXKXaqJnayhDZai2nylDihJyaRACGpeUVkPodGc48fOyt
 /IFBiie19Vz+TtD7cJvwVI3sBm9ML/iey3ZIEtHq1ogJ7JXeNe98dNqDCtSPzwodWxkNSCvt7G4
 28ENDc49Dp1w6CBvoC/UxX2xB/zANHTfcyCrnjwThtSBnVKrEAKdTGY/TwrESb+0LwrKfMvul+L
 I2BauPT1/0P7aS+XiwQ==
X-Proofpoint-ORIG-GUID: gzq0cywQ27OApUqIiE6Nd7-R2b2DjWwT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 priorityscore=1501 adultscore=0 clxscore=1034
 lowpriorityscore=0 malwarescore=0 spamscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180182
Subject: [oss-security] CVE-2026-31970: HTSlib <= 1.23 heap buffer overflow in the BGZF
 index file reader


Description
-----------

HTSlib is a library for reading and writing bioinformatics file formats.
GZI files are used to index block-compressed GZIP (BGZF) files. In the GZI
loading function, bgzf_index_load_hfile(), it was possible to trigger an
integer overflow, leading to an under- or zero-sized buffer being allocated
to store the index. Sixteen zero bytes would then be written to this buffer,
and, depending on the result of the overflow the rest of the file may also
be loaded into the buffer as well. If the function did attempt to load the
data, it would eventually fail due to not reading the expected number of
records, and then try to free the overflowed heap buffer.

Impact
------

Exploiting this bug causes a heap buffer overflow. If a user opens a file
crafted to exploit this issue, it could lead to the program crashing, or
overwriting of data and heap structures in ways not expected by the program.
It may be possible to use this to obtain arbitrary code execution.

Severity
--------

High CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:P/VC:N/VI:H/VA:L/SC:N/SI:N/SA:N

Patches
-------

Versions 1.23.1, 1.22.2 and 1.21.1 include fixes for this issue.

Workarounds
-----------

The easiest work-around is to discard any .gzi index files from untrusted
sources, and use the bgzip -r option to recreate them.

Credits
-------

Thanks to Harrison Green for reporting this issue.

References
----------

https://github.com/samtools/htslib/security/advisories/GHSA-p345-84hx-fq6q
https://www.cve.org/CVERecord?id=CVE-2026-31970

-- 

The SAMtools team   https://www.htslib.org/  https://www.sanger.ac.uk/


----------------------------------------------------------------------
The Wellcome Sanger Institute is operated by Genome Research Limited, a charity registered in England with number 1021457 and a company registered in England with number 2742969, whose registered office is Wellcome Sanger Institute, Wellcome Genome Campus, Hinxton, CB10 1SA.
