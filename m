Received: (qmail 13812 invoked by uid 550); 29 Apr 2026 17:41:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30667 invoked from network); 29 Apr 2026 17:22:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=1wt.eu; s=mail;
	t=1777483325; bh=WHPdrRZmj8KqIS1cIAVRTeCbadlGdUs3hYkMLRroP7Y=;
	h=From:Message-ID:From;
	b=lk+9ptWrFpK9Yv50ZyuLPdzoNIuVopasKR7u4SUYiD+SGE0/TyxLYNNFbfXrfPw6A
	 hpYEbbj2Wi6s5u3VHYDnnrfhOM46touGyMaPuBOfOBFXnSNYWAgsHZDPVWNuN0i1Y/
	 jloP1+ldLTOTlfbReZyDia+wrU4d7KNMsNf+IZBI=
Date: Wed, 29 Apr 2026 19:22:04 +0200
From: Willy Tarreau <w@1wt.eu>
To: oss-security@lists.openwall.com
Message-ID: <afI-PPAr7EP8SEsu@1wt.eu>
References: <afDLFWVMK-r70PB0@yuggoth.org>
 <521d0295-6a93-4a28-be55-332d663ec457@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <521d0295-6a93-4a28-be55-332d663ec457@gmail.com>
Subject: Re: [oss-security] Coordinated Disclosure in the LLM Age

On Tue, Apr 28, 2026 at 10:18:08PM -0500, Jacob Bachmeyer wrote:
> On 4/28/26 09:58, Jeremy Stanley wrote:
> > I'm sorely tempted, both due to the increased volume and the risk of
> > premature disclosure, to just assume that any vulnerability reported as
> > a result of research using an LLM is trivially discoverable by others,
> > and give up trying to pretend there's any point to working it under
> > embargo.
> 
> You are correct here:  you should assume that any LLM will give a similar
> result to another person who asks a similar question.  In other words,
> LLM-discovered vulnerabilities should be considered already publicly known.

I'm increasingly doing that myself already, and predicted the death of
embargoes a serveral months ago. Now I just remove unneeded details from
commit messages, merging and issue releases to keep users protected.

Embargoes now play against security, for all the time we don't act,
users stay exposed to anyone having the luck to find the same problem.
It's not a matter of the LLM's strength but a matter of determination
by the researcher who could simply run a small model several times
helping it dig further. Bigger models just find faster, but that only
counts for those seeking protection, not for those trying to attack.

Willy
