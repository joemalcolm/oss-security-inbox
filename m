X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5843" "Thursday" "3" "September" "2020" "18:14:27" "+0200" "Solar Designer" "solar@openwall.com" "<20200903161427.GA15109@openwall.com>" "121" "Re: [oss-security] Contributing Back" nil nil nil "9" "2020090316:14:27" "[oss-security] Contributing Back" (number mark "U       solar@openwa Sep  3  121/5843  " thread-indent "\"Re: [oss-security] Contributing Back\"\n") "<CA+aC4ktDM9-TmhOOKx_C7zSZbKnAJVVe4XSLCGXvaY59q+vBzA@mail.gmail.com>" ("<CAPsnWaD_9QOiV+513eH=ECkwBo+AWN38N9x7xauKcFyVpvc-Og@mail.gmail.com>" "<20190714174509.GA8267@openwall.com>" "<CAPsnWaD3YKPx6hnLoEmfM5VdKqFHrTKjvqRo1uG=8U1xU70-+Q@mail.gmail.com>" "<CA+aC4kuU2KVonpSER4rPb5asFR+gw8t0RAWXX7Di=4nDEJQnJw@mail.gmail.com>" "<20190715192801.GA12290@openwall.com>" "<20191105184228.GA27029@openwall.com>" "<CA+aC4ktDM9-TmhOOKx_C7zSZbKnAJVVe4XSLCGXvaY59q+vBzA@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Contributing Back" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22140 invoked by uid 550); 3 Sep 2020 16:15:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21980 invoked from network); 3 Sep 2020 16:14:36 -0000
Date: Thu, 3 Sep 2020 18:14:27 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20200903161427.GA15109@openwall.com>
References: <CAPsnWaD_9QOiV+513eH=ECkwBo+AWN38N9x7xauKcFyVpvc-Og@mail.gmail.com> <20190714174509.GA8267@openwall.com> <CAPsnWaD3YKPx6hnLoEmfM5VdKqFHrTKjvqRo1uG=8U1xU70-+Q@mail.gmail.com> <CA+aC4kuU2KVonpSER4rPb5asFR+gw8t0RAWXX7Di=4nDEJQnJw@mail.gmail.com> <20190715192801.GA12290@openwall.com> <20191105184228.GA27029@openwall.com> <CA+aC4ktDM9-TmhOOKx_C7zSZbKnAJVVe4XSLCGXvaY59q+vBzA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+aC4ktDM9-TmhOOKx_C7zSZbKnAJVVe4XSLCGXvaY59q+vBzA@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Contributing Back

Hi all,

Sorry for adding to an old thread (over-quoted below my signature).

I primarily want to publicly acknowledge and thank Seth Arnold of
Ubuntu, Anthony Liguori of Amazon Linux, and Srivatsa S. Bhat of VMware
Photon OS for handling two of these tasks well lately.  Thank you!

In particular, I am seeing good contributions on tasks 3 and 4 below:

3. Review and/or test the proposed patches and point out potential
issues with them (such as incomplete fixes for the originally reported
issues, additional issues you might notice, and newly introduced bugs),
and inform the list of the work done even if no issues were encountered
- primary: Ubuntu, backup: Amazon

4. Check if related issues exist in the same piece of software (e.g., same
bug class common across the software, or other kinds of bugs exist in
its problematic component), and inform the list either way
- primary: Ubuntu, backup: VMware Photon OS

I am not yet seeing contributions on task 5.  It's more open-ended - the
contributor would need to identify "implementations of similar
functionality in other software" first, and depending on how you define
"similar" and what "other software" is in scope these might or might not
exist.  That task's description is:

5. Check if related issues exist in implementations of similar
functionality in other software (e.g., forked code including the same
bug, or the same error made independently), and inform the list either
way - primary: Ubuntu, backup: Flatcar Container Linux

Notice that it does say "and inform the list either way".  For clarity,
can we please have that include cases where no "implementations of
similar functionality in other software" were identified?  In those
cases, just state so and how you were looking for those implementations
and why you think there might not be any or they would be too difficult
to identify.  In other words, some statement on work done or not done
and why, but not silence.  I hope that this requirement will encourage
actual work on this task, not just statements on work not done, but I
recognize that sometimes the latter will be the case, and that's fine.

So from this point on, I'd actually expect Ubuntu or/and Flatcar
Container Linux to state something on task 5 for each issue reported.

Thanks again,

Alexander

On Tue, Nov 05, 2019 at 07:04:00PM -0800, Anthony Liguori wrote:
> On Tue, Nov 5, 2019 at 10:45 AM Solar Designer <solar@openwall.com> wrote:
> >
> > Hi Joe, hi Anthony -
> >
> > I'll over-quote a bit since it's an old thread:
> >
> > On Mon, Jul 15, 2019 at 09:28:01PM +0200, Solar Designer wrote:
> > > On Mon, Jul 15, 2019 at 11:54:23AM -0700, Anthony Liguori wrote:
> > > > On Mon, Jul 15, 2019 at 11:47 AM Joe McManus <joe.mcmanus@canonical.com> wrote:
> > > > > > On Tue, Jul 09, 2019 at 07:00:36PM -0600, Joe McManus wrote:
> > > > > > > Hey All - The Ubuntu Security Team would like to sign up for items 3,4
> > > > > > > & 5 from the technical list <
> > > > > > > https://oss-security.openwall.org/wiki/mailing-lists/distros#contributing-back
> > > > > > > >:
> > > > > > >
> > > > > > > 3 - Review and/or test the proposed patches and point out potential issues
> > > > > > >   with them [...]
> > > > > > > 4 - Check if related issues exist in the same piece of software [...]
> > > > > > > 5 - Check if related issues exist in implementations of similar
> > > > > > >   functionality in other software [...]
> > > [...]
> > > > > Yes, this will be taken care of by Ubuntu Security Team members who
> > > > > are already on the list, however if after some time we need to cycle
> > > > > someone in or out I might come asking. I know you don't want to add
> > > > > anyone so we will do our best to prevent this from happening.
> > > > >
> > > > > For 3 we can be either primary or backup, just let me know your
> > > > > preference and we'll do the work.
> > > >
> > > > I would be happy for y'all to be primary.  We don't ship as many
> > > > packages as Ubuntu does so there will be more things that you are
> > > > likely to test compared to what we do.
> > >
> > > OK, I've just listed Ubuntu as primary for 3, 4, 5.  Amazon is now
> > > backup for 3.
> > >
> > > Please note that these items include "and inform the list of the work
> > > done even if no issues were encountered" (item 3), "and inform the list
> > > either way" (items 4, 5), so we'll expect replies to the list as per
> > > these items for each and every issue reported to there.
> >
> > I am not seeing this "inform the list either way" stuff actually
> > happening.  Without it, no other distro has a way to know the work is
> > actually being done.  Once I had pointed this need out a while before,
> > Amazon briefly started making those mandatory postings for task 3, until
> > they were replaced by Ubuntu as primary.  In fact, given the lack of
> > such postings by Ubuntu, I would still expect Amazon to take over for
> > task 3, which they're the backup for, and it looks like they did that
> > exactly once:
> >
> > As far as I can see, the last time Amazon handled task 3 was on July 25,
> > which is 10 days after Ubuntu became primary for that task.  This was
> > much appreciated.  Unfortunately, as far as I can see, neither distro
> > (visibly) handled these tasks ever since, with one exception:
> >
> > Ubuntu did point out that a patch didn't have a corresponding testsuite
> > change, and thus tests failed, in a posting on October 10.  So hopefully
> > they were doing the work, except for the "inform the list either way"
> > part - but that's an important part!
> >
> > It is possible that I missed or don't recall some other occasions, but I
> > think I got the overall picture right.
> >
> > Joe, Anthony - can you please have your distros start handling these
> > tasks fully, as described?
> 
> Ack.
> 
> Regards,
> 
> Anthony Liguori
