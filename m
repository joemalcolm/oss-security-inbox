X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1168" "Thursday" "18" "January" "2018" "22:21:14" "+0100" "Solar Designer" "solar@openwall.com" "<20180118212114.GA8771@openwall.com>" "21" "Re: [oss-security] How to deal with reporters who don't want their bugs fixed?" "^Date:" nil nil "1" "2018011821:21:14" "[oss-security] How to deal with reporters who don't want their bugs fixed?" (number mark "        solar@openwa Jan 18   21/1168  " thread-indent "\"Re: [oss-security] How to deal with reporters who don't want their bugs fixed?\"\n") "<07f40446-1917-893c-2a87-b0d7990579b2@redhat.com>" ("<07f40446-1917-893c-2a87-b0d7990579b2@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26040 invoked by uid 550); 18 Jan 2018 21:21:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25641 invoked from network); 18 Jan 2018 21:21:20 -0000
Message-ID: <20180118212114.GA8771@openwall.com>
References: <07f40446-1917-893c-2a87-b0d7990579b2@redhat.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <07f40446-1917-893c-2a87-b0d7990579b2@redhat.com>
User-Agent: Mutt/1.4.2.3i
Date: Thu, 18 Jan 2018 22:21:14 +0100
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] How to deal with reporters who don't want their bugs fixed?
To: oss-security@lists.openwall.com

On Thu, Jan 18, 2018 at 05:10:05PM +0100, Florian Weimer wrote:
> Subject says it all: What do you do if you receive a vulnerability 
> report, and the reporter requests an embargo at some time in the future 
> because that's when their paper/conference presentation/patent 
> submission is scheduled?

I think it's best for your project (I guess glibc?) to prominently
publish near the security contact address a maximum embargo time you'd
(be likely to) agree to.  That's what security at kernel.org does
(7 days) and what we do with (linux-)distros (14 days).  That way, it's
less important for you to judge whether the reason for embargo is
valid/altruistic or bogus/selfish - a sane maximum embargo time
minimizes the damage to all parties either way.  When someone requests a
longer embargo for whatever reason, just decline and insist on your
previously published maximum.  Those who want to have their issue
disclosure timed with some other event will then be expected to delay
reporting the issue to your project until it's close enough to that
other event.  That's not ideal, but I think it's better than having no
maximum embargo time specified.

Alexander
