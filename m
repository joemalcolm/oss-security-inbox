Received: (qmail 8079 invoked by uid 550); 28 Mar 2026 17:40:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5286 invoked from network); 28 Mar 2026 05:55:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1774677313;
	bh=TYmcocbvQJbwCXg9ipnB50gdM+xHLgFCfxK5fIj/pEk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=airIqlx1gDgSBrNpYmjO5JIgkQez81z9TDtJMsQ/LetSpqtsr6tUP1XB4BmrGbQ7f
	 Eoj1bLEKxQNlSyCF4K3y6xqmWiSrswShzL+z/6x8kxO6pIV75GZfDPkgPhsCaoF4Bp
	 7j+SRA66PHzRV+peAqIMSsx1BVIc5D+5luMptVlo=
Date: Sat, 28 Mar 2026 06:55:08 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Qualys Security Advisory <qsa@qualys.com>
Cc: John Johansen <john.johansen@canonical.com>,
	"cve@kernel.org" <cve@kernel.org>,
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-ID: <2026032823-outspoken-haven-c701@gregkh>
References: <20260312212345.GA2728@localhost.localdomain>
 <20260312213345.GA3105@localhost.localdomain>
 <20260326183559.GA22540@localhost.localdomain>
 <2026032744-resale-jeep-2d72@gregkh>
 <20260327145022.GA30102@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260327145022.GA30102@localhost.localdomain>
Subject: [oss-security] Re: Multiple vulnerabilities in AppArmor

On Fri, Mar 27, 2026 at 02:50:42PM +0000, Qualys Security Advisory wrote:
> Hi Greg, John, all,
> 
> On Fri, Mar 27, 2026 at 07:23:24AM +0100, Greg KH wrote:
> > On Thu, Mar 26, 2026 at 06:36:17PM +0000, Qualys Security Advisory wrote:
> > > Since two weeks have passed now (since the fixes were released), would
> > > it be possible to please assign CVEs to the remaining seven AppArmor
> > > vulnerabilities:
> > We were told that these all required elevated privileges to hit, and so
> > were not classified as individual vulnerabilities.  If the Apparmor
> > maintainer tells us that these really all should be assigned a CVE, we
> > will be glad to do so, but until then, we're just going to stick with
> > the ones that we have assigned already.
> 
> Thank you very much for your reply! Adding John Johansen then
> (AppArmor's maintainer), since he will have the authoritative answer.
> 
> The problem is that containers can be allowed to manage their own
> AppArmor profiles (via AppArmor namespaces), in which case an attacker
> inside such a container can directly write to AppArmor's .load, .replace
> and .remove files and trigger all these vulnerabilities, even without
> CVE-2026-23268 (the confused-deputy vulnerability).
> 
> The way we see it:
> 
> - either CVEs should be assigned to the remaining seven vulnerabilities,
>   in light of the container use case described above;
> 
> - or CVE-2026-23269 ("validate DFA start states are in bounds") should
>   be rejected, because this vulnerability is no different from the other
>   seven vulnerabilities.

Looks like this one should be rejected, but I will defer to John as to
what he wishes to have done here, as he is the maintainer of this part
of the kernel.

thanks,

greg k-h
