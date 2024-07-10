Received: (qmail 19590 invoked by uid 550); 10 Jul 2024 14:57:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8136 invoked from network); 10 Jul 2024 14:49:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1720622934;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=HbLt4tuvdA/DB9HhcwcpWsHffqndtaPxcQNUq+M3zOw=;
	b=cq2oCSdoHdnps0qsAkNJwTE8IJNPUTGge8Jukr1PXQQGmY/ewSaPudoZe3EZ3kj37WuLks
	rEZenGRGF+d4NrJlkwUCck9s5Awi1NjoIz/8xL70HeA5B8rt9wIPH++fV3cYLMPQ736kEL
	rVvMtmJzuGoV6VJaRimOkHkzhSN7OyM=
X-MC-Unique: _uRmJKB4MC--QzABz5_ZcA-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720622931; x=1721227731;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HbLt4tuvdA/DB9HhcwcpWsHffqndtaPxcQNUq+M3zOw=;
        b=cDx60EiIfn1/N0inSPmZPlfSs1b5UEu9J4RqCPowAap/ulX3Y7ohm9awAw6CU3gIKU
         eLwUxVVUVrKCD8Y89ugmwSWlG7ylKcz0wZBqldVl0nIa6Vx1h6avwaZGYJyR2G7yywoZ
         9CA9X0tccEUikiMX3PkUBVLcCcvMKVnlRBd7x9i+dSDJcksaNG1l/zjWYld2QFqv5P+c
         nNaIlOq80oiTBLZAPoItj1o2qZOW+CN/PwVL69BhC8Sy17yxoyXTEMvAXIdy0uOd6b4c
         vGewx6vTfdQfp4SfXedyKV/Dq9O4+pQ4e9Wti9ivESIJU5sQsbgJOtpNxE38DvGuiq5N
         viKw==
X-Gm-Message-State: AOJu0Yx2bNUngqJXj+uWv4366CIdgehTwVDiuU3v8xeW6vXeB3TBAxuT
	tRxCYJL9gHhsj/vrcFgJ+5RrQSRvjmjAOwN3VcVzRG+i1J0Jjw5K9ySb9JvUxV9aquRc8m3eyM5
	oHPySD5LsXo+PRyoh7iLsm50QJaTlMiBtZl+bArujJc/64xQuwaXyKUC2bnh925erGndG3AVjQ/
	0LvRunLAix5d1RzEi+6Qc+ZX3nKAyurxeFLgR5GUoNQQCFSHSw
X-Received: by 2002:a17:90b:3642:b0:2c2:c2fe:77c5 with SMTP id 98e67ed59e1d1-2ca35d568f0mr4569936a91.40.1720622930691;
        Wed, 10 Jul 2024 07:48:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH4LjMoWhfLhDAtrhmyEa2UsRWvwSBrbV6n18gAfjSPZn1fNQZff8Wonsrzuo8/WnOsldqq2C8WEbV8ZtCldvM=
X-Received: by 2002:a17:90b:3642:b0:2c2:c2fe:77c5 with SMTP id
 98e67ed59e1d1-2ca35d568f0mr4569920a91.40.1720622930283; Wed, 10 Jul 2024
 07:48:50 -0700 (PDT)
MIME-Version: 1.0
References: <20240701083838.GA12787@localhost.localdomain> <20240708162106.GA4920@openwall.com>
 <67430275-b84d-462e-ab74-5a756c6d068f@mindrot.org> <20240709224923.GA17147@openwall.com>
In-Reply-To: <20240709224923.GA17147@openwall.com>
From: Nick Tait <ntait@redhat.com>
Date: Wed, 10 Jul 2024 08:48:33 -0600
Message-ID: <CALDM2Hc9XdQh0xjB1SKwMofRnTS2ORubMi3QZ0=Yo0NObnuq4A@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Qualys Security Advisory <qsa@qualys.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="0000000000008d6a97061ce5be48"
Subject: Re: [oss-security] CVE-2024-6387: RCE in OpenSSH's server, on
 glibc-based Linux systems

--0000000000008d6a97061ce5be48
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Damian, in general when there is incorrect data on any of Red Hat's CVE
pages the best place to request a fix is secalert@redhat.com.

In this case we are paying attention to this mailing list and have
incorporated some suggestions. I can help address any remaining cleanups.

Has OpenSSH ever considered becoming a CNA?

~Nick

On Tue, Jul 9, 2024 at 4:51=E2=80=AFPM Solar Designer <solar@openwall.com> =
wrote:

> On Tue, Jul 09, 2024 at 09:52:58AM +1000, Damien Miller wrote:
> > On Mon, 8 Jul 2024, Solar Designer wrote:
> > > Today is the coordinated release date to publicly disclose a related
> > > issue I found during review of Qualys' findings, with further analysis
> > > by Qualys.  My summary is:
> > >
> > > CVE-2024-6409: OpenSSH: Possible remote code execution in privsep chi=
ld
> > > due to a race condition in signal handling
> >
> > As an aside, who wrote the text of
> > https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2024-6409 ?
>
> I don't know for sure, but I guess someone from Red Hat did since the
> CVE was assigned by them as a CNA.  Also, the description is the same as
> what's in Red Hat Bugzilla.
>
> > It's disappointing that this CVE states that this is a vulnerability
> > in OpenSSH sshd, and fails to make clear that this only affects Redhat
> > versions and users of their downstream patch.
>
> This was in the title, just not in the description.  And now I see I did
> it the other way around in my oss-security posting - should have been
> more careful to include this information in both the suggested title and
> in the description - sorry about that.  Meanwhile, looks like the
> CVE-2024-6409 record has been updated today, perhaps in response to your
> message, and now says Red Hat Enterprise Linux 9 also in the description.
>
> > This follows another critical failure to properly issue CVEs for OpenSS=
H:
> > CVE-2024-6387 only lists CPEs for Redhat systems as affected (see the
> > JSON dump of the entry: https://cveawg.mitre.org/api/cve/CVE-2024-6387 )
>
> The current revision (also updated today) starts with:
>
>       "affected": [
>         {
>           "repo": "https://anongit.mindrot.org/openssh.git",
>           "versions": [
>             {
>               "status": "affected",
>               "version": "8.5p1",
>               "versionType": "custom",
>               "lessThanOrEqual": "9.7p1"
>             }
>           ],
>           "packageName": "OpenSSH",
>           "collectionURL": "https://www.openssh.com/",
>           "defaultStatus": "unaffected"
>         },
>
> and only then proceeds to give CPEs for Red Hat products.
>
> > This means that anyone using automation that consumes CVEs for detecting
> > vulnerabilities will be left exposed.
>
> Does the above look good enough now, or should there also be a CPE for
> upstream OpenSSH?
>
> > Moreover, the explanatory text for CVE-2024-6387 is also extremely
> lacking.
> > It fails to explain the consequence of the vulnerability (unauth RCE) a=
nd
> > just talks about mechanism.
>
> This is still the case, and this CVE was also assigned by Red Hat (in
> response to requests by Qualys and me in the distros list discussion),
> and the description is also the same as in Red Hat Bugzilla, so should
> probably be first improved in a database Red Hat uses internally.
>
> > I don't know if it's in anyone on this list's ability to get these
> > fixed, but IMO they are serious failures of the CVE process that make
> > it near-useless for consumers of this information.
>
> Apparently, someone in here noticed and started making edits.
>
> Alexander
>
>

--0000000000008d6a97061ce5be48--

