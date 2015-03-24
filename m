X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1064" "Tuesday" "24" "March" "2015" "13:43:41" "+0100" "Florian Weimer" "fw@deneb.enyo.de" "<87egoea7lu.fsf@mid.deneb.enyo.de>" "21" "Re: [oss-security] CVE-2014-8166 cups: code execution via unescape ANSI escape sequences" nil nil nil "3" "2015032412:43:41" "[oss-security] CVE-2014-8166 cups: code execution via unescape ANSI escape sequences" (number mark "        fw@deneb.eny Mar 24   21/1064  " thread-indent "\"Re: [oss-security] CVE-2014-8166 cups: code execution via unescape ANSI escape sequences\"\n") "<5510EB20.7020405@redhat.com>" ("<5510EB20.7020405@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9255 invoked by uid 550); 24 Mar 2015 12:43:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9234 invoked from network); 24 Mar 2015 12:43:53 -0000
References: <5510EB20.7020405@redhat.com>
In-Reply-To: <5510EB20.7020405@redhat.com> (Kurt Seifried's message of "Mon,
	23 Mar 2015 22:42:08 -0600")
Message-ID: <87egoea7lu.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Date: Tue, 24 Mar 2015 13:43:41 +0100
From: Florian Weimer <fw@deneb.enyo.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2014-8166 cups: code execution via unescape ANSI escape sequences
To: oss-security@lists.openwall.com

* Kurt Seifried:

> So this one is pretty hard to cause exploitation without heavy social
> engineering/etc.
>
> https://bugzilla.redhat.com/show_bug.cgi?id=1084577
>
> It was reported that ANSI escape sequences could be added to printer
> names in CUPS.  Becaue CUPS has a browsing feature that, when enabled,
> allows remote hosts to announce shared printers, a malicious host or
> user could send a specially-crafted UDP packet to a CUPS server
> announcing an arbitrary printer name that includes ANSI escape
> sequences.  Since the CUPS daemon does not remove these characters, a
> user on the targeted system could query the printer list (using 'lpstat
> -a', for example).  If this were done in a terminal that supported the
> ANSI escape sequences (like a terminal with support for color), then
> code execution could be possible as the terminal would interpret the
> ANSI escape sequences contained in the printer name.

In the past, we treated those as security bugs in terminals, not bugs
in the application producing the data that triggers these bugs.
