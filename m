Received: (qmail 9363 invoked by uid 550); 6 Jul 2022 14:50:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8037 invoked from network); 6 Jul 2022 14:50:17 -0000
Date: Wed, 6 Jul 2022 16:50:11 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20220706145011.GA2928@openwall.com>
References: <YsJ7JjZ/R/jqN+YX@itl-email> <939888998.96730.1656936945905@appsuite.open-xchange.com> <YsLj+ux2Pgkir5F8@adhil> <20220704150029.vcbamih6dlqdxqpl@jwilk.net> <ta390o$qi2$1@ciao.gmane.io> <YsVr51JzzpR0A0N9@itl-email> <20220706133809.GA2593@openwall.com> <YsWSda4ITnaf5bOY@itl-email>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YsWSda4ITnaf5bOY@itl-email>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Re: DO NOT OPEN PREVIOUS MAIL Re: [oss-security] Denial of service in  GnuPG

On Wed, Jul 06, 2022 at 09:47:28AM -0400, Demi Marie Obenour wrote:
> On Wed, Jul 06, 2022 at 03:38:10PM +0200, Solar Designer wrote:
> > On Wed, Jul 06, 2022 at 07:02:59AM -0400, Demi Marie Obenour wrote:
> > > Was adding compression to PGP even a good idea in the first place?
> > 
> > I think actually yes, it was, especially back then.  It has probably
> > helped more than it hurt in PGP's lifetime so far.
> 
> Interesting.  Why do you say that?

Oh, I didn't feel this even needed explanation, and I feel silly writing
the below and don't really have time for it (lesson re-learned: should
have stayed silent), but well.

PGP is commonly used on compressible data (such as text), and PGP
messages are then transferred over a network and finally stay in
people's mailboxes or such.  Bandwidth was commonly low back then, and
storage much more limited than today's.

Some compression existed for unencrypted messages - some network links
somewhat compressed (e.g., V.42bis), some mail clients supported mailbox
compression, and of course a mailbox could also be compressed manually.

Obviously, already encrypted content is not compressible.

Without built-in compression in PGP, its messages would be slower to
transfer and larger to store.  Compression would need to be performed
before PGP, which would be an inconvenience and would lead to similar
risks, especially if automated, and would often not be done.  In PGP,
it's just one standard way to do it, not more than one.

So compression was of some benefit to a lot of people.  We could argue
that it's little benefit, but multiplied by the number of people it's
significant.  Was compression also a problem for a lot of people?
Theoretically, yes, but in practice those attacks were not common.

We could also argue that PGP never became popular, MUA integrations are
poor, etc., and as a consequence that its individual features were not
of a lot of benefit to computer users at large.  While true, that
argument also means the risks associated with those features did not
apply to most computer users.  So it's irrelevant.

What I say is that for the geeks using PGP, compression was overall of
more benefit than risk.

Oh, and I'm also grateful for compression in SSH, despite of my own
criticism of its effect on security.

Alexander
