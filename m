Received: (qmail 17906 invoked by uid 550); 24 May 2022 13:30:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17434 invoked from network); 24 May 2022 13:29:41 -0000
Date: Tue, 24 May 2022 15:29:29 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20220524132929.GA29337@openwall.com>
References: <20220515162740.GA20526@openwall.com> <YoKiGWAX4E/mbGWB@kroah.com> <1be21670-921c-9f0a-d99c-a9f6fd02b9b2@oracle.com> <20220522191951.GA21330@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220522191951.GA21330@openwall.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] linux-distros list policy and Linux kernel

On Sun, May 22, 2022 at 09:19:51PM +0200, Solar Designer wrote:
> it looks like Vegard
> Nossum and maybe Thadeu Lima de Souza Cascardo intend to propose changes
> to the kernel's Documentation/admin-guide/security-bugs.rst:
> 
> On Fri, May 20, 2022 at 10:14:07AM +0200, Vegard Nossum wrote:
> > I'll respond a bit later with a slightly more detailed option that also
> > includes potential modifications to the in-kernel documentation as
> > displayed on kernel.org.

Reports of Linux kernel issues sent to linux-distros tend to ignore our
policies - not only in terms of the aspect that started this thread, but
also in that the reporter doesn't propose a specific date/time for
making the issue (fully) public (maybe doesn't intend to do so
themselves at all) and doesn't know/care/want to make a possible PoC
public (if they shared that with linux-distros).

Overall, it looks like they're not reading our policy at all until we
ask them to.

Documentation/admin-guide/security-bugs.rst gives the list posting
address and mentions the [vs] prefix.  It also does link to the wiki,
but that makes actually visiting the wiki and reading the policy
technically optional.  Maybe only the wiki link should be kept, and the
posting address removed.  Alternatively, if a dependency on the wiki is
undesirable, maybe the Linux kernel documentation should include a copy
of linux-distros instructions for reporters (copied from the wiki,
including the posting address) in a nearby text file (and add to it the
wiki link for a possibly more current revision), and refer to that.

There's also this:

"Distros will need some time to test the proposed patch and will
generally request at least a few days of embargo"

which kind of goes against our request that the reporter be the first to
propose a tentative public disclosure date/time.  So I suggest the above
phrase be dropped.

If there are no objections, Vegard can you please suggest specific edits
accordingly, and if there are no objections to those either, then submit
them as a patch?

Thanks,

Alexander
