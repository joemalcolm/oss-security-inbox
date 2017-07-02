X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3470" "Monday" "3" "July" "2017" "00:44:21" "+0200" "Solar Designer" "solar@openwall.com" "<20170702224421.GA19376@openwall.com>" "79" "Re: [oss-security] accepting new members to (linux-)distros lists" "^Date:" nil nil "7" "2017070222:44:21" "[oss-security] accepting new members to (linux-)distros lists" (number mark "        solar@openwa Jul  3   79/3470  " thread-indent "\"Re: [oss-security] accepting new members to (linux-)distros lists\"\n") "<CA+aC4kuUKG4CndFjbT=+LSctTXL=Xfrfze6ZE3ZCp7XCHM5OQg@mail.gmail.com>" ("<20170628200239.GA25525@openwall.com>" "<CA+aC4kuUKG4CndFjbT=+LSctTXL=Xfrfze6ZE3ZCp7XCHM5OQg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30661 invoked by uid 550); 2 Jul 2017 22:48:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24250 invoked from network); 2 Jul 2017 22:44:32 -0000
Message-ID: <20170702224421.GA19376@openwall.com>
References: <20170628200239.GA25525@openwall.com> <CA+aC4kuUKG4CndFjbT=+LSctTXL=Xfrfze6ZE3ZCp7XCHM5OQg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+aC4kuUKG4CndFjbT=+LSctTXL=Xfrfze6ZE3ZCp7XCHM5OQg@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Date: Mon, 3 Jul 2017 00:44:21 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] accepting new members to (linux-)distros lists
To: oss-security@lists.openwall.com

On Sun, Jul 02, 2017 at 01:20:43PM -0700, Anthony Liguori wrote:
> I've been thinking about this list of items and also some of the
> challenges of Stack Clash.  Something that frequently came up was
> uncertainty about what the current set of patches were and there was
> also lack of clarity on dates.

This should become easier with the maximum of 14 days strictly enforced.

> I think a lot of the administrative tasks outlined can be better
> handled through a system other than email.

This makes sense.  Text files, then? ;-)

On a more serious note, I am concerned that the person collecting
statistics, etc. might end up entering the data into some online system,
thereby incurring unnecessary risk.  We should ask the volunteering
distros/people how they are processing the information, to discourage
such occurrences.

And text files is what I would use.  Seriously.  Much more convenient
than an online system like Bugzilla for the low volume we're handling.

> What do you think about having a public bugzilla (or similar system)
> where tracked issues are kept as private bugs?

I dislike this idea.

> I think this could be
> hosted in a way that everyone felt comfortable with (ensuring enough
> people had SSH access to for audit purposes).  It's relatively easy to
> stick everything behind SSL.

How would we know this is a dedicated machine with no IPMI and such?
It's the case for the current distros list machine.  No way for you all
to check and confirm that as well, though.

Now, I understand that many of the distros are probably entering stuff
into their bug trackers anyway.  Often on shared or/and centrally
managed systems.  I hope most only do so for bugs that are actually
relevant to them, or at least that are likely to be relevant.

Maybe we should make this limitation part of list policy ("do not enter
the newly arriving issues into bug trackers unless and until you're
reasonably confident the issues are relevant to you")?  Or forbid use of
bug trackers for the embargoed issues arriving through the distros list
altogether, but I'm quite sure many of the existing distros list members
won't accept that. :-(

> In addition to helping to make sure there's clear information (like a
> summary, current patches, etc), I think the Project Zero approach of
> making a private bug public post-embargo helps share information and
> provide more transparency after the event.

Yes, at P0 they definitely do the transparency thing well.  Better than
us so far.  But they're also extremely courageous to have the info in a
public-facing web app for up to 90 days.  I wouldn't dare.  We shouldn't.

To improve transparency, I'd rather see someone write a mass-decrypter
for mbox with OpenPGP messages.

> I'm not suggesting that a bug tracker eliminate the discussions on the
> list, but really just supplement it.

It's unlikely to work entirely that way.  It's more like a split.

> If there's interest in this, we
> would be very willing to set it up and deal with the hosting aspect of
> it.

Thank you, but I hope we won't go that route.

BTW, your messages' text/plain parts don't always differentiate your
added text vs. the previous message's quoted text - e.g., I had to
correct that manually in your reply to Kristian while it was in the
moderation queue.  I hope you don't mind; the alternative was rejecting
the message as it was a total mess.  I had to look at the text/html
part to figure out what came from where.

Alexander
