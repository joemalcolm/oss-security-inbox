Received: (qmail 19851 invoked by uid 550); 20 Oct 2023 15:53:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20388 invoked from network); 20 Oct 2023 15:21:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697815280; x=1698420080; darn=lists.openwall.com;
        h=in-reply-to:content-disposition:mime-version:references:subject:to
         :from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=QEsiE9nPlVLpaCbrfuWIyIPh0K9LK2GdRFiWlMP1I1Y=;
        b=Rh7APetVRoFD6RgvTfCd3CJ3XB7M7iFmQSf1IH9JKOMGH6fQCICXFZ++frnJna1Kma
         APRFX1ci7AylvkhOseDIuG46coCqvVI4PkdEC/KTHQ43aisb9mCcF3yCvUHmPq01iqaT
         mdQa5pw6/JDMurNQiQmyD041mnTHF1S5JKJwCRHGOHAgbQ4Ns931DketfQJjAIRZiQ/q
         If5+lzFrDeQ6YL7ej5LQ6zQi6rnir4eYKZZwBQtQ/j/3Bi1QbFKkbu5RaAgLFSYkWRca
         IWoGVuOE2eK94dAQlnwko+d/X8K2crrjVWQHZIG6aIOOEO1N6Ludbi54pUqKZhCmlJj7
         iXGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697815280; x=1698420080;
        h=in-reply-to:content-disposition:mime-version:references:subject:to
         :from:date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QEsiE9nPlVLpaCbrfuWIyIPh0K9LK2GdRFiWlMP1I1Y=;
        b=FncwMtQTMN5+SLMiins3k383ih2Gh0Pn7BnJcGMeHdJlGKiaDsCwYqxnka3PN+Z+KB
         RM+2b8cFOEODiQ0miXoZgk8W4AsotbUGpx/+aYVpKMcUVf4TdSPnc2AzdEhOYi+BJnq4
         agkb9eyz/VuHbbu2A+DBN/pFFOb6Z4CNrvN0jXd35SHmhKI5b6kJ3oZp4kwacqm+Qzx1
         12fdeWebrC4tMtsBJ+rEHouEckkgMNBPcwMMZbn7UcjCjnIrcUh7bBYq7XAowgWEoZrL
         wH2YFQa6v8s5ZiFT8Kmc9Jd43GdsSV6hT+aGudN98UTCoRg1G/sAV4sm06PEnmhT+oUX
         vjyA==
X-Gm-Message-State: AOJu0YwspTDdtrZgphyg2ljtQuIE9XDA2CGV+E55NOFbeb8FeN3Bq+zk
	1nd0iJBCkhF3WfnlEq/RuJBqR/ytbXadTg==
X-Google-Smtp-Source: AGHT+IHi8Ra14z2mKhtRoPrZwzE8cQVFl/FZ2zbcVgbUShGA+wQzOHDbCBPQOAaQK8zidqiPZxER9A==
X-Received: by 2002:adf:e94a:0:b0:32d:ae31:458c with SMTP id m10-20020adfe94a000000b0032dae31458cmr1321156wrn.33.1697815279784;
        Fri, 20 Oct 2023 08:21:19 -0700 (PDT)
Message-ID: <d4af64a958768b48cc98670741c1f8e4.da8a7fea@penurious.financings>
Date: Fri, 20 Oct 2023 18:21:18 +0300
From: Turistu <turistu@gmail.com>
To: oss-security@lists.openwall.com
References: <e5dc2cc159fa7e7f287e10482366011e.f0e92af0@rotted.prefixed>
 <3a2a90f88bf54fd7687234a8f5a92c43.49e9d693@crystals.bloom>
 <20231020132741.GA4951@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231020132741.GA4951@openwall.com>
Subject: Re: [oss-security] with firefox on X11, any page can pastejack you
 anytime

On Fri, Oct 20, 2023 at 03:27:41PM +0200, Solar Designer wrote:
> On Tue, Oct 17, 2023 at 03:17:36AM +0300, turistu wrote:
> > In firefox running on X11, any script from any page can freely write to the
> > primary selection, and that can be easily exploited to run arbitrary code
> > on the user's machine.
> 
> What about other web browsers running on X11, most notably Chrome and
> Chromium?

They're safe from *this* particular issue, which is caused by a simple bug
deep inside mozilla's C++ code, not by some explicit design decision.

> If the issue is unique to Firefox or at least not universal
> across browsers, that's an extra reason for Firefox to make a change.
> 
> On Fri, Oct 20, 2023 at 02:10:06AM +0300, Turistu wrote:
> > OK this was probably too technical and terse for people not familiar
> > with X11 programming and terminology, so thing goes like this:
> > 
> > 1. If you're a user who has first learned to use a GUI on e.g. Windows,
> > and who is used to copy & paste with Ctrl-C Ctrl-V (or with left-click,
> > choose Copy from the menu, and then again left-click, choose Paste),
> > then congratulations! this DOES NOT AFFECT YOU.
> > 
> > (Unless you're using some clipboard tools which merges the primary and
> > clipboard selection, but I guess you don't ;-))
> > 
> > 2. But if you're a *native* X11 user who is used to just select the text and
> > then paste it with a middle-click or shift-Insert, then this means you're
> > pretty much done, and you should immediately either stop using firefox or
> > try the workaround and patch described in my report. This also includes
> > Wayland users.
> 
> Or isolate Firefox to its own X server (or at least a separate one from
> where you run terminal emulators managing important stuff), like it
> happens when you run it in its own VM (or perhaps many instances of it
> in many VMs) on Qubes OS.  Indeed this also removes the convenience of

If you do that, notice that you will also have to run a window manager
inside that separate X server, because firefox (which never implemented
the X11 and icccm protocols correctly) needs a wm in order to function
properly (more precisely a point-to-focus wm or one that simulates
point-to-focus just to keep firefox and some other horrors like old atk
java apps happy).
