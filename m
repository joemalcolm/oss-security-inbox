X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3691" "Sunday" "9" "August" "2020" "11:05:38" "+0200" "Richard Hartmann" "richih.mailinglist@gmail.com" "<CAD77+gTYpB6Y2jc9P9GXiGNMMxcoRrYX7DODG620RKhLiWf=vg@mail.gmail.com>" "86" "Re: [oss-security] Voiding CVE-2020-16248" "^Date:" nil nil "8" "2020080909:05:38" "[oss-security] Voiding CVE-2020-16248" (number mark "        richih.maili Aug  9   86/3691  " thread-indent "\"Re: [oss-security] Voiding CVE-2020-16248\"\n") "<20200808152144.j5fatn23s6tgncsb@shell.thinkmo.de>" ("<CAD77+gR7G5zBc4pwQ86H-UuMk6QOgPcuK8R-hmmHqv8+8_+dbw@mail.gmail.com>" "<20200808152144.j5fatn23s6tgncsb@shell.thinkmo.de>") nil nil nil nil nil nil nil "Re: [oss-security] Voiding CVE-2020-16248" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7707 invoked by uid 550); 9 Aug 2020 11:08:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19812 invoked from network); 9 Aug 2020 09:06:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=Iy2b/6+3bx0kIRgSgzGYHl7XZiq1XrhoBe/QQqBxeSY=;
        b=AxIR8FSuOCQJoi5E+kyunxYRbFwNJz9TuruM6vnpxb1uq3SmfCOE8JDFpc3eemDlFJ
         jXz3Z1gyEtVk7aAXxgnW30ummbSw3WdkTTcl/9gon+LSK0l6UlRkv/knhuKOBkEgumgj
         mGRZTqUfET2u/jBvnfUoIUB9R95UWPXyroOKPYRIQn+ZSGuQ2a3lUyi+bBG1vgyQNLQr
         YPwr6SvIWdmDzG/QlY5LZeAwVtEO0IyC3GT65QFja2tHU4qKttOSTeArUAdkIY+vmd5i
         nluSEI9a+LaaUDVBG1laVQWsc25gs7S3c/tyodk2uUmCFHXj3qjluwZ9RBKXj8r04jdB
         mZ5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=Iy2b/6+3bx0kIRgSgzGYHl7XZiq1XrhoBe/QQqBxeSY=;
        b=MtaxIZULAUZq1GM7C96Ojz1LuqYN5iXCTTVzJcdFLNTA1i80BDAopLBHvhCfBGx5sb
         w7KyyuUV6OcjZ0nbwQ0/if2P1/cjsln0/IQUNh92zPWDENA+tgWTUXyV3TeY27ndw81m
         EEzpe4qRilgCv58emtp5NGwN9KUZjc+HelyKN/TURn9XfpXtLVQ6374OlZDIVqP1z5uB
         ETMTBHCIHIe6jdw0IilF5p8VV/efyFrqakAWQa3xbDjVemHDOcMEL5m96M0LonNYlei1
         6IcUGaijii2h9XCZIo/vghQW6s/R4ef/FpCT+0/VvnTy3heAweCMBUNs/Uts0GkbW+Qv
         YMyA==
X-Gm-Message-State: AOAM530sm3fWXaABQMHpWJ/kekGI7IJNPfghLb4TC2iNPwrS7iKsC257
	aXNMXN1A78XEVevdE2mnfWNDNFFaaqJH24IHoktoNVXq
X-Google-Smtp-Source: ABdhPJxyep797qzgibjf+vB8MPowVGqnU0qfJUWRfkFOcZOnIfgokekKieZd1a36d6cxpJF5+UHdbWkd4rLroOQqmis=
X-Received: by 2002:a17:906:b890:: with SMTP id hb16mr17774308ejb.376.1596963949224;
 Sun, 09 Aug 2020 02:05:49 -0700 (PDT)
MIME-Version: 1.0
References: <CAD77+gR7G5zBc4pwQ86H-UuMk6QOgPcuK8R-hmmHqv8+8_+dbw@mail.gmail.com>
 <20200808152144.j5fatn23s6tgncsb@shell.thinkmo.de>
In-Reply-To: <20200808152144.j5fatn23s6tgncsb@shell.thinkmo.de>
Message-ID: <CAD77+gTYpB6Y2jc9P9GXiGNMMxcoRrYX7DODG620RKhLiWf=vg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Sun, 9 Aug 2020 11:05:38 +0200
From: Richard Hartmann <richih.mailinglist@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Voiding CVE-2020-16248
To: oss-security@lists.openwall.com

Hi Bastian,

I have been wondering if I should reply or not as mutual feelings of
XKCD 386 are usually not conductive to a mailing lists' S/N ratio. As
we have known each other for ~15-20 years and as you asked directly, I
decided to reply.

> Could you please explain yourself why you think this is not a
> vulnerability?  Even wanted functuality can constitute a vulnerability
> if looked on closer.

It's not just wanted, it's literally the reason blackbox_exporter exists.


> The software allows to send pre-defined requests to arbitrary targets
> and extract at least parts of the response.  This is a typical SSRF.
> Would you require to specify the allowed targets, noone would ask.

Many tools in the networking, security, and monitoring space fit
common exploit characteristics. This is why they are useful as tools.
Precisely this consideration is why our security documentation[1]
talks about exporters and calls out blackbox_exporter and
snmp_exporter as their purpose is to proxy probes from certain vantage
points in networks. This has been pointed out in the GH issue as well.

Related: Before we even close the issue, I have suggested within
prometheus-team@ that we might want to consider allowlists in those
two exporters. Allowing users to itemize URLs, glob on FQDNs/URLs, and
subnet-match in their configuration may be striking a better balance.
The counterargument is that you should not be exposing internal
debugging tools on the public Internet anyway and that snmp_exporter
has secret data (SNMP communities) so it MUST NOT be on the public
Internet. As of today, there is no consensus within -team either way.

Based on my experience, I would expect to receive fewer, but not none,
false reports if/when we carry an allowlist. It will still allow
"SSRF" on _some_ targets which especially tools set up to emphasize a
company's security, and thus domain names etc. And security scanners
need human interpretation and context as this can not reasonably be
codified in scanners as of today.


> Please don't.  You just accused the reporter of malpractice on a public
> forum.  JFYI, this is punishable in your jurisdiction.

As we have known each other for so long, you know that IANAL and I
know that YANAL unless you changed careers lately. As a layman I do,
however, disagree with your implication/assessment that I exposed
myself legally in my original email. This seems to be a highly
hypothetical consideration anyway.


> Also embargo and posting a public issue on GitHub don't really mix.

That is part of my critique of the CVE's reporter as this is the
status of CVE & GH issue as of today.


> You did not address the reporter at all.

While I did not reply before the issue was closed, Brian replied in
less than seven hours, pointing to our documentation about why we do
not consider this a security vulnerability and how to report them
outside of public GH issues. I did address the reporter asking them to
close the issues, though.
All in all, I am not 100% clear what point you're making here, but I
hope the above is not completely off.


> The reporter is also not a
> regular user of GitHub, where this issue was raised.

Github sends email for issue replies by default. On a more general
point, I would expect anyone who reports a vulnerability to make a
reasonable effort of being available for follow-up questions.


Best,
Richard

PS: Sorry for the TOFU and CCs earlier; GMail's UI is made to
disregard proper quoting and most mailing lists I am on today use,
sadly, GMail and other MUAs which favour TOFU. So I kinda got used to
it but still should not have done it on this list.

[1] https://prometheus.io/docs/operating/security/#exporters
