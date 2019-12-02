X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1317" "Monday" "2" "December" "2019" "17:46:38" "+0000" "Leonid Isaev" "leonid.isaev@ifax.com" "<20191202174638.GB28519@orca>" "27" "Re: [oss-security] virtual consoles" "^Date:" nil nil "12" "2019120217:46:38" "[oss-security] virtual consoles" (number mark "        leonid.isaev Dec  2   27/1317  " thread-indent "\"Re: [oss-security] virtual consoles\"\n") "<20191202165638.GA3235@thinkstation>" ("<20191202165638.GA3235@thinkstation>") nil nil nil nil nil nil nil "Re: [oss-security] virtual consoles" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29830 invoked by uid 550); 2 Dec 2019 18:11:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10097 invoked from network); 2 Dec 2019 17:46:51 -0000
Message-ID: <20191202174638.GB28519@orca>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20191202165638.GA3235@thinkstation>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191202165638.GA3235@thinkstation>
User-Agent: Mutt/1.12.2 (2019-09-21)
Date: Mon, 2 Dec 2019 17:46:38 +0000
From: Leonid Isaev <leonid.isaev@ifax.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] virtual consoles
To: oss-security@lists.openwall.com

On Mon, Dec 02, 2019 at 08:56:38AM -0800, Tavis Ormandy wrote:
> $ dbus-send --system --print-reply --dest=org.freedesktop.login1 /org/freedesktop/login1/seat/seat0 org.freedesktop.login1.Seat.SwitchTo uint32:2
> 
> (note: object paths may vary by distro, change the 2 to a different
> number if you're already on VT2, or seat0 if you're on a different seat)
> 
> The obvious attack is to switch to a fake screensaver, then switch back
> after authentication, or make a fake gdm login.
> 
> I'm sure this has been documented a million times, and most of us will
> be familiar with the "Secure Attention Key" idea, but this is slightly
> different from that attack as it's possible for an entirely remote user
> (active, physically local users usually have additional privileges, as
> it's assumed they can tamper with hardware anyway, etc).
> 
> Should this have some policykit action requirement, or require physical
> presence? I don't know the answer.

Pls no policykit... This "attack" works only because there is systemd, so that
is where such calls should be blocked, IMHO.

It turns out, that if as an unprivileged user I do "pkill -9 systemd" (this
line is infact in my .bash_profile) to eliminate all systemd --user processes,
this still works, i.e. I am able to send messages to the system bus.

Thanks,
L.
