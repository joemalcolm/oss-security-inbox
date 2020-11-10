X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2519" "Tuesday" "10" "November" "2020" "21:43:21" "+0300" "Vladimir D. Seleznev" "vseleznv@altlinux.org" "<20201110184321.GA2311015@portlab>" "46" "Re: [oss-security] The importance of mutual authentication: Local Privilege Escalation in X11" nil nil nil "11" "2020111018:43:21" "[oss-security] The importance of mutual authentication: Local Privilege Escalation in X11" (number mark "U       vseleznv@alt Nov 10   46/2519  " thread-indent "\"Re: [oss-security] The importance of mutual authentication: Local Privilege Escalation in X11\"\n") "<d4b7741b-24aa-c4ca-adb7-71db69dc27ce@gmail.com>" ("<606c5dc2-b39c-2547-d00c-9c44778303b9@gmail.com>" "<20201110164347.GA2236829@portlab>" "<d4b7741b-24aa-c4ca-adb7-71db69dc27ce@gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] The importance of mutual authentication: Local Privilege Escalation in X11" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23764 invoked by uid 550); 10 Nov 2020 18:51:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15829 invoked from network); 10 Nov 2020 18:43:33 -0000
Date: Tue, 10 Nov 2020 21:43:21 +0300
From: "Vladimir D. Seleznev" <vseleznv@altlinux.org>
To: oss-security@lists.openwall.com
Cc: "Demi M. Obenour" <demiobenour@gmail.com>
Message-ID: <20201110184321.GA2311015@portlab>
References: <606c5dc2-b39c-2547-d00c-9c44778303b9@gmail.com>
 <20201110164347.GA2236829@portlab>
 <d4b7741b-24aa-c4ca-adb7-71db69dc27ce@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d4b7741b-24aa-c4ca-adb7-71db69dc27ce@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [oss-security] The importance of mutual authentication: Local
 Privilege Escalation in X11

On Tue, Nov 10, 2020 at 12:51:27PM -0500, Demi M. Obenour wrote:
> On 11/10/20 11:43 AM, Vladimir D. Seleznev wrote:
> > On Mon, Nov 09, 2020 at 11:00:50AM -0500, Demi M. Obenour wrote:
> >> [...skip...]
> >> ### Placing the X socket in a secure directory
> >>
> >> X11 is usually used with AF_UNIX sockets.  In this case, performing
> >> the attack requires that either the directory containing the X socket
> >> be writable by an attacker, or that the abstract namespace is in use.
> >> If neither condition is met, the attack is thwarted.  In this case, the
> >> server is implicitly authenticated by being able to write to a location
> >> on the file system.  On systems other than macOS, placing the X socket
> >> in a non-default directory requires changes to X.  On Linux, this also
> >> requires that abstract sockets be disabled in the X client libraries.
> >>
> >> A user’s home directory is a safe location on virtually all systems.
> >> /run/user/$UID is a good choice when it is secure and available,
> >> such as on systemd-based Linux distributions.  /tmp/.X11-unix can
> >> be made safer by ensuring that it is created before any untrusted
> >> code runs and ensuring that untrusted code cannot write to it.
> >> For example, it could be owned by root and have 0755 permissions.
> >> For this to be effective, untrusted code must not be allowed to start
> >> if creating /tmp/.X11-unix fails; this can be enforced by dropping
> >> into single-user mode in this case.  Furthermore, if the standard
> >> location for lock files (/tmp/.X*-lock) is used, there is still a
> >> potential denial of service, as anyone can create a lock file and
> >> prevent the legitimate server from starting.
> > 
> > This contravenes the ability to run X11 client from another user. The
> > idea is that X11 server allows any clients with right credentials
> > regardless of theirs processes UID or GID to connect to the server.
> 
> Indeed it does, and I mention cryptographic authentication mechanisms
> below.  Instead of /tmp, /run/X11 would work just as well.  It is
> the mutual authentication that matters.

Do I understand you correctly: you propose to forbid running X11 clients
which processes belong to another users? In that case it is a bad idea:
I would like to run untrusted clients with special UIDs. Or if I
understand you wrongly, please explain how client of other user can
connect to the socket placed in /run/user/$UID with these strict access
permissions 0700?

-- 
   WBR,
   Vladimir D. Seleznev
