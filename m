X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1264" "Thursday" "18" "January" "2018" "09:51:37" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty3XSnvLXmXuVmpKahoToTdYrMegKs6HeQSco3m9fK1udQ@mail.gmail.com>" "32" "Re: [oss-security] How to deal with reporters who don't want their bugs fixed?" "^Date:" nil nil "1" "2018011816:51:37" "[oss-security] How to deal with reporters who don't want their bugs fixed?" (number mark "        kseifried@re Jan 18   32/1264  " thread-indent "\"Re: [oss-security] How to deal with reporters who don't want their bugs fixed?\"\n") "<07f40446-1917-893c-2a87-b0d7990579b2@redhat.com>" ("<07f40446-1917-893c-2a87-b0d7990579b2@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31989 invoked by uid 550); 18 Jan 2018 16:51:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31959 invoked from network); 18 Jan 2018 16:51:50 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=Rd2VpTtM+kv5EkOm40eBj1EvUPe/MPot4Setzex/F2g=;
        b=lSIWpuHOCMDv4ORgB5e+egCvbGmAbHIS3PrMF8Il59DaI+LVvj9hNQ5zyT8ytPss0r
         TKIqy+Ilmwj1ScHmj3LivGLAvdct4RXx2agfe/1GTO5+WpRtgMVRKLZfRLEsgwhcWMVI
         LuXGGMbspQYhxZ5q4gGt3gl8oQ6zfKBpT3NSMqk3Pkc/Q4xDJ4vSccu56Kfq9D8povGP
         wJiejnn+RdSbABU4v3Ay/TrpUen2801bVN3p0WHCN+r+jGL/zuKZI5A5Cvzem37jrY6K
         ZChtzAF6h4T0Rg/vK0xvNIzRF1GQK6QFUGf98MsoiHaJ8/suGAwjByqdfcdJOTYGUQg2
         rhhQ==
X-Gm-Message-State: AKwxytfMw540rVszQlrtNcEELKopQiLi93r1hkxsEcne9NjPHIriNP+x
	U+v0vx2OQZF8YiDtNAlXPvhIinQP2nGuG4lCYhWsF9DH
X-Google-Smtp-Source: ACJfBosFw5lmRY9/ZmdKSp25zRvuwZpQEDALyjU88ZVrGKJQdVsFMRSZ5NUZjnG7XXAvO1ewHL9QWIZ7lZPx5fbyWVk=
X-Received: by 10.202.87.133 with SMTP id l127mr3150863oib.295.1516294298391;
 Thu, 18 Jan 2018 08:51:38 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <07f40446-1917-893c-2a87-b0d7990579b2@redhat.com>
References: <07f40446-1917-893c-2a87-b0d7990579b2@redhat.com>
Message-ID: <CANO=Ty3XSnvLXmXuVmpKahoToTdYrMegKs6HeQSco3m9fK1udQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Thu, 18 Jan 2018 09:51:37 -0700
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] How to deal with reporters who don't want their
 bugs fixed?
To: oss-security <oss-security@lists.openwall.com>

On Thu, Jan 18, 2018 at 9:10 AM, Florian Weimer <fweimer@redhat.com> wrote:
> Subject says it all: What do you do if you receive a vulnerability report,
> and the reporter requests an embargo at some time in the future because
> that's when their paper/conference presentation/patent submission is
> scheduled?

We (Red Hat) respect the embargo request (although we will often try
to negotiate something a bit more sensible if they make a really
awkward request), but ultimately we want the researchers to come to
us, if we annoy them to much they might stop coming to us and just
drop their results as a 0day at the conference with no heads up.

> The obvious approach is to find a prior public report of essentially the
> same bug and fix that (which will work surprisingly often), but let's assume
> that this isn't the case.

I'm not sure this is a sustainable approach as researchers who want to
make a name for themselves are faced with the "well if I tell them,
they'll try to ignore my embargo request" which incentivizes them to
not do a coordinated disclosure.

>
> Thanks,
> Florian



-- 

Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com
