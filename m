Received: (qmail 1969 invoked by uid 550); 10 Jul 2024 15:56:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19553 invoked from network); 10 Jul 2024 15:06:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1720623981;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=y1bKz1qoz6r6380zzhvetpzLqD/QVXcsrVtIH2Ez9Do=;
	b=NnEbjTghs9izWxH+r3kN9lsmqP3h00sXrLM3XxO4FgmAbB8wx6K6bJyhrVXDkn36sGekFh
	wiGAqNvFSDy4t2rvr+ZhOh4v6TA6TSkObEoM23lG2/Da3c2S4/tJyaZWQFjQmPJ9/PBvy9
	YAArcm+OaeewJhWJuhYI/+MyHqrnMr4=
X-MC-Unique: 253pfKc3Mu23fr84J14bHQ-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720623978; x=1721228778;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y1bKz1qoz6r6380zzhvetpzLqD/QVXcsrVtIH2Ez9Do=;
        b=jZbjFtlBM7dX1HXnjxUew/L5qMUw0/4jg1c9s81fP4i0D5dnwbiZBCBoyk1TU8xzHJ
         Fgv90cW16i+B4y7A/auoYpJWN9AQjUdRVDf7hsFnYvUCfdnxv70L77LNxYxblpoe/QMw
         byqpbP47IesDok5IgjP6uZBdPcbX4AfWLzQKcOBOryr1GvZSjKZYbql3d1lXc6dPULzG
         tR9cZBpj/kUKlDexxX0cCdCJ6rNP4ntrK5vnYc4RXCK7GySPKHRuWnOqbAesqbVQNZca
         TAQH4wicZK2PoyQhBI0fQz8f2CyCLgu5YBjwB0mICss0c+IRMIujpH9XY9E1kXq2wye7
         jbUg==
X-Gm-Message-State: AOJu0Yy3YMRtddWR4ADM5v83pypwafj2ljjPzcttIr3YsBkxJHMduUfV
	KBbLkkuH369gMWJX6+f8WsZzoYysxZlnAn90QOEVBbsazsqR4VfovEx40+ysj2/IXJmmgwwlqL7
	QuyTCZqhouJ6eqp2t1IIX+0dYNh/oEnoYJ9p+QmMI13tO3rCNoDNfumfVlZcK5CifiHzWsA/mIf
	O1KhpmuwAoqFyIx/9m4sbQC6yJCN/woM94EXI4OA7+yJOE7ntH
X-Received: by 2002:a05:6870:a2c8:b0:254:f00e:56a2 with SMTP id 586e51a60fabf-25eae76459emr4655855fac.9.1720623978567;
        Wed, 10 Jul 2024 08:06:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFL9kVL4JO3qJ6Wi0nAhaELvwC/5T4CdoxyxgqvyqiWbJdJ3J0lnvarRIOHC0rfTI+bIUdRug4U4Hoow22BmwQ=
X-Received: by 2002:a05:6870:a2c8:b0:254:f00e:56a2 with SMTP id
 586e51a60fabf-25eae76459emr4655836fac.9.1720623978189; Wed, 10 Jul 2024
 08:06:18 -0700 (PDT)
MIME-Version: 1.0
References: <20240701083838.GA12787@localhost.localdomain> <20240708162106.GA4920@openwall.com>
 <67430275-b84d-462e-ab74-5a756c6d068f@mindrot.org> <20240709224923.GA17147@openwall.com>
 <CALDM2Hc9XdQh0xjB1SKwMofRnTS2ORubMi3QZ0=Yo0NObnuq4A@mail.gmail.com>
In-Reply-To: <CALDM2Hc9XdQh0xjB1SKwMofRnTS2ORubMi3QZ0=Yo0NObnuq4A@mail.gmail.com>
From: Pete Allor <pallor@redhat.com>
Date: Wed, 10 Jul 2024 11:06:05 -0400
Message-ID: <CAEFCzXUwgt1dcoDvcjKEJ9Tj-kiFpQ0u_GQT14BcztXWiRgrSw@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Qualys Security Advisory <qsa@qualys.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000032b9d061ce5fdda"
Subject: Re: [oss-security] CVE-2024-6387: RCE in OpenSSH's server, on
 glibc-based Linux systems

--000000000000032b9d061ce5fdda
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Other records for the same CVE can also be posted to CVE.org and listed on
their website with a link for completeness.

Under CVE rules, Red Hat can only assign a CVE for issues within our scope,
which for most CNAs means their software.   RH has on occasion, provided a
CVE for upstream projects which are not covered by another CNA.  That is
really about a coordination point between multiple parties.

When considering becoming a CNA, it should not be for an occasional CVE so
becoming a CNA should be considered if you have a good number per year AND
you have the people to do that work regularly.

I can offer that if you wish for Red Hat to add to this record, then we
would be glad to assist.   Please send a DM to secalert@redhat.com and we
will work on it.

Pete

On Wed, Jul 10, 2024 at 10:57=E2=80=AFAM Nick Tait <ntait@redhat.com> wrote:

> Damian, in general when there is incorrect data on any of Red Hat's CVE
> pages the best place to request a fix is secalert@redhat.com.
>
> In this case we are paying attention to this mailing list and have
> incorporated some suggestions. I can help address any remaining cleanups.
>
> Has OpenSSH ever considered becoming a CNA?
>
> ~Nick
>
> On Tue, Jul 9, 2024 at 4:51=E2=80=AFPM Solar Designer <solar@openwall.com=
> wrote:
>
> > On Tue, Jul 09, 2024 at 09:52:58AM +1000, Damien Miller wrote:
> > > On Mon, 8 Jul 2024, Solar Designer wrote:
> > > > Today is the coordinated release date to publicly disclose a related
> > > > issue I found during review of Qualys' findings, with further
> analysis
> > > > by Qualys.  My summary is:
> > > >
> > > > CVE-2024-6409: OpenSSH: Possible remote code execution in privsep
> child
> > > > due to a race condition in signal handling
> > >
> > > As an aside, who wrote the text of
> > > https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2024-6409 ?
> >
> > I don't know for sure, but I guess someone from Red Hat did since the
> > CVE was assigned by them as a CNA.  Also, the description is the same as
> > what's in Red Hat Bugzilla.
> >
> > > It's disappointing that this CVE states that this is a vulnerability
> > > in OpenSSH sshd, and fails to make clear that this only affects Redhat
> > > versions and users of their downstream patch.
> >
> > This was in the title, just not in the description.  And now I see I did
> > it the other way around in my oss-security posting - should have been
> > more careful to include this information in both the suggested title and
> > in the description - sorry about that.  Meanwhile, looks like the
> > CVE-2024-6409 record has been updated today, perhaps in response to your
> > message, and now says Red Hat Enterprise Linux 9 also in the descriptio=
n.
> >
> > > This follows another critical failure to properly issue CVEs for
> OpenSSH:
> > > CVE-2024-6387 only lists CPEs for Redhat systems as affected (see the
> > > JSON dump of the entry: https://cveawg.mitre.org/api/cve/CVE-2024-6387
> )
> >
> > The current revision (also updated today) starts with:
> >
> >       "affected": [
> >         {
> >           "repo": "https://anongit.mindrot.org/openssh.git",
> >           "versions": [
> >             {
> >               "status": "affected",
> >               "version": "8.5p1",
> >               "versionType": "custom",
> >               "lessThanOrEqual": "9.7p1"
> >             }
> >           ],
> >           "packageName": "OpenSSH",
> >           "collectionURL": "https://www.openssh.com/",
> >           "defaultStatus": "unaffected"
> >         },
> >
> > and only then proceeds to give CPEs for Red Hat products.
> >
> > > This means that anyone using automation that consumes CVEs for
> detecting
> > > vulnerabilities will be left exposed.
> >
> > Does the above look good enough now, or should there also be a CPE for
> > upstream OpenSSH?
> >
> > > Moreover, the explanatory text for CVE-2024-6387 is also extremely
> > lacking.
> > > It fails to explain the consequence of the vulnerability (unauth RCE)
> and
> > > just talks about mechanism.
> >
> > This is still the case, and this CVE was also assigned by Red Hat (in
> > response to requests by Qualys and me in the distros list discussion),
> > and the description is also the same as in Red Hat Bugzilla, so should
> > probably be first improved in a database Red Hat uses internally.
> >
> > > I don't know if it's in anyone on this list's ability to get these
> > > fixed, but IMO they are serious failures of the CVE process that make
> > > it near-useless for consumers of this information.
> >
> > Apparently, someone in here noticed and started making edits.
> >
> > Alexander
> >
> >
>

--000000000000032b9d061ce5fdda--

