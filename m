X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2313" "Thursday" "18" "January" "2018" "23:01:24" "+0100" "Solar Designer" "solar@openwall.com" "<20180118220124.GA9185@openwall.com>" "42" "Re: [oss-security] How to deal with reporters who don't want their bugs fixed?" "^Date:" nil nil "1" "2018011822:01:24" "[oss-security] How to deal with reporters who don't want their bugs fixed?" (number mark "        solar@openwa Jan 18   42/2313  " thread-indent "\"Re: [oss-security] How to deal with reporters who don't want their bugs fixed?\"\n") "<519d9522-0531-a553-5bf3-de6d4e712a35@hpe.com>" ("<07f40446-1917-893c-2a87-b0d7990579b2@redhat.com>" "<20180118212114.GA8771@openwall.com>" "<519d9522-0531-a553-5bf3-de6d4e712a35@hpe.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9624 invoked by uid 550); 18 Jan 2018 22:03:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3834 invoked from network); 18 Jan 2018 22:01:29 -0000
Message-ID: <20180118220124.GA9185@openwall.com>
References: <07f40446-1917-893c-2a87-b0d7990579b2@redhat.com> <20180118212114.GA8771@openwall.com> <519d9522-0531-a553-5bf3-de6d4e712a35@hpe.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <519d9522-0531-a553-5bf3-de6d4e712a35@hpe.com>
User-Agent: Mutt/1.4.2.3i
Date: Thu, 18 Jan 2018 23:01:24 +0100
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] How to deal with reporters who don't want their bugs fixed?
To: oss-security@lists.openwall.com

On Thu, Jan 18, 2018 at 04:38:41PM -0500, Luedtke, Nicholas (Cyber Security) wrote:
> On 1/18/2018 4:21 PM, Solar Designer wrote:
> >I think it's best for your project (I guess glibc?) to prominently
> >publish near the security contact address a maximum embargo time you'd
> >(be likely to) agree to.  That's what security at kernel.org does
> >(7 days) and what we do with (linux-)distros (14 days).  That way, it's
> >less important for you to judge whether the reason for embargo is
> >valid/altruistic or bogus/selfish - a sane maximum embargo time
> >minimizes the damage to all parties either way.  When someone requests a
> >longer embargo for whatever reason, just decline and insist on your
> >previously published maximum.  Those who want to have their issue
> >disclosure timed with some other event will then be expected to delay
> >reporting the issue to your project until it's close enough to that
> >other event.  That's not ideal, but I think it's better than having no
> >maximum embargo time specified.
> 
> I generally agree with this, but it also creates the risk that reporters 
> will simply wait till the maximum time frame fits within their desired 
> reporting time.  Which of course delays the reporting of the bug to the 
> vendor/project.

That's precisely what I wrote above, and I think it's not as bad as the
original situation Florian described.  The project gets less time, but
does it need more time when it can't release a fix anyway?  The reduced
exposure - even if to people and infrastructure of the project itself -
reduces risk of leaks.

Terms like this will also serve as a reminder to the reporter that
they're indeed being selfish and would have wanted an unreasonably long
embargo.  Some, but not all, will change their mind.

> What I have seen in the past is a negotiated partial 
> disclosure where the patch is released with minimum details with the 
> line that says "Full details with be released by XXX at YYY conference." 
> That way if ego is the factor then the reporter also gets a slight 
> teaser for his/her talk. Of course one could just use the patch to get 
> the details depending on the issue.

I think "semi-public" is the worst state an issue can be in, making the
above suggestion the worst of those mentioned in this thread so far.

Alexander
