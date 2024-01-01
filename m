Received: (qmail 1062 invoked by uid 550); 1 Jan 2024 16:10:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1044 invoked from network); 1 Jan 2024 16:10:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=halfdog.net
	; s=s; h=Message-ID:Date:Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-reply-to:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=q2XMGbp84eBfuGYeUiy7fccGGWiYtl//UjU8IcVEOSA=; b=mVk0TzFFjhN3TX3ZJQKkhKBEMV
	RFvHLnrjUL5IsxHs/yvX1irHmhgN5IPHMFIQK6udxje9LN17ln1JKQ3XB5Ixd6LXN5pJHAoda6VwK
	Rd32gD8a2dsGINC9FYObXzNocNMkqWqXjrZon4zwYop3tLhkDCDS6GWQXVJp1GQloaePO6fCG7HGM
	xLs9rg8CYGe2ho1YHmC/sWLUvPwYkgQrcmK8S6236f0Jnl2S8rraopsQgIa9Nzcq5XlBMC1IDjSIn
	kETldkmnjL9r4bFmylQdqfSJrvYQunPcDpDcMM0Epk7at8IeAqNOwSoyyoujACeL0QTNbZzLl2kfp
	8T+Sis6Q==;
From: halfdog <me@halfdog.net>
To: oss-security@lists.openwall.com
In-reply-to: <20231229130718.GA6740@openwall.com>
References: <20231229130718.GA6740@openwall.com>
Comments: In-reply-to Solar Designer <solar@openwall.com>
   message dated "Fri, 29 Dec 2023 14:07:18 +0100."
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Date: Mon, 01 Jan 2024 16:10:46 +0000
Message-ID: <2537-1704125446.658888@yYwZ.TdlG.pmeQ>
Subject: Re: [oss-security] CVE-2023-51766: Exim: SMTP smuggling

Solar Designer writes:
> Hi,
>
> Exim was also susceptible to SMTP smuggling, and version 4.97.1 is now
> released to address this.  Included below is doc/doc-txt/cve-2023-51766
> from the exim-4.97.1 branch (with erroneous Date: line omitted).
>
> Alexander
>
> ---
> CVE ID:     CVE-2023-51766
> Credits:    https://sec-consult.com/blog/detail/smtp-smuggling-spoofing-e=
-mai
> ls-worldwide/
> Version(s): all up to 4.97 inclusive
> Issue:      Given a buggy relay, Exim can be induced to accept a second m=
essa
> ge embedded
>             as part of the body of a first message
>
> Conditions
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> If *all* the following conditions are met
>
>     Runtime options
>     ---------------
>
>     * Exim offers PIPELINING on incoming connections
>
>     * Exim offers CHUNKING on incoming connections
>
>     Operation
>     ---------
>
>     * DATA (as opposed to BDAT) is used for a message reception
>
>     * The relay host sends to the Exim MTA message data including
>       one of "LF . LF" or "CR LF . LF" or "LF . CR LF".

Interesting, that also LF . LF is causing the effect. As there
might be some aggressive mail server testing for that issue in
near future anyway, could it be, that this was exactly the issue
affecting Debian mailing lists at least 2018-2023? If not so,
and there is a second bug, the increased testing and also public
bug report from below will give them some interesting times ahead
anyway.

But if so, any automated mailing list forwarding might be quite
likely (due to trigger probabilities) to have left truncated
and non-truncated messages online, so that finding those pairs
automatically, e.g.  using more unique text parts from list A
messages to search for messages on any other list B and check,
if one of them seems truncated.

Here are some message examples from 2018 showing the trunction:

https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D849754#60
https://lists.debian.org/debian-mentors/2018/01/msg00331.html

Then there was also a public bug report on those

https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D922652

or the ones from below.

Kind regards,
hd




To: security@debian.org
Subject: Data corruption due to SMTP-command injection around bugs.debian.o=
rg
Date: Sat, 21 Jan 2023 10:09:44 +0000

Hello Debian Security,

It seems that somewhere at the connection point between bugs.debian.org
and at least the Debian mailing list system (debian-mentors) the
user supplied bug content is not escaped properly when submitting
bugs via SMTP. This is causing a line with a lone dot (period)
to the mails sent out by debian-mentors prematurely interpreting
the dot as an end-messages SMTP command. Maybe with a crafted
mail containing other SMTP commands after that line, these would
be executed by the SMTP server too turning this into a way to
use Debian bugs services for spamming or impersonating senders
for the domains the SMTP server is permitted to send.


The bug itself seems to occur only when sending a message with
"Content-Transfer-Encoding: quoted-printable" with a line wrapped
due to line length and "quoted-printable" causing only the dot
ending in the next line.

The result can be seen comparing the two messages=20

https://lists.debian.org/debian-mentors/2023/01/msg00147.html
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D993996


Something similar was already observed once, but only in retrospect.
Therefore it was harder to reproduce. The issue was reported back
then to owner@bugs.debian.org and a test bug (922652) was created.


The reason reporting to security this time is that today's event
is quite obvious in from mailing list message, that someone stumbling
over it may feel like giving it a try. Apart from that the log
messages of your involved systems are quite likely still fullly
available to track down the fault.


Kind regards,
hd

PS: The message about the same problem from 2019:

From: halfdog <me@halfdog.net>
To: owner@bugs.debian.org
Subject: Strange bug tracker error
Date: Fri, 25 Jan 2019 13:31:04 +0000

Hello owner,

While running a data deduplication tool on all my sent and received
messages, I noticed an anomaly regarding a message from bugs.debian.org
There seems to be a bug somewhere on between the bugtracker inbox
processing to my mailbox, most likely in the bugtracker message
sending functionality. The result seems to be data corruption
(truncated messages) and maybe SMTP command injection when SMTP
pipelining is enabled.

Most likely cause deduced from that single anomalous message
is that a line containing a lone "." was not escaped properly,
thus ending a messages.

As the detected anomaly dates back to 2018-01-22, is there a
test bug to send a message to for testing and am I allowed to
perform the test?

hd

>     * Exim interprets the sequence as signalling the end of data for
>       the SMTP DATA command, and hence a first message.
>
>     * Exim interprets further input which the relay had as message body
>       data, as SMTP commands and data. This could include a MAIL, RCPT,
>       BDAT (etc) sequence, resulting in a further message acceptance.
>
> Impact
> =3D=3D=3D=3D=3D=3D
>
> One or more messages can be accepted by Exim that have not been
> properly validated by the buggy relay.
>
> Fix
> =3D=3D=3D
>
> Install a fixed Exim version:
>
>     4.98 (once available)
>     4.97.1
>
> If you can't install one of the above versions, ask your package
> maintainer for a version containing the backported fix. On request and
> depending on our resources we will support you in backporting the fix.
> (Please note, that Exim project officially doesn't support versions
> prior the current stable version.)
>
>
> Workaround
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
>   Disable CHUNKING advertisement for incoming connections.
>
>   An attempt to "smuggle" a DATA command will trip a syncronisation
>   check.
>
> *or*
>
>   Disable PIPELINING advertisement for incoming connections.
>
>   The "smuggled" MAIL FROM command will then trip a syncronisation
>   check.
