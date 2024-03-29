Received: (qmail 30047 invoked by uid 550); 29 Mar 2024 22:12:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27761 invoked from network); 29 Mar 2024 22:12:21 -0000
Date: Fri, 29 Mar 2024 23:12:14 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20240329221214.GA4133@openwall.com>
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de> <ZgcL9VUx6CQ5Wx/W@weckbecker.name> <20240329191926.rvyvzgtdpfwc256c@awork3.anarazel.de> <20240329214615.GA2610@openwall.com> <Zgc5qW_Q6fXNiPmH@itl-email>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zgc5qW_Q6fXNiPmH@itl-email>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] backdoor in upstream xz/liblzma leading to ssh server compromise

On Fri, Mar 29, 2024 at 05:58:49PM -0400, Demi Marie Obenour wrote:
> On Fri, Mar 29, 2024 at 10:46:15PM +0100, Solar Designer wrote:
> > For systemd notification, I patched it (half a year ago, so not in
> > response to these new findings) to dlopen() libsystemd into a new sshd
> > child process that's briefly spawned on sshd service startup or restart,
> > notifies systemd, and exits.  I could probably also drop privileges in
> > that child process, but so far I didn't bother.  I just didn't want
> > those libraries to stay in the process address space after startup.
> > 
> > Luckily, RHEL is not affected by the xz backdoor anyway, but if it were
> > I think these changes would just happen to have prevented the backdoor
> > from working.  Indeed, it's still bad code that could run as root (and
> > even if not in sshd, then in other services that use libsystemd), so it
> > could have as well e.g. modified sshd on disk, but its current way of
> > dynamically plugging into sshd authentication wouldn't work.
> > 
> > I've attached the patch, which applies on top of Red Hat's patches.  If
> > using it in a package, explicit dependency on libsystemd (or the package
> > that provides it) should be added to the (sub)package with sshd, e.g.:
> > 
> > Requires: systemd-libs
> > 
> > That's because the package manager would no longer automatically detect
> > the dependency, which is now a soft one.
> > 
> > I took this approach back then in order not to drop functionality, but
> > I'd re-think it now.  Perhaps systemd notification isn't worth even the
> > reduced risk, and should be dropped completely.  For the latter, an edit
> > to the systemd unit file is needed, changing "Type=notify" to
> > "Type=simple", which should fit "sshd -D".
> > 
> > Not only Red Hat'ish distros, but also Debian and Ubuntu are similar in
> > this respect, and I think should want to make similar changes.

> What about simply open-coding sd_notify()?  sd_notify() just sends a
> message over a Unix socket, and the protocol it uses to do that is
> both documented and very simple.  sshd could simply implement the
> protocol itself.

Thanks.  That may be a good idea if we have to support that feature, but
I doubt we still do.  Some other distros that use systemd manage without
such functionality.

I dig up my e-mails from last August with a former Fedora OpenSSH
maintainer, and here's the original RH bug that prompted this in there:

Bug 1381997 - Systemctl reload sshd caused inactive service even if the service is running
https://bugzilla.redhat.com/show_bug.cgi?id=1381997

So it was a reliability issue.  It was also brought upstream and some
changes were made:

https://bugzilla.mindrot.org/show_bug.cgi?id=2641

and the patch actually originates from Debian, where they had seen a
similar issue:

https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=778913
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=809035

So maybe with newer upstream code, the combination of "Type=simple" and
"sshd -D" just works reliably.

Alexander
