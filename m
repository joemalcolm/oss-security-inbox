X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3744" "Monday" "18" "December" "2017" "18:48:54" "-0700" "Leonid Isaev" "leonid.isaev@jila.colorado.edu" "<20171219014854.GA17687@takahe.colorado.edu>" "77" "Re: [oss-security] Recommendations GnuPG-2 replacement" "^Date:" nil nil "12" "2017121901:48:54" "[oss-security] Recommendations GnuPG-2 replacement" (number mark "U       leonid.isaev Dec 18   77/3744  " thread-indent "\"Re: [oss-security] Recommendations GnuPG-2 replacement\"\n") "<1453-1513642461.788845@V4Go.Zsn0.ZlLm>" ("<20171207210134.GA7079@openwall.com>" "<2172-1513501568.968862@pLoG.Le7g.f3CQ>" "<87tvwoowng.fsf@fifthhorseman.net>" "<814-1513628516.856754@MaI1.D5wz.7Roo>" "<20171218220414.GA10960@takahe.colorado.edu>" "<1453-1513642461.788845@V4Go.Zsn0.ZlLm>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31965 invoked by uid 550); 19 Dec 2017 09:19:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8001 invoked from network); 19 Dec 2017 01:49:12 -0000
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.99.2 at jilau1.colorado.edu
Message-ID: <20171219014854.GA17687@takahe.colorado.edu>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20171207210134.GA7079@openwall.com>
 <2172-1513501568.968862@pLoG.Le7g.f3CQ>
 <87tvwoowng.fsf@fifthhorseman.net>
 <814-1513628516.856754@MaI1.D5wz.7Roo>
 <20171218220414.GA10960@takahe.colorado.edu>
 <1453-1513642461.788845@V4Go.Zsn0.ZlLm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1453-1513642461.788845@V4Go.Zsn0.ZlLm>
User-Agent: Mutt/1.9.1 (2017-09-22)
Date: Mon, 18 Dec 2017 18:48:54 -0700
From: Leonid Isaev <leonid.isaev@jila.colorado.edu>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Recommendations GnuPG-2 replacement
To: oss-security@lists.openwall.com

On Tue, Dec 19, 2017 at 12:14:21AM +0000, halfdog wrote:
> So maybe SSH cares for you to have sane pty with all the features
> needed to make gnupg run smoothly? Perhaps you may want to respond,
> that it is not gnupg at fault, if e.g. an embedded boot image
> does not use openvt and /dev/tty[1-6] during early boot in correct
> ways, thus causing problems. But the way gnupg reacts in that
> situation (not working and not giving meaningful error messages
> either) does not really help the user and gave me the impression,
> that those usecases are out of scope - and hence also of scope
> for testing.

Hmm, I don't know about ssh, but you are supposed to export GPG_TTY in .bashrc.

> You may want to read [0] to see how another user on "gnupg-users"
> describes in more detail the "user experience" when trying
> to get TTYs, pinentry, gpg-agent ... up and running. The post
> quite reflects also my user experience, the difference is just
> that he writes lengthy mails to get things running, I write them
> to see if there are alternatives.

I read that mail, and the guy doesn't make too much sense to me... Also, he
never showed any gpg-agent.conf file, or any debug output of gpg-agent. He only
claims is that it used to work on an Ubuntu system. So, how am I supposed to
help him? I never used anything Debian-related. 

Another issue, is that doing that sudo magic may not play well with
systemd-logind. Latest gnupg ships gpg-agent which is socket-activated by
systemd --user (FTR, I don't support this choice).

OTOH, this email is written in mutt running inside an ssh session, and the
passwd for the smtp server is stored in a symmetrically gpg-encrypted file...

> Well, on a server running multiple concurring tasks, I feel somehow
> uncomfortable killing a process just by UID and process name.
> How to make sure, that not a parallel task is still using the
> agent?

What user runs gpg-agent?

> Signals are just fine for control: when a parent knows exactly
> its children and signals them. For processes starting automagically
> I just do not want to care about how their daemonizing works
> and if there might be races during that procedure, how to craft
> pkill regex to reduce the risk of killing the wrong agent under
> some circumstances, ...

The HUP signal is a standard means of making daemons reload their configs and
flush caches. gpg-agent is not unique here. For example, logrotate does the
same with syslog.

> Please give realistic answers. And if you try, you may notice,
> that things are not just as simple as "send a signal to any process
> with a given name". Your backup system vendor and your colleagues
> will love you, when killing the sign/encryption process that way,
> yielding spurious errors from time to time. Could be quite some
> beer to spend when they completed their root cause analysis.

For encrypting you don't need agent at all. For example, on my systems, root
ssh key is set randomly on each boot and stored in an encrypted form. The
encryption is performed with my packager key as a --recipient. All from a
systemd service. Works since 2013 on Arch Linux testing.

For signing, I don't know what you mean because I don't understand how you
unlock secret key in a non-interactive manner...

> Maybe your pkill would not cause those side effects, but I just
> do not want to care about them. I am quite sure, that they are
> ignorable on desktop environments or for e-mail reading, in a
> production environment they might just be a risk and an annoyance.
> Hence my argument about desktop and server.

Please, don't spread this corporate nonsense about production environments etc
because it is just a politically correct excuse for ignorance of IT ppl.

Cheers,
-- 
Leonid Isaev
