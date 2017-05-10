X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3805" "Wednesday" "10" "May" "2017" "11:54:56" "+0100" "Simon McVittie" "smcv@debian.org" "<20170510105456.nosikak5pgs7fp7b@perpetual.pseudorandom.co.uk>" "74" "Re: [oss-security] generic kde LPE" nil nil nil "5" "2017051010:54:56" "[oss-security] generic kde LPE" (number mark "U       smcv@debian. May 10   74/3805  " thread-indent "\"Re: [oss-security] generic kde LPE\"\n") "<20170510100504.GA17705@suse.de>" ("<20170510100504.GA17705@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6074 invoked by uid 550); 10 May 2017 10:55:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6045 invoked from network); 10 May 2017 10:55:24 -0000
Date: Wed, 10 May 2017 11:54:56 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Cc: Albert Astals Cid <aacid@kde.org>
Message-ID: <20170510105456.nosikak5pgs7fp7b@perpetual.pseudorandom.co.uk>
References: <20170510100504.GA17705@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170510100504.GA17705@suse.de>
User-Agent: NeoMutt/20170306 (1.8.0)
Subject: Re: [oss-security] generic kde LPE

On Wed, 10 May 2017 at 12:05:04 +0200, Sebastian Krahmer wrote:
> The callerID usually looks like ":1.123"
> and is a DBUS unique name that maps to the sender of the message.
> You can think of it like the source address of an IP packet.
> This ID should be obtained via a DBUS function while the message is
> arriving, so it can actually be trusted and used as a subject for polit
> authorizations when using systembus-name subjects. Allowing callers to
> arbitrarily choosing values for this ID is taking down the whole idea
> of authentication and authorization.

Yes - the analogy "unique name is like an IP address" is a good one here.
When receiving an IP packet, you might trust the source address in the IP
header, but not an IP address mentioned in the packet's body (payload).
It's the same in D-Bus.

It's also suspicious that the "callerID" is a byte array (D-Bus type 'ay');
that makes me wonder whether it was originally intended to be something
other than a D-Bus unique name. D-Bus unique names are constrained to a
subset of printable ASCII, and in particular are always valid for the
D-Bus string type 's' (which contains arbitrary UTF-8, excluding U+0000,
overlong encodings and non-characters), so it is not necessary to use
a byte-array.

This is probably a good opportunity for me to clarify which
security-sensitive things you can rely on receiving in a trusted way[1]
via D-Bus. They are:

* The unique name of the message sender (dbus_message_get_sender(),
  g_dbus_method_invocation_get_sender() and similar APIs)

* The Unix uid corresponding to a unique name, available by calling
  the GetConnectionCredentials or GetConnectionUnixUser method on
  the dbus-daemon's org.freedesktop.DBus bus name and interface

* The Unix pid corresponding to a unique name, available by calling
  the GetConnectionCredentials or GetConnectionUnixProcessID method
  (but be careful: you can't safely use this pid to look up further
  information in /proc[2])

* The Linux LSM (AppArmor, SELinux, Smack etc.) label corresponding
  to a unique name, available by calling the GetConnectionCredentials
  method

It is not coincidental that these match the information that the
dbus-daemon can get from the kernel in a trusted way by querying
the AF_UNIX socket that it uses to communicate with the peer, via
the SO_PEERCRED and SO_PEERSEC socket options or their non-Linux
equivalents[3].

(By the way, the protocol is called D-Bus and the reference implementation
is dbus. There is nothing called DBUS, and it isn't an acronym.)

Regards,
    S

[1] This requires trusting the dbus-daemon to not lie to you, which in
    practice you must, unless you do some sort of out-of-band
    authentication. On practical Unix systems the system dbus-daemon
    is a security boundary (a trusted component, in the infosec sense that
    it is in a position where it could break your security policy). If
    using LSMs, the session dbus-daemon is potentially also a security
    boundary for the security domains represented by LSM labels.
[2] This would be unsafe because a malicious process could change the
    apparent credentials of a particular pid by queuing up outgoing
    messages that it wants to be interpreted as though their sender had
    higher privilege, then exec()ing a setuid or similarly
    privileged executable. Rather more tenuously, it could also try
    arranging for the 15-bit process ID space to wrap around and then
    exiting at just the right time before a more privileged process
    forks, although that probably isn't a practically feasible attack.
[3] SO_PEERCRED technically also tells us the primary gid,
    but we don't expose that information in dbus-daemon, because the
    distinction between primary and supplementary group IDs seems
    needlessly confusing.
