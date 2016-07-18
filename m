X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1124" "Monday" "18" "July" "2016" "17:56:53" "+0300" "Solar Designer" "solar@openwall.com" "<20160718145653.GA2103@openwall.com>" "29" "Re: [oss-security] A CGI application vulnerability for PHP, Go, Python and others" "^Cc:" nil nil "7" "2016071814:56:53" "[oss-security] A CGI application vulnerability for PHP, Go, Python and others" (number mark "        solar@openwa Jul 18   29/1124  " thread-indent "\"Re: [oss-security] A CGI application vulnerability for PHP, Go, Python and others\"\n") "<CAMqf4yDbXfYqFYHbMnMbrhcYfmjC56ok5+3VvNYfKndtsuECgA@mail.gmail.com>" ("<CAMqf4yDbXfYqFYHbMnMbrhcYfmjC56ok5+3VvNYfKndtsuECgA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25917 invoked by uid 550); 18 Jul 2016 14:57:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25898 invoked from network); 18 Jul 2016 14:57:04 -0000
Message-ID: <20160718145653.GA2103@openwall.com>
References: <CAMqf4yDbXfYqFYHbMnMbrhcYfmjC56ok5+3VvNYfKndtsuECgA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMqf4yDbXfYqFYHbMnMbrhcYfmjC56ok5+3VvNYfKndtsuECgA@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Cc: Richard Rowe <arch.richard@gmail.com>
Date: Mon, 18 Jul 2016 17:56:53 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] A CGI application vulnerability for PHP, Go, Python and others
To: oss-security@lists.openwall.com

On Tue, Jul 19, 2016 at 02:00:53AM +1200, Richard Rowe wrote:
> The Apache Software Foundation have an advisory available at
> https://www.apache.org/security/asf-httpoxy-response.txt

Neither the Apache advisory above nor the httpoxy website currently
mention the below detail, so I thought I'd post:

Apache httpd trunk's suexec wrapper was patched to filter out HTTP_PROXY
on February 13, 2015:

http://mail-archives.apache.org/mod_mbox/httpd-cvs/201502.mbox/%3C20150213232410.B89BCAC0110@hades.apache.org%3E
http://svn.apache.org/r1659711
https://svn.apache.org/repos/asf/httpd/httpd/trunk/CHANGES

  *) suexec: Filter out the HTTP_PROXY environment variable because it is
     treated as alias for http_proxy by some programs. [Stefan Fritsch]

The httpoxy website refers to a posting by Stefan Fritsch:

http://mail-archives.apache.org/mod_mbox/httpd-dev/201502.mbox/%3C2651807.jIIY3NPtlf@k%3E

but not yet to its apparent outcome, above.

httpd 2.4.23's suexec does not yet include this change (different branch).

Of course, it's just suexec, which isn't always used, so it was not a
complete fix anyway.

Alexander
