X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3874" "Wednesday" "3" "May" "2017" "01:36:03" "+0200" "Solar Designer" "solar@openwall.com" "<20170502233603.GA16882@openwall.com>" "83" "Re: [oss-security] terminal emulators' processing of escape sequences" "^Date:" nil nil "5" "2017050223:36:03" "[oss-security] terminal emulators' processing of escape sequences" (number mark "        solar@openwa May  3   83/3874  " thread-indent "\"Re: [oss-security] terminal emulators' processing of escape sequences\"\n") "<20170501164428.GA12322@openwall.com>" ("<20170501164428.GA12322@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24223 invoked by uid 550); 2 May 2017 23:37:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23621 invoked from network); 2 May 2017 23:36:28 -0000
Message-ID: <20170502233603.GA16882@openwall.com>
References: <20170501164428.GA12322@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170501164428.GA12322@openwall.com>
User-Agent: Mutt/1.4.2.3i
Date: Wed, 3 May 2017 01:36:03 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] terminal emulators' processing of escape sequences
To: oss-security@lists.openwall.com

On Mon, May 01, 2017 at 06:44:28PM +0200, Solar Designer wrote:
> It is a well-known feature, previously discussed in here, that data
> printed to a terminal (emulator) may control that terminal, including
> making it effectively unusable until reset, and in some cases even
> pasting characters as if they were typed by the user.  Also as discussed
> what characters may be pasted varies by terminal - sometimes they can be
> arbitrary (e.g., if the terminal supports macro recording and playback
> via escape sequences) and sometimes not so (like a terminal reporting
> back its status, usually not followed by a linefeed, so not yet
> executing a shell command until further user assistance).  Here are some
> relevant threads:
> 
> http://www.openwall.com/lists/oss-security/2015/08/11/8
> http://www.openwall.com/lists/oss-security/2015/09/17/5
> http://www.openwall.com/lists/oss-security/2016/11/04/12
> 
> (I link to messages that started these threads, not necessarily to most
> informative messages in the threads.  So you might want to go through
> the threads with the "thread-next" links.)

Adding to the above older sub-topic of (mis)features rather than bugs,
here's a particularly relevant one, quoting excerpts from:

http://invisible-island.net/xterm/ctlseqs/ctlseqs.html

| Operating System Commands
| 
| OSC Ps ; Pt BEL
| OSC Ps ; Pt ST
[...]
| 
|             Ps = 5 2  -> Manipulate Selection Data.  These controls may
|           be disabled using the allowWindowOps resource.  The parameter
|           Pt is parsed as
|                Pc; Pd
|           The first, Pc, may contain zero or more characters from the
|           set c  p  s  0  1  2  3  4  5  6  7 .  It is used to construct
|           a list of selection parameters for clipboard, primary, select,
|           or cut buffers 0 through 7 respectively, in the order given.
|           If the parameter is empty, xterm uses s 0 , to specify the
|           configurable primary/clipboard selection and cut buffer 0.
|           The second parameter, Pd, gives the selection data.  Normally
|           this is a string encoded in base64.  The data becomes the new
|           selection, which is then available for pasting by other appli-
|           cations.
|           If the second parameter is a ? , xterm replies to the host
|           with the selection data encoded using the same protocol.
|           If the second parameter is neither a base64 string nor ? ,
|           then the selection is cleared.

The potential for use in attacks is mitigated by the fact that the reply
triggered by setting the second parameter to ? is "encoded using the
same protocol", so its string portion is in base64 and thus in its
encoded form won't contain a linefeed.  However, altering X clipboard's
content is nevertheless nasty and perhaps unexpected by a user.  If the
user pastes the clipboard into a terminal, perhaps thinking there's
still an intended command they had saved in there before, the replaced
content's embedded linefeed(s) will be pasted as such, thereby
immediately executing the attacker's command(s).

The feature is in fact present and working in xterm when allowWindowOps
is enabled (even though the clipboard isn't specific to one "window"),
and is non-working when it's disabled.  (I've just tested.)

[user@host ~]$ echo -e '\x1b]52;;dGVzdAo=\x1b\\'

[user@host ~]$ echo -e '\x1b]52;;?\x1b\\'

^[]52;s0;dGVzdAo=^[\[user@host ~]$ 52;s0;dGVzdAo=

Per a quick search, it appears to also be present in mintty:

https://github.com/mintty/mintty/issues/258

and iTerm2:

https://gist.github.com/saitoha/3326112
https://github.com/gnachman/iTerm2/blob/37c293e2adbec0be49bdca93440665bb98e0d18d/sources/VT100XtermParser.m#L208
https://github.com/gnachman/iTerm2/blob/d5c23f1f207ffd0723599be66fb7da6ccea59ce4/sources/VT100Terminal.m#L1679

and perhaps elsewhere.

Alexander
