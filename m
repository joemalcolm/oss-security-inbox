Received: (qmail 24350 invoked by uid 550); 18 Mar 2026 01:06:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24299 invoked from network); 18 Mar 2026 01:06:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=orlitzky.com; s=mail2;
	t=1773795986; bh=+4+Phl+DuVsr8M5EICIL8/hSKTXam0yaQrvEONss/8s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Qqqk9BZgn78L/KFx2ZNr4n22p4NLLw9HLlkCQjs2+jqjPuRHoIexBzPECe6BhtEKM
	 SzSrrdnJ1dJyQc5kNqjQKm5tSFHYJKE8LUrYn/Xmmj+5Z8+a4YR8Bbs3erOpGKG1dc
	 NDcDvswKJHrf5q+oB1S6tC8ZEJVqwzUaxwYA6Lk4=
Date: Tue, 17 Mar 2026 21:06:24 -0400
From: Michael Orlitzky <michael@orlitzky.com>
To: oss-security@lists.openwall.com
Cc: qsa@qualys.com
Message-ID: <abn6kAVrLGHG6kpo@mertle>
References: <20260317193301.GA1285@localhost.localdomain>
 <CALx_OUC5-oQsU630zpth=pCShZ+cT6jEBTnpxnRDMHa3TYjkKg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CALx_OUC5-oQsU630zpth=pCShZ+cT6jEBTnpxnRDMHa3TYjkKg@mail.gmail.com>
Subject: Re: [oss-security] snap-confine + systemd-tmpfiles = root
 (CVE-2026-3888)

On 2026-03-17 13:58:17, Michal Zalewski wrote:
> Nice work... flashbacks from 2002
> (https://lcamtuf.coredump.cx/tmp_paper.txt). It's frankly somewhat
> mind-boggling that distros keep a world-writable /tmp this day and
> age. Whatever questionable benefits it has, it also contributed to
> plenty of pointless and easily avoidable vulns.

It's required by POSIX which, funny enough, forbids /tmp from being
used the way snap-confine is using it. I wouldn't expect either of
these projects to care about POSIX, but the same description was
copied & pasted into the FHS. And to its credit, systemd has a
page full of documentation on how to avoid this exact problem.

1. https://pubs.opengroup.org/onlinepubs/9799919799/basedefs/V1_chap10.html
2. https://refspecs.linuxfoundation.org/FHS_3.0/fhs/ch03s18.html
3. https://systemd.io/TEMPORARY_DIRECTORIES/
