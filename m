Received: (qmail 5776 invoked by uid 550); 7 Aug 2024 15:16:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8004 invoked from network); 7 Aug 2024 14:41:00 -0000
Date: Wed, 7 Aug 2024 16:40:47 +0200
From: niekt0 <niekt0@kyberia.cz>
To: oss-security@lists.openwall.com
Message-ID: <20240807144047.GA12108@test>
References: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
 <20240806171232.6bd08942@zbook>
 <ZrJv8PDeCxQQJVxH@itl-email>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZrJv8PDeCxQQJVxH@itl-email>
X-Mailer: iPhone Mail (8G4)
Subject: Re: [oss-security] feedback requested regarding deprecation of TLS
 1.0/1.1

Hi,

as a penetration tester, I would appreciate something like a package 
"ssl-obsolete", that would contain old, working code. While it is probably not
necessary to fix cryptography related bugs (we know that this part is broken),
it would be probably still nice to fix RCE bugs.

There are still MANY devices out there, that does not receive any updates,
sometimes because they are in an "air-gaped" environment, or they are some sort
of an embedded device, etc, etc. It is still very useful, to have some handy 
way how to speak to those devices, there may be still hundreds of millions of 
them. (installing a special 5 years old instance of while OS does not seems 
like a handy way to me)

n.

On Tue, Aug 06, 2024 at 02:48:14PM -0400, Demi Marie Obenour wrote:
> On Tue, Aug 06, 2024 at 05:12:32PM +0200, Marco Moock wrote:
> > Am Tue, 6 Aug 2024 05:02:14 -0400
> > schrieb Neil Horman <nhorman@openssl.org>:
> > 
> > > 1) Are distributions/users comfortable with this approach in the time
> > > frame proposed?
> > 
> > As a user, this is acceptable for me, but I know there are still
> > machines outside that only offer such old versions.
> > Some of them can't be upgraded easily because the vendor doesn't
> > provide any new versions.
> 
> Can those machines be put behind a proxy?
> -- 
> Sincerely,
> Demi Marie Obenour (she/her/hers)
> Invisible Things Lab


