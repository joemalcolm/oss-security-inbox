X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2381" "Thursday" "21" "September" "2017" "14:58:59" "+0200" "Solar Designer" "solar@openwall.com" "<20170921125858.GA12339@openwall.com>" "56" "Re: [oss-security] CVE-2017-14160: libvorbis-1.3.5 bark_noise_hybridmp() integer signedness bug" nil nil nil "9" "2017092112:58:59" "[oss-security] CVE-2017-14160: libvorbis-1.3.5 bark_noise_hybridmp() integer signedness bug" (number mark "U       solar@openwa Sep 21   56/2381  " thread-indent "\"Re: [oss-security] CVE-2017-14160: libvorbis-1.3.5 bark_noise_hybridmp() integer signedness bug\"\n") "<A962A2D04FAB5C4499FEFD15B642FA0A35DEB814@EX02.corp.qihoo.net>" ("<A962A2D04FAB5C4499FEFD15B642FA0A35DEB814@EX02.corp.qihoo.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9924 invoked by uid 550); 21 Sep 2017 12:59:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9725 invoked from network); 21 Sep 2017 12:59:02 -0000
Date: Thu, 21 Sep 2017 14:58:59 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: ?????? <lianyihan@360.cn>
Message-ID: <20170921125858.GA12339@openwall.com>
References: <A962A2D04FAB5C4499FEFD15B642FA0A35DEB814@EX02.corp.qihoo.net>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <A962A2D04FAB5C4499FEFD15B642FA0A35DEB814@EX02.corp.qihoo.net>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2017-14160: libvorbis-1.3.5 bark_noise_hybridmp() integer signedness bug

Hi,

This was sent to the list with only "CVE-2017-14160" as the Subject.
That's against oss-security list content guidelines:

http://oss-security.openwall.org/wiki/mailing-lists/oss-security#list-content-guidelines

"When applicable, the message Subject must include the name and
version(s) of affected software, and vulnerability type.  For example, a
Subject saying only "CVE-2099-99999" is not appropriate, whereas
"CVE-2099-99999: Acme Placeholder 1.0 buffer overflow" would be OK."

As a moderator, I took the liberty of correcting the Subject to my best
guess of what it should have been, before approving the message.  This
guess is based purely on message content as follows.  I didn't analyze
the issue in its proper context.

On Thu, Sep 21, 2017 at 06:27:15AM +0000, ?????? wrote:
> (gdb) bt
> #0  0x0000000001f95afd in bark_noise_hybridmp (n=256, b=0x32cd940, f=0x32e5010, noise=0x32f7ed0, offset=140, fixed=-1) at psy.c:630

This shows the function name, n=256, and that the crash is on line 630.

> 628         if(hi>=n)break;
> 629
> 630         tN = N[hi] - N[lo];

> (gdb) p hi
> $4 = 0
> (gdb) p lo
> $5 = 49656                                                                 // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

And oops, looks like I misread this as "hi" being too high, whereas it
was actually "lo" that was too high.  So I thought the check on line 628
was wrongly a signed check (or else a "hi" that is too high wouldn't
pass it).  But actually the bug is probably the lack of check of "lo".

So if anyone needs a description for tracking this issue, for now it
should be "libvorbis-1.3.5 bark_noise_hybridmp() out of bounds access".

I guess the lessons here are:

1. People posting to oss-security should adhere to the list guidelines.

2. People should prioritize vulnerability analysis over obtaining CVE IDs.
If can't analyze (no skills, desire, time), include some more general
description like "crash" or "out of bounds access" - it wouldn't be very
specific, but would show the (very limited) extent of analysis up to that
point and would (hopefully) be correct.

3. As a moderator willing to put very little time per message, maybe I
shouldn't try to over-do my job, and if I do correct obviously unsuitable
message Subjects (like this message originally had), then do so only in
the minimal manner suggested above.

Alexander
