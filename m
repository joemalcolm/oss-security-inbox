X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2339" "Monday" "18" "July" "2016" "14:27:03" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty322LOtzmR3Dwi3ZtmKX1TPhyrBUu1xdnnG3BRkDo9_bg@mail.gmail.com>" "57" "Re: [oss-security] A CGI application vulnerability for PHP, Go, Python and others" nil nil nil "7" "2016071820:27:03" "[oss-security] A CGI application vulnerability for PHP, Go, Python and others" (number mark "U       kseifried@re Jul 18   57/2339  " thread-indent "\"Re: [oss-security] A CGI application vulnerability for PHP, Go, Python and others\"\n") "<20160718193358.GA4942@openwall.com>" ("<CAMqf4yDbXfYqFYHbMnMbrhcYfmjC56ok5+3VvNYfKndtsuECgA@mail.gmail.com>" "<20160718182341.GC18755@netmeister.org>" "<20160718193358.GA4942@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13429 invoked by uid 550); 18 Jul 2016 20:27:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13408 invoked from network); 18 Jul 2016 20:27:16 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=uFVnymVOYVM/f/mtolqrxC3opztr2Phe8V90xQBaBjU=;
        b=D5FSElba1r5VuUXBm1xhLCgUVr6YaZaMd+i+KubccQTv04b6REtO1KQvTQqzpF+yR3
         ANdGLyAgdQ+JibABIBIjahXMrDB7nHNGk+9KviYMArZyx625xYK9+U2Sv/fXZvDlxzlY
         TpNjUCfQcVJb610UjsWjzQOOW16hAlH16mwX0fatz4AzdciDaF2/GWvM6EFpJMBNvPMg
         uDCxqvLV5IjzARmBI3pmC94HVKTQtokIrUhPGvp+NYfZQCSHIcXmue5axrZc85W5CsTj
         nYgCv5xIn5GvUarX5NYVMD11UwligAoVBkwNZlxfJaFSbEjBd+o63m9Y9r81U7MoIEB9
         SJSA==
X-Gm-Message-State: ALyK8tLPNtrBe3ECAwixIUYmnSwydt7zBDjMKDeLoq6bpTxkkRxnZKpiAyZ8lvWjfMa+HglsrX4V71EOTk5fn+pd
X-Received: by 10.157.35.106 with SMTP id k39mr21909713otd.66.1468873624392;
 Mon, 18 Jul 2016 13:27:04 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160718193358.GA4942@openwall.com>
References: <CAMqf4yDbXfYqFYHbMnMbrhcYfmjC56ok5+3VvNYfKndtsuECgA@mail.gmail.com>
 <20160718182341.GC18755@netmeister.org> <20160718193358.GA4942@openwall.com>
From: Kurt Seifried <kseifried@redhat.com>
Date: Mon, 18 Jul 2016 14:27:03 -0600
Message-ID: <CANO=Ty322LOtzmR3Dwi3ZtmKX1TPhyrBUu1xdnnG3BRkDo9_bg@mail.gmail.com>
To: oss-security <oss-security@lists.openwall.com>
Content-Type: multipart/alternative; boundary=001a11c16cb49a2c270537eeca9d
Subject: Re: [oss-security] A CGI application vulnerability for PHP, Go,
 Python and others

--001a11c16cb49a2c270537eeca9d
Content-Type: text/plain; charset=UTF-8

On Mon, Jul 18, 2016 at 1:33 PM, Solar Designer <solar@openwall.com> wrote:

> On Mon, Jul 18, 2016 at 02:23:41PM -0400, Jan Schaumann wrote:
> > Richard Rowe <arch.richard@gmail.com> wrote:
> >
> > > The consequence is that an attacker can force a proxy of their choice
> to be
> > > used. This proxy receives the full request for anything sent over HTTP
> > > using a vulnerable client. It can also act in a malicious way to tie up
> > > server resources (a "reverse slowloris").
> >
> > I know you mentioned it on https://httpoxy.org/, but I think it's worth
> > stressing explicitly again:  use of HTTPS for all requests made by the
> > application, internal as well as external, defeats this vulnerability
> > (provided certificates are actually verified).
>
> Certificates being actually verified doesn't help against use of this
> trick for host/port scanning or DoS attacks on third-parties.  What does
> fully defeat this vulnerability is if the application or library only
> checks a different env var like HTTPS_PROXY for HTTPS connections.  So I
> guess whether use of HTTPS fully defeats or partially mitigates the
> issue varies by the application or library invoked from a CGI program.
>
> Alexander
>

More to the point to quote myself:

https://access.redhat.com/security/vulnerabilities/httpoxy

==
Please note that the "Proxy" header is not an official standard header, nor
is it in the provisional header registry. The "Proxy" header should not be
used by any standards compliant applications or clients.
==

Case in point:

http://www.iana.org/assignments/message-headers/message-headers.xhtml

You will note that the "Proxy" header is not there. It's a common
convention to support it, and as it turns out, a bad one (seriously, in
what use case do you want to let a client specify the proxy that a server
then uses to handle outgoing requests?). We also asked several large web
CDN firms to check their logs for the "Proxy" header, and none reported
seeing it used in the wild. Literally the only use case for this header now
is for attackers.

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a11c16cb49a2c270537eeca9d--
