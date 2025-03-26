Received: (qmail 14238 invoked by uid 550); 26 Mar 2025 14:58:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14200 invoked from network); 26 Mar 2025 14:58:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=notcom.org;
	s=jk; h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:Cc
	:Content-Transfer-Encoding:Content-ID:Content-Description:In-Reply-To:
	References; bh=t8CTORsCGecxG2uHyKd9qK8DciKa7ujzzKXeBMIEsnA=;
	i=b49a205f73f09af5fde31f6781a721d6b26ace42@notcom.org; t=1743001085;
	x=1743649085; b=nV9wdt9HnUZRDE9anOWfPZebQbx7lpBRZH6Gx8MAPQ++fg3zTzzOGi38T3FDi
	FdEMmWZNsTqkEf7zgVZmuYZtkbqjWQOC18XZ5gxKoUSm4jTHpxLThu+5VN49mKtUSmJa2nrlxfEXN
	Wui6knyrzNh+u+JYY3vR9ulgarF44C24oPGWmwDfSYw3r5SN67tT2YiI9ibGVEJl16fHtoDY32pVp
	yG/jAeLSE1uUs9x2CcRwzUHIMRj83uALIHPf4ue/cwPKZhE9qR02W6b2m5dzkUggjEpjzfRaZ10n7
	zhECNl1msf1VdBql48J8rSzPqxxT/0PjvcEeadS8eRGGvFBhbg==;
Date: Wed, 26 Mar 2025 16:57:48 +0200
From: Valtteri Vuorikoski <vuori@notcom.org>
To: oss-security@lists.openwall.com
Message-ID: <snxv44vulcov44kxrth6lpsxkarsaftrhgrn7dpil7em56y4bh@7pxdvapkdcxc>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20241002-60-525451
Subject: [oss-security] CVE-2025-30232: UAF in Exim 4.96 to 4.98.1

The Exim project has announced a potentially (locally-?)exploitable UAF in
versions 4.96 through 4.98.1.

Bulletin posted to <https://exim.org/static/doc/security/CVE-2025-30232.txt>:

> # CVE 2025-30232

> ## Timeline

> - 2025/03/13 Report received
> - 2025/03/18 ACK sent to reporter
> - 2025/03/19 CVE assigned
> - 2025/03/19 Distros heads-up mail, to <distros@vs.openwall.org> and <exim-maintainers@lists.exim.org>
> - 2025/03/21 14:00 UTC Security Release available for (only) Distros
> - 2025/03/25 14:00 UTC Public heads-up notification, to <exim-announce@lists.exim.org>
> - 2025/03/26 14:00 UTC Published the changes on https://code.exim.org/exim/exim.git


> ## Details

> A use-after-free is possible, with potential for privilege escalation.

> The following conditions have to be met for being vulnerable:

> - Exim Version
>      - 4.96
>      - 4.97
>      - 4.98
>      - 4.98.1
>  - Command-line access

> ## Acknowledgements

> Thanks to Trend Micro for reporting this issue in a responsible manner.
> - Ref: ZDI-CAN-26250
> - Email: <zdi-disclosures@trendmicro.com>

At least Debian bookworm ships with 4.96. Security tracker lists bookworm as
vulnerable with version 4.96-15+deb12u6, but apt upgrade just now installed
4.96-15+deb12u7 containing a binary dated 4 days ago from the security
repository.

 -Valtteri
 
