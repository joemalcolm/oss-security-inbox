X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1132" "Tuesday" "10" "April" "2018" "13:02:27" "+0200" "Christian Brabandt" "cb@256bit.org" "<20180410110227.GE19724@256bit.org>" "33" "Re: [oss-security] Terminal Control Chars" nil nil nil "4" "2018041011:02:27" "[oss-security] Terminal Control Chars" (number mark "U       cb@256bit.or Apr 10   33/1132  " thread-indent "\"Re: [oss-security] Terminal Control Chars\"\n") "<1523346797.16686.6@smtp.gmail.com>" ("<20180305175024.16801hoj775zje4g@webmail.alunos.dcc.fc.up.pt>" "<1523346797.16686.6@smtp.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15388 invoked by uid 550); 10 Apr 2018 11:04:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13941 invoked from network); 10 Apr 2018 11:02:38 -0000
Date: Tue, 10 Apr 2018 13:02:27 +0200
From: Christian Brabandt <cb@256bit.org>
To: oss-security@lists.openwall.com
Message-ID: <20180410110227.GE19724@256bit.org>
References: <20180305175024.16801hoj775zje4g@webmail.alunos.dcc.fc.up.pt>
 <1523346797.16686.6@smtp.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1523346797.16686.6@smtp.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: Re: [oss-security] Terminal Control Chars


On Di, 10 Apr 2018, Gordo Lowrey wrote:

> On Mon, Mar 5, 2018 at 11:50 AM, up201407890@alunos.dcc.fc.up.pt wrote:
> >The correct solution would be to disallow the pasting of certain control
> >characters.

FWIW: The vim poc has been "fixed" as of 
https://github.com/vim/vim/releases/tag/v8.0.1587

> I'm just gonna go out on a limb here, and say this is an unfounded
> assertion.
> 
> Perhaps the correct solution would be to prevent the browser from copying
> invisible characters.
> 
> If you're going to break some basic mechanic of human computer interaction,
> at least don't break my damn terminal (not that I use VTE, it doesn't
> support OSC 52, among others), but the principle stands... Instead of
> worrying about sanitizing what is pasted, why not worry about sanitizing
> what is copied instead?

That was also the conclusion on the vim-dev list.

There is a similar Debian bug report against rxvt-unicode where the same 
conclusion is drawn:
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=787628#15

And the corresponding mozilla/firefox bug:
https://bugzilla.mozilla.org/show_bug.cgi?id=637895

Best,
Christian
