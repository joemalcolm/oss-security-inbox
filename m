X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1329" "Friday" "30" "July" "2021" "14:23:58" "-0500" "Tyler Hicks" "code@tyhicks.com" nil "33" "Re: [oss-security] Pop!_OS Membership to linux-distros list" nil nil nil "7" nil nil (number mark "U       code@tyhicks Jul 30   33/1329  " thread-indent "\"Re: [oss-security] Pop!_OS Membership to linux-distros list\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Pop!_OS Membership to linux-distros list" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10159 invoked by uid 550); 30 Jul 2021 20:33:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13816 invoked from network); 30 Jul 2021 19:24:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tyhicks-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=BkwsEVTP/Oh4jDh6GBaJvLpP35wO9COsu6AKTPAwHas=;
        b=EmAUOdrMMkmwfeFP3TdCDOv7OhmTysA45G8QjF+gLN1ckh7WCLUozOrfHfJE7423Rg
         7t0KnS3htK1j8r8V/FQe8q+Qla5DJPFSxseYp0iH0XreTT60cEBLjCy6XvKsYK37Ri4U
         MT4rkVgVqkHI/g7jcGTEiPKCCD3HXH3YNP/AK7W+hHeZJayThw2oepIL9pgl7PBjaeQU
         pRqUbFuy+SuCsobsKof8zRlCtRRlGe040cN+y8wnz4f0u9cG8rO6RHSHPHBIbKNpNDXY
         ++OjiwU2JDqZ71/kDXkYJjw2oTDpuWz8OQG+H7LRTvIiNZpjGl2FQCt6qZfRdCBXcf2c
         Uw/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=BkwsEVTP/Oh4jDh6GBaJvLpP35wO9COsu6AKTPAwHas=;
        b=Ea6KTv/M9CRkIGAoqVlX5qa5Lz2sJQpeVEi27oqUY9gLZvDNpF01dZr9GdwLHI4+Wk
         wmlq6ZnLt+2Or7Cxx+c5yIpR4On3TO6jb0Vzq1peYl8bGB+/VYsbjbroM0EnCrDZQ5QS
         mj8Yxx+XbNVo3MPGsXhk/vk/tiUoD6UfvdvL5/xFyhlE8v6PzH0F3DjlEMWV9cTEJKPZ
         /h090Qjr9nNFZJnGKuxYac5/hv72aQyZfKpund3VV5+xOdDKsrWAIcCB+HpXJVXwwe6a
         9Us1y8ll2Tk6qtD+ygd7kc2No1JXxzYqrUNfOe4xYztMITO25bbue1qwHwEoq64nWF1c
         /fqQ==
X-Gm-Message-State: AOAM5308+7uzN3rji2B+9jCvtByx62RGXM3vxGrzZC/HhJl5G9PLA9cn
	bQs/bxUM0xkUpjCHCGLQdvYbACrgi84f4Agq
X-Google-Smtp-Source: ABdhPJxHMdK/NsqMUaR7LDW2DmZbFHysp83b9o6cU/cT0itcNCHjABcdKiBFgmk2epYdJkq/WA3lqw==
X-Received: by 2002:a05:6808:f14:: with SMTP id m20mr3079921oiw.179.1627673041039;
        Fri, 30 Jul 2021 12:24:01 -0700 (PDT)
Date: Fri, 30 Jul 2021 14:23:58 -0500
From: Tyler Hicks <code@tyhicks.com>
To: oss-security@lists.openwall.com
Message-ID: <20210730192358.GB5486@sequoia>
References: <cf53fe7b-371e-48dd-90d7-fa2719747d9d@www.fastmail.com>
 <20210727175924.GA16557@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210727175924.GA16557@openwall.com>
Subject: Re: [oss-security] Pop!_OS Membership to linux-distros list

On 2021-07-27 19:59:24, Solar Designer wrote:
> Hi Jeremy,
> 
> On Tue, Jul 20, 2021 at 02:23:26PM -0600, Jeremy Soller wrote:
> > 9. Have someone already on the private list, or at least someone else who has
> > been active on oss-security for years but is not affiliated with your distro
> > nor your organization, vouch for at least one of the people requesting
> > membership on behalf of your distro (then that one vouched-for person will be
> > able to vouch for others on your team, in case you'd like multiple people
> > subscribed)
> > 
> > I do not know if I have contacts that are already on the linux-distros list.
> 
> It can also be "someone else who has been active on oss-security for
> years but is not affiliated".  Anyone?

I recognize Jeremy's name and IRC nick (jackpot51) from a few
discussions that we've had in the Ubuntu bug tracker and Ubuntu related
IRC channels. Our interactions don't go very deep but they were security
related. This was right around the time Pop!_OS would have been in
initial development (2017, according to Wikipedia).

I typically only "vouch" for people on linux-distros when I personally
know and have worked closely with them. That's not the case with Jeremy
but I do believe that he's in the correct line of work for membership
purposes.

Tyler

> 
> Thanks,
> 
> Alexander
