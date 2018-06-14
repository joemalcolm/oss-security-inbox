X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1165" "Thursday" "14" "June" "2018" "20:12:59" "+0200" "Jakub Wilk" "jwilk@jwilk.net" "<20180614181259.s2qbbdaeudg4h5pz@jwilk.net>" "31" "Re: [oss-security] Are `su user' and/or `sudo -u user sh' considered dangerous?" nil nil nil "6" "2018061418:12:59" "[oss-security] Are `su user' and/or `sudo -u user sh' considered dangerous?" (number mark "U       jwilk@jwilk. Jun 14   31/1165  " thread-indent "\"Re: [oss-security] Are `su user' and/or `sudo -u user sh' considered dangerous?\"\n") "<20180613095453.GB1166@sivokote.iziade.m$>" ("<20180612095613.GC1073@sivokote.iziade.m$>" "<20180612113836.6flipg4zlq4fw4ue@jwilk.net>" "<20180613074043.GA1166@sivokote.iziade.m$>" "<20180613095453.GB1166@sivokote.iziade.m$>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24112 invoked by uid 550); 14 Jun 2018 18:13:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24091 invoked from network); 14 Jun 2018 18:13:12 -0000
Date: Thu, 14 Jun 2018 20:12:59 +0200
From: Jakub Wilk <jwilk@jwilk.net>
To: oss-security@lists.openwall.com
Message-ID: <20180614181259.s2qbbdaeudg4h5pz@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20180612095613.GC1073@sivokote.iziade.m$>
 <20180612113836.6flipg4zlq4fw4ue@jwilk.net>
 <20180613074043.GA1166@sivokote.iziade.m$>
 <20180613095453.GB1166@sivokote.iziade.m$>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20180613095453.GB1166@sivokote.iziade.m$>
User-Agent: NeoMutt/20180512
X-Ovh-Tracer-Id: 12694802927149504422
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedthedrleefgdduvddvucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecufedttdenuc
Subject: Re: [oss-security] Are `su user' and/or `sudo -u user sh' considered
 dangerous?

* Georgi Guninski <guninski@guninski.com>, 2018-06-13, 12:54:
>>Is there POC for relatively new distros?
>debian 8 and 9 are vulnerable to su - hostile:
>https://j.ludost.net/blog/archives/2018/06/13/ancient_su_-_hostile_vulnerability_in_debian_8_and_9/index.html

(Please fix unescaped "<" and "&" characters on that page.)

For Debian this bug is tracked here:
https://bugs.debian.org/628843

>what about the second potential vulnerability: reading root's tty after 
>the session is closed with something like tee(1) ?

The list of nasty things you can do when you get your hands on the tty 
fd is probably very long...

>several sources suggest disabling TIOCSTI or using setsid(), are they 
>enough?

setsid() defeats TIOCSTI (while breaking other things like job 
control...); it doesn't stop other attacks that don't require 
controlling terminal.

Until su is fixed to allocate new pty, I recommend running it under a 
standalone terminal emulator, such as screen or tmux. This has also an 
advantage that it's possible to tell that the invoked program actually 
terminated, instead of just pretending to terminate and faking root 
shell UI.

-- 
Jakub Wilk
