Received: (qmail 11900 invoked by uid 550); 31 Mar 2024 20:55:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11446 invoked from network); 31 Mar 2024 20:55:07 -0000
Date: Sun, 31 Mar 2024 22:55:02 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20240331205502.GA21426@openwall.com>
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de> <ZgcL9VUx6CQ5Wx/W@weckbecker.name> <20240329191926.rvyvzgtdpfwc256c@awork3.anarazel.de> <20240329214615.GA2610@openwall.com> <Zgc5qW_Q6fXNiPmH@itl-email>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zgc5qW_Q6fXNiPmH@itl-email>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] backdoor in upstream xz/liblzma leading to ssh server compromise

On Fri, Mar 29, 2024 at 05:58:49PM -0400, Demi Marie Obenour wrote:
> What about simply open-coding sd_notify()?  sd_notify() just sends a
> message over a Unix socket, and the protocol it uses to do that is
> both documented and very simple.  sshd could simply implement the
> protocol itself.

I just learned that this approach is favored by systemd upstream:

https://news.ycombinator.com/item?id=39867126

> poettering 2 days ago (2024-03-29)
> 
> Uh. systemd documents the protocol at various places and the protocol is
> trivial: a single text datagram sent to am AF_UNIX socket whose path you
> get via the NOTIFY_SOCKET. That's trivial to implement for any one with
> some basic unix programming knowledge. And i tell pretty much anyone who
> wants to listen that they should just implement the proto on their own
> if thats rhe only reason for a libsystemd dep otherwise. In particular
> non-C environments really should do their own native impl and not botjer
> wrapping libsystemd just for this.
> 
> But let me stress two other things:
> 
> Libselinux pulls in liblzma too and gets linked into tons more programs
> than libsystemd. And will end up in sshd too (at the very least via
> libpam/pam_selinux). And most of the really big distros tend do support
> selinux at least to some level. Hence systemd or not, sshd remains
> vulnerable by this specific attack.
> 
> With that in mind libsystemd git dropped the dep on liblzma actually,
> all compressors are now dlopen deps and thus only pulled in when needed.

The libselinux concern is important.  I've just checked a few systems
where libsystemd does pull liblzma, and on those libselinux does not.
However, I guess such systems do exist too?  PAM modules would have been
too late for the current backdoor, but the backdoor could be different
if that were the vector it needed to target.

"libsystemd git dropped the dep on liblzma" is this pull request:

"Dynamically load compression libraries #31550"
https://github.com/systemd/systemd/pull/31550

> teknoraver commented on Feb 29
> 
> Dynamically load compression libraries (LZ4, ZSTD, LZMA) so we can
> reduce the size of the initram images by omitting libraries which aren't
> really used.

Merged on March 5 (with a follow-up build fix on March 6).

Maybe this prompted the bad actors to act quicker.

Alexander
