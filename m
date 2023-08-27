Received: (qmail 3503 invoked by uid 550); 27 Aug 2023 11:39:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24441 invoked from network); 27 Aug 2023 07:41:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1693122093; x=1693726893; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cnl4J5NdtCseqSvUbYOntniV/cNDwpIoQh3s6P5XljM=;
        b=6NhgavZY36BYQ4a96aMKHGKlY6cWznFGd0bsUOTjAz0xGCybSN34AzPiVZ6wU1WPHz
         n54eWVXdXzINcaw7+hmhwiJprBA6TVuLmAt9B+5MhNVrYNo70+djeg765uK4oMMwsJk4
         nWQXSQJum2MGWnexPm5+0/ptgrDTFlerNhhc5Hdv7Y8EnRQzslw50u3RAsYKQYYAZXB3
         f5aU6TZhXmGVmxufZfdIODskMZXr1eG+Wz4mcjkO3BFPPHonGKVB+R+TfS+cclJYOM6n
         1FiVKgcguEp/zWU/Y5Q2KrdHHCTn3hGQBqQyme6RmUFJWueH7JKjsn1sRX/la/xPQXqr
         Xwsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693122093; x=1693726893;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cnl4J5NdtCseqSvUbYOntniV/cNDwpIoQh3s6P5XljM=;
        b=W4IeneLNnoOVizIW8/MsTVVkIAjyO5NfOr+i7btcDXNiY2ihiUFPS4GmFzG6MrzepO
         zxM7R9UvOSQtGi+kRjkCAYXx3xX1heMMPXCiBXdkbSWMNczNroi2h8BR4ESxqm7fjdS5
         2LXu7WG8cBMChAd9IcIdnXRGwWJlh85uOZIKzxQMEjSG+KNVM8rbEIeIs8xNpx8e1fum
         vlR8fjb7mSmFf8kE3YglgbJh8cMOvCNI4aQFL+qGaUPYlWzDJVVfCU1LTigul1LdorRq
         lidc7ArKbtGp6BoqbKzGlWYSC8S4nR5gxfP1ZWfa8ZKlCroyQLmDoMDgA+s28MY+0q+5
         bX4Q==
X-Gm-Message-State: AOJu0Yxq/ttEY5eB3AM/NiarefsutckjB7OYvirK6PmnQz8ZiIj1vTS+
	8a5xAlzuNjKxrZpIzrpkRLEMwfEIir3HqSEUMwNW1kFayCNajaiw2AV+RH0N
X-Google-Smtp-Source: AGHT+IGzjHPgaIITvFuZ+NRdmVkVELDo8yud0yZ/tOqr09hjvcE6pv7DtjzW2RmlWtuW9lOGee+BKC/e8BQHqw1KFGY=
X-Received: by 2002:a05:622a:1312:b0:410:ad05:940a with SMTP id
 v18-20020a05622a131200b00410ad05940amr141218qtk.21.1693122092983; Sun, 27 Aug
 2023 00:41:32 -0700 (PDT)
MIME-Version: 1.0
References: <20230825222359.GA10424@openwall.com> <20230826023129.GA2930052@millbarge>
 <20230826214914.GA18442@openwall.com>
In-Reply-To: <20230826214914.GA18442@openwall.com>
From: "Eduardo' Vela\" <Nava>" <evn@google.com>
Date: Sun, 27 Aug 2023 09:41:22 +0200
Message-ID: <CAFswPa8ERS8LOgMTk_95Dyb7JO_z_82g1zJx9dUP54t1R8ZWGw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000ea5d400603e2b4ee"
Subject: Re: [oss-security] linux-distros list policy and Linux kernel, again

--000000000000ea5d400603e2b4ee
Content-Type: text/plain; charset="UTF-8"

Hey!

I'm currently on holidays so sorry for my briefness. I couldn't miss a
chance to comment on this.

Our team at Google is working on generating CVEs for Syzkaller findings.
This is not trivial.

On Sat, 26 Aug 2023, 23:49 Solar Designer, <solar@openwall.com> wrote:

> > If every syzkaller
> > issue received a CVE automatically, we'd immediately remove the most
> > noisome posts.
>
> Is every syzkaller issue a vulnerability?
>

No, they are not. Most (all?) are bugs, so they probably should get fixed,
but I don't think we can claim them all to be vulnerabilities. Even if we
did, we probably should help NVD figure out severity for the CVSS or they
will just have to guess randomly. Figuring out a criteria for what is worth
a CVE and what is not, as well as deduplicating is probably the main bulk
of the work here.

> - Ask Red Hat's CNA to consider setting up an automatic CVE assignment
> >   process for syzkaller issues. (Red Hat's CNA is now serving as a Root
> >   CNA for FOSS issues in general, so it feels like a plausible place to
> >   put this process. Google runs syzkaller and has four CNAs, perhaps
> >   one of them would be a better fit. Maybe the Linux Foundation could
> >   run a CNA for this purpose. I'm not picky.)
>
> This is an interesting suggestion.  I think we'd first need to determine
> whether this can be automated at all without ending up with CVEs
> assigned in cases where they shouldn't have been per MITRE's guidelines
> (e.g., when no security boundary is crossed in proper documented usage).
>

So right now we have been experimenting with this and want to start with a
basic heuristic to generate OSV identifiers. If it goes well with OSV we
may start generating CVEs.

We analyzed crashes and concluded the only ones we are confident on
generating CVEs automatically are KASAN crashes that aren't null-ptr-deref
https://github.com/google/cvelist/blob/cve-automation/fuzzer/syzkaller/unique_to_delta.py#L51
but we will revise this criteria after we have a first version.

Anyway, as you can imagine, we know generating CVEs automatically can have
a significant disrupting effect on the industry as a lot of the regulation
and process depend on it, so we want to minimize the hatemail we'll get.

Anyway, for the curious on our progress
  - https://github.com/google/cvelist/tree/cve-automation/fuzzer has some
details
  -
https://github.com/google/cvelist/blob/cve-automation/fuzzer/syzkaller/output.json
has the output of our current heuristics

Any feedback is welcome!

>

--000000000000ea5d400603e2b4ee--
