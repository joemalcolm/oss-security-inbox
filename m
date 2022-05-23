Received: (qmail 31903 invoked by uid 550); 23 May 2022 08:38:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7516 invoked from network); 23 May 2022 06:48:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlers.com; s=googlers;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=i5eY0Hba9bhGQFCLIytqqDXtr3EWD9G1fyqDp+mGPNc=;
        b=BlSFgft+bCjXsiBEYuxugUdV67n1aG/23T5n4kyjpCc6/tQi+d3nOtu59EC1uGGoFe
         qYCcVnsGnRtrNhciW0DtsOw713Q3z/wC/lKWMqfZsntAoI0JaLXBJa0seXumgzmJEcPV
         TG8QOedYf/nJGiFtFnuOXwJSkFenGzpCVXJGw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=i5eY0Hba9bhGQFCLIytqqDXtr3EWD9G1fyqDp+mGPNc=;
        b=xJeOYEUs6mQHJafyJnkDw5DEhTgqCkRQ2LnUspps4AuOYH7sJSB3mWfB3+VquWnLag
         jTVlpExVfdUvha/UzGUPHhENBnk/QCiv12UHMXw3+XJ9RvMgLCC0sYrk2UkCiAqgLFyL
         mPgmWIrU+BhApUIxqLia4ya3gEyvW35Ol85tK2TkrXqRTqD6MLQWggvSDdy9oJ69HaPJ
         +O2xR5cSeH7wBjeis0t06LDXuv0qLJaaoEUXp5J8zxv9osIcQJGgoEkoS2LDXluZ166P
         2/dQ9/H4T0Y6FRhG01cS5vkLEigyDTf7Q84KyUFRW6WzTTwf6bYpC7a5f72S0KDgI2fp
         sM3g==
X-Gm-Message-State: AOAM531VRcm5u42n8J4vcejuiOgvBtTh9o1FrXGfi/viCfDEviLuvUnI
	lkuZWbAXQpfuw6RxOMxXPBNNjdPRSrpWTyxn09EEVJ1pg6o=
X-Google-Smtp-Source: ABdhPJw3WaUS+lTIPYull8kz+xhTUfljultyINH6nIbFarwECJVhnCVyLdEv+JeGx1CHJ5G2hCX9VuTXVYUarz9RetU=
X-Received: by 2002:a17:906:2658:b0:6fe:deae:cf0d with SMTP id
 i24-20020a170906265800b006fedeaecf0dmr3561848ejc.119.1653288520103; Sun, 22
 May 2022 23:48:40 -0700 (PDT)
MIME-Version: 1.0
References: <20220515162740.GA20526@openwall.com> <YoKiGWAX4E/mbGWB@kroah.com>
 <1be21670-921c-9f0a-d99c-a9f6fd02b9b2@oracle.com> <20220522191951.GA21330@openwall.com>
 <1667A786-CDE3-4DB2-B6E8-5EA6B39F1AA4@gentoo.org> <Yosq94tksfo9y+xM@kroah.com>
In-Reply-To: <Yosq94tksfo9y+xM@kroah.com>
From: eduardo vela <evn@googlers.com>
Date: Mon, 23 May 2022 08:48:27 +0200
Message-ID: <CAFswPa-o3rbTauLiQfQtLLP-Cm2BFbKFCEffdbA3iHDLHcUwDg@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Sam James <sam@gentoo.org>, Seth Arnold <seth.arnold@canonical.com>
Content-Type: multipart/alternative; boundary="000000000000f41c2905dfa83a45"
Subject: Re: [oss-security] linux-distros list policy and Linux kernel

--000000000000f41c2905dfa83a45
Content-Type: text/plain; charset="UTF-8"

On Mon, 23 May 2022, 08:35 Greg KH, <greg@kroah.com> wrote:

> On Sun, May 22, 2022 at 08:55:50PM +0100, Sam James wrote:
> > I'd also like to ask that the final commit messages please reference any
> > relevant CVEs or at least the security impact. There've been a fair
> number
> > of incidents where such information is stripped and it makes tracking
> > issues *really* hard.
>
> That is pretty much impossible and goes against the whole goal of "get
> this fixed and in a public tree and only tell the world that it was an
> issue after-the-fact" way that the kernel team works.  If we put all of
> that in the commit to start with, the whole world knows this info.  We
> can't go back in time and change git commits for obvious reasons.
>

Hi all

Regarding keeping the security relevance of the patch secret.

Something we are working on now (as the Google CNA) is to automatically
generate CVEs for Syzkaller findings that meet some criteria (unique, with
reproducer, and with some heuristics to determine the type of crash, eg
KASAN+uaf). We would also monitor advisories from distros to catch
duplicate CVEs and not issue them in those cases.

The reason I mention it in this list is because a CVE would be issued (and
maybe communicated to oss-security@ to avoid duplicate CVEs), which might
also automatically break embargos. That said, I hope that's OK, as
Syzkaller is just a subset of security vulnerabilities being disclosed on
the Kernel.

If you have feedback about the overall concept, please send it off-list (or
start a new thread) as to avoid derailing the topic, but I wanted to bring
it up because it might appear as willing violations of Embargo on the new
linux-distros@ process being proposed.

Regards


thanks,
>
> gre gk-h
>

--000000000000f41c2905dfa83a45--
