X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["619" "Friday" "15" "June" "2018" "16:08:07" "+0300" "Georgi Guninski" "guninski@guninski.com" "<20180615130807.GB1898@sivokote.iziade.m$>" "15" "Re: [oss-security] Are `su user' and/or `sudo -u user sh' considered dangerous?" nil nil nil "6" "2018061513:08:07" "[oss-security] Are `su user' and/or `sudo -u user sh' considered dangerous?" (number mark "U       guninski@gun Jun 15   15/619   " thread-indent "\"Re: [oss-security] Are `su user' and/or `sudo -u user sh' considered dangerous?\"\n") "<20180614181259.s2qbbdaeudg4h5pz@jwilk.net>" ("<20180612095613.GC1073@sivokote.iziade.m$>" "<20180612113836.6flipg4zlq4fw4ue@jwilk.net>" "<20180613074043.GA1166@sivokote.iziade.m$>" "<20180613095453.GB1166@sivokote.iziade.m$>" "<20180614181259.s2qbbdaeudg4h5pz@jwilk.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1606 invoked by uid 550); 15 Jun 2018 13:12:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30256 invoked from network); 15 Jun 2018 13:08:48 -0000
Date: Fri, 15 Jun 2018 16:08:07 +0300
From: Georgi Guninski <guninski@guninski.com>
To: oss-security@lists.openwall.com
Message-ID: <20180615130807.GB1898@sivokote.iziade.m$>
References: <20180612095613.GC1073@sivokote.iziade.m$>
 <20180612113836.6flipg4zlq4fw4ue@jwilk.net>
 <20180613074043.GA1166@sivokote.iziade.m$>
 <20180613095453.GB1166@sivokote.iziade.m$>
 <20180614181259.s2qbbdaeudg4h5pz@jwilk.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180614181259.s2qbbdaeudg4h5pz@jwilk.net>
header: best read with a sniffer
Subject: Re: [oss-security] Are `su user' and/or `sudo -u user sh' considered
 dangerous?

On Thu, Jun 14, 2018 at 08:12:59PM +0200, Jakub Wilk wrote:
> Until su is fixed to allocate new pty, I recommend running it under a
> standalone terminal emulator, such as screen or tmux. This has also an
> advantage that it's possible to tell that the invoked program actually
> terminated, instead of just pretending to terminate and faking root shell
> UI.
>
Looks like util-linux currently supports pty's:
http://man7.org/linux/man-pages/man1/su.1.html
-P, --pty
              Create pseudo-terminal for the session.
...
This feature is EXPERIMENTAL for now and may be removed in the
              next releases.
 
