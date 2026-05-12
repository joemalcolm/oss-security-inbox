Received: (qmail 17636 invoked by uid 550); 12 May 2026 20:24:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5323 invoked from network); 12 May 2026 19:19:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=1wt.eu; s=mail;
	t=1778613579; bh=UVKQc9DrjZLSlwgN1N/HCzCKPPlP3yZv01fOp+7Xh3Y=;
	h=From:Message-ID:From;
	b=cq8QRuUDjtpK9mfWN5sgymbEli6ofZa8tUoIacX9bLDKBCf745FtbORCTN9AYqRMh
	 diJHJSdlYA0GxG7bDavVlB2VUrC1Vi+3mL5relXz+UIDSuwrGNjwL6bHmhAiGZ3qCA
	 WlcPYM70ntbSUY1fFSoM0r4cFUCq6r1RV17K8vGg=
Date: Tue, 12 May 2026 21:19:38 +0200
From: Willy Tarreau <w@1wt.eu>
To: Demi Marie Obenour <demiobenour@gmail.com>
Cc: oss-security@lists.openwall.com
Message-ID: <agN9SieDjxiuxPI-@1wt.eu>
References: <afDLFWVMK-r70PB0@yuggoth.org>
 <521d0295-6a93-4a28-be55-332d663ec457@gmail.com>
 <afI-PPAr7EP8SEsu@1wt.eu>
 <1aed29dc-a3b8-46ef-9784-f147805df928@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1aed29dc-a3b8-46ef-9784-f147805df928@gmail.com>
Subject: Re: [oss-security] Coordinated Disclosure in the LLM Age

On Tue, May 12, 2026 at 01:40:16PM -0400, Demi Marie Obenour wrote:
> On 4/29/26 13:22, Willy Tarreau wrote:
> > On Tue, Apr 28, 2026 at 10:18:08PM -0500, Jacob Bachmeyer wrote:
> >> On 4/28/26 09:58, Jeremy Stanley wrote:
> >>> I'm sorely tempted, both due to the increased volume and the risk of
> >>> premature disclosure, to just assume that any vulnerability reported as
> >>> a result of research using an LLM is trivially discoverable by others,
> >>> and give up trying to pretend there's any point to working it under
> >>> embargo.
> >>
> >> You are correct here:  you should assume that any LLM will give a similar
> >> result to another person who asks a similar question.  In other words,
> >> LLM-discovered vulnerabilities should be considered already publicly known.
> > 
> > I'm increasingly doing that myself already, and predicted the death of
> > embargoes a serveral months ago. Now I just remove unneeded details from
> > commit messages, merging and issue releases to keep users protected.
> > 
> > Embargoes now play against security, for all the time we don't act,
> > users stay exposed to anyone having the luck to find the same problem.
> > It's not a matter of the LLM's strength but a matter of determination
> > by the researcher who could simply run a small model several times
> > helping it dig further. Bigger models just find faster, but that only
> > counts for those seeking protection, not for those trying to attack.
> 
> I wonder if some projects will abandon releases altogether and switch
> to a "use the latest commit from the dev branch" model.

It brings more problems than solutions. Stable branches are a comfort
both for users and for developers because it allows to make progress and
take risks in a dev branch. When you only have a dev branch, you need to
be super cautious and often it prevents you from making breaking changes
that are nonetheless necessary.

But there will always be a number of projects working like this, I just
think that the changes in the bug reporting process will not change their
choice.

Willy
