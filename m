Received: (qmail 24025 invoked by uid 550); 15 May 2026 19:31:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14000 invoked from network); 15 May 2026 13:39:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1778852360;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=q5qpOCBIcx3ivlUGknyEGkGOpArTk3pL6Qc4ZvW+g8U=;
	b=Ia6i7ng0o1i9o8dyOuDhJRPu+wsivn5MWuO231bPcL9xeVEtkyFIV2+2jgiTbQXcpTesPD
	4Wh2OoLYiCCOLfGoFxkn5gQaDMHG28N8+c+A3r3BiM8WxzNRvpJJxfhwt8BySuiC6aB+Xf
	eDefPRRqMGO07PE66zAER8EgT967uBWDuU0kOdVd2UB+kkb/n4iV1q+hL75RTrbs2VOHWu
	LvJzlb+79UwMYEl8i7+DkDpo/YHc9Qx9xZv2CiYMFYhD/tOmtJQzYywIT1q72GY8j3tzar
	nf1kxexyI1AdXjyEZ+TJa7C7N6+/9N2O8m99zsvh3z42gQ2AZv2dXHbVtixlwQ==
MIME-Version: 1.0
Date: Fri, 15 May 2026 10:39:19 -0300
From: Timothy Legge <timlegge@cpansec.org>
To: Cve Announce <cve-announce@security.metacpan.org>, Oss Security
 <oss-security@lists.openwall.com>
Message-ID: <3546de5aa970a9d414741b19bc56e499@cpansec.org>
X-Sender: timlegge@cpansec.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-GND-Sasl: timlegge@cpansec.org
X-GND-Score: -100
X-GND-Cause: dmFkZTFZyer6nSJJ/1w/cNmTBlHax1QC06GRtBW6/1nhM1TOZDlq1H5IDBmbHXq/Zt11R1bVQAX+Bv7hYiGv+l4zBmBWjThz7+gESMOfoMPZ1mlrD6EnCd+l3YAN1PjuxR3gyWzNRRXyEMa1fhClVaAtC26Xrq5xPGcBIs9ftIUvLWUumN5j+LIfQY0MiYvQfDQLuLB3vpcUznMs4ODfOAaz2Q41zXmbKpoRZf/Xg6/4+D+vRQ/S/UEFzzyopXUVz9SaciylJN+2H0s2hK5Uphii+W5aZdCLsOo+t/6Pk55gwmAZtIsF80TcsA920QuzNpnvUW4YcRK+SxykMXTGjtSgU4CfM5STcBrODBGaU3hqdezBGO0OJqwi7a/KukalrkXs38XyjuidhVGx8w7oDGT7pi39YY1TD/b+1e6Z5tH5GeHI+ZXT2m+y4vxvXRajAse48tqb9nvKllVjmeTf0uinos6cplqdP7VQW/fsa5AoceFBcG5sGnWqAjXwpVDw1jXc0sdCIQqOf2KLQb0hSsmJpPNqiYN4zLZyQqTXGphuVbHk7MDW4uJUCekmDnQzg4kWAuFtOIfOKH0++QZ+wxHSbk1B4b5tYV97M7kbZyaUyJg3XOP4q/KAQv2Ci9GHFvdXNwOLTvS0lO0JZr5Kj2kXFm1D05ng28docgRfg/jLypHZBg
X-GND-State: clean
Subject: [oss-security] CVE-2026-8669: Imager versions through 1.030 for Perl allow a heap
 out of bounds (OOB) write on crafted multi-frame GIF files

========================================================================
CVE-2026-8669                                        CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-8669
   Distribution:  Imager
       Versions:  through 1.030

       MetaCPAN:  https://metacpan.org/dist/Imager
       VCS Repo:  https://github.com/tonycoz/imager


Imager versions through 1.030 for Perl allow a heap out of bounds (OOB)
write on crafted multi-frame GIF files

Description
-----------
Imager versions through 1.030 for Perl allow a heap out of bounds (OOB)
write on crafted multi-frame GIF files.

Imager::File::GIF's i_readgif_multi_low allocates a single per-row
buffer GifRow sized for the GIF's global screen width 'SWidth' and
reuses it across every image in the file.

The page-match branch validates Image.Width + Image.Left > SWidth
before each DGifGetLine write, but the parallel skip-image branch at
imgif.c:790-805 calls DGifGetLine(GifFile, GifRow, Width) with no such
check.

Problem types
-------------
- CWE-787 Out-of-bounds Write

Solutions
---------
Upgrade to Imager 1.031.


References
----------
https://metacpan.org/release/TONYC/Imager-1.031/source/Changes
https://github.com/tonycoz/imager/commit/782e9c06cc75a0f7eed383f39522f51f44598b04.patch

Timeline
--------
- 2026-05-12: Issue identified
- 2026-05-13: Issue reported to maintainer
- 2026-05-14: Maintainer acknowledged the report
- 2026-05-15: Fixed version released
