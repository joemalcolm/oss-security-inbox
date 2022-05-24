Received: (qmail 11363 invoked by uid 550); 24 May 2022 12:59:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9251 invoked from network); 24 May 2022 12:58:16 -0000
Date: Tue, 24 May 2022 14:58:04 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20220524125804.GA29146@openwall.com>
References: <20220515162740.GA20526@openwall.com> <YoKiGWAX4E/mbGWB@kroah.com> <1be21670-921c-9f0a-d99c-a9f6fd02b9b2@oracle.com> <20220522191951.GA21330@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220522191951.GA21330@openwall.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] linux-distros list policy and Linux kernel

On Sun, May 22, 2022 at 09:19:51PM +0200, Solar Designer wrote:
> I think now we need to come up with a specific edit to the policy, and I
> think the exception should ideally be limited to Linux kernel issues
> currently/recently handled with the kernel's security team involved.
> Ideally, we'd also manage to simplify rather than further complicate the
> policy - a goal inconsistent with granting only a limited exception?

I've just added the exception to:

https://oss-security.openwall.org/wiki/mailing-lists/distros#list-policy-and-instructions-for-reporters

The paragraph now reads:

"Please note that in case a fix for an issue is already in a publicly
accessible source code repository, we generally consider the issue
public (and thus you should post to oss-security right away, not report
the issue to (linux-)distros as we'd merely redirect you to oss-security
anyway and insist that you make the required posting ASAP).  There can
be occasional exceptions to this, such as if the publicly accessible fix
doesn't look like it's for a security issue and not revealing this
publicly right away is somehow deemed desirable.  In particular, we
grant such exceptions to Linux kernel issues concurrently or very
recently handled by the Linux kernel security team.  In all other cases,
you'd have to have very sound reasoning to claim an exception like this
and be prepared to lose your argument and if so to post to oss-security
ASAP anyway."

It was:

"Please note that in case a fix for an issue is already in a publicly
accessible source code repository, we generally consider the issue
public (and thus you should post to oss-security right away, not report
the issue to (linux-)distros as we'd merely redirect you to oss-security
anyway and insist that you make the required posting ASAP).  There can
be occasional (rare) exceptions to this, such as if the publicly
accessible fix doesn't look like it's for a security issue (e.g., if the
corresponding changes were initially made for unrelated reasons and were
only later realized to have fixed a non-public security issue) and not
revealing this publicly right away is somehow desirable.  You'd have to
have very sound reasoning to claim an exception like this and be
prepared to lose your argument and if so to post to oss-security ASAP
anyway."

The policy above doesn't explicitly say that equivalent terms apply when
determining whether an embargo has ended (if before a pre-agreed date).
However, we do have a paragraph that start with:

"When the security issue is finally (to be made) public, "

Previously, there were no braces around "to be made" - I've just added
those.  Hopefully, it is obvious enough that if we accepted an issue as
non-public under the new exception, then it is considered public when
the new exception would have no longer applied.  We can, however, add
explicit wording if that becomes necessary.

Alexander
