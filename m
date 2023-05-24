Received: (qmail 32629 invoked by uid 550); 24 May 2023 14:28:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31766 invoked from network); 24 May 2023 14:27:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=codemonkey-ws.20221208.gappssmtp.com; s=20221208; t=1684938414; x=1687530414;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1Myj6BwM5pArRSrZ+1JF0RO8q3vbK30zXvLDfGnsiNM=;
        b=s4UsFT36Ujz0pszXnIIKkpuCxCn0uuc+FUWnmYBs1VEDBxCO8qaXEr2OyNNjajM+Rj
         +wTfFPzZ2qgV+w363rgqkBm5XNzwe3svy9CD2usAfd0u0fK7rbdZkiI2ty1YThaoznbv
         H8cI0W1iVecVWPzNul2m0eFg1hEI6/a5kU0qd7AhH+zHMOpT/IBA4e+vLzk14YeUJhj2
         qTSgBdSLoRD+ckllPaIxjjW6sIIhyIX1LCM6GmrN5ram6F4YMivkvDwCTzAEnAsN9SuN
         mmm9DpJ6VAfVt6uLcl76jndjvFn08tv2uRxD7cXXGaNqvxQ3AIvqpxYJVrwwHYu95/2B
         f2nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684938414; x=1687530414;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1Myj6BwM5pArRSrZ+1JF0RO8q3vbK30zXvLDfGnsiNM=;
        b=Jan4WgjoUhDzX+IsLVOjFE3IlYZ3JMQBOPqEARQZeF67psJI9S2MMktw/yi3eABW5W
         W4Zb7NwOPR9n4MIsSyUKnN4mjSlKSMqoS7q4IKK/BYBtmpibeAQWwsszFIysGqu4EGlE
         kUWlh0QsOw1WWYC/xFFbv25wN+7qolNLkT79TqGyg1jxPzQzZgRn8r7xQAIPeSII0/lw
         rsNHXjGV1cazvQh9kTK8bU9XTSDA85X3FI1rUNohL0lAJ3X8n8ACtd+nV82+oAnDBRxf
         gwDV2R6yG0ztXa7sDqQ9Xftc673TOTBrpEvnkJUD3W7ZtenHv/y8CSzdIv6kDKj9uv4j
         QBRA==
X-Gm-Message-State: AC+VfDxaQYcUiZz+1NJFvytyoDbQi0edNum3atOA2A1TKMI9VO+6AMHI
	7bBXWQZL4IicuWMCQ7IiYrIynu3YWKA7jZuGfM4yfnpDce1v3mal
X-Google-Smtp-Source: ACHHUZ6JqEKrBPOu86lYkGn9tAcCM4DUnSKSwfWo+xxj7DlIrGxLvWly17p9O5Nq/yvVikZDFsg8yV9VmrD87pEoLDg=
X-Received: by 2002:a05:600c:24a:b0:3f5:ffe7:bf11 with SMTP id
 10-20020a05600c024a00b003f5ffe7bf11mr9277281wmj.36.1684938413911; Wed, 24 May
 2023 07:26:53 -0700 (PDT)
MIME-Version: 1.0
References: <17f7ebb7-22ee-e68f-02ac-8e2740e7f015@canonical.com>
 <20230511115704.GJ5725@suse.de> <ZG3Om+8ySRpIuHJu@pisco.westfalen.local> <20230524134130.GC6775@openwall.com>
In-Reply-To: <20230524134130.GC6775@openwall.com>
From: Anthony Liguori <anthony@codemonkey.ws>
Date: Wed, 24 May 2023 07:26:42 -0700
Message-ID: <CA+aC4ksAirMkOW5R1p=YzQH6R3gOBJZsiB2YqjH+sB+by2--pw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000a147c605fc714b1a"
Subject: Re: [oss-security] Clarification on embargoed testing in a partner cloud

--000000000000a147c605fc714b1a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I'm sending from my personal account for convenience but in case anyone
doesn't know, I work at AWS and am on the private list for Amazon Linux.

On Wed, May 24, 2023 at 6:43=E2=80=AFAM Solar Designer <solar@openwall.com>=
 wrote:

> On Wed, May 24, 2023 at 10:45:15AM +0200, Moritz Muhlenhoff wrote:
> > Am Thu, May 11, 2023 at 01:57:04PM +0200 schrieb Marcus Meissner:
> > >
> > > I understand that while some of the operators of the public clouds are
> also on
> > > the distro lists, these are parts of very large cooperations and not
> the same
> > > team as the intake PSIRT subscribed to distros.
> > >
> > > So from my point I would suggest to exclude testing on third party
> public clouds.
> >
> > I agree, FWIW.
>
> Thank you.  So far, we have Marc's request for clarification (which
> didn't express an opinion/preference) and two "suggest[ions] to exclude
> testing on third party public clouds" above.  I also suggest the same,
> yet I am not sure whether/how to make that part of the policy.  It is
> non-obvious whether/where/how to draw the line between (disallowed)
> sharing and mere (allowed) usage of third-party/rented resources.
>
> If we explicitly disallow "testing on third party public clouds", then
> what about testing on rented dedicated servers (which are often also
> centrally managed through the provider's infrastructure), or on own
> servers in rented racks in third-party datacenters (where the datacenter
> staff has physical access), etc.  And then there's communication over
> third-party Internet infrastructure, whereas our policy currently
> doesn't mandate usage of encryption except for messages from the list to
> its immediate subscribers.
>

I don't think this is the right policy.  First, I don't think that terms
like 'cloud' or even 'colo' are at all well defined.  I can setup a website
and rent the Raspberry Pi rack next to my desk as a 'Cloud' but that's
wildly different from something like AWS.

Likewise, colo's vary tremendously in quality of security.  You have places
like Switch in the US that have crazy security including armed guards.
I've also visited colo's that are glorified closets with extremely poor
physical security.

I think the right policy for list members is that they are responsible for
understanding the third-party infrastructure they use and if they aren't
confident that they can maintain the rules of the list, they shouldn't use
it.

For list members that have questions about AWS, I'm happy to answer, in
gory details.  I know other large cloud providers have folks on the list
that would likely offer the same (or at least direct to the appropriate
people).  I can also help make connections to most of the large cloud
providers if folks don't have contacts.

That said, I don't think this is the most important part of the
discussion...


> Also, I guess these days there are distros that are primarily built in
> the cloud yet are not projects of the cloud providers - e.g., projects
> of startups that got free cloud credits, as well as those that like the
> flexibility and not needing to manage physical servers themselves.  If
> one of those wants to join the distros list, do we reject them and
> require that they setup security build/testing, private issue tracking,
> e-mail infrastructure out of cloud first, or do we accept (if they meet
> all other criteria)?  So far, we didn't even ask new members whether
> they possibly build/test/track in the cloud, and maybe we already have
> some that do.
>

Building/testing involves a lot of things.  Testing binary artifacts is
IMHO very low risk.  If an attacker gets a binary but has no additional
information about a vulnerability, the time and effort it takes to reverse
engineer what's changed and find the vulnerability is pretty darn high.
The strict embargo period of the list here is a big mitigation factor.  By
the time most folks get to this stage, there is maybe a week left in the
embargo.  IOW, I think scp'ing a binary to a testing box in more or less
any environment is pretty low risk due to the difficulty of extracting
information.

OTOH, most vendors ship around RPMs and RPMs contain changelogs.  Do they
change logs contain CVE numbers only or do they describe the CVE in gory
detail?  This ends up mattering a lot.

And there's a big difference between scp'ing a binary to an instance versus
publishing a yum repository.  Repositories tend to have broad permissions.
Is the repo access controlled to include folks outside the strict
need-to-know in your organization?  Are you also publishing source packages
as part of this process?

I think this line of questioning is probably more relevant for folks on
this list.

Regards,

Anthony Liguori

--000000000000a147c605fc714b1a--
