X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2529" "Friday" "26" "January" "2018" "20:34:48" "+0100" "Solar Designer" "solar@openwall.com" "<20180126193448.GA10683@openwall.com>" "49" "Re: [oss-security] How to deal with reporters who don't want their bugs fixed?" "^Date:" nil nil "1" "2018012619:34:48" "[oss-security] How to deal with reporters who don't want their bugs fixed?" (number mark "        solar@openwa Jan 26   49/2529  " thread-indent "\"Re: [oss-security] How to deal with reporters who don't want their bugs fixed?\"\n") "<d777592f-f00c-6b12-64c2-ac762f7b8b38@redhat.com>" ("<07f40446-1917-893c-2a87-b0d7990579b2@redhat.com>" "<20180118212114.GA8771@openwall.com>" "<d777592f-f00c-6b12-64c2-ac762f7b8b38@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7777 invoked by uid 550); 26 Jan 2018 19:35:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7545 invoked from network); 26 Jan 2018 19:34:56 -0000
Message-ID: <20180126193448.GA10683@openwall.com>
References: <07f40446-1917-893c-2a87-b0d7990579b2@redhat.com> <20180118212114.GA8771@openwall.com> <d777592f-f00c-6b12-64c2-ac762f7b8b38@redhat.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d777592f-f00c-6b12-64c2-ac762f7b8b38@redhat.com>
User-Agent: Mutt/1.4.2.3i
Date: Fri, 26 Jan 2018 20:34:48 +0100
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] How to deal with reporters who don't want their bugs fixed?
To: oss-security@lists.openwall.com

On Sat, Jan 20, 2018 at 09:18:25PM +0100, Florian Weimer wrote:
> On 01/18/2018 10:21 PM, Solar Designer wrote:
> >I think it's best for your project (I guess glibc?) to prominently
> >publish near the security contact address a maximum embargo time you'd
> >(be likely to) agree to.  That's what security at kernel.org does
> >(7 days) and what we do with (linux-)distros (14 days).
> 
> I would prefer to be flexible in case something truly awful happens.

As an option, you may state that your project will agree to embargoes of
up to e.g. 14 days (as long as there's no leak, etc.), but at your sole
discretion might agree to longer embargoes (ditto).

> Your perspective is skewed because people know that you have a 
> preference for short embargoes, so at least I tell people to make sure 
> that they have a final patch before contacting the distros list.  Then a 
> week or two is probably enough in most cases.  Without a patch, not so much.

As another option, you can state a longer maximum embargo for your
project - e.g., 30 days - although that seems excessive to me.

I understand that for complex or/and complicated issues it might take a
lot of time to come up with what looks like a final fix, but as you
point out below it might also be unrealistic to expect that fix to
actually be final.  So maybe it's best not to even try, and instead to
release non-invasive preliminary mitigations first (clearly calling them
such), then work on cleaner and more complete fixes in public.

> On the other hand, it is near impossible to develop quality solutions 
> under long embargoes.  We tried that in 2008 and largely failed.

> >That way, it's
> >less important for you to judge whether the reason for embargo is
> >valid/altruistic or bogus/selfish - a sane maximum embargo time
> >minimizes the damage to all parties either way.
> 
> That's not really true.  Depending on the nature of the vulnerability, 
> there can be a lot of work before we're confident that we can ship an 
> update.  We have some rather bad code out there, with very little or no 
> test coverage, and if we modify such code, we really need to make sure 
> that users receive a net improvement.  (For example, we thought we had 
> the final patch for a DNS stub resolver issue, but it turned out very 
> late that it had a crippling memory leak.)

I think we're on the same page here.  This is a reason to avoid long
embargoes, and in complex/complicated cases to avoid even trying to make
the very first public updates "final".

Alexander
