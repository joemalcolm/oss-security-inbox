X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1446" "Friday" "22" "April" "2016" "06:57:37" "+0300" "Solar Designer" "solar@openwall.com" "<20160422035737.GA14458@openwall.com>" "33" "Re: [oss-security] s/party/hack like it's 1999" "^Date:" nil nil "4" "2016042203:57:37" "[oss-security] s/party/hack like it's 1999" (number mark "U       solar@openwa Apr 22   33/1446  " thread-indent "\"Re: [oss-security] s/party/hack like it's 1999\"\n") "<20160421194559.GA3946@jwilk.net>" ("<20150917180319.1933609esmj3aaw4@webmail.alunos.dcc.fc.up.pt>" "<20160421194559.GA3946@jwilk.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27784 invoked by uid 550); 22 Apr 2016 03:58:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27761 invoked from network); 22 Apr 2016 03:58:12 -0000
Message-ID: <20160422035737.GA14458@openwall.com>
References: <20150917180319.1933609esmj3aaw4@webmail.alunos.dcc.fc.up.pt> <20160421194559.GA3946@jwilk.net>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160421194559.GA3946@jwilk.net>
User-Agent: Mutt/1.4.2.3i
Date: Fri, 22 Apr 2016 06:57:37 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] s/party/hack like it's 1999
To: oss-security@lists.openwall.com

On Thu, Apr 21, 2016 at 09:45:59PM +0200, Jakub Wilk wrote:
> * up201407890@alunos.dcc.fc.up.pt, 2015-09-17, 18:03:
> >'less' doesn't interpret escape sequences unless the -r switch is used, 
> >so stop aliasing it to 'less -r' just because there's no colored 
> >output.
> 
> As somebody else noted, it should be s/doesn't interpret/neutralizes/ or 
> something. But that doesn't mean you should feel safe if you don't use 
> -r.
> 
> For example, when git automatically spawns a pager, it puts R in the 
> LESS environment variable. (That would be fine if git escaped \033 
> before passing them to the pager, but it doesn't. Oddly, it does seem to 
> escape other control characters.) Now, -R is less convenient than -r for 
> hiding malicious code, but you could still set foreground and background 
> to black in hope that the victim's terminal background is also black.
> 
> But even without -r or -R, one can use backspace characters to hide evil 
> payload:

Right.  less has the -U option to prevent that.  And yes, it's too many
options to remember, unfortunately.  Safe(r) use of less was previously
discussed here:

http://www.openwall.com/lists/oss-security/2015/09/03/9

To view untrusted text files, use "less -nU".  Instead of "tail -f", use
"less -nUEX +F".  Setting up aliases may help.

This assumes that your distro didn't setup a script in LESSOPEN that
would do something dangerous for the given filename/suffix.

Alexander
