X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["959" "Monday" "2" "December" "2019" "17:50:43" "+0000" "Leonid Isaev" "leonid.isaev@ifax.com" "<20191202175043.GC28519@orca>" "27" "Re: [oss-security] virtual consoles" "^Date:" nil nil "12" "2019120217:50:43" "[oss-security] virtual consoles" (number mark "        leonid.isaev Dec  2   27/959   " thread-indent "\"Re: [oss-security] virtual consoles\"\n") "<20191202172811.GA7102@openwall.com>" ("<20191202165638.GA3235@thinkstation>" "<20191202172811.GA7102@openwall.com>") nil nil nil nil nil nil nil "Re: [oss-security] virtual consoles" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30130 invoked by uid 550); 2 Dec 2019 18:11:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12193 invoked from network); 2 Dec 2019 17:50:56 -0000
Message-ID: <20191202175043.GC28519@orca>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20191202165638.GA3235@thinkstation>
 <20191202172811.GA7102@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191202172811.GA7102@openwall.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
Date: Mon, 2 Dec 2019 17:50:43 +0000
From: Leonid Isaev <leonid.isaev@ifax.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] virtual consoles
To: oss-security@lists.openwall.com

On Mon, Dec 02, 2019 at 06:28:12PM +0100, Solar Designer wrote:
> On Mon, Dec 02, 2019 at 08:56:38AM -0800, Tavis Ormandy wrote:
> > Regardless of your position, this is certainly possible on desktop Linux
> > too, unprivileged users can start a new X server and switch virtual
> > console, even over ssh.
> > 
> > e.g.
> > 
> > $ dbus-send --system --print-reply --dest=org.freedesktop.login1 /org/freedesktop/login1/seat/seat0 org.freedesktop.login1.Seat.SwitchTo uint32:2
> > 
> > (note: object paths may vary by distro, change the 2 to a different
> > number if you're already on VT2, or seat0 if you're on a different seat)
> 
> If this in fact works over SSH and from a user account different than

Yes, it does.

> Why does this functionality even exist?

Because of the same reason why I have dbus on a Spark compute node: systemd :) 

> Maybe simply drop the misfeature?

That would break (at least) systemd user sessions I suppose...

Sincerely,
L.
