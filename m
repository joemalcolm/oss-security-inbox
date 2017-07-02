X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4667" "Sunday" "2" "July" "2017" "13:20:43" "-0700" "Anthony Liguori" "anthony@codemonkey.ws" "<CA+aC4kuUKG4CndFjbT=+LSctTXL=Xfrfze6ZE3ZCp7XCHM5OQg@mail.gmail.com>" "101" "Re: [oss-security] accepting new members to (linux-)distros lists" "^Date:" nil nil "7" "2017070220:20:43" "[oss-security] accepting new members to (linux-)distros lists" (number mark "        anthony@code Jul  2  101/4667  " thread-indent "\"Re: [oss-security] accepting new members to (linux-)distros lists\"\n") "<20170628200239.GA25525@openwall.com>" ("<20170628200239.GA25525@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1999 invoked by uid 550); 2 Jul 2017 20:31:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27753 invoked from network); 2 Jul 2017 20:20:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=codemonkey-ws.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=z6Kc0LsnYWwU2Ak3nsgIWz4N9c5Sv4eHFOgrQoZrxIo=;
        b=r76M/5xm/JkNjssF/GQzcCSWjxkcBqxjS0H3L4dFvLq3SE6v0eYDscbpz9+59bT4fs
         Fael3EbvYeO4BGTntDdnoJ46aXKi76znQ5vhWbpX8JLWlG/W27NB+ROVK74x2KslLPvD
         +q+rlnYdTPwTQy5xB6wDt9l/lpBymDB73eldLjg1OirJm2bTeELA+T4Y4m3+hEJeHy/Z
         Q2VFR/+85NdZLGyJ45WslhaDdMAu0PHQnNrqkg4Xj5rEphcLrYBQd5omGckOHLv9MUwi
         U4ym2yCrcMePTu/KnWZ34zfG8YxEPdBSMRv3vdQsuHb+zIFObojrMYeBmawtRf2xBQS3
         PvxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=z6Kc0LsnYWwU2Ak3nsgIWz4N9c5Sv4eHFOgrQoZrxIo=;
        b=G/DARps/ewoMrsKCUNvfdXIo2dDeGl5mQ1hp0eXmUXVwPaP4OQZ13r0tE9ixIGAOhD
         j39GhGRobhXaN0/r+gcAAkZv3fg/HZuNEJSOuy3TNzB3mz6ZxS7PWHbX3pPlKvBw2A1v
         me7FDNEI3BRi4mRgWtJp3UDYhfGJ8Bqbk+0QtyZz2SAIMD+pSijBpzYl30bVZ86HQ79G
         x+xP3chy0xtecZH/SvnfcahS4+1c8gqIuAmTEZZ8FjzllR3ZQfDj2pv14scNzgwzp5Gq
         KQDcmKWEmBHTYCRvRvE7jAEgb58ep6DYIjZdd+PBiRyIQ57AtqvZ5p+6UwEq/ceQGyRu
         NLZA==
X-Gm-Message-State: AKS2vOwjSIlp8UbH8qKB0tZN3g8psWHvChpqIubWfanxFD3tnG0Vtth8
	dabGaQaSuOtUpwsk1WJhcO3tAKCrmnlP
X-Received: by 10.25.25.197 with SMTP id 188mr10066758lfz.93.1499026844455;
 Sun, 02 Jul 2017 13:20:44 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170628200239.GA25525@openwall.com>
References: <20170628200239.GA25525@openwall.com>
Message-ID: <CA+aC4kuUKG4CndFjbT=+LSctTXL=Xfrfze6ZE3ZCp7XCHM5OQg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Sun, 2 Jul 2017 13:20:43 -0700
From: Anthony Liguori <anthony@codemonkey.ws>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] accepting new members to (linux-)distros lists
To: oss-security@lists.openwall.com

Hi Solar,

On Wed, Jun 28, 2017 at 1:02 PM, Solar Designer <solar@openwall.com> wrote:
> Hi,
>
> I have finally specified the criteria for accepting new members to the
> (linux-)distros lists.  I intend to process the requests, which are to
> be posted to new threads each (one thread per distro wanting to join).
>
> I put quite some thought (and experience so far) into these criteria,
> but I welcome any comments and suggested changes this community might
> have.  The list of criteria will be maintained on the wiki:
>
> http://oss-security.openwall.org/wiki/mailing-lists/distros#membership-criteria
>
> Currently, to be eligible for (linux-)distros list membership, your
> distro should:
>
> 1. Be an actively maintained Unix-like operating system distro with
> substantial use of Open Source components
>
> 2. Have a userbase not limited to your own organization
>
> 3. Have a publicly verifiable track record, dating back at least 1 year
> and continuing to present day, of fixing security issues (including some
> that had been handled on (linux-)distros, meaning that membership would
> have been relevant to you) and releasing the fixes within 10 days (and
> preferably much less than that) of the issues being made public (if it
> takes you ages to fix an issue, your users wouldn't substantially
> benefit from the additional time, often around 7 days and sometimes up
> to 14 days, that list membership could give you)
>
> 4. Not be (only) downstream or a rebuild of another distro (or else we
> need convincing additional justification of how the list membership
> would enable you to release fixes sooner, presumably not relying on the
> upstream distro having released their fixes first?)
>
> 5. Be a participant and preferably an active contributor in relevant
> public communities (most notably, if you're not watching for issues
> being made public on oss-security, which are a superset of those that
> had been handled on (linux-)distros, then there's no valid reason for
> you to be on (linux-)distros)
>
> 6. Accept the list policy:
> http://oss-security.openwall.org/wiki/mailing-lists/distros#list-policy-and-instructions-for-members
> (also quoted below)
>
> 7. Be able and willing to contribute back, preferably in specific ways
> announced in advance (so that you're responsible for a specific area and
> so that we know what to expect from which member), and demonstrate
> actual contributions once you've been a member for a while:
> http://oss-security.openwall.org/wiki/mailing-lists/distros#contributing-back
> (also quoted below)
>
> 8. Be able and willing to handle PGP-encrypted e-mail
>
> 9. Have someone already on the private list, or at least someone else
> who has been active on oss-security for years but is not affiliated with
> your distro nor your organization, vouch for at least one of the people
> requesting membership on behalf of your distro (then that one
> vouched-for person will be able to vouch for others on your team, in
> case you'd like multiple people subscribed)
>
> Membership requests should provide answers per each of these criteria.
>
> I came up with many current tasks/roles that a new or existing member
> could usefully help with, thereby contributing to the team effort.
> Currently the wiki page lists a total of 18 such items: 5 technical and
> 13 administrative.  I'd prefer that new membership requests include
> specifics on what the new member will contribute - this can be work on
> some of these 18 items or/and something else.

I've been thinking about this list of items and also some of the
challenges of Stack Clash.  Something that frequently came up was
uncertainty about what the current set of patches were and there was
also lack of clarity on dates.

I think a lot of the administrative tasks outlined can be better
handled through a system other than email.

What do you think about having a public bugzilla (or similar system)
where tracked issues are kept as private bugs?  I think this could be
hosted in a way that everyone felt comfortable with (ensuring enough
people had SSH access to for audit purposes).  It's relatively easy to
stick everything behind SSL.

In addition to helping to make sure there's clear information (like a
summary, current patches, etc), I think the Project Zero approach of
making a private bug public post-embargo helps share information and
provide more transparency after the event.

I'm not suggesting that a bug tracker eliminate the discussions on the
list, but really just supplement it.  If there's interest in this, we
would be very willing to set it up and deal with the hosting aspect of
it.

Thoughts?

Regards,

Anthony Liguori
