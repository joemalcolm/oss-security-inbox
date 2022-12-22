Received: (qmail 13462 invoked by uid 550); 22 Dec 2022 21:49:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13439 invoked from network); 22 Dec 2022 21:49:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=netmeister.org;
	s=2022; t=1671745744;
	bh=AvdHyuUoaK4yrOXqMDEsaAHP3zT1baNgKSeNbHUni4o=;
	h=From:To:Subject:Content-Type:From:To:Subject;
	b=3pgr9g8pNeAyhCxR3/sqO2dQ6WO1FwmdbAzIlY5SV9MUXgNdpLfbvVIeNAqLpeuE/
	 NP8H9yhgILDmTUi/nMFwhurpIGe2cscBiPQv0RNJrGvumaQME4dZAL/lnt1GGuVuMW
	 OWkA46tisxwz1sxemeEMiXkbtV+bjCIZNzXjm5y8ze91Fr3cB4Drq6ZVSNDy/RPP5+
	 75/NAFMM+VsS7Jk111fYA7ZrNn3CVFQ6biN3WJbSaWuMT4OxAssnUZgR/652kkxbc2
	 PtcoMvIsmkVUFyD5HX/0EplHDLtJ4W51Pmp+8r+WjdKhLNNCnbQqEqDaH4P6QSxPT7
	 MZIn4PpoQ3RzA==
Date: Thu, 22 Dec 2022 16:49:04 -0500
From: Jan Schaumann <jschauma@netmeister.org>
To: oss-security@lists.openwall.com
Message-ID: <Y6TQ0HyCJOMkKSDn@netmeister.org>
References: <CAKoP-y-rbU=xEowJGp6my0khWMSbE05+ncDiE3wtXTOWwvyScA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKoP-y-rbU=xEowJGp6my0khWMSbE05+ncDiE3wtXTOWwvyScA@mail.gmail.com>
Subject: Re: [oss-security] Details on this supposed Linux Kernel ksmbd RCE

Josh Bressers <josh@bress.net> wrote:
 
> I was wondering if anyone on the list has additional details about this ZDI
> advisory
> https://www.zerodayinitiative.com/advisories/ZDI-22-1690/
> 
> There aren't many usable details at the moment

Agreed.

The advisories link to a changelog in
https://cdn.kernel.org/pub/linux/kernel/v5.x/ChangeLog-5.15.61
but it's unclear (to me) whether that implies v6.x
kernels are not affected?

Note also that this disclosure is accompanied by a few
others:

Authenticated remote information disclosure:
https://www.zerodayinitiative.com/advisories/ZDI-22-1691/

Unauthenticated remote DoS:
https://www.zerodayinitiative.com/advisories/ZDI-22-1687/

Authenticated RCE:
https://www.zerodayinitiative.com/advisories/ZDI-22-1688/

Authenticated DoS:
https://www.zerodayinitiative.com/advisories/ZDI-22-1689/

Lastly, given that this is a coordinated disclosure,
I don't know why there are no CVE IDs reserved for
these.

-Jan
