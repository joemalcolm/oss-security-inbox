Received: (qmail 22046 invoked by uid 550); 18 Mar 2026 21:52:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28254 invoked from network); 18 Mar 2026 21:12:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sanger.ac.uk; h=
	cc:content-type:date:from:message-id:mime-version:subject:to; s=
	sendkey1; bh=hPLfAdst/mbTypKdNgWm9UsKQqfPXStTo37niJ1jdPw=; b=XgV
	x96jqZnMZigU0i3tGxZP/Nn65Q/01j+nVeiCcLZpiSFzgb8VSYg6tYG1Ej6l96/6
	QR7h2X2lrBse1Ih9R1vb/m+eODTv5PxR7lkwjFxMmxg4XDVwwMIe4WbKUO9ZaJqk
	rddQqfE6nc56Z9RFF4h+SBWOdIuImh6tcUTHguwkk035Ia0SOoD7PfWblrx0lm/S
	CIKhcA8x82BpePVODFh/C9ObRxT5Dvj+6GMmBFIsmGsx/5NWvemoB33XwekT3MlF
	w74FcQzq8TvtGXxLqqJ5JoMDKsLaqDcuGf6Zkw+RvXhzr/dmR0QAYs3E5si/+8NS
	pTcEuSpSL1hayGjx37g==
Date: Wed, 18 Mar 2026 21:11:51 +0000 (GMT)
From: Robert Davies <rmd@sanger.ac.uk>
To: oss-security@lists.openwall.com
cc: samtools@sanger.ac.uk
Message-ID: <alpine.DEB.2.21.2603182111000.16613@seq4-head1.internal.sanger.ac.uk>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Authority-Analysis: v=2.4 cv=Ff86BZ+6 c=1 sm=1 tr=0 ts=69bb1517 cx=c_pps
 a=GB2mOsVFTDkI4gmwoe4Z0A==:117 a=GB2mOsVFTDkI4gmwoe4Z0A==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=x7bEGLp0ZPQA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=-A0x2dZHY_x99t24LF_B:22 a=SqGlxh888E26JpbS--mH:22
 a=NEAV23lmAAAA:8 a=8r2qhXULAAAA:8 a=aSR_xum1AAAA:8 a=lwDGWbeVAAAA:8
 a=5naRS2lNy6Zoj47MRxsA:9 a=CjuIK1q_8ugA:10 a=8gvLZcY7Nlvl4CGD_6nf:22
 a=dYLx_L0FrD5e4YvVJn9e:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDE4MyBTYWx0ZWRfXzZDJhzz5qlA7
 HEvOg3BAQehr0Qt4MafAgCIYApzO3nZZDB+3DzjT3lXIgLnvyVjLKgAEMdDWFXmmmXzUF6Fe3Iz
 s7Iq+92tnR1CPUPGxsoUgkG8PJ0/OAkX1/lSPHC1XMOKj7ZET+IQ/QOuaIz3pxrhlpeTmTGCedw
 Q4iDK6XH8wqb6aQtoB9N4abXukNVnTq49HpeRdOOycGTxXXBklhT45qx8d0q5IfZdhhmvoAm8lQ
 j2WWTTHsdXvZj4vRTVTSdnKI0wVCLbF3W6+22TpTsdi0s/1D8OjqVMNBF3vO7TTP2cPmhBc1g3b
 fzBFdhxjTDQZfQs9ZjWno8JUP02qTU1TcZ8Tqw4W09eRhB3Qhi8LCjPwNn6eXV4pxw1VljXzaV3
 r/hOfLwqu3CjkRgOhPW8Wof6YLZgOghN7UV0kJv/1/ZMtj0EEB9A2yWqxtaiBDI/Psoh7S6nPE9
 Nkdk0OictJ82Z53qaOw==
X-Proofpoint-GUID: q2xxDXTriVZFzajlkJ0hZJG9_UX5pa3r
X-Proofpoint-ORIG-GUID: q2xxDXTriVZFzajlkJ0hZJG9_UX5pa3r
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 bulkscore=0 impostorscore=0 phishscore=0
 lowpriorityscore=0 adultscore=0 malwarescore=0 clxscore=1034
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603180183
Subject: [oss-security] CVE-2026-31972: samtools <= 1.21 Use-after-free in mpileup leading
 to an invalid read



Description
-----------

SAMtools is a program for reading, manipulating and writing bioinformatics
file formats. The "mpileup" command outputs DNA sequences that have been
aligned against a known reference. On each output line it writes the
reference position, optionally the reference DNA base at that position
(obtained from a separate file) and all of the DNA bases that aligned to
that position. As the output is ordered by position, reference data that is
no longer needed is discarded once it has been printed out. Under certain
conditions the data could be discarded too early, leading to an attempt to
read from a pointer to freed memory.

Impact
------

This bug may allow information about program state to be leaked. It may also
cause a program crash through an attempt to access invalid memory.

Severity
--------

Moderate CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:L/VI:N/VA:L/SC:N/SI:N/SA:N

Patches
-------

This bug is fixed in versions 1.21.1 and 1.22

Workarounds
-----------

There is no workaround for this issue.

References
----------

https://github.com/samtools/samtools/security/advisories/GHSA-72c8-4jf3-f27p
https://www.cve.org/CVERecord?id=CVE-2026-31972

-- 

The SAMtools team   https://www.htslib.org/  https://www.sanger.ac.uk/


----------------------------------------------------------------------
The Wellcome Sanger Institute is operated by Genome Research Limited, a charity registered in England with number 1021457 and a company registered in England with number 2742969, whose registered office is Wellcome Sanger Institute, Wellcome Genome Campus, Hinxton, CB10 1SA.
