Received: (qmail 19486 invoked by uid 550); 10 May 2023 19:03:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19464 invoked from network); 10 May 2023 19:03:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683745381; x=1686337381;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OE4IBEydKLX3dkaBJQyEpR/lOLyJ19/dP98mEbtr+xw=;
        b=cG0Z8OUJLxQHEFh3z+mPVhv9to73yvKVq/Wqc219nsmpctloqpZCQCZ0PDoW9Su2at
         S9H+hOAFZxF5mw0/VE/fhgfZyulC1qZx78KthTKpyCUruBCP2EE8MKXOJSmHwtaqTRks
         1vtzXJ2AI7sARirQeGx1YAnUyCqKJKuY+2+xQrGeGHnrYPv5XeioX5Pv7pfjkR2iWnMs
         72ZSflS+fq4p1LWxU+gZPKQl5g1jQFGSRsncLSZlF0CfgdVJkoi3gdM2WHrw8Swyb5vO
         S2bRO3h/U+LE1ijNsSFAvGXvK1yMbGbgkJP47x0rD2DKlh80I66yq1lVpDHDxhVvZ4wU
         rBfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683745381; x=1686337381;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OE4IBEydKLX3dkaBJQyEpR/lOLyJ19/dP98mEbtr+xw=;
        b=V3GQOrOwGrwYkwqINvTitFUc5d1o1zfOET30dVTt7w1P7amZMQmRS0G5zrpoG8A3/x
         SdqS2aaKh6Rr/EsJcIFarzm4rYgAmrhQk1/4Xm1+lgNhQTgmOqszA+X4xtFK7BFWCCb3
         T2mE2vvU8GSdBKlww3mPBZaOzBvS3/WumLAstPemtMEHZlov78zEUQfwhDcVWBEJ/CBG
         5NfEWcURYeYbmrAAFMs3GYdbSuy9/ce8i9msObmsR3eUsUG4cXw+X9PBUgyJOppy25FJ
         glzaQL8JUKXmBgDA3f1ygSjS/OvgAwnNNQz6UFNS+A9D8V1PYM55szAY9AMp/KvRKUcU
         oprw==
X-Gm-Message-State: AC+VfDwp22JsvivnQmdfdFktgF2O/bKiu1Op3YAam5G2ciQ3iRsTxNzF
	SvyCzHrZIyB8wARPPz/IE61EyOHA5fZ8y7KOJYY=
X-Google-Smtp-Source: ACHHUZ6D1WKZNJC9z8k8Q72Z03phwqDidxM3XF5KiJ5zuuzqbotbqAxCoStxV578q+IlIS27+wLjsdd7QOYcXSEyPeM=
X-Received: by 2002:a17:907:16a5:b0:94e:70bb:5f8a with SMTP id
 hc37-20020a17090716a500b0094e70bb5f8amr18583981ejc.66.1683745380647; Wed, 10
 May 2023 12:03:00 -0700 (PDT)
MIME-Version: 1.0
References: <CAD3upLvuttgu3i6qZyB2LLY2CPcTvMdhQQLKdAYV2eoPD5Wjjg@mail.gmail.com>
 <20230510165545.GA25380@openwall.com>
In-Reply-To: <20230510165545.GA25380@openwall.com>
From: Piotr Krysiuk <piotras@gmail.com>
Date: Wed, 10 May 2023 20:02:49 +0100
Message-ID: <CAFzhf4oPkVGX+spdpSm+r4mwU3YzAD1vTwrZFQ4M4yjQaVSYhA@mail.gmail.com>
To: Solar Designer <solar@openwall.com>
Cc: Turritopsis Dohrnii Teo En Ming <tdtemccnp@gmail.com>, oss-security@lists.openwall.com, 
	ceo@teo-en-ming-corp.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] New Linux kernel NetFilter flaw gives attackers
 root privileges

On Wed, May 10, 2023 at 5:55=E2=80=AFPM Solar Designer <solar@openwall.com>=
 wrote:
>
> Hi,
>
> On Wed, May 10, 2023 at 11:52:58PM +0800, Turritopsis Dohrnii Teo En Ming=
 wrote:
> > I have just come across this article. Thought of sharing it.
> >
> > Article: New Linux kernel NetFilter flaw gives attackers root privileges
> > Link: https://www.bleepingcomputer.com/news/security/new-linux-kernel-n=
etfilter-flaw-gives-attackers-root-privileges/
>
> We don't normally want in here links to news articles on something that
> was already brought up in here in more detail.  However, as a moderator,
> I reluctantly approved this posting so that we can use the resulting
> thread to discuss whether this issue got blown out of proportion and if
> so what we can do to avoid that going forward.  Here's the original
> posting this refers to:
>
> https://www.openwall.com/lists/oss-security/2023/05/08/4
>
> Another Linux kernel issue, in io_uring subsystem, was also disclosed in
> here on the same day, but I think didn't gain such tech media attention:
>
> https://www.openwall.com/lists/oss-security/2023/05/08/3
>
> Is the netfilter issue really worse than the io_uring issue?  I doubt
> it.  So _maybe_ it was something in the wording that tripped someone
> writing for one of those tech news websites, then others picked it up?
>
> Piotr's posting about the netfilter issue mentions intent to disclose an
> exploit later (like it should have, thank you Piotr!)
>
> Tobias' posting directly links to an exploit (which is also fine).
>
> Is intent to disclose an exploit later more newsworthy than having done
> so right away?  I doubt it.
>
> So maybe it's just random, and there's nothing to see here, after all.

Hi Alexander,

I suspect that what triggered the media is the following fragment:

> Somebody from the Linux kernel team then emailed the proposed fix to
> <linux-distros@...openwall.org> and that email also included a link to
> download our description of exploitation techniques and our exploit
> source code.
>
> Therefore, according to the linux-distros list policy, the exploit must
> be published within 7 days from this advisory.

Unfortunately, sharing the exploit here by Pablo Neira Ayuso does not
look like a mistake. Just after his first email, I sent the following
note to Pablo in private:

> Hi Pablo,
>
> By any chance, did you receive the delivery error like that when
> sending the patch to linux-distros@vs.openwall.org ?
>
>     550 5.7.1 Missing the [vs] anti-spam tag, see
> https://oss-security.openwall.org/wiki/mailing-lists/distros
>
> The email includes my Google Drive link to the PoC in the quote. But I
> didn't really plan to share the full exploit with linux-distros. Now
> they could ask to re-post the full copy in public within the next 2
> weeks.
>
> Kind regards,
>
> Piotr

And then Pablo decided to resent, adding the tag.

So in the advisory I wanted to explain the reason why the exploit must
be posted, given that was not my original plan.


>
> Now as to the actual issue and its description, I think we should
> clarify what exactly is meant by "unprivileged local users."  Piotr, I
> guess you actually meant not literally unprivileged, but users with
> CAP_NET_ADMIN, which can be had via unprivileged user/net namespaces if
> enabled in the distro / on the system, or when already in a container
> with such capability granted to container root.  Correct?  I think going
> forward we should always make this clear right away.  Here's a former
> netfilter core team leader also bringing this up:
>
> https://twitter.com/LaF0rge/status/1655867494152667140
>
> LaForge - @LaF0rge@chaos.social @LaF0rge:
> > Really curious to see how CVS-223-32233 for #linux #netfilter nf_tables
> > https://seclists.org/oss-sec/2023/q2/133 can be exploted fom
> > "unprivileged local users".  AFAICT, nf_tables_api  goes through
> > nfnetlink, and nfnetlink_rcv() checks for CAP_NET_ADMIN way  before the
> > code in nf_tables_api.
>
> and a reply:
>
> Alex Plaskett @alexjplaskett:
> > Didn't look in depth at this one but you can trigger nf_tables_api
> > operations from a user / network namespace and distros such as Ubuntu
> > have unpriv user namespaces enabled.
>
> As expected.  Now, from a typical distro user's standpoint,
> "unprivileged local users" may be just right.  However, not all distros
> have unprivileged user namespaces enabled by default.

You are right, I should have explained the dependencies. Do you think
it would be OK to include the correction on Monday? Or is it better to
send today (it may catch even more media)? I will make sure to review
the wording with you before posting.

Thanks for bringing it to my attention,

Piotr


>
> Alexander
