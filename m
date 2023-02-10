Received: (qmail 18209 invoked by uid 550); 10 Feb 2023 22:04:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18182 invoked from network); 10 Feb 2023 22:04:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=netmeister.org;
	s=2023; t=1676065653;
	bh=JTniG+5E3Zozw3FEtEh4G+B398C2lJPm4T7dHPmR8So=;
	h=From:To:Subject:Content-Type:From:To:Subject;
	b=Jg57P6Iz5Vr/4+FBG0lxTCSOlpcQQ5aLpo7rGAvtOXdGSkAf1uwOkUsRot0CSWapx
	 KT+wzZj3Rh7srDvQHew8i2MS5YtP4+47Lf76xInjpuqcvRdC9acmrEhQiCl1EnV030
	 MmPsI/IVwqsP91MkF49rq7WE/ihsUWBqDP21qBUmhPht4PF8NkZ14WtvjqbSMG14Ts
	 Cy3fgqa5v7acHp+j1/M8U9ueVE0lZ78NDGsNwTIEyRkCs6SQ7Wu5+0GdaV+NVMaon/
	 g3GeSB2m59dFQzHYv6YOklhgSH16HfAEF7wvqiJkxnu2D3pL71jl7n6fb8nw4so4d8
	 l8xOwVrOQbi/A==
Date: Fri, 10 Feb 2023 16:47:33 -0500
From: Jan Schaumann <jschauma@netmeister.org>
To: oss-security@lists.openwall.com
Message-ID: <Y+a7dYG9Qm89wuij@netmeister.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] CVE-2023-25139: glibc-2.37 sprintf buffer overflow

Hi,

I just came across this and don't think I've seen a
note of it to this list:

CVE-2023-25139: a buffer overflow in sprintf(3) in
glibc-2.37:

https://sourceware.org/bugzilla/show_bug.cgi?id=30068

glibc-2.37 was released on 2023-02-01, so this isn't
going to be wide spread.

Fixed in
https://sourceware.org/git/?p=glibc.git;a=commitdiff;h=c980549cc6a1c03c23cc2fe3e7b0fe626a0364b0

-Jan
