X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4232" "Friday" "12" "July" "2019" "20:12:07" "+0200" "Steffen Nurpmeso" "steffen@sdaoden.eu" "<20190712181207.I0_DA%steffen@sdaoden.eu>" "85" "Re: [oss-security] Privileged File Access from Desktop Applications" "^Date:" nil nil "7" "2019071218:12:07" "[oss-security] Privileged File Access from Desktop Applications" (number mark "        steffen@sdao Jul 12   85/4232  " thread-indent "\"Re: [oss-security] Privileged File Access from Desktop Applications\"\n") "<20190712121202.403b2f5f@jabberwock.cb.piermont.com>" ("<200975c0f23706ce513744052225ea7dc9842206.camel@suse.com>" "<20190709113036.0f12d057@jabberwock.cb.piermont.com>" "<9148ee55db2cabb111f790513413823996d04cb6.camel@suse.com>" "<20190711093326.328948dc@jabberwock.cb.piermont.com>" "<de14296ba908c162036a15b1aeda95586ff8ba14.camel@suse.com>" "<20190711114710.09ab5ad9@jabberwock.cb.piermont.com>" "<20190711202015.GA24270@espresso.pseudorandom.co.uk>" "<20190711203714.7f3019ad@jabberwock.cb.piermont.com>" "<eLEcaAZ84viV-VsSdpXT33_w8eR6Sg6SPnu8naoZWbu5LE7Dm9Tn6HawkbPVhQXfCToNDJBsX7JZ_fZHsDj4xSp9UCrgBltJaT65sR3NUu4=@protonmail.ch>" "<20190712115326.5db9130a@jabberwock.cb.piermont.com>" "<20190712121202.403b2f5f@jabberwock.cb.piermont.com>") nil nil nil nil nil nil nil "Re: [oss-security] Privileged File Access from Desktop Applications" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3088 invoked by uid 550); 12 Jul 2019 18:43:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30423 invoked from network); 12 Jul 2019 18:12:21 -0000
Message-ID: <20190712181207.I0_DA%steffen@sdaoden.eu>
In-Reply-To: <20190712121202.403b2f5f@jabberwock.cb.piermont.com>
References: <200975c0f23706ce513744052225ea7dc9842206.camel@suse.com>
 <20190709113036.0f12d057@jabberwock.cb.piermont.com>
 <9148ee55db2cabb111f790513413823996d04cb6.camel@suse.com>
 <20190711093326.328948dc@jabberwock.cb.piermont.com>
 <de14296ba908c162036a15b1aeda95586ff8ba14.camel@suse.com>
 <20190711114710.09ab5ad9@jabberwock.cb.piermont.com>
 <20190711202015.GA24270@espresso.pseudorandom.co.uk>
 <20190711203714.7f3019ad@jabberwock.cb.piermont.com>
 <eLEcaAZ84viV-VsSdpXT33_w8eR6Sg6SPnu8naoZWbu5LE7Dm9Tn6HawkbPVhQXfCToNDJBsX7JZ_fZHsDj4xSp9UCrgBltJaT65sR3NUu4=@protonmail.ch>
 <20190712115326.5db9130a@jabberwock.cb.piermont.com>
 <20190712121202.403b2f5f@jabberwock.cb.piermont.com>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.13-119-gab75c117
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Date: Fri, 12 Jul 2019 20:12:07 +0200
From: Steffen Nurpmeso <steffen@sdaoden.eu>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Privileged File Access from Desktop
 Applications
To: oss-security@lists.openwall.com

Perry E. Metzger wrote in <20190712121202.403b2f5f@jabberwock.cb.piermon\
t.com>:
 |On Fri, 12 Jul 2019 11:53:26 -0400 "Perry E. Metzger"
 |<perry@piermont.com> wrote:
 |>>> What's the right way to handle this stuff? Capabilities,
 |>>> probably. It's what they're designed for.
 |>> 
 |>> They're completely not designed for this case. Setting
 |>> CAP_DAC_OVERRIDE or CAP_SYS_ADMIN is very close to SUID root. See:
 |>> https://grsecurity.net/false_boundaries_and_arbitrary_code_execution.php
 |> 
 |> Those aren't capabilities. Those are this POSIX mechanism that got
 |> the same name for no good reason and doesn't do anything like what
 |> an actual capability system does.
 |
 |It occurs to me that people without a background in computer security
 |might not know what a capability actually is, or how a capability
 |based security system manages access control.

Some people are too lazy to switch to a different graphical
console or terminal, or are settled on using their very own
graphical editor in the very current graphical session, instead of
indirecting through sshfs or simply doing a ssh to root in some
graphical console on the current box, and edit through that.

I personally have a TLS setup and a SSH setup and a PGP (GnuPG
actually) setup, and there is a PAM setup here with passwords not
some (Yubi)key, and i also have some encfs which could make many
of you shiver (since it is not the block level GELI i think or
dmcrypt/LUKS on Linux), that makes five things to care about, and
five things people have to audit and often do not, even though
many are talking, with best intentions.

I do not have dbus running except when firefox is started (which
hangs often for scripts sourced from derstandard.at especially
when opening several tabs there, looking at images, whatever,
twice yesterday and i am not sooo active, so that is on the bus),
which i have a special account for.  (Two, in fact.)

The Tso of Linux once told how he performs a git commit to the
Linux kernel, and it was about plugging in some keycard into some
cardreader in order to sign.  If you pass a border or in police
control you have to show your passport.  If i want to edit
a system configuration file i have to type the root password (no
XKey here still), either for sudo/super/doas/su or login.  If
a younger person thinks this sucks i understand in parts, but i am
almost certain he is the one who screams for security when
something bad happens and takes away the toy.
No to webmin, no to admin://, no to sending mails from within
TheGimp, that all can be done in a better way from within emacs.
Hasta la victoria siempre.  Some things just don't work out.

 |This Wikipedia page:
 |https://en.wikipedia.org/wiki/Capability-based_security
 |isn't the best, but it does have good pointers to real explanations.
 |
 |For a look at how you can implement a capability system on top
 |of Unix, see Capsicum, which was built for FreeBSD but never actually
 |ported to Linux (which is sad and should be corrected):
 |https://www.cl.cam.ac.uk/research/security/capsicum/papers/2010usenix-se\
 |curity-capsicum-website.pdf
 |
 |Note that a primitive form of capabilities can be achieved in the
 |current Linux kernel by passing file descriptors between processes, a
 |tool relatively few people seem to know exists. Given that the
 |"correct" mechanism (something like Capsicum) doesn't exist in Linux
 |yet, it's a poor man's second best. Again, porting Capsicum would be
 |the smart thing to do instead of all this ad hoc stuff.

It is painful programming.  Now there is Casper (not Kasper) which
improves this a bit, i think.
And well it cannot be helped.  Model View Controller for anything,
or at least Frontend and Machine like Mr. Pike did the first time
for Sam as far as i know, almost fourty years ago, that is what
i am going for myself.  Much of it is about hardware too, i am in
video and audio and kvm groups, and this matters down to the
hardware, which is not compartmentalised on rather cheap consumer
level as far as i know.

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
