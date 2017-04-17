X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1999" "Monday" "17" "April" "2017" "13:35:26" "-0700" "Kenton Varda" "kenton@cloudflare.com" "<CAJouXQmLpm3-cdy--hUjNy70XXGmQ=Rnuwr0W+FQJkWA4BuX4w@mail.gmail.com>" "59" "Re: [oss-security] Re: CVE Request: Cap'n Proto: Bounds check elided by compiler optimization" "^Cc:" nil nil "4" "2017041720:35:26" "[oss-security] Re: CVE Request: Cap'n Proto: Bounds check elided by compiler optimization" (number mark "        kenton@cloud Apr 17   59/1999  " thread-indent "\"Re: [oss-security] Re: CVE Request: Cap'n Proto: Bounds check elided by compiler optimization\"\n") "<20170417180728.GA31692@openwall.com>" ("<CAJouXQ=FM1XBV3p8Yn_yrhJyLv98hEChuGFgKuLUhFoGXAgsrg@mail.gmail.com>" "<CAJouXQntfKK9r8T5HtxHCeVGhdYjwW_Wk_SSa4n-KsbM5qAFZA@mail.gmail.com>" "<20170417180728.GA31692@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17776 invoked by uid 550); 17 Apr 2017 20:39:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5325 invoked from network); 17 Apr 2017 20:36:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cloudflare.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=t2WPTqU0DkmjSCFawQI+1hbh3EooGEy3Eqh8YRz8cAQ=;
        b=jxPTvXa0WJRbju3AoVrfAW117wrWh39QVncMYszMXS2zt+SpXMUUuMXIhZqVr7kpGZ
         SHyC59LFYgLq6TY/qnZT2ySVsIPMI60IXTsJSTYk+iLL3YQvlYUFrPAXPxSHDFV3mu/p
         UA3uiqH7CCBai+1ME9qBCUTUYwFM+p8LsI6UQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=t2WPTqU0DkmjSCFawQI+1hbh3EooGEy3Eqh8YRz8cAQ=;
        b=nGJKyey9q4+vOwnFewJeeIGd7AfuOjaogjMDT2KxHOB4maqpyxYz5NVN+aOl0IeVab
         AMGyMWvygyZ8LdsM+4/cdfjSJ5LDk0alhjO60ye6R2rBTtstdQM/LHea86MnU71e2HQK
         OkOVWo6kpTbRxknCGIFgdjwKDN5vIIz0NbwY2MO6wAuaRu2HPAEBdlxmIh6NzNKE/0pu
         tD2jiyUFPrmqjqbGlWy38a+31pEsGCzHBnd366H5v6yCX9PlXl5hpvXEaqMT7i3DtZQD
         k22aQn6QSNLYCkoQOt2eS6E/vWovCIWaJ0m3htzutRdttJy0v/JyaOmz7zCl3TXi2hzP
         pz1A==
X-Gm-Message-State: AN3rC/7DDtutlF6xwqhdYfU+PjuBfyAEfci/XxV7B8prPeFG5BfhJU6X
	jWe19aKtIHIWzTTEw06tJsp9+py6Q4ea
X-Received: by 10.36.6.67 with SMTP id 64mr11676116itv.123.1492461366520; Mon,
 17 Apr 2017 13:36:06 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170417180728.GA31692@openwall.com>
References: <CAJouXQ=FM1XBV3p8Yn_yrhJyLv98hEChuGFgKuLUhFoGXAgsrg@mail.gmail.com>
 <CAJouXQntfKK9r8T5HtxHCeVGhdYjwW_Wk_SSa4n-KsbM5qAFZA@mail.gmail.com> <20170417180728.GA31692@openwall.com>
Message-ID: <CAJouXQmLpm3-cdy--hUjNy70XXGmQ=Rnuwr0W+FQJkWA4BuX4w@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11449dbe97c593054d62bd8b
Cc: oss-security@lists.openwall.com, Tom Lee <debian@tomlee.co>
Date: Mon, 17 Apr 2017 13:35:26 -0700
From: Kenton Varda <kenton@cloudflare.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request: Cap'n Proto: Bounds check elided
 by compiler optimization
To: Solar Designer <solar@openwall.com>

--001a11449dbe97c593054d62bd8b
Content-Type: text/plain; charset=UTF-8

Hi,

This has been assigned: CVE-2017-7892

Apologies for failing to follow the list guidelines.

Thanks,
-Kenton

On Mon, Apr 17, 2017 at 11:07 AM, Solar Designer <solar@openwall.com> wrote:

> On Mon, Apr 17, 2017 at 10:35:51AM -0700, Kenton Varda wrote:
> > Whoops, apparently I'm supposed to use the web form now. Sorry!
>
> Yes, but many of us in here care(d) about being notified of security
> issues much more than about CVEs, hence as a moderator I approved your
> posting anyway.  Once you've obtained the CVE ID from MITRE, please post
> it to this same thread as a "reply".
>
> > On Mon, Apr 17, 2017 at 10:32 AM, Kenton Varda <kenton@cloudflare.com>
> wrote:
> > > Full details and fix covered here: https://github.com/sandstorm-i
> > > o/capnproto/blob/master/security-advisories/2017-04-17-0-
> > > apple-clang-elides-bounds-check.md
>
> The lack of detail in your posting goes against published oss-security
> guidelines, which are:
>
> http://oss-security.openwall.org/wiki/mailing-lists/oss-
> security#list-content-guidelines
>
> "At least the most essential part of your message (e.g., vulnerability
> detail and/or exploit) should be directly included in the message itself
> (and in plain text), rather than only included by reference to an
> external resource.  Posting links to relevant external resources as well
> is acceptable, but posting only links is not.  Your message should
> remain valuable even with all of the external resources gone."
>
> Here's the "unbroken" GitHub URL:
>
> https://github.com/sandstorm-io/capnproto/blob/master/
> security-advisories/2017-04-17-0-apple-clang-elides-bounds-check.md
>
> and I've attached to this message the "raw" (text) version from:
>
> https://raw.githubusercontent.com/sandstorm-io/capnproto/
> master/security-advisories/2017-04-17-0-apple-clang-elides-bounds-check.md
>
> as text/plain.
>
> Thanks,
>
> Alexander
>

--001a11449dbe97c593054d62bd8b--
