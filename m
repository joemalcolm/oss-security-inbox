Received: (qmail 28588 invoked by uid 550); 18 May 2026 08:02:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28568 invoked from network); 18 May 2026 08:02:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=fabiankeil.de;
	s=blafasel; t=1779091356;
	bh=ND9mZQgCoHOe10+CuiKCw1kNmo65WaU7g3hDuWvcAyQ=;
	h=Date:From:To:Subject:In-Reply-To:References;
	b=2DrdKait2qvJoN1cRR79fz6CkUfhSQXck+bj0nnGDEM0ZZcZHemnp7SrCO/sQIIa4
	 fcXKTn6kdc2n+ZQbNzzHK9TrbACuzIzJveBKzaLYeemZoQnRzvaYhmXdWfLhIP0PeJ
	 gYvgJwpH9ZtsvaDsfOqbL/VAkfIDo6CaYBcuWgMexOhH51LqdI+8aJRbIFsGNAAK+o
	 Pxkxmy7QTUeYnZcfUBRO47xUP67Lj52oNTI4zLYikuYqWp6Ur+o0fA6bxFGxO1GeSE
	 diZskjWJ2CXE3nLUnlJ5SfXNy9GmaB6wTJwlMDOqRgfYKpaA60TLKtBT6ioLU3lUBl
	 +oVlHLOghvTOg==
Date: Mon, 18 May 2026 10:02:48 +0200
From: Fabian Keil <freebsd-listen@fabiankeil.de>
To: oss-security@lists.openwall.com
Message-ID: <20260518100248.52b532c1.freebsd-listen@fabiankeil.de>
In-Reply-To: <20210131131329.56c9be0d@fabiankeil.de>
References: <20201129165312.64bd840f@fabiankeil.de>
 <20201223175828.48163487@fabiankeil.de>
 <CALDM2HcJCXfMBybnqKiAVQq44DMhhgb0m81wG+WFBtesbr-1QQ@mail.gmail.com>
 <20210131131329.56c9be0d@fabiankeil.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] CVE request experience

Fabian Keil <freebsd-listen@fabiankeil.de> wrote on 2021-01-31 at 13:13:29:

> Nick Tait <ntait@redhat.com> wrote on 2020-12-23:
> 
> > That is a rather poor experience Fabian, sorry! Took a look at that
> > incident number and no encrypted message appears on our end. I believe
> > you did actually send a message but not sure what went wrong. While I
> > can't directly help, did request the appropriate people follow up with
> > you.
> 
> Thanks a lot for your help, Nick.
> 
> I was contacted by someone from Red Hat Product Security
> on 2020-12-24 and received a CVE.
> 
> I replied and requested CVEs for the other issues fixed in
> Privoxy 3.0.29 but did not receive a reply yet. I just
> forwarded the request to <secalert@redhat.com>.

Privoxy 4.2.0, which is supposed to be released around 2026-05-30,
will contain fixes for two security issues that are currently
tracked as OVE-20260515-0001 and OVE-20260515-0002.

I tried to get two CVEs from Redhat yesterday by sending an encrypted
mail to the address above, which is still listed at [0], but so far only
received what looks like an automated response which claims that I
need an "Atlassian" account to "finish" the request.

For various reasons I don't want an "Atlassian" or any other account ...

Fabian

[0]: <https://access.redhat.com/security/team/contact/>
