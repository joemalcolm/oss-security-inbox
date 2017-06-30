X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2800" "Friday" "30" "June" "2017" "22:16:43" "+0200" "Solar Designer" "solar@openwall.com" "<20170630201642.GA9159@openwall.com>" "54" "Re: [oss-security] accepting new members to (linux-)distros lists" "^Date:" nil nil "6" "2017063020:16:43" "[oss-security] accepting new members to (linux-)distros lists" (number mark "        solar@openwa Jun 30   54/2800  " thread-indent "\"Re: [oss-security] accepting new members to (linux-)distros lists\"\n") "<20170630195516.GB1011@hunt>" ("<20170628200239.GA25525@openwall.com>" "<20170630132209.GA4625@openwall.com>" "<20170630195516.GB1011@hunt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3336 invoked by uid 550); 30 Jun 2017 20:17:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1990 invoked from network); 30 Jun 2017 20:16:46 -0000
Message-ID: <20170630201642.GA9159@openwall.com>
References: <20170628200239.GA25525@openwall.com> <20170630132209.GA4625@openwall.com> <20170630195516.GB1011@hunt>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170630195516.GB1011@hunt>
User-Agent: Mutt/1.4.2.3i
Date: Fri, 30 Jun 2017 22:16:43 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] accepting new members to (linux-)distros lists
To: oss-security@lists.openwall.com

On Fri, Jun 30, 2017 at 12:55:16PM -0700, Seth Arnold wrote:
> On Fri, Jun 30, 2017 at 03:22:09PM +0200, Solar Designer wrote:
> > http://oss-security.openwall.org/wiki/mailing-lists/distros#contributing-back
> > 
> > No volunteers so far?  I know some of you are actually helping with
> > these, but I'd prefer that you explicitly take responsibility for them.
> 
> I didn't volunteer for the things that I've already done on occasion.
> Since I'm on the west coast of the united states and tend to sleep in and
> work late (and spend entirely too much time in mutt already) I'm often the
> first to spot new postings to the list if made during a few hour window.
> 
> In those hours I'll let people know their post made it through the list.
> (This is common practice on the list since the anti-spam setup just
> drops mails that lack [vs] or [vs-plain] in the Subject: line. Frequent
> posters who aren't subscribed know to look for confirmation mails from
> list readers to see if their posts made it through and re-send if they
> don't get a reply.)
> 
> But this window really only works a few hours each day, a few days each
> week. If I _sign up_ for this task, the other 160 hours each week would
> get worse.
> 
> Communally shared tasks have felt fine to me so far. Yes they often fall
> to you, but not always. And if you weren't always attached to your MUA,
> perhaps it wouldn't always fall to you either. :)

We can list multiple distros per task.  Or we can list Ubuntu, and that
wouldn't mean only you - but rather that Ubuntu's team should handle it.
Would that work for Ubuntu?

With multiple distros listed, there will need to be some coordination
between them - e.g., inform each other when transferring responsibility
(such as before several people go on vacation), or separate duties by
time of day.

I agree that for something as simple as getting back to message senders
this might not be worth the coordination.  So maybe one of the distros
wanting to join now would take this task, which would also serve to show
they care at least to read all messages promptly.  And the distros who
have been on the list for a while take less trivial tasks.

Regarding the anti-spam setup, it's not exactly as bad as you describe.
Messages are not dropped - rather, they're rejected during the SMTP
session, in response to DATA command end.  I hope that with most setups
on the other end, this results in the sender (person) getting notified.

What worries me is that for messages that are sent to us in plaintext,
this means they might be exposed to someone watching network traffic
even in cases when we don't yet accept and relay the message (because of
it initially lacking this tag).  Yet getting encrypted spam (for a
little while, before I made this setup) was no good.

Alexander
