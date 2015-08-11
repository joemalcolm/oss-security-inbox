X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3641" "Tuesday" "11" "August" "2015" "16:29:04" "-0400" "Steve Grubb" "sgrubb@redhat.com" "<4034525.BTXsUWy6Cb@x2>" "92" "Re: [oss-security] Terminal escape sequences - the new XSS for admins?" nil nil nil "8" "2015081120:29:04" "[oss-security] Terminal escape sequences - the new XSS for admins?" (number mark "        sgrubb@redha Aug 11   92/3641  " thread-indent "\"Re: [oss-security] Terminal escape sequences - the new XSS for admins?\"\n") "<874mk5poqr.fsf@alice.fifthhorseman.net>" ("<CANO=Ty1ku4Hs-eFzCWK_K0=QXEZbtDFR4c--gBnoHPQi7Ko+XQ@mail.gmail.com>" "<874mk5poqr.fsf@alice.fifthhorseman.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32070 invoked by uid 550); 11 Aug 2015 20:29:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32035 invoked from network); 11 Aug 2015 20:29:15 -0000
Message-ID: <4034525.BTXsUWy6Cb@x2>
Organization: Red Hat
User-Agent: KMail/4.14.9 (Linux/4.1.3-201.fc22.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <874mk5poqr.fsf@alice.fifthhorseman.net>
References: <CANO=Ty1ku4Hs-eFzCWK_K0=QXEZbtDFR4c--gBnoHPQi7Ko+XQ@mail.gmail.com> <874mk5poqr.fsf@alice.fifthhorseman.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Cc: Daniel Kahn Gillmor <dkg@fifthhorseman.net>,
        Kurt Seifried <kseifried@redhat.com>
Date: Tue, 11 Aug 2015 16:29:04 -0400
From: Steve Grubb <sgrubb@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Terminal escape sequences - the new XSS for admins?
To: oss-security@lists.openwall.com

On Tuesday, August 11, 2015 04:13:48 PM Daniel Kahn Gillmor wrote:
> On Tue 2015-08-11 12:23:59 -0400, Kurt Seifried wrote:
> > So we've had a bunch of this stuff over the years:
> > 
> > http://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=terminal+escape
> > 
> > And now more recently:
> > 
> > http://turbochaos.blogspot.ca/2014/08/journalctl-terminal-escape-injection
> > .html https://bugzilla.redhat.com/show_bug.cgi?id=1084577
> > 
> > And we have at least one more coming down the pipeline that's pretty
> > widespread.
> > 
> > Also I'm thinking of all those docker apps that log to STDOUT.
> > 
> > So the basic TL;DR: please don't use really ancient terminal programs that
> > are vulnerable to this stuff. It appears in testing that most (all?) of
> > the
> > Red Hat stuff is ok, but I can't speak for other vendors.
> 
> Do we have a catalog of terminal programs that are vulnerable, or of
> particularly dangerous escape sequences to test with each terminal
> emulator?

echo $'\e[30m'   - turns foreground black (used to trick people by hiding 
text)
echo $'\e]2;ls -al\a' - set window title to 'ls -al'
echo $'\e[21t' - print the window title to the command prompt. This is the one 
to watch out for.

In my survey recently, Some emulators could set the window title; none of them 
supported reading the window title back to the command prompt. If you find one 
that does, it is one that is at risk.

Also note that an attempt to foil or make it hard to set window titles is in 
bashrc under something called PROMPT_COMMAND. You may have to export 
PROMPT_COMMAND="" and then start a new shell to launch the terminal windows.

In my survey over the weekend, I used Fedora 22 and tested the following:

xterm - not vulnerable
gnome-terminal - not vulnerable
konsole - not vulnerable
terminator - not vulnerable.
qterminal - not vulnerable (Undecodable sequence: \001b(hex)[21t)
Eterm - not vulnerable
rxvt - not vulnerable
st - not vulnerable (erresc: unknown csi ESC[21t)
lilyterm - not vulnerable
sakura - not vulnerable
caja-terminal - not vulnerable
xfce4-terminal - not vulnerable
roxterm - not vulnerable
mate-terminal - not vulnerable
termit - not vulnerable

A lot were based on the vte package. So, I dug into the vte package. In the 
file, vteseq.c, is this:

                case 21:
                        /* Report a static window title, since the real
                           window title should NEVER be reported, as it
                           creates a security vulnerability.  See
                           http://marc.info/?l=bugtraq&m=104612710031920&w=2
                           and CVE-2003-0070. */
                        _vte_debug_print(VTE_DEBUG_PARSE,
                                        "Reporting fake window title.\n");
                        /* never use terminal->window_title here! */
                        g_snprintf (buf, sizeof (buf),
                                    _VTE_CAP_OSC "lTerminal" _VTE_CAP_ST);
                        vte_terminal_feed_child(terminal, buf, -1);
                        break;

At this point, I was convinced that most major emulators are safe. That 
said...there are all the ones I didn't check including older ones. The older 
ones are likely to be the ones I'd be most concerned about.

-Steve


> I'd be happy to try to organize a torches-and-pitchforks run
> through the debian archive if i know what to look for.
> 
> https://security.stackexchange.com/questions/56307/can-cat-ing-a-file-be-a-p
> otential-security-risk
> 
> has some good links and discussion from just last year but nothing
> systematized that i can see.
> 
>    --dkg

