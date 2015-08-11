X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1294" "Tuesday" "11" "August" "2015" "17:59:17" "-0400" "Steve Grubb" "sgrubb@redhat.com" "<3251855.920OV3rWUH@x2>" "28" "Re: [oss-security] Re: Terminal escape sequences - the new XSS for admins?" nil nil nil "8" "2015081121:59:17" "[oss-security] Re: Terminal escape sequences - the new XSS for admins?" (number mark "        sgrubb@redha Aug 11   28/1294  " thread-indent "\"Re: [oss-security] Re: Terminal escape sequences - the new XSS for admins?\"\n") "<55CA6BBC.7070101@amacapital.net>" ("<CANO=Ty1ku4Hs-eFzCWK_K0=QXEZbtDFR4c--gBnoHPQi7Ko+XQ@mail.gmail.com>" "<4034525.BTXsUWy6Cb@x2>" "<55CA6BBC.7070101@amacapital.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26097 invoked by uid 550); 11 Aug 2015 21:59:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26067 invoked from network); 11 Aug 2015 21:59:29 -0000
Message-ID: <3251855.920OV3rWUH@x2>
Organization: Red Hat
User-Agent: KMail/4.14.9 (Linux/4.1.3-201.fc22.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <55CA6BBC.7070101@amacapital.net>
References: <CANO=Ty1ku4Hs-eFzCWK_K0=QXEZbtDFR4c--gBnoHPQi7Ko+XQ@mail.gmail.com> <4034525.BTXsUWy6Cb@x2> <55CA6BBC.7070101@amacapital.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Cc: Andy Lutomirski <luto@amacapital.net>,
        Daniel Kahn Gillmor <dkg@fifthhorseman.net>,
        Kurt Seifried <kseifried@redhat.com>
Date: Tue, 11 Aug 2015 17:59:17 -0400
From: Steve Grubb <sgrubb@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Terminal escape sequences - the new XSS for admins?
To: oss-security@lists.openwall.com

On Tuesday, August 11, 2015 02:40:12 PM Andy Lutomirski wrote:
> > At this point, I was convinced that most major emulators are safe. That
> > said...there are all the ones I didn't check including older ones. The
> > older ones are likely to be the ones I'd be most concerned about.
> 
> Are all the supposedly invulnerable terminals actually safe? 
> Gnome-terminal reports:
> 
> 0000000: 1b5d 6c54 6572 6d69 6e61 6c1b 5c       .]lTerminal.\
> 
> That's not as bad as echoing 'ls -al' back to the terminal input, but 
> why is it considered acceptable for terminals to input anything 
> whatsoever in response to the in-band data they receive?

The whole idea is to write something that you can bounce back to the prompt. 
lTerminal is pretty limiting. An attacker would have to also place the file 
lTerminal in the search path before using this trick. But if they can do pre-
place a file in the search path, they can also take advantage of typing 
mistakes like placing a file vo and then waiting for the admin to make a 
mistake typing vi.

What you really want to do in an attack is to  try placing a call back shell 
command on the prompt or download/upload files.

Most terminal emulators, konsole for example, reply with nothing. Its the vte 
based ones that reply like this.

-Steve
