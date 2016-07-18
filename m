X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["583" "Monday" "18" "July" "2016" "14:23:41" "-0400" "Jan Schaumann" "jschauma@netmeister.org" "<20160718182341.GC18755@netmeister.org>" "13" "Re: [oss-security] A CGI application vulnerability for PHP, Go, Python and others" "^Date:" nil nil "7" "2016071818:23:41" "[oss-security] A CGI application vulnerability for PHP, Go, Python and others" (number mark "        jschauma@net Jul 18   13/583   " thread-indent "\"Re: [oss-security] A CGI application vulnerability for PHP, Go, Python and others\"\n") "<CAMqf4yDbXfYqFYHbMnMbrhcYfmjC56ok5+3VvNYfKndtsuECgA@mail.gmail.com>" ("<CAMqf4yDbXfYqFYHbMnMbrhcYfmjC56ok5+3VvNYfKndtsuECgA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12012 invoked by uid 550); 18 Jul 2016 18:23:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11994 invoked from network); 18 Jul 2016 18:23:53 -0000
Message-ID: <20160718182341.GC18755@netmeister.org>
References: <CAMqf4yDbXfYqFYHbMnMbrhcYfmjC56ok5+3VvNYfKndtsuECgA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMqf4yDbXfYqFYHbMnMbrhcYfmjC56ok5+3VvNYfKndtsuECgA@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Mon, 18 Jul 2016 14:23:41 -0400
From: Jan Schaumann <jschauma@netmeister.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] A CGI application vulnerability for PHP, Go,
 Python and others
To: oss-security@lists.openwall.com

Richard Rowe <arch.richard@gmail.com> wrote:
 
> The consequence is that an attacker can force a proxy of their choice to be
> used. This proxy receives the full request for anything sent over HTTP
> using a vulnerable client. It can also act in a malicious way to tie up
> server resources (a "reverse slowloris").

I know you mentioned it on https://httpoxy.org/, but I think it's worth
stressing explicitly again:  use of HTTPS for all requests made by the
application, internal as well as external, defeats this vulnerability
(provided certificates are actually verified).

-Jan
