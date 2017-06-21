X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4598" "Wednesday" "21" "June" "2017" "16:36:31" "+0200" "Solar Designer" "solar@openwall.com" "<20170621143631.GA13275@openwall.com>" "95" "Re: [oss-security] Qualys Security Advisory - The Stack Clash" "^Date:" nil nil "6" "2017062114:36:31" "[oss-security] Qualys Security Advisory - The Stack Clash" (number mark "        solar@openwa Jun 21   95/4598  " thread-indent "\"Re: [oss-security] Qualys Security Advisory - The Stack Clash\"\n") "<CAKoP-y-NnHqx=87K+m_6UibGG3jzFcGNzU=3Y5o52FVLJ75m-g@mail.gmail.com>" ("<20170619152843.GC7769@localhost.localdomain>" "<2a53a138-8f6b-133d-72b2-6dfd5355241a@redhat.com>" "<20170619203933.GA910@openwall.com>" "<CAKoP-y-NnHqx=87K+m_6UibGG3jzFcGNzU=3Y5o52FVLJ75m-g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1536 invoked by uid 550); 21 Jun 2017 14:36:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1392 invoked from network); 21 Jun 2017 14:36:35 -0000
Message-ID: <20170621143631.GA13275@openwall.com>
References: <20170619152843.GC7769@localhost.localdomain> <2a53a138-8f6b-133d-72b2-6dfd5355241a@redhat.com> <20170619203933.GA910@openwall.com> <CAKoP-y-NnHqx=87K+m_6UibGG3jzFcGNzU=3Y5o52FVLJ75m-g@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKoP-y-NnHqx=87K+m_6UibGG3jzFcGNzU=3Y5o52FVLJ75m-g@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Date: Wed, 21 Jun 2017 16:36:31 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - The Stack Clash
To: oss-security@lists.openwall.com

On Wed, Jun 21, 2017 at 07:35:34AM -0500, Josh Bressers wrote:
> I suspect the extended embargo was exactly correct in this instance.

There are certainly good arguments in favor of the extended embargo, and
a lot of people will agree with you.

There are also good arguments in favor of not having extended the
embargo, and to me those are more convincing overall.

So it's not an instance of us having done something unambiguously wrong,
nor something unambiguously right.  It's a matter of different
approaches and opinions.  But there's also the list policy, and it is
such for good reasons.

> Having
> a policy you follow no matter what isn't ideal either (in fact it's
> probably dangerous).

This is why there have been occasional exceptions so far, and I tried to
note and explain each one of those publicly here on oss-security.  This
is also why I agreed to "consider" making an exception in this case, but
I dislike what this resulted in.  Naturally, my mandatory explanation
reflects that.

> We've all been through a lot of embargoes, two weeks is more than
> acceptable for most of them, it's a very good thing to have a forcing
> function when needed. This one was special, nobody can deny that. It was
> big, complex, and amazing. It ticked all the boxes. It affected a
> substantial portion of the Internet. Had a name. Is a very old bug. Was
> very serious. Had a great advisory and organization behind it.

It was an excellent stress-test for the distros list, people's ability
to read lots of encrypted e-mail, etc.  But let's not do it again.

> Yet nobody flipped out. It was unexciting.

Well, almost.  For something shared with so many organizations and
people, it is in fact unexciting we haven't seen a full public leak.

When the embargo extension was made, it was also decided that distros
should in fact be prepared for leaks, which means preparing or being
ready to prepare emergency updates with what I called mitigations and
workarounds.  What I think we should have done instead is work in this
emergency mode from the start, releasing those mitigations and
workarounds first and only then work in public on longer-term fixes.

> I suspect it was all so smooth because on Monday because everyone was
> ready, everyone knew what was going on. There was no rushing, nothing was
> on fire. There was time to develop patches properly. Everyone had their
> story straight. It's quite likely if you force a release in two weeks
> because that's the rule, someone not ready would create a story where one
> shouldn't exist.

Yes.  However, one Linux distro vendor who is not currently on distros
(despite of asking privately to join before) e-mailed me off-list saying
they were indeed on fire (even if largely in terms of publicity and
customer support rather than security).  And that's just one who
bothered to e-mail - I'm sure there were more.  Granted, they can now
prepare their updates within hours or days due to the work done by SUSE,
Red Hat, and others on the distros list, hopefully in time before
attacks using the Qualys findings start or become widespread, but
nevertheless they are at a disadvantage.  They also confirmed to me that
for them me either shutting down the distros list or accepting them onto
the list would be a better option than the status quo.

So I am in fact planning to do one of these things.  My removal of the
"19 days" option is also a way to counter-balance the negative impact of
possibly adding a few more distros.  I wish we could go for 7 days max,
but currently this appears unrealistic (we should have the average below
7 days, though).  So I'll open up the distros list for more members
shortly, but I am going to enforce the policy more(*) strictly.  If this
fails, then I'll shut the list down.

(*) This means there might still be an exception for something truly
exceptional, but to be specific: nothing handled on the (linux-)distros
lists so far was exceptional enough for that, so under the kind of
policy enforcement I am currently planning, there would have been no
exceptions so far.

> I applaud everyone involved. I'm sure there were issues, but I doubt such a
> large effort could have gone better.

I agree.

However, we need to learn from this occasion and do better next time.

> Rules such as this exist to guide us, don't let them constrain us.

I see no other reasonable choice than letting the rules constrain us,
given what my willingness to "consider" an exception resulted in.

That said, I intend to stay reasonable - just having learned and made
adjustments from the experience so far.

Alexander
