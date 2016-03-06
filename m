X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2141" "Sunday" "6" "March" "2016" "18:09:17" "+0300" "Solar Designer" "solar@openwall.com" "<20160306150917.GA29105@openwall.com>" "43" "Re: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies" "^Date:" nil nil "3" "2016030615:09:17" "[oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies" (number mark "        solar@openwa Mar  6   43/2141  " thread-indent "\"Re: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies\"\n") "<110FE574-DEEC-4308-90BE-A83A5C53421A@gmail.com>" ("<CANO=Ty3u964Yax4jMPkwDEiWj=S5TBQdGKarKyicVAk2Ec+Hxw@mail.gmail.com>" "<56D9DD1F.1030302@cert.org>" "<20160305172039.GA20796@openwall.com>" "<20160306062700.GA25289@gremlin.ru>" "<110FE574-DEEC-4308-90BE-A83A5C53421A@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31933 invoked by uid 550); 6 Mar 2016 15:09:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31910 invoked from network); 6 Mar 2016 15:09:20 -0000
Message-ID: <20160306150917.GA29105@openwall.com>
References: <CANO=Ty3u964Yax4jMPkwDEiWj=S5TBQdGKarKyicVAk2Ec+Hxw@mail.gmail.com> <56D9DD1F.1030302@cert.org> <20160305172039.GA20796@openwall.com> <20160306062700.GA25289@gremlin.ru> <110FE574-DEEC-4308-90BE-A83A5C53421A@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <110FE574-DEEC-4308-90BE-A83A5C53421A@gmail.com>
User-Agent: Mutt/1.4.2.3i
Date: Sun, 6 Mar 2016 18:09:17 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies
To: oss-security@lists.openwall.com

On Sun, Mar 06, 2016 at 12:39:46PM +0000, op7ic x00 wrote:
> www.freeovi.com  -> it does have big `blue' button.

Oh, I wasn't aware of it, and a Google search for "freeovi" or "ovi id"
finds only irrelevant stuff now.  I think it was not publicized enough.
Also, there's a name clash of "freeovi" with some old Nokia maps stuff.

As to the button (non-)issue, I brought it to Twitter poll.  Of course,
it's not the same crowd as oss-security, but I want to get an overall
picture of how strongly people feel in favor of not wasting IDs, without
spamming this list with "+1" replies:

https://twitter.com/solardiz/status/706488297242140672

In fact, there are pretty strong results after a few minutes already.

One of my concerns was that people would be hunting for vanity OVE IDs.
I didn't want to encourage waste of time on that, nor attempts to
increase the counter up to a pretty-looking number.  The latter is one
of the reasons why I chose to include the full date rather than just the
year - this makes numbers like 7777 less valuable, since there's one of
each of those every day.  (Another reason to include the full date is
that it may sometimes provide some insight into disclosure timelines,
even if not reliably.  I suspect some people won't like that, though.)
I think OVI, if it gains popularity and is not adjusted, is far more
"vulnerable" to such vanity ID hunting.

Also, having the IDs increase up to a few thousand on each normal day
may discourage deliberate/malicious attempts to do so, and people trying
to skip IDs on such days and come back for lower IDs tomorrow.

However, there appears to be a psychological aspect with spilling
unrequested IDs on the page.  It makes many people feel sorry.  I think
I underestimated that.

(Another workaround would be to use randomized yet 4-digit IDs, but
being able to get some sequential IDs is very nice for assigning them to
related vulnerabilities.  This is why the page currently spills 10 IDs
at once on a second page load from the same IP address, and a few times
more, as long as the current ID is sufficiently below 9999 to allow for
this generosity.)

Alexander
