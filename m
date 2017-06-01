X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3331" "Thursday" "1" "June" "2017" "18:03:59" "+0000" "Liguori, Anthony" "aliguori@amazon.com" "<1496340239333.24020@amazon.com>" "75" "Re: [oss-security] unresponsive distros" "^Date:" nil nil "6" "2017060118:03:59" "[oss-security] unresponsive distros" (number mark "        aliguori@ama Jun  1   75/3331  " thread-indent "\"Re: [oss-security] unresponsive distros\"\n") "<20170601180053.GA4752@openwall.com>" ("<20170601180053.GA4752@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19638 invoked by uid 550); 1 Jun 2017 18:07:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17745 invoked from network); 1 Jun 2017 18:04:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1496340261; x=1527876261;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=4XKpdYQiDWcs4PCPZf939MDospo644Msb9m4oi0nOBQ=;
  b=KbBvqNejoCuckwbOp0z6RZnAL5SG1HR3iihefEe46528FGu1W2qplQUd
   Iouu2YsI41qJeXwiEdGuejSBXKQX08F0MOpfHol4BzoGl1rtjdd2OabeB
   nrZyX1w+IWNxc3yyVZ0LHmSC79zasuKQNsUl41hzs1DxrGa68NFFsQ7jO
   Y=;
X-IronPort-AV: E=Sophos;i="5.39,280,1493683200"; 
   d="scan'208";a="291544898"
Thread-Topic: [oss-security] unresponsive distros
Thread-Index: AQHS2wEa3VHSqTrNjU+8YAvS7z+TWqIQTH+r
Message-ID: <1496340239333.24020@amazon.com>
References: <20170601180053.GA4752@openwall.com>
In-Reply-To: <20170601180053.GA4752@openwall.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.162.197]
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Date: Thu, 1 Jun 2017 18:03:59 +0000
From: "Liguori, Anthony" <aliguori@amazon.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] unresponsive distros
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

Hrm, I've been following the thread but apparently missed your request Sola=
r.

Regards,

Anthony Liguori
________________________________________
From: Solar Designer <solar@openwall.com>
Sent: Thursday, June 1, 2017 11:00 AM
To: oss-security@lists.openwall.com
Subject: [oss-security] unresponsive distros

Hi,

A certain issue being handled on the distros list provided for a
particularly good opportunity for me to test whether/which distros are
actually paying attention and intend to respond to issues during the
embargo period.  In the middle of a lengthy thread with a somewhat
generic Subject (since it travels unencrypted), I asked literally all
(and I emphasized that) distros to respond to the thread with status
updates regarding their handling of the issue.  That was on May 27.
I gave distros time until May 30 (Tuesday) to respond.  I then gave them
about 2 days more, as you can see.

Most distros responded, with varying amount of detail.  But 3 did not:

FreeBSD
Amazon Linux AMI
MontaVista Software

We had heard from FreeBSD earlier in the thread, although I would have
expected them to reply to the specific request as well (and I did say so
explicitly).  Maybe it's fatigue from too many encrypted messages, most
of which happen to be focusing on Linux-specific aspects of the issue.
That's not great at all, but it is somewhat understandable.  Part of the
problem is that when an issue is potentially relevant to both *BSD and
Linux, we're rarely careful to separate postings and sub-threads between
the distros and linux-distros lists, resulting in "spamming" (and risk
of leaks) of the Linux-specific aspects to (and via) the *BSD's.  This
is something for us all to improve.  (Some of the sub-threads were in
fact correctly separated to go only to linux-distros in this present
case, though.)

As to Amazon and MontaVista, it is likely they'll have to leave the
distros list for inactivity.

As far as I can tell, last posting/reply on the (linux-)distros list by
Amazon was in July 2016 and before that in November 2014.  As far as I
can tell, MontaVista never posted to the list.  Being a user of the info
only, without participation in discussions, is not strictly disallowed,
but this time it's coupled with lack of response when specifically asked
to respond, and on an issue that is at least potentially relevant to the
distros (not just a responsiveness test).

At this point, there will have to be a very good reason to justify
keeping Amazon and MontaVista on the list.  Is there any?

OTOH, there's just one person subscribed for each of Amazon and
MontaVista, and all messages are encrypted to the recipient's own keys
(but of course the headers are unencrypted, including the Subjects).
So e.g. an unattended mailbox isn't that much of a risk.

I am not going to ping Amazon and MontaVista directly (just like I did
not ping NetBSD directly last month, although others promptly did
anyway).  If they missed the messages on the distros list and also miss
the message here, so be it.

While I am at it: there have been 3624 messages on linux-distros (and a
subset of those on distros) since the list was setup on April 3, 2011
and until today.  That's about 1.6 messages per day on average, but
sometimes there are spikes (like there is now) and sometimes there are
quiet periods.

Alexander

