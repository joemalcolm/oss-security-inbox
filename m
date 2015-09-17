X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3133" "Thursday" "17" "September" "2015" "13:34:48" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty2vmRG42pMr0aWxgEWXiZiPP8gMmH9pT+uOqO1FhLo6Tw@mail.gmail.com>" "77" "Re: [oss-security] Re: CVE Request: remote triggerable use-after-free in rpcbind" nil nil nil "9" "2015091719:34:48" "[oss-security] Re: CVE Request: remote triggerable use-after-free in rpcbind" (number mark "        kseifried@re Sep 17   77/3133  " thread-indent "\"Re: [oss-security] Re: CVE Request: remote triggerable use-after-free in rpcbind\"\n") "<20150917190047.GC26219@suse.de>" ("<20150917162046.2F4C16C0044@smtpvmsrv1.mitre.org>" "<55FB0BAE.8070101@RedHat.com>" "<20150917185420.GB26219@suse.de>" "<55FB0D43.6070105@RedHat.com>" "<20150917190047.GC26219@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27796 invoked by uid 550); 17 Sep 2015 19:35:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27778 invoked from network); 17 Sep 2015 19:35:00 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=ojhV4W6voMt4ZBPMCgfMsK25zyZdnyPGREZm+hwqKz0=;
        b=LKVzkjjoD5AzlfsIovAPIIp0L/8Am8xMCjSmtOg5S4pCObYgEVsx+JIgpPGYemzb5g
         ziLyJeYVdMyvPjW3P9o3FXSIKAOJjZ9k0MzAlpHCEsbqqMBDMhYsr1a35BcEry03IP9A
         LoOmRaCfLpy83566hv5eEV7piRH9trB+shPhEftreaBXB4YkcHQ5u99EHIcMDB4ywvpS
         mnArOQHO1DZJ5m6rLwDNlW6M4RCt1wMdFoVPjWlMT4cgPRpnCfmR1y19O3/Cgc/spb0s
         NiFzE8+9IPBSS5YlcDDNLO6YnG5RoD0UZgSseT6Fj8noLzcaKh1RbNgbzwTTYIsarwHW
         muFQ==
X-Gm-Message-State: ALoCoQmyQ14JGw5ieKyh4Yq8NKY1PzIdKNOJsGqo+1o3pblj2zrp/A6P/Jz4t8/IuidzNZb/oVa8
MIME-Version: 1.0
X-Received: by 10.129.39.129 with SMTP id n123mr1083779ywn.36.1442518488643;
 Thu, 17 Sep 2015 12:34:48 -0700 (PDT)
In-Reply-To: <20150917190047.GC26219@suse.de>
References: <20150917162046.2F4C16C0044@smtpvmsrv1.mitre.org>
	<55FB0BAE.8070101@RedHat.com>
	<20150917185420.GB26219@suse.de>
	<55FB0D43.6070105@RedHat.com>
	<20150917190047.GC26219@suse.de>
Message-ID: <CANO=Ty2vmRG42pMr0aWxgEWXiZiPP8gMmH9pT+uOqO1FhLo6Tw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11408574193ab5051ff682b3
Cc: Steve Dickson <SteveD@redhat.com>, cve-assign@mitre.org, Olaf Kirch <okir@suse.de>
Date: Thu, 17 Sep 2015 13:34:48 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request: remote triggerable use-after-free
 in rpcbind
To: oss-security <oss-security@lists.openwall.com>

--001a11408574193ab5051ff682b3
Content-Type: text/plain; charset=UTF-8

On Thu, Sep 17, 2015 at 1:00 PM, Marcus Meissner <meissner@suse.de> wrote:

> On Thu, Sep 17, 2015 at 02:58:11PM -0400, Steve Dickson wrote:
> > > Where should I open it? kernel.org?
> > IDK... Aren't CVE suppose to be keep under wrap until
> > they are fixed... I know there are some rules around CVEs...
>
> Security issues can be either predisclosed in a smaller circle (the term
> is "responsible disclosure"), or published directly.
>
> As Olaf mailed the issue to the linux-nfs list a while ago, and SUSE
> evaluated
> and found the security impact only afterwards, the issue is considered
> already
> "public" and so gets no embargo.
>
> If the impact would be more obvious before it might have get a
> predisclosure.
>
> There are no strict rules though, just common understanding.
>
> Ciao, Marcus
>


To make it more complicated:

1) There are no strict rules
2) There are some strict rules
3) There are some wibbly-wobbly rules as well

There is no central governing body/law that controls security
vulnerabilities and how they are treated (well there is.. sort of, but not
really).

There are however economic and social forces at work, e.g. at Red Hat we do
our best to play nice with other vendors and reporters, why? So they keep
working with us and reporting stuff to us.

SuSE is a great example, there is a piece of software that both SuSE and
Red Hat ship called "SpaceWalk", SuSE handles quite a lot of the dev work
(thanks!), so for example when a security vuln for Spacewalk comes in we
(Red Hat) notify SuSE pretty much immediately, and they also get access to
the Bugzilla entry (so I don't have to play email games, they can just look
at the info directly). So for both SuSE and Red Hat this relationship with
respect to SpaceWalk is hugely beneficial to both of us (in economic terms
a net gain).

Companies that play less nice with reporters/other companies tend to be
excluded from information sharing, while not a strict rule, it is pretty
fundamental to human nature (who wants to play with mean people?). So while
not a strict rule, it is pretty common.

As for the wibbly-wobbly rules, well for example a commit may inadvertently
fix a security issue, one that nobody realizes exists. This happens all the
time. Sometimes post commit reviews/backports/etc cause someone to examine
it and realize it is a security issue. Some people consider this to be
"public" info, others do not, some (like myself) would say "it depends"
(but then I would also say "embargo only the things that matter").

Should we have agreed upon rules and standards? Hahahaha, not going to
happen. Should we have a rough framework/matrix (e.g. more embargo/less
embargo, more coordinated/less coordinated, etc.) so we at least know where
people are coming from and what their expectations are when we want to work
with them? Not a terrible idea I think.



--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a11408574193ab5051ff682b3--
