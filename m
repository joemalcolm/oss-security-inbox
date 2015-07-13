X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["808" "Monday" "13" "July" "2015" "03:19:14" "+0300" "Solar Designer" "solar@openwall.com" "<20150713001914.GA8559@openwall.com>" "21" "Re: [oss-security] How serious is undefined behavior?" nil nil nil "7" "2015071300:19:14" "[oss-security] How serious is undefined behavior?" (number mark "        solar@openwa Jul 13   21/808   " thread-indent "\"Re: [oss-security] How serious is undefined behavior?\"\n") "<20150706181734.2b0288ca@pc1>" ("<20150706181734.2b0288ca@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5863 invoked by uid 550); 13 Jul 2015 00:19:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5837 invoked from network); 13 Jul 2015 00:19:17 -0000
Message-ID: <20150713001914.GA8559@openwall.com>
References: <20150706181734.2b0288ca@pc1>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150706181734.2b0288ca@pc1>
User-Agent: Mutt/1.4.2.3i
Date: Mon, 13 Jul 2015 03:19:14 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] How serious is undefined behavior?
To: oss-security@lists.openwall.com

On Mon, Jul 06, 2015 at 06:17:34PM +0200, Hanno B??ck wrote:
> However I wonder how practically relevant these issues are and also
> how much focus should be given to them.

Related:

"What is C in practice? (Cerberus survey): Analysis of Responses"
http://www.cl.cam.ac.uk/~pes20/cerberus/notes50-2015-05-24-survey-discussion.html

A productive direction may be for the free software community (or an
even wider community, if possible) to agree on de facto mainstream C
standard, where certain kinds of UB and such would in fact be defined in
specific ways.

There would still remain many kinds of UB and such, but fewer of them
and the easier avoidable ones.

As things currently are, non-trivial programs sort of have to make
certain assumptions beyond what's guaranteed by C standards anyway.

Alexander
