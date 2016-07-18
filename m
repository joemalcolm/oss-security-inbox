X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1099" "Monday" "18" "July" "2016" "22:33:59" "+0300" "Solar Designer" "solar@openwall.com" "<20160718193358.GA4942@openwall.com>" "21" "Re: [oss-security] A CGI application vulnerability for PHP, Go, Python and others" "^Date:" nil nil "7" "2016071819:33:59" "[oss-security] A CGI application vulnerability for PHP, Go, Python and others" (number mark "        solar@openwa Jul 18   21/1099  " thread-indent "\"Re: [oss-security] A CGI application vulnerability for PHP, Go, Python and others\"\n") "<20160718182341.GC18755@netmeister.org>" ("<CAMqf4yDbXfYqFYHbMnMbrhcYfmjC56ok5+3VvNYfKndtsuECgA@mail.gmail.com>" "<20160718182341.GC18755@netmeister.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11345 invoked by uid 550); 18 Jul 2016 19:34:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11327 invoked from network); 18 Jul 2016 19:34:10 -0000
Message-ID: <20160718193358.GA4942@openwall.com>
References: <CAMqf4yDbXfYqFYHbMnMbrhcYfmjC56ok5+3VvNYfKndtsuECgA@mail.gmail.com> <20160718182341.GC18755@netmeister.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160718182341.GC18755@netmeister.org>
User-Agent: Mutt/1.4.2.3i
Date: Mon, 18 Jul 2016 22:33:59 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] A CGI application vulnerability for PHP, Go, Python and others
To: oss-security@lists.openwall.com

On Mon, Jul 18, 2016 at 02:23:41PM -0400, Jan Schaumann wrote:
> Richard Rowe <arch.richard@gmail.com> wrote:
>  
> > The consequence is that an attacker can force a proxy of their choice to be
> > used. This proxy receives the full request for anything sent over HTTP
> > using a vulnerable client. It can also act in a malicious way to tie up
> > server resources (a "reverse slowloris").
> 
> I know you mentioned it on https://httpoxy.org/, but I think it's worth
> stressing explicitly again:  use of HTTPS for all requests made by the
> application, internal as well as external, defeats this vulnerability
> (provided certificates are actually verified).

Certificates being actually verified doesn't help against use of this
trick for host/port scanning or DoS attacks on third-parties.  What does
fully defeat this vulnerability is if the application or library only
checks a different env var like HTTPS_PROXY for HTTPS connections.  So I
guess whether use of HTTPS fully defeats or partially mitigates the
issue varies by the application or library invoked from a CGI program.

Alexander
