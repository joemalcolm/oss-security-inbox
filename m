X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["853" "Saturday" "26" "June" "2021" "09:27:40" "+0200" "\"Eduardo' Vela\\\" <Nava>\" <evn@google.com>" "\"Eduardo' Vela\\\" <Nava>\" <evn@google.com>" nil "32" "[oss-security] Re: CVE-2021-22543 - /dev/kvm LPE" nil nil nil "6" nil nil (number mark "U       \"Eduardo' Ve Jun 26   32/853   " thread-indent "\"[oss-security] Re: CVE-2021-22543 - /dev/kvm LPE\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: CVE-2021-22543 - /dev/kvm LPE" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15597 invoked by uid 550); 26 Jun 2021 08:04:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30143 invoked from network); 26 Jun 2021 07:28:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dZpUGeJ9Af8UhqG8SPm5BMMc5Hv9wjHJxLoR6f3fcig=;
        b=JQJNF5+mhk1+8jnPeyIOT7aJCp3wgJPqi+AxoJr5tG24D9z+CJsax42tUzOJzZPjpY
         8VfQthTqtbbmJ8FLGrKUFYqcNq1EuExe0NxRB1tkKZAnFoiNbubAtPHUP49HYjbNThv6
         8olKDMIeZNuXT7GBKrj5pE5Wbrs0w++rvU1pPBsv4hbjGxKPzRDQ8Yxsli/kqShqTEIb
         Zur32vX+bh757e2jH3cypozglC/apgstatMCBXjzuAI+k0a8EYLrkagxdEl5oFfBhzyq
         k7q1EHV5EWOwIT6ky8MFdE3Q/IZvYOWWBHUMgJ+SzoesV1KVtBrPFmgQuJJw8GYNQ9hV
         1Udw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dZpUGeJ9Af8UhqG8SPm5BMMc5Hv9wjHJxLoR6f3fcig=;
        b=UJOfHSC6tUMoEkdfaltADRQ3w16yD/sDcN3MCGNOnJEOnI6EZygzvaqfmrWILogZdy
         UmJfbWtcs5ys/uFcBfRRPuW2NDSkMToJeTm0f/CG6K09LqvZFz8dgJewT6mPA+vWleAi
         scWnNUEy+0nNss4PkeqEdIpLTvPct+VeW7qLb9t2gITK0eW85XNHCzljA+Fa+3fdBDXh
         eHKrv9wp8rkPMH4AZk0NN0FkqTf4cf3GDoLrsK1Vk9YF4XyFYdpItRVTCZB5vgIB39kb
         2Fn2GX8Cp7rLfgZJe55LfvsISAwBIBV6WNYZxdnJXiLGVpmb+2yJrKAGQs7Ozb4XSelj
         I/mw==
X-Gm-Message-State: AOAM5332MQTRpzSinwdEuC3GqYBljaVFZw3GCq5FeK/5+q7ysoypNcxq
	YT3EwD8kJPn1uIuC5Be84lXC/CfMRmMPqZ6qYteCpQ==
X-Google-Smtp-Source: ABdhPJwskdcEjE1Ek+mv7N2GCWfIoIEljeryAcU/u91KFZos5b8y++Kbd3XG6vgkWsdr7glFh3hPW1GNYFBFwOLfC78=
X-Received: by 2002:a05:6402:4248:: with SMTP id g8mr20085306edb.368.1624692474266;
 Sat, 26 Jun 2021 00:27:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAFswPa_QOAgf6wgng+KJcPJKykNG3zQWyQfiXWHj8VK0W+_tKg@mail.gmail.com>
 <9046efe7-a418-af68-910a-39e955f5fad9@redhat.com>
In-Reply-To: <9046efe7-a418-af68-910a-39e955f5fad9@redhat.com>
From: "Eduardo' Vela\" <Nava>" <evn@google.com>
Date: Sat, 26 Jun 2021 09:27:40 +0200
Message-ID: <CAFswPa8TSUk2UUuLXbzBPx2R8zqiR6de9Co_TBWUOYeEJvu-VA@mail.gmail.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000ccc19e05c5a631a7"
Subject: [oss-security] Re: CVE-2021-22543 - /dev/kvm LPE

--000000000000ccc19e05c5a631a7
Content-Type: text/plain; charset="UTF-8"

https://github.com/torvalds/linux/commit/f8be156be163a052a067306417cd0ff679068c97
fixed
this issue.

On Wed, 26 May 2021, 18:26 Paolo Bonzini, <pbonzini@redhat.com> wrote:

> On 26/05/21 15:48, Eduardo' Vela" <Nava> wrote:
> > Hi
> >
> > I believe this still doesn't have a patch, but +Paolo Bonzini
> > <mailto:pbonzini@redhat.com> has been working on one for some time now.
> >
> > Please use CVE-2021-22543 to refer to this issue.
> >
> > Advisory:
> >
> https://github.com/google/security-research/security/advisories/GHSA-7wq5-phmq-m584
> > <
> https://github.com/google/security-research/security/advisories/GHSA-7wq5-phmq-m584
> >
>
> Indeed, I had to put that on hold :( but I'm aware of the issue and I'm
> working on it.
>
> Paolo
>
>

--000000000000ccc19e05c5a631a7--
