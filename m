Received: (qmail 17808 invoked by uid 550); 21 Apr 2025 17:46:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17775 invoked from network); 21 Apr 2025 17:46:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=notcom.org;
	s=jk; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:
	To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description; bh=wY3I/jhgX09rLTvphPg1EMw5kQ1EQMR+n8Y2b0hHxBU=;
	i=b49a205f73f09af5fde31f6781a721d6b26ace42@notcom.org; t=1745257568;
	x=1745905568; b=yqPEgyLkjeaeSKt6Fmtv/4yDxYDYGubRrMpyFYEJhlk5/sDO0/LAcpUAv/7hK
	EqzgV89Re3pQUHXmoV0l9SkjpsDEzAre3kxpDUwizsHLCuYZBHRoD3gxjG+dEheGbioxQVYfiuudy
	Y9B2pMFupMLqSZnrTEwFPPfZahwqbkVt2NkOMpdhUABOwTmdskKADUGrlsYEmn5DXdnPfv09hjso2
	el8Eabw3e/hlc8Ocl5OdNjb5xHABkcxibfCKEmvZhbSmPDybwf9uT9486WNblePiLYf63qU71kxm+
	/K9whVeVN3BxfPTW2AgKf7W6O3g6hzfhyIjaDuje26TVX4tjhQ==;
Date: Mon, 21 Apr 2025 20:45:55 +0300
From: Valtteri Vuorikoski <vuori@notcom.org>
To: oss-security@lists.openwall.com
Message-ID: <66imbuhbqi4yjbtmpmvvri7sttmw3tmhtemh6pqjcp5kazdai3@cbzrad3k7t4l>
Mail-Followup-To: oss-security@lists.openwall.com
References: <62e9c3e0-dd06-4d88-8192-1d0add89d0c8@oracle.com>
 <ewvs55pqvqybv7telryghfmp4sypf2rcjximilprzn5a3pkaie@vcsibbkueub3>
 <43f96a10-24af-423b-bb21-f2f4001f5ed9@thomas-ward.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <43f96a10-24af-423b-bb21-f2f4001f5ed9@thomas-ward.net>
User-Agent: NeoMutt/20241002-60-525451
Subject: Re: [oss-security] 3 new CVE's in old branch of GNU mailman

On Mon, Apr 21, 2025 at 12:52:24PM -0400, Thomas Ward wrote:
> Direct quoting the CVE:
> 
> > *Affected Software:* GNU Mailman 2.1.39 (bundled with cPanel/WHM)
> 
> I think that this would be a modified bundled version based on "Affected
> Software" specifically mentioning the GNU Mailman 2.1.39 that is
> specifically bundled with cPanel/WHM.
> 
> Especially if you can't reproduce it in pure MM 2.1.39.

Yes, it says that, but IMO the wording in these CVEs could be a lot less
ambiguous. The focus of the text is on "GNU Mailman" and I don't think it's very
clear whether the parenthesized "bundled with" bit means that:

a) The vulnerability exists in mainline GNU Mailman, but it was discovered while
probing cPanel and/or reported through that vendor;

b) The vulnerability exists in mainline GNU Mailman, but is only exposed when
it is installed in a certain manner, which happens to be how cPanel does it,
but could also happen elsewhere; or

c) The vulnerability does not exist in the mainline version, but is due to
additional code authored by cPanel LLC.

So at the moment it seems to me that the correct interpretation is c). Hard to
tell because the modified source doesn't seem to be available in despite Mailman
being GPL. Maybe someone needs to ask cPanel LLC to mail them a CD?

I think this distinction is relevant because there are unfortunately quite a few
Mailman 2 instances still running despite its EOL status. I looked through the
mainline code a bit and luckily (again IMO) the codebase appears reasonably
security-conscious especially given its fairly advanced age, modulo a few nits
(likely non-consequential, but in particularly the method called do_command
(there's only one) may warrant scrutiny).

 -Valtteri
 
