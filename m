X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1131" "Tuesday" "3" "December" "2019" "12:34:14" "+0000" "Simon McVittie" "smcv@debian.org" "<20191203123414.GA37156@espresso.pseudorandom.co.uk>" "23" "Re: [oss-security] virtual consoles" "^Date:" nil nil "12" "2019120312:34:14" "[oss-security] virtual consoles" (number mark "        smcv@debian. Dec  3   23/1131  " thread-indent "\"Re: [oss-security] virtual consoles\"\n") "<20191202165638.GA3235@thinkstation>" ("<20191202165638.GA3235@thinkstation>") nil nil nil nil nil nil nil "Re: [oss-security] virtual consoles" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17825 invoked by uid 550); 3 Dec 2019 12:34:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17804 invoked from network); 3 Dec 2019 12:34:33 -0000
Message-ID: <20191203123414.GA37156@espresso.pseudorandom.co.uk>
References: <20191202165638.GA3235@thinkstation>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191202165638.GA3235@thinkstation>
User-Agent: Mutt/1.12.2 (2019-09-21)
Date: Tue, 3 Dec 2019 12:34:14 +0000
From: Simon McVittie <smcv@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] virtual consoles
To: oss-security@lists.openwall.com

On Mon, 02 Dec 2019 at 08:56:38 -0800, Tavis Ormandy wrote:
> unprivileged users can start a new X server and switch virtual
> console, even over ssh.
> 
> e.g.
> 
> $ dbus-send --system --print-reply --dest=org.freedesktop.login1 /org/freedesktop/login1/seat/seat0 org.freedesktop.login1.Seat.SwitchTo uint32:2

If a uid who is not already the owner of the current VT on the seat can
do this, then that's probably a bug? If you think so, please report it
to the maintainers of logind (which is the component that would have to
change to address this).

I would have expected this to be gated by a check that the uid of the
caller (the D-Bus client, in this case the dbus-send process) matches the
uid of the current VT on that seat (so you can voluntarily switch away
from your own session, but other users can't force you to), or a polkit
check that the caller is root-equivalent, or some combination of those.
In particular, checking that the uid matches the VT's owner's uid would be
enough to let unprivileged X and Wayland servers implement the expected
"switch to other VT" handling for Ctrl+Alt+F1..Ctrl+Alt+F12.

    smcv
