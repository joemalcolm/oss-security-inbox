Received: (qmail 24081 invoked by uid 550); 18 Mar 2026 21:52:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1082 invoked from network); 18 Mar 2026 21:13:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sanger.ac.uk; h=
	cc:content-type:date:from:message-id:mime-version:subject:to; s=
	sendkey1; bh=XaDUbpswRqKN+4GvlG4MJMZktjCm2p2w64voC6m7TXc=; b=2Fl
	pqf5qUFs25HOonlZPRD9qPSn89e+Ll9r1gdz/ldaJpJCEszYdIT6wf8LMI1c6rIf
	mEC32DB3fsMyNhA0Q7vEflghgex90YNtwkk//8qc5O9TZsCzocgJY0KYYFR8GHsh
	lxeNKwUPML+K0OtRiQxLSx0WJ6at7Lz/rWRVsn2DBCMGr5vxgQjpI0Jmie4ry9NK
	soBSd6i/DLo0lwnG80PX+SxHkaN/OnxVG1j7iR3z/UUwne0ShccdBQAD2kuTAXFt
	Mc72OJoLXTeJxemTREq4tRT8KpwMUYGotq41bxNXfYM+9B2IQDwNvCR1TBNQcSQ1
	jSV+T9q9IcFCM7gTLwA==
Date: Wed, 18 Mar 2026 21:13:05 +0000 (GMT)
From: Robert Davies <rmd@sanger.ac.uk>
To: oss-security@lists.openwall.com
cc: samtools@sanger.ac.uk
Message-ID: <alpine.DEB.2.21.2603182112090.16613@seq4-head1.internal.sanger.ac.uk>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Authority-Analysis: v=2.4 cv=N/Ik1m9B c=1 sm=1 tr=0 ts=69bb1562 cx=c_pps
 a=GB2mOsVFTDkI4gmwoe4Z0A==:117 a=GB2mOsVFTDkI4gmwoe4Z0A==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=x7bEGLp0ZPQA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=-A0x2dZHY_x99t24LF_B:22 a=_MkW9hIkd_p2jkqWG7xA:22
 a=NEAV23lmAAAA:8 a=8r2qhXULAAAA:8 a=aSR_xum1AAAA:8 a=lwDGWbeVAAAA:8
 a=HD1105xUHnsDwKqtXK4A:9 a=CjuIK1q_8ugA:10 a=ZXulRonScM0A:10
 a=8gvLZcY7Nlvl4CGD_6nf:22 a=dYLx_L0FrD5e4YvVJn9e:22
X-Proofpoint-GUID: 86goPbGGtrraJRwFQ4tDDcDhff_IL4MG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDE4MyBTYWx0ZWRfX5nIVbSK4E/H5
 MxL+i1tDey1SMqwAF2n91jx6K9AOsp3qfgre0aLVUKV+e60MVxg+QbwT4Lf05hksaaluiymFV8d
 thjmz8tB29Y1ZfGR12Zfb8loQM43oE93To0GzV75gqNW4Z3kmXG1sDKYRalhr1kvV7XU9RFkDp4
 UKjDnObMjvSvLFYrn8tzD+xopCGHsa1Z9kFTJC5nqepGhPbQ2qa5hqFLlRohqiSzSLUhQwjralP
 Nv2giCXnW9JLf9xG/ldEKLJxb1pBKx1wGl5ySBhWnyDSrMZQAsPfbqWqFyOfV3vPj4rX02delda
 R+5fiJEpQXjgJCOCkylc2gKc5Cic0eStvJnavTAk7DUtYbyaYqlWocgNGsq7vrvQNsLpjW0nmLn
 Wl+pdTp1+f916Hpy7tmWV2IeC5DgENBDkbgpF2HsRNfNvbsgNtjYjI7ZPY8zFraGe+RPFcbE7cz
 UK16FoJdYDT7sdVO0Gw==
X-Proofpoint-ORIG-GUID: 86goPbGGtrraJRwFQ4tDDcDhff_IL4MG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 priorityscore=1501 adultscore=0 clxscore=1034
 lowpriorityscore=0 malwarescore=0 spamscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180183
Subject: [oss-security] CVE-2026-31973: samtools <= 1.23 NULL pointer dereference in
 cram-size


Description
-----------

SAMtools is a program for reading, manipulating and writing bioinformatics
file formats. In the "cram-size" command, used to write information about
how well CRAM files are compressed, a check to see if the
cram_decode_compression_header() was missing. If the function returned an
error, this could lead to a NULL pointer dereference.

Impact
------

Exploiting this bug causes a NULL pointer dereference. Typically this will
cause the program to crash.

Severity
--------

Moderate CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/VI:L/VA:L/SC:N/SI:N/SA:N

Patches
-------

Versions 1.23.1, 1.22.2 and 1.21.1 include fixes for this issue.

Workarounds
-----------

There is no workaround for this issue.

References
----------

https://github.com/samtools/samtools/security/advisories/GHSA-x86f-q6fj-cm43
https://www.cve.org/CVERecord?id=CVE-2026-31973

-- 

The SAMtools team   https://www.htslib.org/  https://www.sanger.ac.uk/


----------------------------------------------------------------------
The Wellcome Sanger Institute is operated by Genome Research Limited, a charity registered in England with number 1021457 and a company registered in England with number 2742969, whose registered office is Wellcome Sanger Institute, Wellcome Genome Campus, Hinxton, CB10 1SA.
