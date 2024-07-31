Received: (qmail 13405 invoked by uid 550); 31 Jul 2024 09:42:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13378 invoked from network); 31 Jul 2024 09:42:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=notcom.org;
	s=jk; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:
	To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description; bh=PKQq/XRodWguSQaezFnpC4xQWPDNJWyoCgFKAqmopHQ=;
	i=b49a205f73f09af5fde31f6781a721d6b26ace42@notcom.org; t=1722418940;
	x=1723066940; b=AQ9s7/hIdNF4hLdhdjitF0GWRTrpoa3HFwmvHaPZ8tEmbW5GLNy/OI0VXY0d2
	LDrw+SKGa889gkVHQqzkU73OPT22PgX22aXlxkLR/BZKj8ivIKzP7dksVuvUanLVR0L4UBtDqBH55
	v2me7j0gaNeLKoxvFX++BNN4Vp7aX1LOzpbKUGFGHD/Mwc40NudpQXV18YOuJkIut1zbbcL1J6sLT
	WbofvjeHvO1mKLAQzm0uh2mhudRwFOta70CotFIam3tJUMNXHUfZUZofV8c/EhVb9O3o/9ATYTRMM
	PPVmBg0pxUni01iNnRexl2LJ6/98cdE/yZhorXONYagFD7NAOQ==;
Date: Wed, 31 Jul 2024 12:41:59 +0300
From: Valtteri Vuorikoski <vuori@notcom.org>
To: oss-security@lists.openwall.com
Message-ID: <hwkl4p4igeqk2j2du4handrhtdcm2loitv6xdeozz3w4c5t3ul@ksr2ahgumsxi>
Mail-Followup-To: oss-security@lists.openwall.com
References: <2129473434.508234.1721743147880.JavaMail.zimbra@isc.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2129473434.508234.1721743147880.JavaMail.zimbra@isc.org>
User-Agent: NeoMutt/20240323-4-c04f3b
Subject: Re: [oss-security] ISC has disclosed four vulnerabilities in BIND 9
 (CVE-2024-0760, CVE-2024-1737, CVE-2024-1975, CVE-2024-4076)

On Tue, Jul 23, 2024 at 01:59:07PM +0000, Aram Sargsyan wrote:
> On 23 July 2024 we (Internet Systems Consortium) disclosed four vulnerabilities affecting our BIND 9 software:
> 
> - CVE-2024-1975:        SIG(0) can be used to exhaust CPU resources https://kb.isc.org/docs/cve-2024-1975

Note to anyone running 9.18 series (which means at least all Debian 12
installations) that the "fix" for this CVE in that branch is the complete
removal of SIG(0) dynamic DNS update support. Not just a disabled-by-default
config option, but the actual removal of the relevant code.

The actual mitigation for the issue is only available in the 9.20 series.

IMO this seems like a rather drastic way of doing things for a 0.0.1 patch
release to a purportedly stable branch. Anyway reverting
https://github.com/isc-projects/bind9/commit/bef3d2cca3552100bbe44790c8c1a4f5bef06798
restores SIG(0) support (along with the vulnerability) for those who prefer to
live dangerously.

 -Valtteri
 
