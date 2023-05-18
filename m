Received: (qmail 7197 invoked by uid 550); 18 May 2023 07:01:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1738 invoked from network); 18 May 2023 05:44:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684388661; x=1686980661;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9DLtwOa70mg1l43T/wTzOArV5M3GvWHUBE2ZW7U94yI=;
        b=ekh9vozDTuls4hmll0GUeOyV82oQU/1t92yRXmbEO6eS5hcpWXi+Os7yBz9U4E3Dqt
         pFQ3MxlJAaQVlofioEEKNz2JRZYQGOnHX17IsAAlR3xhA+tca9HKSri3ohPUkUXkUq8w
         77M7E9NXquwGZhb32fYpVca78/mvadpb8cTBkCAKSZqAue36cfRVxAXbVzn4zjvKNOMp
         zJ1GOacjvnEhBpRG3W4Iti0xlivLNkIZoqPe6rFOsZYvJuQKFcQYL5F9PNeiiVcVbz7t
         aFz2b0gatrdb+rmyK43LSw8HgfHM4JD8TR5MTHUpMhZhTwQTQYLxEsyvzZuCUVAGPXwr
         BlGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684388661; x=1686980661;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9DLtwOa70mg1l43T/wTzOArV5M3GvWHUBE2ZW7U94yI=;
        b=ON0dpUeCUd0qJAfG6oZdhewz9fN5LyoT0hTMduExKlQ5gs+Z/yhBwjnKMzUqqi7vgk
         0yQxND4q8sVLhY/uzsOlk56x6hEBPsBZ8E1FiQW3DZ1wt0KzOyZ3Il44woAAgRmtPyTX
         tqS1mEDog7Jfrdr3oVSBwdqDqkNLMUZAMK03YvxIjxlt6wFJFzRRX0zQTI++qm8EEGFn
         BxxX0aZYLdBeMDayA7hYMqr+6pc+9tEkX7nwFCefe/ZZSnxX9687J9oGw/SNP9M29VAJ
         d+9lG5fhmImKpfAR3WVTgcC7QeiXN+EUC8y3Xr7WO2RqrUBvIP1kAjxsqB6CHXiVcn+Q
         UtYg==
X-Gm-Message-State: AC+VfDwzt3gjnzws/7MMd5RMDhKdD5HTbenwpZyEsaSwk9iJzwBgEi4A
	j0/eCWLE6YRGGMsY+vS8soAUT+LAZe0DdTyQTzCv+aa8B8s=
X-Google-Smtp-Source: ACHHUZ68W+dLwIhq5dyU/AfCxIF8615TgKcT1M3KhQ1P5+jjO0XH5u0CCmVDtZP//sLMECinpdzl55u9ti6WMynj/ag=
X-Received: by 2002:a17:907:7fa8:b0:958:46aa:7f98 with SMTP id
 qk40-20020a1709077fa800b0095846aa7f98mr48881183ejc.48.1684388660784; Wed, 17
 May 2023 22:44:20 -0700 (PDT)
MIME-Version: 1.0
References: <CAH8yC8kBFkWL1MRGv+z1wJ4Vj2KOmuK1xm63XGgQMJW+OB=Q9Q@mail.gmail.com>
 <20230517171351.GA8234@openwall.com> <20230517181942.GA2466@unix-ag.uni-kl.de>
In-Reply-To: <20230517181942.GA2466@unix-ag.uni-kl.de>
From: Andrew Worsley <amworsley@gmail.com>
Date: Thu, 18 May 2023 15:44:09 +1000
Message-ID: <CA+Y=x3nH6AtjW+8VtUQ0DJA2+KXdh1H95Y6dn9yO34UE6Jw6nw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] IPv6 and Route of Death

I think debian stable/bullseye may not be vulnerable with standard kernel:

The exploit write up suggests it requires the ipv6_rpl_srh_compress()
routine to be compiled in
but from my reading of the code (see
https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/include/net/rpl.h)
requires CONFIG_IPV6_RPL_LWTUNNEL to be define which isn't in my
latest debian amd64 kernel:

% grep CONFIG_IPV6_RPL_LWTUNNEL /boot/config-5.10.0-23-amd64
# CONFIG_IPV6_RPL_LWTUNNEL is not set

uname -a
Linux fast 5.10.0-23-amd64 #1 SMP Debian 5.10.179-1 (2023-05-12)
x86_64 GNU/Linux


On Thu, 18 May 2023 at 04:35, Erik Auerswald <auerswal@unix-ag.uni-kl.de> wrote:
>
> Hi all,
>
> On Wed, May 17, 2023 at 07:13:51PM +0200, Solar Designer wrote:
> > On Wed, May 17, 2023 at 10:02:31AM -0400, Jeffrey Walton wrote:
> > > This seems to have been dropped as a 0-day. I have not seen a CVE
> > > assigned to it.
> >
> > The "original writeup" you reference says this is CVE-2023-2156.
> >
> > > I _think_ this is the original writeup:
> > >
> > >   * https://www.interruptlabs.co.uk//articles/linux-ipv6-route-of-death
>
> It also mentions that "the bug patch didn't solve the underlying problem
> (ZDI confirmed this too), so we're still expecting another patch at
> some[ ]point."
>
....

Is this reasonable?

Thanks

Andrew
