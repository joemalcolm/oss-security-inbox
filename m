X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1648" "Tuesday" "11" "August" "2015" "22:06:48" "+0100" "Stephane Chazelas" "stephane.chazelas@gmail.com" "<20150811210648.GB8477@chaz.gmail.com>" "37" "[oss-security] Re: Terminal escape sequences - the new XSS for admins?" nil nil nil "8" "2015081121:06:48" "[oss-security] Re: Terminal escape sequences - the new XSS for admins?" (number mark "        stephane.cha Aug 11   37/1648  " thread-indent "\"[oss-security] Re: Terminal escape sequences - the new XSS for admins?\"\n") "<4034525.BTXsUWy6Cb@x2>" ("<CANO=Ty1ku4Hs-eFzCWK_K0=QXEZbtDFR4c--gBnoHPQi7Ko+XQ@mail.gmail.com>" "<874mk5poqr.fsf@alice.fifthhorseman.net>" "<4034525.BTXsUWy6Cb@x2>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17671 invoked by uid 550); 11 Aug 2015 21:10:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17593 invoked from network); 11 Aug 2015 21:10:21 -0000
X-Injected-Via-Gmane: http://gmane.org/
Message-ID: <20150811210648.GB8477@chaz.gmail.com>
References: <CANO=Ty1ku4Hs-eFzCWK_K0=QXEZbtDFR4c--gBnoHPQi7Ko+XQ@mail.gmail.com>
 <874mk5poqr.fsf@alice.fifthhorseman.net>
 <4034525.BTXsUWy6Cb@x2>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 05448dab.skybroadband.com
Content-Disposition: inline
In-Reply-To: <4034525.BTXsUWy6Cb@x2>
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Tue, 11 Aug 2015 22:06:48 +0100
From: Stephane Chazelas <stephane.chazelas@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Terminal escape sequences - the new XSS for admins?
To: oss-security@lists.openwall.com

2015-08-11 16:29:04 -0400, Steve Grubb:
[....]
> A lot were based on the vte package. So, I dug into the vte package. In the 
> file, vteseq.c, is this:
> 
>                 case 21:
>                         /* Report a static window title, since the real
>                            window title should NEVER be reported, as it
>                            creates a security vulnerability.  See
>                            http://marc.info/?l=bugtraq&m=104612710031920&w=2
>                            and CVE-2003-0070. */
>                         _vte_debug_print(VTE_DEBUG_PARSE,
>                                         "Reporting fake window title.\n");
>                         /* never use terminal->window_title here! */
>                         g_snprintf (buf, sizeof (buf),
>                                     _VTE_CAP_OSC "lTerminal" _VTE_CAP_ST);
>                         vte_terminal_feed_child(terminal, buf, -1);
>                         break;
> 
> At this point, I was convinced that most major emulators are safe. That 
> said...there are all the ones I didn't check including older ones. The older 
> ones are likely to be the ones I'd be most concerned about.
[...]

Yes, it's the kind of vulnerabilities that were exploited
decades ago and were fixed then.

Now, the authors of newer ones can forget about them.

terminology has a few dangerous escape sequences (including
reporting window title, but also reading arbitrary files and
sending arbitrary HTTP requests), as discussed at
http://unix.stackexchange.com/questions/213799/can-bash-write-to-its-own-input-stream/213821#comment362700_213805

-- 
Stephane

