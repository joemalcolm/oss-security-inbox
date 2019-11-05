X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3146" "Tuesday" "5" "November" "2019" "19:42:28" "+0100" "Solar Designer" "solar@openwall.com" "<20191105184228.GA27029@openwall.com>" "67" "Re: [oss-security] Contributing Back" "^Cc:" nil nil "11" "2019110518:42:28" "[oss-security] Contributing Back" (number mark "        solar@openwa Nov  5   67/3146  " thread-indent "\"Re: [oss-security] Contributing Back\"\n") "<20190715192801.GA12290@openwall.com>" ("<CAPsnWaD_9QOiV+513eH=ECkwBo+AWN38N9x7xauKcFyVpvc-Og@mail.gmail.com>" "<20190714174509.GA8267@openwall.com>" "<CAPsnWaD3YKPx6hnLoEmfM5VdKqFHrTKjvqRo1uG=8U1xU70-+Q@mail.gmail.com>" "<CA+aC4kuU2KVonpSER4rPb5asFR+gw8t0RAWXX7Di=4nDEJQnJw@mail.gmail.com>" "<20190715192801.GA12290@openwall.com>") nil nil nil nil nil nil nil "Re: [oss-security] Contributing Back" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26556 invoked by uid 550); 5 Nov 2019 18:45:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25829 invoked from network); 5 Nov 2019 18:42:51 -0000
Message-ID: <20191105184228.GA27029@openwall.com>
References: <CAPsnWaD_9QOiV+513eH=ECkwBo+AWN38N9x7xauKcFyVpvc-Og@mail.gmail.com> <20190714174509.GA8267@openwall.com> <CAPsnWaD3YKPx6hnLoEmfM5VdKqFHrTKjvqRo1uG=8U1xU70-+Q@mail.gmail.com> <CA+aC4kuU2KVonpSER4rPb5asFR+gw8t0RAWXX7Di=4nDEJQnJw@mail.gmail.com> <20190715192801.GA12290@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190715192801.GA12290@openwall.com>
User-Agent: Mutt/1.4.2.3i
Cc: Joe McManus <joe.mcmanus@canonical.com>,
	Anthony Liguori <aliguori@amazon.com>
Date: Tue, 5 Nov 2019 19:42:28 +0100
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Contributing Back
To: oss-security@lists.openwall.com

Hi Joe, hi Anthony -

I'll over-quote a bit since it's an old thread:

On Mon, Jul 15, 2019 at 09:28:01PM +0200, Solar Designer wrote:
> On Mon, Jul 15, 2019 at 11:54:23AM -0700, Anthony Liguori wrote:
> > On Mon, Jul 15, 2019 at 11:47 AM Joe McManus <joe.mcmanus@canonical.com> wrote:
> > > > On Tue, Jul 09, 2019 at 07:00:36PM -0600, Joe McManus wrote:
> > > > > Hey All - The Ubuntu Security Team would like to sign up for items 3,4
> > > > > & 5 from the technical list <
> > > > > https://oss-security.openwall.org/wiki/mailing-lists/distros#contributing-back
> > > > > >:
> > > > >
> > > > > 3 - Review and/or test the proposed patches and point out potential issues
> > > > >   with them [...]
> > > > > 4 - Check if related issues exist in the same piece of software [...]
> > > > > 5 - Check if related issues exist in implementations of similar
> > > > >   functionality in other software [...]
> [...]
> > > Yes, this will be taken care of by Ubuntu Security Team members who
> > > are already on the list, however if after some time we need to cycle
> > > someone in or out I might come asking. I know you don't want to add
> > > anyone so we will do our best to prevent this from happening.
> > >
> > > For 3 we can be either primary or backup, just let me know your
> > > preference and we'll do the work.
> > 
> > I would be happy for y'all to be primary.  We don't ship as many
> > packages as Ubuntu does so there will be more things that you are
> > likely to test compared to what we do.
> 
> OK, I've just listed Ubuntu as primary for 3, 4, 5.  Amazon is now
> backup for 3.
> 
> Please note that these items include "and inform the list of the work
> done even if no issues were encountered" (item 3), "and inform the list
> either way" (items 4, 5), so we'll expect replies to the list as per
> these items for each and every issue reported to there.

I am not seeing this "inform the list either way" stuff actually
happening.  Without it, no other distro has a way to know the work is
actually being done.  Once I had pointed this need out a while before,
Amazon briefly started making those mandatory postings for task 3, until
they were replaced by Ubuntu as primary.  In fact, given the lack of
such postings by Ubuntu, I would still expect Amazon to take over for
task 3, which they're the backup for, and it looks like they did that
exactly once:

As far as I can see, the last time Amazon handled task 3 was on July 25,
which is 10 days after Ubuntu became primary for that task.  This was
much appreciated.  Unfortunately, as far as I can see, neither distro
(visibly) handled these tasks ever since, with one exception:

Ubuntu did point out that a patch didn't have a corresponding testsuite
change, and thus tests failed, in a posting on October 10.  So hopefully
they were doing the work, except for the "inform the list either way"
part - but that's an important part!

It is possible that I missed or don't recall some other occasions, but I
think I got the overall picture right.

Joe, Anthony - can you please have your distros start handling these
tasks fully, as described?

Thanks in advance,

Alexander
