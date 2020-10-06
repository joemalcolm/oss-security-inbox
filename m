X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3616" "Tuesday" "6" "October" "2020" "17:51:29" "-0400" "Steve Grubb" "sgrubb@redhat.com" "<801016241.0ifERbkFSE@x2>" "67" "Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" nil nil nil "10" "2020100621:51:29" "[oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" (number mark "U       sgrubb@redha Oct  6   67/3616  " thread-indent "\"Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?\"\n") "<20201006151706.GB45857@espresso.pseudorandom.co.uk>" ("<CAGUWgD_aZ6chnKWNf79_Ru=u=dFhMVX_qZEDv8tU1BajEx5ejw@mail.gmail.com>" "<5643462.lOV4Wx5bFT@x2>" "<20201006151706.GB45857@espresso.pseudorandom.co.uk>") nil nil nil nil nil nil nil "Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23779 invoked by uid 550); 6 Oct 2020 21:51:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23761 invoked from network); 6 Oct 2020 21:51:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1602021093;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=djCapmWjviS7ZmRcbhLyU2fkJIMEoEnVgPggyWPLOPE=;
	b=FGC8PFoqNRh+whxFN12j4/dK0Ly53fg/VYXdwEDMj91MP6hbAwdkkXIGygogs8AVHhbyOx
	JlK3OLzdV4p3o6fWf3zpAHRJviHcym5vO1yrGCZgd6fvrbFAdFjWmDhxs0kFS0jNxcioLg
	+PbQ5m9+CEiY5cCCtix3+6/z5qtlmGo=
X-MC-Unique: HnXoW0odOwKzxxChUef9dA-1
From: Steve Grubb <sgrubb@redhat.com>
To: oss-security@lists.openwall.com
Cc: Simon McVittie <smcv@debian.org>
Date: Tue, 06 Oct 2020 17:51:29 -0400
Message-ID: <801016241.0ifERbkFSE@x2>
Organization: Red Hat
In-Reply-To: <20201006151706.GB45857@espresso.pseudorandom.co.uk>
References: <CAGUWgD_aZ6chnKWNf79_Ru=u=dFhMVX_qZEDv8tU1BajEx5ejw@mail.gmail.com> <5643462.lOV4Wx5bFT@x2> <20201006151706.GB45857@espresso.pseudorandom.co.uk>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=sgrubb@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?

On Tuesday, October 6, 2020 11:17:06 AM EDT Simon McVittie wrote:
> On Mon, 05 Oct 2020 at 22:36:14 -0400, Steve Grubb wrote:
> > I will skip the whole discussion on access control. However to prove
> > security requires going through a Common Criteria certification. The
> > biggest issue is that the desktoptop uses dbus instantiation which does
> > not have the auid of the requesting process. Meaning audit cannot work.
> > 
> > The fix was kdus. That was rejected. But the issue remains. There cannot
> > be a secure desktop without auditing.

<snip>

> With dbus maintainer hat on, if there are facts that I can know about
> the (AF_UNIX socket belonging to the) requesting process in a way that
> does not involve race conditions, I'm happy to review patches to plumb
> them through D-Bus and make them available to other processes. This
> would have to look a lot like the recent addition of SO_PEERGROUPS
> (D-Bus representation: UnixGroupIDs) and less recently, SO_PEERSEC
> (LinuxSecurityLabel), so the prerequisite is the Linux kernel adding new
> SO_PEERTHING options that give the necessary information (or a *BSD, etc.
> kernel providing an analogous interface).
> 
> If audit is important to you, a new SO_PEERAUDIT that looks like
> SO_PEERCRED but carries a struct { session ID, loginuid } would make sense?

The main issue is that you want impersonation baked in to activation. For 
example, you have a clock application on the desktop. It cannot set the 
system clock because that needs privileges. So, enter dbus activation. It can 
start up a helper application with the right privileges and call 
clock_settime. But if you are auditing for time change, you see that root 
with auid=-1 did it. That is not what you want. You want the real credentials 
of who did it.

You want cooperating applications to be able to transfer auid/session to the 
helper application. This would have to be carefully done so that you don't 
enable forcing credentials on an unsuspecting app or credential stealing. So, 
the thought was let the kernel do it so that dbus isn't involved. The idea 
was that one would do a "give out my credentials", the other would say "give 
me credentials". But this was back when kdbus was being worked on. As a 
kernel module it can see both ends and make the transfer without anything 
leaving the kernel.

With dbus in user space, the kernel sees comm between client/dbus and dbus/
helper. It can't see how these belong together. I'm not certain that it can 
be done reliably with a user space process as an intermediary. That is unless 
during activation, it forks, closes all descriptors except the one to the 
client side and there is a convention for discovering your peer's fd once you 
start up as the helper. This would be a model where dbus steps out of the way 
for comm. But even then, you have to trust that there's no mixup on the fd's.


> As far as I'm aware, reading /proc is not suitable for this purpose,
> because the dbus-daemon retrieving this information for a particular pid
> can race with the process exiting and its pid being reused. If there was
> a SO_PEERPIDFD that provided race-free access to a pidfd for the initiator
> of the connection, that would maybe work? (As long as there's no mechanism
> by which a process can exec a setuid or otherwise privileged binary that
> can reset its audit session ID and/or loginuid.)

I beleive that loginuid can only be set if its currently -1 or you have 
CAP_AUDIT_CONTROL and its your own pid. But the main issue is how to connect 
the two processes with something in the middle?

Best Regards,
-Steve


