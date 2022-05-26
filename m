Received: (qmail 14315 invoked by uid 550); 26 May 2022 17:36:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14197 invoked from network); 26 May 2022 17:35:50 -0000
Date: Thu, 26 May 2022 19:35:46 +0200
From: Solar Designer <solar@openwall.com>
To: Norbert Slusarek <nslusarek@gmx.net>
Cc: oss-security@lists.openwall.com, peterz@infradead.org
Message-ID: <20220526173546.GA8848@openwall.com>
References: <trinity-5f3c0fdf-d83f-422e-9a05-c4ead66e42e1-1653077676864@3c-app-gmx-bap52> <20220521154759.GA15268@openwall.com> <trinity-4c518dcc-751b-4893-82dc-b2f80734eb9d-1653430844824@3c-app-gmx-bap13> <20220524232155.GA2264@openwall.com> <trinity-3f5f7066-5ba5-45cb-b229-a2207e9fe209-1653583477988@3c-app-gmx-bap49>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <trinity-3f5f7066-5ba5-45cb-b229-a2207e9fe209-1653583477988@3c-app-gmx-bap49>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2022-1729: race condition in Linux perf subsystem leads to local privilege escalation

Norbert,

Thank you for engaging in this discussion.  It helps.

On Thu, May 26, 2022 at 06:44:38PM +0200, Norbert Slusarek wrote:
> >What do you suggest we do regarding the LPE exploit you sent to
> >linux-distros?
> 
> I saw your reveal of linux-distros from 2020 and the exchange
> didn't include any text nor attachments. In that case, the
> exploit should remain private to linux-distros accordingly.

I don't know what "reveal of linux-distros from 2020" you refer to.  The
policy aspect in question (see below) is in effect since 2017, and I
don't recall us deviating from it.  Did we?

We have a published policy here:

https://oss-security.openwall.org/wiki/mailing-lists/distros#list-policy-and-instructions-for-reporters

which includes:

"If you shared exploit(s) that are not an essential part of the issue
description, then at your option you may slightly delay posting them to
oss-security but you must post the exploits to oss-security within at
most 7 days of making the mandatory posting above.  If you exercise this
option, you have two mandatory postings to make: first with a
sufficiently detailed issue description (as requested above) and with an
announcement of your intent to post the exploits separately (please
mention exactly when), and second with the exploits - or indeed you
could have included the exploits right away, in your first and only
mandatory posting."

Did you read this before posting?  If not, anything we should have done
to ensure you'd have read it?

> >What do you suggest we do with this policy aspect going forward, so that
> >people do not get into a situation where they're required to do
> >something they didn't want to subscribe to?
> 
> How is this policy aspect enforced in the first place?
> If it's not, I suggest you remove it entirely as there is no reason
> to have policies which cannot (and shouldn't) be enforced.

Reminders, like I am doing now (often in private, this time in public).
Failing that, list members technically can post the exploits themselves.
Finally, we can setup the list to automatically make all messages public
with a delay.

However, as you can see from another recent thread we're now in the
process of reconsidering list policy aspects, so might end up e.g.
extending the period from 7 to 30 days.  Would that work for you?

If people insist on keeping exploits sent to (linux-)distros private
forever, then I'll more likely either shut down the list instead or set
it up to automatically make all messages public.  After all, if people
send private messages to some list without reading its published policy
first, they accept that anything can happen with those messages.  Right?
Yet I've been reluctant to do that so far, as it's not ideal for social
and technical reasons.

> Overall, as a researcher I would prefer having a way just to inform
> distros of a bug, *without* being subject to these requirements.

I understand, yet I find that very problematic.

Also, you don't need to post an exploit (especially more than a PoC) to
the list "to inform distros of a bug".  You can literally just inform
them, and (if you don't accept the policy on forced publication of what
you share with the list) offer to privately share the exploit with
interested distros.  Then the exploit itself wouldn't be subject to the
forced publication.

Thanks again,

Alexander
