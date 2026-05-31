Received: (qmail 5130 invoked by uid 550); 31 May 2026 19:25:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 4082 invoked from network); 31 May 2026 19:25:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=fabiankeil.de;
	s=blafasel; t=1780255506;
	bh=3x0AADnpQwblV6WfxM3pD1HjUwJwkmzntWyp6ocsF3U=;
	h=Date:From:To:Subject:In-Reply-To:References;
	b=zToExGC9w/dEDPr/Au9SNLYIbpI3eIekHUVX9MNGrObZl8cmsNO/zfbZNT9KNFR7A
	 b2Uc0OruWiQlA5oJbeR9OQyPPnxzOoRkPgTsydp9LuBf6le3Z48ZHe3XBfVN382GBw
	 K6Lo1QoSrToRB29LzZbJhGljtKQNAXP71w2ByHYkjxIhb3upTsuSmyNpiSGdaNJZOD
	 vlBNn7VNyF2yZiSNnGDQ0S73chhis2mRvyAurNGLi+LXWsm1GwXe67I456UgeWS781
	 PkP8kqH/rJjFjZyLN0Ha/ilDeVYJFmSa+A0rvZcscKdBeSjS15j88MPC8lcanS0X1c
	 lsshRkAWma3SQ==
Date: Sun, 31 May 2026 21:13:11 +0200
From: Fabian Keil <freebsd-listen@fabiankeil.de>
To: oss-security@lists.openwall.com
Message-ID: <20260531211311.5479a4d8.freebsd-listen@fabiankeil.de>
In-Reply-To: <20260518100248.52b532c1.freebsd-listen@fabiankeil.de>
References: <20201129165312.64bd840f@fabiankeil.de>
 <20201223175828.48163487@fabiankeil.de>
 <CALDM2HcJCXfMBybnqKiAVQq44DMhhgb0m81wG+WFBtesbr-1QQ@mail.gmail.com>
 <20210131131329.56c9be0d@fabiankeil.de>
 <20260518100248.52b532c1.freebsd-listen@fabiankeil.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] CVE request experience

Fabian Keil <freebsd-listen@fabiankeil.de> wrote on 2026-05-18 at 10:02:48:

> Fabian Keil <freebsd-listen@fabiankeil.de> wrote on 2021-01-31 at 13:13:29:
> 
> > Nick Tait <ntait@redhat.com> wrote on 2020-12-23:
> > 
> > > That is a rather poor experience Fabian, sorry! Took a look at that
> > > incident number and no encrypted message appears on our end. I believe
> > > you did actually send a message but not sure what went wrong. While I
> > > can't directly help, did request the appropriate people follow up with
> > > you.
> > 
> > Thanks a lot for your help, Nick.
> > 
> > I was contacted by someone from Red Hat Product Security
> > on 2020-12-24 and received a CVE.
> > 
> > I replied and requested CVEs for the other issues fixed in
> > Privoxy 3.0.29 but did not receive a reply yet. I just
> > forwarded the request to <secalert@redhat.com>.
> 
> Privoxy 4.2.0, which is supposed to be released around 2026-05-30,
> will contain fixes for two security issues that are currently
> tracked as OVE-20260515-0001 and OVE-20260515-0002.

The patches have been pushed to git today ([1], [2]).

The official Privoxy 4.2.0 release will probably happen tomorrow.

Quoting relevant parts of the preliminary announcement at [3] which
I'll have to modify before the release as the reporter responded today:

| Privoxy 4.2.0 fixes a couple of bugs including two reported security
| issues and brings a couple of general improvements including support
| for elliptic-curve keys.
|
| Unfortunately the reporter of the alleged security issues did not
| answer questions about the report that was based on an unofficial git
| mirror which was apparently two years behind. CVEs have been requested
| but haven't been assigned in time for the release.
|
| - Security fixes:
|   - Parse the chunk-size with a dedicated function and reject "unreasonably"
|     large values to prevent silent truncation by sscanf(), integer overflows
|     and misinterpretation of the content later on. Heap buffer overflows on
|     platforms with 32-bit pointers were alleged as well.
|     Commit 5b3bb22b77. OVE-20260515-0002. Reported by @TristanInSec.
|   - ssl_send_certificate_error(): Store the generated message on the heap
|     instead of the stack to prevent an alleged segmentation fault if there
|     are enough certificates in the chain to exceed the stack size.
|     While at it, replace another variable-length array that was probably
|     unproblematic with a heap-based buffer as well.
|     Commit 4963aa4f08. OVE-20260515-0001. Reported by @TristanInSec.

While it wouldn't have helped here, I've also added two paragraphs
to the "Reporting security problems" section [4] in the Privoxy
documentation that request that use of "AI" is disclosed by reporters
and that reporters should be prepared to respond to questions about
their reports ...

> I tried to get two CVEs from Redhat yesterday by sending an encrypted
> mail to the address above, which is still listed at [0], but so far only
> received what looks like an automated response which claims that I
> need an "Atlassian" account to "finish" the request.
> 
> For various reasons I don't want an "Atlassian" or any other account ...

I've sent a follow-up message to request a non-automated response
on 2026-05-26 and received another obviously-automated response a
bit later from "Atlassian <noreply+[...]@id.atlassian.com>".

This seems to contradict [0] which claims:
| Only members of Red Hat Product Security, a restricted and carefully
| chosen group of Red Hat employees, will have access to material sent
| to the secalert@redhat.com address. No outside users can subscribe to
| this list.

Fabian

[0]: <https://access.redhat.com/security/team/contact/>
[1]: <https://www.privoxy.org/gitweb/?p=privoxy.git;a=commitdiff;h=4963aa4f08a378d0ea8a89433a95c3948a14bb9e>
[2]: <https://www.privoxy.org/gitweb/?p=privoxy.git;a=commitdiff;h=5b3bb22b771c93adddf1726ec904c9378d584a66>
[3]: <https://www.privoxy.org/gitweb/?p=privoxy.git;a=blob_plain;f=doc/webserver/announce.txt;hb=c93c69df8ff0b22e6d0a1bc02d7ce170e850cf02>
[4]: <https://www.privoxy.org/gitweb/?p=privoxy.git;a=commitdiff;h=84a1158f288df545ee45ed9326ccf984a360d4c7>
