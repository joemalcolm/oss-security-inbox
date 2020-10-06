X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2218" "Tuesday" "6" "October" "2020" "16:17:06" "+0100" "Simon McVittie" "smcv@debian.org" "<20201006151706.GB45857@espresso.pseudorandom.co.uk>" "40" "Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" nil nil nil "10" "2020100615:17:06" "[oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" (number mark "U       smcv@debian. Oct  6   40/2218  " thread-indent "\"Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?\"\n") "<5643462.lOV4Wx5bFT@x2>" ("<CAGUWgD_aZ6chnKWNf79_Ru=u=dFhMVX_qZEDv8tU1BajEx5ejw@mail.gmail.com>" "<20201005204820.GA8410@openwall.com>" "<5643462.lOV4Wx5bFT@x2>") nil nil nil nil nil nil nil "Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15591 invoked by uid 550); 6 Oct 2020 15:17:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15573 invoked from network); 6 Oct 2020 15:17:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	 s=smtpauto.master; h=In-Reply-To:Content-Type:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description;
	bh=RY8tkVdQVqUUaJM2GyL039l7tz3LTt+EK9iVUbu6q7c=; b=CXWRil1w5q+FK9iCzZHXBDmGIh
	WInB0GLLPBwxh51+fjBQ7mr7mQQd90hiFamyBW8lxetEqYC2VyGPnksNbl9mcNE33R2WSu4YcbmcS
	NgSISLvAnmzjB+2hvRAm/EdPNixN0xnZztL8Mz8dXiJ+sUkwq9TQvcT0/OBLxZJBM51mMvQ/kydux
	Ol/rEcScevusGi76viYBXat7D1gC3MKaU9vV/kAenLSvXNmFooOVXdnJ7GUKkExV6cNotRoM1xGJH
	D6Ob1bCHMlE73ayLTH59KEvfaeJClJi1hnIrRlTVFO/7l+XOV5gAIfizjx6HBRvKkP+7cLLQBqNtC
	tshJMmKQ==;
Date: Tue, 6 Oct 2020 16:17:06 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20201006151706.GB45857@espresso.pseudorandom.co.uk>
References: <CAGUWgD_aZ6chnKWNf79_Ru=u=dFhMVX_qZEDv8tU1BajEx5ejw@mail.gmail.com>
 <20201005204820.GA8410@openwall.com>
 <5643462.lOV4Wx5bFT@x2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5643462.lOV4Wx5bFT@x2>
Subject: Re: [oss-security] major changes if gnu/linux dominates the desktop
 and/or mobile market?

On Mon, 05 Oct 2020 at 22:36:14 -0400, Steve Grubb wrote:
> I will skip the whole discussion on access control. However to prove security 
> requires going through a Common Criteria certification. The biggest issue is 
> that the desktoptop uses dbus instantiation which does not have the auid of 
> the requesting process. Meaning audit cannot work.
> 
> The fix was kdus. That was rejected. But the issue remains. There cannot be a 
> secure desktop without auditing.

That depends on your threat model. If the attack you are defending against
is local user Alice being attacked by malicious privileged local user Bob,
then, yes, knowing which processes belong to Bob is necessary.

However, if the attack you are defending against is Alice's email client
being attacked by a malicious or compromised game that is also running
as Alice, then auids (and uids in general) are not interesting. This is
the security boundary that Flatpak, Snap, Firejail are trying to put up.

With dbus maintainer hat on, if there are facts that I can know about
the (AF_UNIX socket belonging to the) requesting process in a way that
does not involve race conditions, I'm happy to review patches to plumb
them through D-Bus and make them available to other processes. This
would have to look a lot like the recent addition of SO_PEERGROUPS
(D-Bus representation: UnixGroupIDs) and less recently, SO_PEERSEC
(LinuxSecurityLabel), so the prerequisite is the Linux kernel adding new
SO_PEERTHING options that give the necessary information (or a *BSD, etc.
kernel providing an analogous interface).

If audit is important to you, a new SO_PEERAUDIT that looks like
SO_PEERCRED but carries a struct { session ID, loginuid } would make sense?

As far as I'm aware, reading /proc is not suitable for this purpose,
because the dbus-daemon retrieving this information for a particular pid
can race with the process exiting and its pid being reused. If there was
a SO_PEERPIDFD that provided race-free access to a pidfd for the initiator
of the connection, that would maybe work? (As long as there's no mechanism
by which a process can exec a setuid or otherwise privileged binary that
can reset its audit session ID and/or loginuid.)

    smcv
