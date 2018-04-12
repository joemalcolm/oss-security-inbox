X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2373" "Thursday" "12" "April" "2018" "19:13:27" "+0200" "Jakub Wilk" "jwilk@jwilk.net" "<20180412171327.vc5epogdi7ryc3te@jwilk.net>" "59" "Re: [oss-security] Terminal Control Chars" nil nil nil "4" "2018041217:13:27" "[oss-security] Terminal Control Chars" (number mark "U       jwilk@jwilk. Apr 12   59/2373  " thread-indent "\"Re: [oss-security] Terminal Control Chars\"\n") "<1523346797.16686.6@smtp.gmail.com>" ("<20180305175024.16801hoj775zje4g@webmail.alunos.dcc.fc.up.pt>" "<1523346797.16686.6@smtp.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9551 invoked by uid 550); 12 Apr 2018 17:13:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9525 invoked from network); 12 Apr 2018 17:13:44 -0000
Date: Thu, 12 Apr 2018 19:13:27 +0200
From: Jakub Wilk <jwilk@jwilk.net>
To: oss-security@lists.openwall.com
Message-ID: <20180412171327.vc5epogdi7ryc3te@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20180305175024.16801hoj775zje4g@webmail.alunos.dcc.fc.up.pt>
 <1523346797.16686.6@smtp.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <1523346797.16686.6@smtp.gmail.com>
User-Agent: NeoMutt/20180323
X-Ovh-Tracer-Id: 10645383619813562278
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedtgedriedtgdekkecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemuceftddtnecu
Subject: Re: [oss-security] Terminal Control Chars

* Gordo Lowrey <gordo@zeneval.com>, 2018-04-10, 03:53:
>>The correct solution would be to disallow the pasting of certain=20
>>control characters.
>
>I'm just gonna go out on a limb here, and say this is an unfounded=20
>assertion.
>
>Perhaps the correct solution would be to prevent the browser from=20
>copying invisible characters.

Do you mean control characters, or something else?

>If you're going to break some basic mechanic of human computer=20
>interaction,

Huh? Most users don't interact with their terminal-based software by=20
pasting control characters. I bet most people don't even realize that=20
it's even possible to do that. I've been using terminal emulators for 15=20
years, and the only time I willingly did such pastes was to test=20
exploits for this very problem.

If you have a practical use case for such interaction, please tell us=20
what is. I, for one, have no idea what this might be.

>Instead of worrying about sanitizing what is pasted, why not worry=20
>about sanitizing what is copied instead?

Why? Is it the browser fault that terminal emulators interpret some=20
characters in a funny way?

Besides, paste consumers have much better idea what needs to be=20
sanitized than paste producers.

* For software that access the clipboard directly, no sanitization is=20
needed. Yay!

* On some systems, if terminal is a cooked mode, control characters can=20
be escaped, usually with ^V. (But a paste producer can't possibly know=20
what the terminal mode or the escape character is going to be!)

* In bracketed paste mode, the only sequence that needs to be=20
neutralized is the one that leaves the mode.

>From egoistical point of view, I'd also prefer if this was fixed in my=20
terminal. On my system, I have multiple paste producers potentially=20
affected by this (web browser, two PDF readers, office suite, ...), but=20
only one terminal emulator installed. It's much easier for me to verify=20
that the terminal emulator behaves (it doesn't) than to check the rest=20
of the software involved in this mess.

BTW, a recent LWN article about terminal emulators briefly mentioned the=20
problem of pasting security:
https://lwn.net/Articles/749992/
(The article incorrectly states that urxvt's confirm-paste plugin=20
protects against this attack. Read the article comments to see why this=20
is not the case.)

--=20
Jakub Wilk
