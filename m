Received: (qmail 13340 invoked by uid 550); 22 Sep 2023 17:28:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12077 invoked from network); 22 Sep 2023 17:28:00 -0000
Date: Fri, 22 Sep 2023 19:27:55 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20230922172755.GA18909@openwall.com>
References: <6EBBC128-36D2-4262-88F4-6889E9E6DE1E@mnx.io> <20230915210906.GA22532@openwall.com> <36F38D40-5F90-4E1B-B7A2-121431A3E6FE@mnx.io>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <36F38D40-5F90-4E1B-B7A2-121431A3E6FE@mnx.io>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] illumos (or at least danmcd) membership in the distros list

On Mon, Sep 18, 2023 at 05:36:13PM +0000, Dan McDonald wrote:
> On Sep 15, 2023, at 5:09 PM, Solar Designer <solar@openwall.com> wrote:
> > Can you show illumos fixing non-illumos-only security issues within days
> > after public disclosure, so that a few days of advance notice would have
> > made those fixes even quicker?
> 
> It's a per-illumos-distro property.  OmniOS has Stable & LTS releases.   Here's the current-stable
> release notes, dynamically updated every time they update:
> 
> 	https://github.com/omniosorg/omnios-build/blob/r151046/doc/ReleaseNotes.md
> 
> So I'm not sure if a few days of advance notice would make those quicker,
> but I do know that other distros have biweekly scheduled releases, and advance
> notice there would keep those wheels spinning faster.  Esp. since "patch tuesday"
> is a mere one-day before the release branch is forked off on release weeks.

This looks pretty good for OmniOS, e.g. for OpenSSL CVE-2023-3817 it
appears to be 4 days from OpenSSL advisory on "31st July 2023" to OmniOS
"r151046n (2023-08-03)", and even something like 1 day for OpenSSH
update to "9.3p2, fixing CVE-2023-38408" and for "AMD CPU microcode
updated to 20230719, mitigating CVE-2023-20593 on some Zen2 processors"
in "r151046m (2023-07-25)" (it was brought to oss-security on July 24).

That page above goes back to May 2023.  Were there separate ones for
older releases?  For "a publicly verifiable track record, dating back at
least 1 year and continuing to present day".

> Our security coordination in illumos is to warn distro-runners, and they make their own
> decisions based on that data. None have ever violated embargos.

This sounds very different from how the existing distros list members
operate.  In fact, it may be inconsistent with our current policy for
list members, which says:

https://oss-security.openwall.org/wiki/mailing-lists/distros#list-policy-and-instructions-for-members

"Aside from your participation in discussions with the reporter and on
the (linux-)distros lists (including possibly continuing to CC other
prior recipients of the information), the information you receive
through the (linux-)distros lists must not be made public, shared, nor
even hinted at anywhere beyond the need-to-know within your distro's
team except with the reporter's explicit approval, until the agreed upon
public disclosure date/time or substantially complete publication by
others.  Neither you nor others you inform may use the information for
anything other than getting the issue fixed for your distro's users and,
only in rare extreme cases, for deployment of maximally non-revealing
changes to maintain security of your distro's infrastructure most
essential to the distro users' security in face of the security issue
being dealt with.  The need-to-know condition is met only if the person
needs to participate in one of these two activities."

Note the words "within your distro's team".  However, now you say you'll
"warn distro-runners", and in your first message you wrote:

> Like Linux, we have downstream distros.  Unlike Linux, illumos is more
> than what Linux would call, "kernel".

So you'd be joining as upstream for multiple other distros, who you'd be
sharing the info with.  I'd say that per the current criteria and policy
for members, those individual distros would need to qualify and join (or
not) one by one.  I actually doubt all of them would meet our current
criteria, so your warning all of them would be a bypass.

Now, given good enough reasons, the criteria could be changed or an
exception could be made.  I think illumos is a great project, it's great
that you have a distro ecosystem, and several people I recognize have
spoken in favor (including off-list).  However, I am not convinced we
have a case here where we'd want to accept indirect sharing of info with
distros some of which might not qualify on their own.  If we were to do
that, then why would we be subjecting other distros (non-illumos)
applying on their own to these same criteria, or would we relax for all?

Please correct me if I misunderstood something, or/and suggest a way
forward (either fully consistent with the constraints above or with
specific changes you'd propose and the community would find reasonable).

Thanks,

Alexander
