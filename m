Received: (qmail 24396 invoked by uid 550); 24 Feb 2024 14:16:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30317 invoked from network); 24 Feb 2024 08:19:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlers.com; s=googlers; t=1708762960; x=1709367760; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pUpB/8+e0q+bnoYZhuwXiTXEXAJNYkYxC4Vdg0bc4Zo=;
        b=CK1xRBPl+6gNrZPgVS6rwK7/oa/2qG0iIVytrCyN3KXxrfdLodfAlKrba3dSqsJyBw
         yAg2SLIiEdjhH+jDxqI/BTS4JDkweYvr5o9qmg3ggRar5ynpoXCb0TvYBU2LnJNH/kQh
         8tmYs2A+lXxmUmsOMylW56AkHp7gjkkxvKRY4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708762960; x=1709367760;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pUpB/8+e0q+bnoYZhuwXiTXEXAJNYkYxC4Vdg0bc4Zo=;
        b=Nesu98lel7ThEbHP4169SaPGmCrJkHJVsTKUW6Oi1TS6YnbX4uaO9XSBR6X9nn771W
         TuaQXyQckbag22+2E8jOuDGYgkhDtqfY8cdxTcTLQVQ7yc6L//1kNJ+NxvV1B5szGVPJ
         QIIon1O8sMy45njEmEVhz+7nBTmpHUfT3vHTaAnjmj8HjokeOrxQHzNAt6UmHhBmfsBj
         zG85CYjAhiaEbtJfYWX4Idbf7PU5gPnDsFL/GTMZANIw8/R2gpbVjOy4JsAaKxNxHuo0
         qO6PccgIjvshik6tKbeQHBn46RDGKu2llSu+Tg+FIBpANYXCU8N1F8KbeiMe0RYOKCtx
         pl5A==
X-Gm-Message-State: AOJu0Yx6lk471vQH4p2M5Ab5By4H1jJnRe7kXlKq1vJBAymoigKfd8g2
	dvvASDocvW5dfN/j5Uw8D7wxmqtE7Su5Hvq8PuDIw+uEX7iPrGgcCLNjCc6MSDK4MoSySmMzelV
	ALaR9bY60NG+HQqzbZgcfVxFd6CO7z8YLeFJvrnzoAmsEC5fIsg==
X-Google-Smtp-Source: AGHT+IFwsqxNht4TOOvWGYvs9PSqEqM02Tk5PxiXe5ydZAiItBwYCw484qhEXOd0chy4/hiXH5/jWh7J1A6dYWtAu9U=
X-Received: by 2002:ac8:74d9:0:b0:42e:4888:7986 with SMTP id
 j25-20020ac874d9000000b0042e48887986mr153334qtr.29.1708762959491; Sat, 24 Feb
 2024 00:22:39 -0800 (PST)
MIME-Version: 1.0
References: <7e78b8d8-860c-47f5-bbec-a967c277d539@oracle.com>
 <20240222200542.GA14535@openwall.com> <2024022358-appeasing-obtuse-a598@gregkh>
In-Reply-To: <2024022358-appeasing-obtuse-a598@gregkh>
From: eduardo vela <evn@googlers.com>
Date: Sat, 24 Feb 2024 09:22:29 +0100
Message-ID: <CAFswPa8A2EeST20UtGzVDFo+bVh5QVYCKO+W861PvQTonkZKKw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000003521c406121c61ea"
Subject: Re: [oss-security] CVEs issued by the Linux kernel CNA

--0000000000003521c406121c61ea
Content-Type: text/plain; charset="UTF-8"

On Fri, 23 Feb 2024, 06:40 Greg KH, <greg@kroah.com> wrote:

> On Thu, Feb 22, 2024 at 09:05:42PM +0100, Solar Designer wrote:
> > Speaking of which, we allow for CVEs to be requested via linux-distros,
> > to be assigned by one of the CNAs in there.  The current Linux kernel
> > CVE documentation is very strict about rejecting such third-party
> > assignments if they're "for an actively supported kernel":
>
> That's the rules from CVE themselves, it's not unique to the kernel
> here.  You will run into this more as more open source projects take
> over the CVE process for their codebases.  curl and python are two
> examples of which linux-distros are not allowed to do this for either.
>
> > "Any CVE that is assigned against the Linux kernel for an actively
> > supported kernel version, by any group other than the kernel assignment
> > CVE team should not be treated as a valid CVE. Please notify the kernel
> > CVE assignment team at <cve@kernel.org> so that they can work to
> > invalidate such entries through the CNA remediation process."
> >
> > So I guess we should now exclude upstream actively supported kernels
> > from this offer/practice.
>
> Yes, that is a requirement that all CNAs must now follow.
>
> > Distro CNAs can still assign CVEs for issues limited to
> > downstream/distro kernels and for issues in upstream kernels that are
> > not currently supported upstream.
>
> Yes.
>
> > I guess they can also assign
> > CVEs against downstream/distro kernels even if the code is the same as
> > in an upstream actively supported kernel, but the threat model is
> > different (e.g., untrusted filesystem images are brought into the threat
> > model in a distro).  Sounds right?
>
> That is probably NOT ok as per the CVE rules, sorry.


This would likely result in MITRE (the root) just asking the conflicting
CNAs to decide who will issue the CVE.

RedHat and Google are root CNAs, so it likely would be resolved on the
roots meeting.

All CNAs should know how to handle this, otherwise they wouldn't be
> allowed to be a CNA.  Whomever was acting as a CNA for linux-distros
> knows these rules, please discuss this with them if you have specific
> questions.
>
> thanks,
>
> greg k-h
>

--0000000000003521c406121c61ea--
