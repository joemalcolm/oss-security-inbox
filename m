X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["976" "Monday" "2" "December" "2019" "18:28:12" "+0100" "Solar Designer" "solar@openwall.com" "<20191202172811.GA7102@openwall.com>" "25" "Re: [oss-security] virtual consoles" "^Date:" nil nil "12" "2019120217:28:12" "[oss-security] virtual consoles" (number mark "        solar@openwa Dec  2   25/976   " thread-indent "\"Re: [oss-security] virtual consoles\"\n") "<20191202165638.GA3235@thinkstation>" ("<20191202165638.GA3235@thinkstation>") nil nil nil nil nil nil nil "Re: [oss-security] virtual consoles" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23690 invoked by uid 550); 2 Dec 2019 17:28:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23588 invoked from network); 2 Dec 2019 17:28:19 -0000
Message-ID: <20191202172811.GA7102@openwall.com>
References: <20191202165638.GA3235@thinkstation>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191202165638.GA3235@thinkstation>
User-Agent: Mutt/1.4.2.3i
Date: Mon, 2 Dec 2019 18:28:12 +0100
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] virtual consoles
To: oss-security@lists.openwall.com

On Mon, Dec 02, 2019 at 08:56:38AM -0800, Tavis Ormandy wrote:
> Regardless of your position, this is certainly possible on desktop Linux
> too, unprivileged users can start a new X server and switch virtual
> console, even over ssh.
> 
> e.g.
> 
> $ dbus-send --system --print-reply --dest=org.freedesktop.login1 /org/freedesktop/login1/seat/seat0 org.freedesktop.login1.Seat.SwitchTo uint32:2
> 
> (note: object paths may vary by distro, change the 2 to a different
> number if you're already on VT2, or seat0 if you're on a different seat)

If this in fact works over SSH and from a user account different than
the one logged in on the currently active virtual console, then I'd say
it's a vulnerability on its own, regardless of the social engineering
aspects you mention.

Why does this functionality even exist?

> Should this have some policykit action requirement, or require physical
> presence? I don't know the answer.

Maybe simply drop the misfeature?

Alexander
