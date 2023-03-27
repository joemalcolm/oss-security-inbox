Received: (qmail 13748 invoked by uid 550); 27 Mar 2023 23:20:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7249 invoked from network); 27 Mar 2023 23:07:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=codemonkey-ws.20210112.gappssmtp.com; s=20210112; t=1679958440;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tXa57LMNkCLlGQH1bDU5UGKi04zm+h3ni6/nCkgF7rM=;
        b=Nt2DCXKxpM8Mx2dmRNIWCKn1Vtic+hh2rVSvADBWen3GzaHifCXVRFzw6E8f7RkJ7d
         vaoDSULMxzfnkGq7fpKvc6basxV4lJ+dB5/dNOqFaGrXU7T0Yr7S1CZu3uS2f0ErRwQU
         IhA8NeNJnqiwZeD2xABhshqLYXtv3VFYGCeHJn09XNjkAe7rCJjSfh1g9PkKsVkfOIK8
         OjoSYBvE+K58anbUXb/dZfrpEhISZtGU5gaFAiNTq/YFTDzYsCCuXXWyHWxinidOnFMa
         kQwj/Pwn8naYdQZoPSXTyHZ5Mk7uL985HojIoDDN6gfNWkI5UGlZ/YtMDTE/mg2EQknu
         4m1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679958440;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tXa57LMNkCLlGQH1bDU5UGKi04zm+h3ni6/nCkgF7rM=;
        b=cw4E1HtZHwVWAZMbxgiaprR2vg6JMuWxXyoFN/08DmETNQYv8UQvLTtnzTOkGR98Ha
         HRAO34vS7sxBjZhcmnx9UPu4RnUl1BfFlF4nWZcaL4q8PjVxcy/j/fqJ8fROvbqsq1eN
         iWoaqKEg2YB0u1ukX7aK3gH3mznL881KD/OlZpscUfQvNB7DaFraq49eYXz4MbDUo0VY
         hiHLtHaMj7fudoNsfap8zSg8h/8t8SjC74TKzr3jdSocPEIc7T66bx3r9A6xE3MeeS/b
         oSHabIZxbPoyz7AeXoMmf4Mg13vJuy/6ptg78ZiIx/UkBLi1fuiMBhzc5MkkI0C2M7qR
         6uFQ==
X-Gm-Message-State: AO0yUKVMVPKSwyVYTEXljjr0yX8nchLjS+1I4olyQ7/wW6oa1Y+9Y75y
	NOpKLT0rLKEj/UgMuYlLTrEf9TCXbC+PNpqnll7NqFsuv/oUoJ4zATA=
X-Google-Smtp-Source: AK7set+GrI3zWcp5F4B2NhA/JWEiz5izIs+Jr7Sof3SecPozAmXRJmPyf5lzxtj8CpX2ouj0oir2fChcxCt+8K6KK28=
X-Received: by 2002:a05:600c:378d:b0:3ed:1f9f:41d5 with SMTP id
 o13-20020a05600c378d00b003ed1f9f41d5mr3009214wmr.0.1679958440132; Mon, 27 Mar
 2023 16:07:20 -0700 (PDT)
MIME-Version: 1.0
References: <CA+aC4kvP=EatKudD=V7Dzx6BRUN_0TQqyj_Xd0wOpzvnoG58wA@mail.gmail.com>
 <20230327193159.GB6662@openwall.com>
In-Reply-To: <20230327193159.GB6662@openwall.com>
From: Anthony Liguori <anthony@codemonkey.ws>
Date: Mon, 27 Mar 2023 16:07:09 -0700
Message-ID: <CA+aC4kuPKy4-Ays67K8Xp3yWeA0emF=jX9xJcWtPC=_R8yVSkg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000000fd62e05f7e9ce7f"
Subject: Re: [oss-security] New distros list statistics

--0000000000000fd62e05f7e9ce7f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 27, 2023 at 12:33=E2=80=AFPM Solar Designer <solar@openwall.com=
> wrote:

> Hi,
>
> Thank you very much for contributing this, Anthony!
>
> I've just edited the wiki to credit Amazon for this (just like we did
> for Gentoo's similar contribution in 2017-2019) and to assign the task
> to Amazon.  Please let me know whether this is right
>

Yes.


> On Thu, Mar 23, 2023 at 08:37:42PM -0700, Anthony Liguori wrote:
> > I've been working to automate[*] tracking posting on the distros@
> mailing
> > list for reporting purposes.  This includes searching oss-security for
> > posting information, extracting CVEs, and trying to tie it all together.
> >
> > Anywhere, I have full stats for 2022 and stats for Jan/Feb of 2023.  As
> > long as everyone is happy with the content, I'll update regularly moving
> > forward.
> >
> > https://oss-security.openwall.org/wiki/mailing-lists/distros/stats/2022
> > https://oss-security.openwall.org/wiki/mailing-lists/distros/stats/2023
> >
> > [*] this has to be invoked manually in order to unlock my signing key so
> > it's only semi-automated.
>
> Yes, please do update this regularly.
>
> Regarding the content, I notice some issues that I hope you can address:
>
> You show "Coordinated Release Date" and "Days embargoed (scheduled)" as
> 7.00 days from date "Reported" for most entries, which I assume is in
> most cases a placeholder when no specific CRD was extracted.  I
> understand it would be tricky to extract that from the private list
> threads automatically.  So for now I suggest that instead of stating
> 7.00 in such cases, you leave these fields blank.  Longer-term, maybe we
> need to agree on a syntax (to include in list messages setting, ack'ing,
> or adjusting the CRD), so that your script would extract this more
> reliably?
>

Yes.  This is actually supported today but I'm the only one doing it and
I'm doing it privately.  I'm going to pick on the OpenSSL issue from Feb of
this year to illustrate how this works.  Here's the OSV file that my
tooling created:

{
  "schema_version": "1.3.0",
  "id": "OSS-SEC-ea843",
  "modified": "2023-02-04T09:46:55+00:00",
  "published": "2023-01-25T12:02:01+00:00",
  "summary": "Embargoed OpenSSL security issues",
  "database_specific": {
    "first_posting": "2023-01-25T12:02:01+00:00",
    "last_posting": "2023-02-04T09:46:55+00:00",
    "preferred_crd": "2023-02-07T00:00:00+00:00",
    "latest_crd": "2023-02-08T12:02:01+00:00",
    "cve_assigned": false,
    "oss_security_posting": false,
    "embargo_expired": false
  }
}

I really like OSV (https://osv.dev) and one thing I'd like to propose we do
is publish an OSV repository along with these statistics (the statistics
are currently fully generated from an OSV repo).

When I saw the initial report, I sent myself a private email that contained:

 OSS-Sec-Bot: { "crd": "2023-02-07T00:00:00Z" }

Which is the current syntax for sending my email bot commands.  Anyone on
the distros list can send commands like this but I've been doing it myself
privately just to work out any kinks.

That triggered setting the "preferred_crd" field in the OSV file.  The
"latest_crd" is meant to enforce the lists policies of max 2 week embargo.

Take note of the fake that cve_assigned: false.  This will be important
later.

By the way, when an initially set CRD is later adjusted, how would you
> report that - report just one of them (I guess so, but need to decide
> and document which one) or add an extra column?  What if there's more
> than one adjustment?
>

Right now I'm just storing the latest.  Easy enough to make a list if
there's value.


>
> You show extreme delays of 150+ days for two Linux kernel issues that
> you claim were brought to linux-distros in March 2022.  Neither of these
> two looks correct to me.  In one case, I merely added detail to an old
> thread where satisfactory disclosure on oss-security had been made
> months earlier.  In the other, you seem to link to a wrong CVE ID and
> thus picked up a correspondingly wrong linux-distros disclosure; in
> fact, you also list the same CVE ID for another issue, where it's
> probably correct, and you show that one was disclosed publicly on time


So the general problem is how to correlate a distros@ mail with an
oss-security report given that the subject often changes between the two
posting and the senders is also often not the same person.

The best strategy I've come up with is to look for CVEs.  There should
(usually) be a CVE assigned in the distros thread and that should be a good
indicator that the report on oss-security is about that issue.

That works most of the time but in this case, the original report
referenced Dirty Cow.  This is fixable with metadata annotations but I just
haven't implemented that yet.


>
> You show "A race condition vulnerability in drivers/tty/tty_buffers.c"
> as Reported on 2022-05-26, but I see this Subject first appear on
> 2022-04-24.  You show nothing Reported in April at all, but I think this
> is a counter-example.  In fact, I only checked this one because I found
> it weird to see nothing for April.  I guess there are more issues like
> this that I did not notice.
>

My 2022 data is incomplete because there was a period of time when the SPF
rules changed on the openwall domain and that upset our email
infrastructure at Amazon.  I now have monitoring for this but it was around
that time frame.


> I think more issues were handled via (linux-)distros than you report.
> For example, we had some "Embargoed OpenSSL issue" pre-notifications in
> 2022, but you don't list them.  I understand they were not full
> disclosures of the issues to linux-distros - rather, the distros were
> invited to contact OpenSSL for more information - yet I think we should
> not exclude them from statistics.  Perhaps your script didn't capture
> something else as well.
>

This is a feature.  Until we had this discussion on oss-security, I didn't
want to post anything on the wiki that I wasn't absolutely sure was
public.  So right now, I only post things where I can clearly find the
oss-security posting (via CVE analysis).

In the case of the OpenSSL issue, the report on distros@ did not contain
any CVE information.

I've posted the necessary command to distros@ and now the statistics show
OpenSSL with the current publication date when you forwarded the
announcement to the list.  Admittedly I had to do a small bug fix there to
prioritize the earlier posting verses a more recent one that references one
of those CVEs.


> Once you've addressed these, I think it'd be a good idea to re-add the
> average and median embargo times - I think per year would be enough.
>
> Overall, this makes me skeptical about the automated processing.  We
> track these issues manually anyway, like we ought to, so we can as well
> manually keep track of the aspects needed for the statistics collection
> and reporting.  This would take some effort, but that's fine, and maybe
> we'll end up cross-verifying results of both approaches.
>

So there's two things I really think would be neat to do:

1) Agree to a machine readable metadata format that allows for the various
tasks to be done in a way that automation can pick up.  Using commands to
record the CRD date, CVE assignment, and rejecting invalid issues would go
a super long way.

2) In addition to publishing wiki statistics, I think putting this
information out as an OSV repository on github would be generally useful
for folks trying to coordinate vulnerability tracking.

BTW, the source code here is nothing fancy.   I'll post it on github as
soon as I can.  I'm about to go on vacation for a couple weeks so if I
don't get to it before then, I'll do it when I come back.

The approach I took is not dissimilar to https://github.com/aliguori/patches
which is what I used a maintainer-bot on QEMU for many years.

Regards,

Anthony Liguori


>
> Thanks again,
>
> Alexander
>

--0000000000000fd62e05f7e9ce7f--
