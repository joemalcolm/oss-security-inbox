X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2701" "Tuesday" "10" "November" "2020" "19:43:47" "+0300" "Vladimir D. Seleznev" "vseleznv@cs.msu.ru" "<20201110164347.GA2236829@portlab>" "50" "Re: [oss-security] The importance of mutual authentication: Local Privilege Escalation in X11" nil nil nil "11" "2020111016:43:47" "[oss-security] The importance of mutual authentication: Local Privilege Escalation in X11" (number mark "U       vseleznv@cs. Nov 10   50/2701  " thread-indent "\"Re: [oss-security] The importance of mutual authentication: Local Privilege Escalation in X11\"\n") "<606c5dc2-b39c-2547-d00c-9c44778303b9@gmail.com>" ("<606c5dc2-b39c-2547-d00c-9c44778303b9@gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] The importance of mutual authentication: Local Privilege Escalation in X11" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19966 invoked by uid 550); 10 Nov 2020 17:57:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17671 invoked from network); 10 Nov 2020 16:43:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=cs.msu.ru;
	s=dkim; h=Subject:In-Reply-To:Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:Message-ID:Cc:To:From:Date:Sender:Reply-To:Content-ID
	:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
	Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe
	:List-Post:List-Owner:List-Archive;
	bh=CSiPfSTepKAtODt3KWx3hC7GKqYVCERboQJz2XSfVn0=; b=ZDSmPJbmpwVLnyyAyarEkR7fKM
	CYyv38erVNPxpuK4T74Oa/+jG5CiPAsQ1OvELDYyI550vREZIzHrg4/75F2YhWxM7PZHJIEgeCWqx
	uxEa4V8fif+rnWkHhwIozSRIovO2zTw+Y49mgtgKVUx81WQU9Ll47Yl5ROgDX1+JD1CmORCLvlHGK
	G95n0Vt4JTrqv8hIMExBXMKJy0d9yBjMKiG1+jMQ4i1IpQuqKuBX6JN/lOPbkSMfxZTw5VuiUhXz1
	erw/g1tS19WAIEMflBqemORDikBxht1BH28qbQvCUszSeSy5BaWADGXvQVbyc6PTG2PMX+bSGcg+2
	P9YTcjyA==;
Date: Tue, 10 Nov 2020 19:43:47 +0300
From: "Vladimir D. Seleznev" <vseleznv@cs.msu.ru>
To: oss-security@lists.openwall.com
Cc: "Demi M. Obenour" <demiobenour@gmail.com>
Message-ID: <20201110164347.GA2236829@portlab>
References: <606c5dc2-b39c-2547-d00c-9c44778303b9@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <606c5dc2-b39c-2547-d00c-9c44778303b9@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 46.39.229.63
X-SA-Exim-Mail-From: vseleznv@cs.msu.ru
X-SA-Exim-Version: 4.2.1
X-SA-Exim-Scanned: Yes (on mail.cs.msu.ru)
Subject: Re: [oss-security] The importance of mutual authentication: Local
 Privilege Escalation in X11

On Mon, Nov 09, 2020 at 11:00:50AM -0500, Demi M. Obenour wrote:
> [...skip...]
> ### Placing the X socket in a secure directory
> 
> X11 is usually used with AF_UNIX sockets.  In this case, performing
> the attack requires that either the directory containing the X socket
> be writable by an attacker, or that the abstract namespace is in use.
> If neither condition is met, the attack is thwarted.  In this case, the
> server is implicitly authenticated by being able to write to a location
> on the file system.  On systems other than macOS, placing the X socket
> in a non-default directory requires changes to X.  On Linux, this also
> requires that abstract sockets be disabled in the X client libraries.
> 
> A user’s home directory is a safe location on virtually all systems.
> /run/user/$UID is a good choice when it is secure and available,
> such as on systemd-based Linux distributions.  /tmp/.X11-unix can
> be made safer by ensuring that it is created before any untrusted
> code runs and ensuring that untrusted code cannot write to it.
> For example, it could be owned by root and have 0755 permissions.
> For this to be effective, untrusted code must not be allowed to start
> if creating /tmp/.X11-unix fails; this can be enforced by dropping
> into single-user mode in this case.  Furthermore, if the standard
> location for lock files (/tmp/.X*-lock) is used, there is still a
> potential denial of service, as anyone can create a lock file and
> prevent the legitimate server from starting.

This contravenes the ability to run X11 client from another user. The
idea is that X11 server allows any clients with right credentials
regardless of theirs processes UID or GID to connect to the server.

> I recommend using /run/user/$UID when it exists, is owned by the user,
> and has 0700 permissions.  Otherwise, a user’s home directory (or
> subfolder thereof) is an acceptable fallback.  I do not recommend
> continuing to use /tmp/.X11-unix, due to the risks outlined above.
> 
> ### Explicit checking of peer credentials
> 
> When `AF_UNIX` sockets are used (the most common case), the
> client can check the server’s credentials using `SO_PEERCRED`,
> `SCM_CREDENTIALS`, or another platform-specific mechanism.  The X.org
> server already has the code to check a peer’s credentials, and can
> be configured to use this instead of `~/.Xauthority`.  The set of
> trusted user IDs is system-dependent.  Generally, it should include
> the superuser and the UID of the X client, but on some systems (such
> as OpenBSD), the X server runs as a dedicated non-privileged user,
> which may also need to be included in the trusted UID list.

-- 
   WBR,
   Vladimir D. Seleznev
