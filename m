Received: (qmail 14307 invoked by uid 550); 20 Apr 2024 18:12:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13955 invoked from network); 20 Apr 2024 18:12:11 -0000
Date: Sat, 20 Apr 2024 20:12:11 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20240420181211.GA12463@openwall.com>
References: <20240414190855.GA12716@openwall.com> <354b913bc1c154c1e3a2fc34ed8ed6b0d4641f11.camel@canonical.com> <20240419154435.GA7046@openwall.com> <ZiKo7shztRpgvAIC@remnant.pseudorandom.co.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZiKo7shztRpgvAIC@remnant.pseudorandom.co.uk>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Linux: Disabling network namespaces

On Fri, Apr 19, 2024 at 06:25:02PM +0100, Simon McVittie wrote:
> On Fri, 19 Apr 2024 at 17:44:35 +0200, Solar Designer wrote:
> > I guess
> > systemd's PrivateNetwork services generally don't configure networking
> > (they just give up network access), so would continue to work even with
> > capabilities disallowed?
> 
> I can't speak for systemd's PrivateNetwork services, but for the
> bubblewrap use-cases that I described elsewhere in the thread (Flatpak,
> libgnome-desktop etc.), `bwrap --unshare-net` does bring up the "lo"
> interface with address 127.0.0.1 and a route to 127.0.0.0/8 before it
> relinquishes its capabilities and execs the sandboxed program.
> 
> Presumably this is because it's common for ordinary user-space applications
> to assume that they can "talk to themselves" via loopback, even if there is
> no external connectivity.

Thank you.  So with my idea/proposal, someone using these tools on a
desktop system would need to set the max depth to 1.  That would leave
the kernel's full attack surface exposed on the host system, but not to
sandboxed programs because those would run with capabilities already
relinquished (per what you write above) and would not be able to regain
them by creating a nested namespace.  Sounds like a worthwhile feature?

Does bubblewrap maybe already relinquish also the ability to create
nested namespaces, which it probably could do with seccomp?  I guess not
as that would break its usage to sandbox programs like Firefox that also
create a namespace for their own sandbox.  With namespace creation still
allowed but capabilities ineffective, I guess such programs maybe could
still work if they don't need to configure networking in the sandbox.

Alexander
