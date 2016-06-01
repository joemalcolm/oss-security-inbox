X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2282" "Wednesday" "1" "June" "2016" "14:53:48" "+0300" "Solar Designer" "solar@openwall.com" "<20160601115348.GA22607@openwall.com>" "45" "Re: [oss-security] \"The Blind SQL Injection Issue\" explanation" "^Cc:" nil nil "6" "2016060111:53:48" "[oss-security] \"The Blind SQL Injection Issue\" explanation" (number mark "        solar@openwa Jun  1   45/2282  " thread-indent "\"Re: [oss-security] \"The Blind SQL Injection Issue\" explanation\"\n") "<20160601141541.7d5219cc@andriamanitra>" ("<20160601141541.7d5219cc@andriamanitra>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28241 invoked by uid 550); 1 Jun 2016 11:53:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28222 invoked from network); 1 Jun 2016 11:53:54 -0000
Message-ID: <20160601115348.GA22607@openwall.com>
References: <20160601141541.7d5219cc@andriamanitra>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160601141541.7d5219cc@andriamanitra>
User-Agent: Mutt/1.4.2.3i
Cc: oss-security@lists.openwall.com
Date: Wed, 1 Jun 2016 14:53:48 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] "The Blind SQL Injection Issue" explanation
To: Mihamina RAKOTOMANDIMBY <mihamina-rakotomandimby@rktmb.org>

Hi Mihamina,

Your message lacks open source focus (is your web app open source? as
far as I can tell, the security scanner in question is not) and you
posted the same question to Security Basics, so as a list moderator I
was reluctant to approve it.  Next time, please post content that is
more obviously on topic for oss-security, or clarify how whatever you're
posting is on topic.  If you can't, then please refrain from making
borderline postings like this.  Security Basics, judging by its name, is
probably a more appropriate place for your question, but it looks rather
inactive, I don't know why - no community interested in discussing
security basics on a mailing list?  If anyone in here has suggestions on
an appropriate mailing list for questions such as this, please share.
Maybe full-disclosure, which is used for lots of stuff, even though this
is a question and not a disclosure?

On Wed, Jun 01, 2016 at 02:15:41PM +0300, Mihamina RAKOTOMANDIMBY wrote:
> Let's suppose the web app is vulnerable, the reasoning of this test is:
> 
> - req. 1 gets resp. 1 and changed database state to state 1
> - req. 2 gets resp. 2 and changed database state to state "whatever"
> - req. 3 gets resp. 1 and changed database state to state "whatever"
> 
> My questions are:
> - How could database state "whatever" would give the same response as
>   "state 1" ? (a.k.a "resp. 1")

I can't speak for authors of a proprietary security scanner, but I guess
the assumption is that the queries are such that the database state does
not change (at all, or at least not in a way affecting these specific
queries).  If the database state changes (in a relevant way), then a
possible difference in responses to requests 1 and 2 does not indicate
SQL injection, but more likely indicates a false positive, so the
purpose of request 3 may be to weed out such false positives (ensure the
state has not changed from request 1 to request 3, and thus the
different response to request 2 more likely indicates SQL injection
rather than a change in response occurring between subsequent requests
in general).  This is just a guess, which might be wrong.

> - As a "blind" one (mostly random input then), how could these
>   assertions work?

"Blind" does not mean "mostly random input".

Alexander
