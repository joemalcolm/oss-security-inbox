X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3449" "Monday" "24" "June" "2019" "19:15:20" "-0400" "Alex Gaynor" "alex.gaynor@gmail.com" "<CAFRnB2XeQ-casQLm0MRCdRmQ5aeF9K=X3Km5eYg9DB6A915d5A@mail.gmail.com>" "72" "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" "^Date:" nil nil "6" "2019062423:15:20" "[oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" (number mark "        alex.gaynor@ Jun 24   72/3449  " thread-indent "\"Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz\"\n") "<20190624193048.GA8039@espresso.pseudorandom.co.uk>" ("<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>" "<20190617113203.GH15432@suse.de>" "<CACT4Y+Zu1r10wKxjAbJqZ5rXc8eq5NRWjuNVPLHbwZGAem1OTg@mail.gmail.com>" "<alpine.GSO.2.20.1906241038470.23351@scrappy.simplesystems.org>" "<alpine.LRH.2.21.1906241152180.4597@fairfax.gathman.org>" "<E1hfSKS-00015J-V5@rmmprod07.runbox>" "<20190624193048.GA8039@espresso.pseudorandom.co.uk>") nil nil nil nil nil nil nil "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29743 invoked by uid 550); 24 Jun 2019 23:15:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29721 invoked from network); 24 Jun 2019 23:15:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=9Zqq8AuCPsDZ3TWsxM9JrRbBv8iIY3eXDG7ZodLmpjA=;
        b=VNJyH8v/OhNo1a/sMAcaBJhA0pwAry6zXOHcJl0g9QBF6iz928r7GlysZmMwqOBO/q
         f2Njzk+WwSySCZpnlFCTcB2mrV6kVhYnqkz8heB2KVg8u3VjqxARPnDElo5K3LRKF48n
         +YdPeU4vzMvzMgmElEwd/VN8JESTbtu83Wgf7E1Lm3+ixD5tLqToIElPyTEzqj5uaQPo
         7BcqmQnC0wfsUipZUhrbg0m4wIB9bYoUh3rtirguga3KMNP0Prk6ejSDyJ+0+QrEtJmg
         YJLnji8fpvALYgTe1TrEqXyY+UQjwOvzQ++sPPYhrKPot8V73NE2yK/NU/CeDiMRslQ6
         XFzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=9Zqq8AuCPsDZ3TWsxM9JrRbBv8iIY3eXDG7ZodLmpjA=;
        b=eIzOxq9JWF2kvnkvb1HZtEB6Qq4jTdl3DdZlThLNkXzFYClrAEfS3noYl03geI9O9m
         9XBQLAmU4oZi6f2FTYQGwVSDuqgdGb3w/w7YkbhK9wphQiXApaJTZb/fYtSdiFRB6TyD
         VoH1nZNirfy3M9uk4Rp58quQq7NFeYeKVN0INpUQfvTZ61Wu7jbC3bxnv+ykUIxJW7IY
         ynLFURr8bog0KEaJaMkqIRQ4y65n0spCydXYVYhtjOLExhomBDrh0BqpSFtO6r77YYbP
         vEooZwa7/NW7LQh8K0nAGbjA5RPm5EoL9CY1g+yNZVprDuWkwNTaszrxEO3T/MM6/PYu
         5VUQ==
X-Gm-Message-State: APjAAAV+UXcjB3EWzG510vhAiqeGnEXI9IPwFe4noE4b4oSEk1ec6/vS
	yFO0MSSJ1QxEZT1r7p7I1s17RtsIOxdtChSCUXQpHUGY
X-Google-Smtp-Source: APXvYqxKh2XO83UL/ECCmMf0NqOtNfsuWk3eyJDRbqNYCz40CiCW4Zkw/MqsigkjqsCiKcFA8bu8oJW+dBb1IgnoSGU=
X-Received: by 2002:a9d:4b02:: with SMTP id q2mr28332826otf.312.1561418132466;
 Mon, 24 Jun 2019 16:15:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>
 <20190617113203.GH15432@suse.de> <CACT4Y+Zu1r10wKxjAbJqZ5rXc8eq5NRWjuNVPLHbwZGAem1OTg@mail.gmail.com>
 <alpine.GSO.2.20.1906241038470.23351@scrappy.simplesystems.org>
 <alpine.LRH.2.21.1906241152180.4597@fairfax.gathman.org> <E1hfSKS-00015J-V5@rmmprod07.runbox>
 <20190624193048.GA8039@espresso.pseudorandom.co.uk>
In-Reply-To: <20190624193048.GA8039@espresso.pseudorandom.co.uk>
Message-ID: <CAFRnB2XeQ-casQLm0MRCdRmQ5aeF9K=X3Km5eYg9DB6A915d5A@mail.gmail.com>
Content-Type: multipart/alternative; boundary="00000000000021b745058c19fde9"
Date: Mon, 24 Jun 2019 19:15:20 -0400
From: Alex Gaynor <alex.gaynor@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz
To: oss-security@lists.openwall.com

--00000000000021b745058c19fde9
Content-Type: text/plain; charset="UTF-8"

I figured it'd be useful to summarize the themes I think I'm hearing:

- Greater automation around requesting CVEs so that when there really are a
lot of vulnerabilities they can be requested easily and have most of the
details filled in by automatic systems like syzbot of ClusterFuzz.
- Better automation around assessing exploitability -- I confess this one
sounds very hard to me, at least without requiring more user involvement
than ASAN requires right now. This seems like a very cool area for academic
research though!
- Not having sooooo many vulnerabilities. While there's some dispute over
just what % of the bugs that OSS-Fuzz and syzbot turn up are exploitable,
there's no doubt that they find a _lot_ of them. Even if only 20% of
OSS-Fuzz reports were truly exploitable vulnerabilities, that'd still be
>600 of them. We can't produce this many vulnerabilities and then try to
clean up afterwards by finding them with fuzzing -- at some point the
number of vulnerabilities simply overwhelms us. Tactics for reducing
vulnerabilities in the first instance, like memory safe languages, are an
important part of making this problem tractable.

Do folks feel like there were important themes that this misses?

All of these seem actionable, in their own way, which I like.

Alex

On Mon, Jun 24, 2019 at 3:32 PM Simon McVittie <smcv@debian.org> wrote:

> On Mon, 24 Jun 2019 at 13:00:28 -0400, David A. Wheeler wrote:
> > In particular, many organizations have a rapid upgrade process
> > if some software version has a CVE, and a slow process otherwise.
> > (There are things that need doing besides upgrading software.)
> > If a particular version of software has a serious vulnerability, it
> needs at least one
> > of the most serious vulnerabilities assigned a CVE so that people will
> upgrade
> > it more rapidly.
>
> I think you might have also been implying this, but just to say it
> explicitly: if a particular version of software has lots of fixed bugs,
> but they are not exploitable vulnerabilities in practice, then it would
> be counterproductive to try to fast-track upgrades (trick people into
> using their rapid upgrade process) by assigning CVE IDs to those bugs.
>
> Fast-tracking upgrades of packages with CVE fixes is only going to happen
> as long as it's still a rational strategy for balancing vulnerability
> exposure against the risk of regressions. If lots of CVE IDs get assigned
> to issues that aren't exploitable in the real world, then that will teach
> consumers of software that they can safely ignore "most" CVEs, which
> will tend to result in some issues that *are* exploitable being missed
> and not fixed on deployed systems. Everyone loses (except attackers).
>
> This is a particularly interesting trade-off for denial-of-service
> vulnerabilities, because regressions caused by flawed fixes for
> vulnerabilities often cause denial of service. (This is often a crash,
> but not necessarily - addressing local DoS vulnerability CVE-2014-3637
> in dbus led to some machines not booting reliably, denying service to
> rather more people than the original vulnerability.)
>
> In the worst case, a flawed fix for a vulnerability might contain a
> regression that is a more serious vulnerability.
>
>     smcv
>


-- 
All that is necessary for evil to succeed is for good people to do nothing.

--00000000000021b745058c19fde9--
