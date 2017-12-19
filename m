X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3311" "Tuesday" "19" "December" "2017" "00:14:21" "+0000" "halfdog" "me@halfdog.net" "<1453-1513642461.788845@V4Go.Zsn0.ZlLm>" "72" "Re: [oss-security] Recommendations GnuPG-2 replacement" "^Date:" nil nil "12" "2017121900:14:21" "[oss-security] Recommendations GnuPG-2 replacement" (number mark "        me@halfdog.n Dec 19   72/3311  " thread-indent "\"Re: [oss-security] Recommendations GnuPG-2 replacement\"\n") "<20171218220414.GA10960@takahe.colorado.edu>" ("<20171207210134.GA7079@openwall.com>" "<2172-1513501568.968862@pLoG.Le7g.f3CQ>" "<87tvwoowng.fsf@fifthhorseman.net>" "<814-1513628516.856754@MaI1.D5wz.7Roo>" "<20171218220414.GA10960@takahe.colorado.edu>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21992 invoked by uid 550); 19 Dec 2017 00:14:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21968 invoked from network); 19 Dec 2017 00:14:50 -0000
In-reply-to: <20171218220414.GA10960@takahe.colorado.edu>
References: <20171207210134.GA7079@openwall.com> <2172-1513501568.968862@pLoG.Le7g.f3CQ> <87tvwoowng.fsf@fifthhorseman.net> <814-1513628516.856754@MaI1.D5wz.7Roo> <20171218220414.GA10960@takahe.colorado.edu>
Comments: In-reply-to Leonid Isaev <leonid.isaev@jila.colorado.edu>
   message dated "Mon, 18 Dec 2017 15:04:14 -0700."
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Message-ID: <1453-1513642461.788845@V4Go.Zsn0.ZlLm>
Date: Tue, 19 Dec 2017 00:14:21 +0000
From: halfdog <me@halfdog.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Recommendations GnuPG-2 replacement
To: oss-security@lists.openwall.com

Leonid Isaev writes:
> On Mon, Dec 18, 2017 at 08:21:56PM +0000, halfdog wrote:
>> The point in starting this thread was, that GnuPG does NOT
>> conveniently cover usecases for headless or scripting operation.
>> Thus it seems that the time has come to look for replacement,
>> as GnuPG is moving more in the "desktop" direction, as also
>> your comments indicate.
>
> You are talking about policies here, not technical issues.
> Gnupg is perfectly scriptable, see pacman-key(1) tool in Arch
> Linux. Moreover, gpg-agent is easily usable on a headless machine.
> At least, I mostly use it this way when checking email...

So maybe SSH cares for you to have sane pty with all the features
needed to make gnupg run smoothly? Perhaps you may want to respond,
that it is not gnupg at fault, if e.g. an embedded boot image
does not use openvt and /dev/tty[1-6] during early boot in correct
ways, thus causing problems. But the way gnupg reacts in that
situation (not working and not giving meaningful error messages
either) does not really help the user and gave me the impression,
that those usecases are out of scope - and hence also of scope
for testing.

You may want to read [0] to see how another user on "gnupg-users"
describes in more detail the "user experience" when trying
to get TTYs, pinentry, gpg-agent ... up and running. The post
quite reflects also my user experience, the difference is just
that he writes lengthy mails to get things running, I write them
to see if there are alternatives.

> You will lose nothing if you just pkill(1) gpg-agent though. So
> I don't understand why you claim that gpg is moving towards
> desktop.

Well, on a server running multiple concurring tasks, I feel somehow
uncomfortable killing a process just by UID and process name.
How to make sure, that not a parallel task is still using the
agent?

Signals are just fine for control: when a parent knows exactly
its children and signals them. For processes starting automagically
I just do not want to care about how their daemonizing works
and if there might be races during that procedure, how to craft
pkill regex to reduce the risk of killing the wrong agent under
some circumstances, ...

>> That's really a strange argument. You fear PTRACING for key
>> extraction of a short-lived, per-key instance of gpg1 process
>> and solve that by putting all the key material into a single
>> long-lived gpg-agent process, not even providing convenient
>> commands to flush the keys from there?
>
> pkill -hup gpg-agent. Please read the manpages.

Please give realistic answers. And if you try, you may notice,
that things are not just as simple as "send a signal to any process
with a given name". Your backup system vendor and your colleagues
will love you, when killing the sign/encryption process that way,
yielding spurious errors from time to time. Could be quite some
beer to spend when they completed their root cause analysis.

Maybe your pkill would not cause those side effects, but I just
do not want to care about them. I am quite sure, that they are
ignorable on desktop environments or for e-mail reading, in a
production environment they might just be a risk and an annoyance.
Hence my argument about desktop and server.

hd

[0] https://lists.gnupg.org/pipermail/gnupg-users/2017-December/059600.html


