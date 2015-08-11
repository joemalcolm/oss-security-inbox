X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3783" "Tuesday" "11" "August" "2015" "14:40:12" "-0700" "Andy Lutomirski" "luto@amacapital.net" "<55CA6BBC.7070101@amacapital.net>" "89" "[oss-security] Re: Terminal escape sequences - the new XSS for admins?" nil nil nil "8" "2015081121:40:12" "[oss-security] Re: Terminal escape sequences - the new XSS for admins?" (number mark "        luto@amacapi Aug 11   89/3783  " thread-indent "\"[oss-security] Re: Terminal escape sequences - the new XSS for admins?\"\n") "<4034525.BTXsUWy6Cb@x2>" ("<CANO=Ty1ku4Hs-eFzCWK_K0=QXEZbtDFR4c--gBnoHPQi7Ko+XQ@mail.gmail.com>" "<874mk5poqr.fsf@alice.fifthhorseman.net>" "<4034525.BTXsUWy6Cb@x2>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24575 invoked by uid 550); 11 Aug 2015 21:40:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24544 invoked from network); 11 Aug 2015 21:40:26 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-type
         :content-transfer-encoding;
        bh=0AcTtzy8VgYf49O5Ky2IhkALOo0aI6qWyg3ARjvRtDg=;
        b=jap63kCXn9Xl3c35lgFHM/rqPF0tBDbpmpyYZQ29FZsWdP0XiBqbve3c9VFU3IC8OM
         H3adZKwG1V7VuOedsD7jK4xnsueiaWgdfKYwAUoRgsOuE/PYjrjY5k3eInvRb0FCTY6j
         5EsYKKagaZfIqFSM0D4UdNpJ6JIKv6/GI2V3KtEy7xZEKMs5YthqppljhOBLHmcln3by
         jp9t+Rb0qtiULiIE7Fxn1HcEYrAfdnZlQLkZb7hgg4j7vGdaEIdx1XzrVuxYB4XHr3cG
         t4JCL52Ru8KExY4nsXr6iFXUXHi7WtFPEQuRRfK7tIWVGNPCceg9wZg9zoCPv3V6Ny76
         SXtw==
X-Gm-Message-State: ALoCoQk95SRX3IE5KfHDcXNmyLykICx5I7Uh3XjvhTBL5rrMZ58OhfkxJDu1jBTtG5YAJZ3TBRB2
X-Received: by 10.70.44.133 with SMTP id e5mr61557370pdm.24.1439329214729;
        Tue, 11 Aug 2015 14:40:14 -0700 (PDT)
References: <CANO=Ty1ku4Hs-eFzCWK_K0=QXEZbtDFR4c--gBnoHPQi7Ko+XQ@mail.gmail.com>
 <874mk5poqr.fsf@alice.fifthhorseman.net> <4034525.BTXsUWy6Cb@x2>
Message-ID: <55CA6BBC.7070101@amacapital.net>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <4034525.BTXsUWy6Cb@x2>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Cc: Daniel Kahn Gillmor <dkg@fifthhorseman.net>,
 Kurt Seifried <kseifried@redhat.com>
Date: Tue, 11 Aug 2015 14:40:12 -0700
From: Andy Lutomirski <luto@amacapital.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Terminal escape sequences - the new XSS for admins?
To: oss security list <oss-security@lists.openwall.com>

On 08/11/2015 01:29 PM, Steve Grubb wrote:
> On Tuesday, August 11, 2015 04:13:48 PM Daniel Kahn Gillmor wrote:
>> On Tue 2015-08-11 12:23:59 -0400, Kurt Seifried wrote:
>>> So we've had a bunch of this stuff over the years:
>>>
>>> http://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=terminal+escape
>>>
>>> And now more recently:
>>>
>>> http://turbochaos.blogspot.ca/2014/08/journalctl-terminal-escape-injection
>>> .html https://bugzilla.redhat.com/show_bug.cgi?id=1084577
>>>
>>> And we have at least one more coming down the pipeline that's pretty
>>> widespread.
>>>
>>> Also I'm thinking of all those docker apps that log to STDOUT.
>>>
>>> So the basic TL;DR: please don't use really ancient terminal programs that
>>> are vulnerable to this stuff. It appears in testing that most (all?) of
>>> the
>>> Red Hat stuff is ok, but I can't speak for other vendors.
>>
>> Do we have a catalog of terminal programs that are vulnerable, or of
>> particularly dangerous escape sequences to test with each terminal
>> emulator?
>
> echo $'\e[30m'   - turns foreground black (used to trick people by hiding
> text)
> echo $'\e]2;ls -al\a' - set window title to 'ls -al'
> echo $'\e[21t' - print the window title to the command prompt. This is the one
> to watch out for.
>
> In my survey recently, Some emulators could set the window title; none of them
> supported reading the window title back to the command prompt. If you find one
> that does, it is one that is at risk.
>
> Also note that an attempt to foil or make it hard to set window titles is in
> bashrc under something called PROMPT_COMMAND. You may have to export
> PROMPT_COMMAND="" and then start a new shell to launch the terminal windows.
>
> In my survey over the weekend, I used Fedora 22 and tested the following:
>
> xterm - not vulnerable
> gnome-terminal - not vulnerable
> konsole - not vulnerable
> terminator - not vulnerable.
> qterminal - not vulnerable (Undecodable sequence: \001b(hex)[21t)
> Eterm - not vulnerable
> rxvt - not vulnerable
> st - not vulnerable (erresc: unknown csi ESC[21t)
> lilyterm - not vulnerable
> sakura - not vulnerable
> caja-terminal - not vulnerable
> xfce4-terminal - not vulnerable
> roxterm - not vulnerable
> mate-terminal - not vulnerable
> termit - not vulnerable
>
> A lot were based on the vte package. So, I dug into the vte package. In the
> file, vteseq.c, is this:
>
>                  case 21:
>                          /* Report a static window title, since the real
>                             window title should NEVER be reported, as it
>                             creates a security vulnerability.  See
>                             http://marc.info/?l=bugtraq&m=104612710031920&w=2
>                             and CVE-2003-0070. */
>                          _vte_debug_print(VTE_DEBUG_PARSE,
>                                          "Reporting fake window title.\n");
>                          /* never use terminal->window_title here! */
>                          g_snprintf (buf, sizeof (buf),
>                                      _VTE_CAP_OSC "lTerminal" _VTE_CAP_ST);
>                          vte_terminal_feed_child(terminal, buf, -1);
>                          break;
>
> At this point, I was convinced that most major emulators are safe. That
> said...there are all the ones I didn't check including older ones. The older
> ones are likely to be the ones I'd be most concerned about.

Are all the supposedly invulnerable terminals actually safe? 
Gnome-terminal reports:

0000000: 1b5d 6c54 6572 6d69 6e61 6c1b 5c       .]lTerminal.\

That's not as bad as echoing 'ls -al' back to the terminal input, but 
why is it considered acceptable for terminals to input anything 
whatsoever in response to the in-band data they receive?

--Andy
