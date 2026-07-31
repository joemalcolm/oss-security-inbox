X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/31/11
Message-ID: <45fe40c2-7d82-4802-9e55-8ba7a709a2c7@gentoo.org>
Date: Fri, 31 Jul 2026 12:42:34 -0400
From: Eli Schwartz <eschwartz@...too.org>
To: oss-security@...ts.openwall.com
Subject: Re: Some Changes to GNOME Security Tracking
Content-Type: text/plain; charset=utf-8

On 7/31/26 11:39 AM, David A. Wheeler wrote:
> 
> 
>> On Jul 30, 2026, at 10:02 PM, Peter Gutmann <pgut001@...auckland.ac.nz> wrote:
>>
>> Alan Coopersmith <alan.coopersmith@...cle.com> writes:
>>
>>> 2) The GNOME security team will no longer forward vulnerability reports
>>>  to projects that ban AI-generated content, since most reports they
>>>  get these days have at least some AI-generated content.
>>
>> So you've got a bunch of projects where people are clamoring for them to
>> reject anything that might have been touched by AI, and another bunch of
>> projects where people have decided to refuse to take part in anything that
>> rejects things that have been touched by AI.
> 
> To be fair: Michael Catanzaro is saying he's simply abiding by the request of
> those projects. They don't want to receive any AI-generated content,
> and since most vulnerability reports have AI-generated content, Michael won't send them any.
> 
> Of course, that's absurd. It's appropriate to reject *bad* reports,
> but people should be open to truth wherever it comes from.


Projects which reject LLM bug reports are, presumably, doing so based on
the rationale that they are mostly slop and that figuring out what, if
anything, is valuable in them, is the number one cause of burnout
resulting in no maintainers for anything at all, even ordinary bugs or
feature requests or upgrading off of deprecated and removed header APIs
of their dependencies.

Michael is saying he finds it unrewarding too, and isn't interested in
devoting the energy into determining what security reports in software
he doesn't maintain, merely serves as a security contact for, are
actually real.

Their stance is therefore that they *are* rejecting bad reports, and are
open to truth as long as they aren't personally responsible to spend the
majority of their time determining the difference instead of, you know,
maintaining the software.

It is absurd for you to claim that this is absurd.


> Projects that reject truthful security reports are putting their users at risk.


Correction: Linux Foundation stakeholders such as OpenAI, Anthropic,
Microsoft, Google, Facebook, NVIDIA, Oracle, etc. are putting GNOME (and
other project) users at risk.

I heard that the Linux Foundation has declared the danger of "AI
vulnerabilities" is so great that they are founding a group called
Akrites, devoted to coordinating security incident response. Members can
pay their dues in LLM compute credits. If projects don't fix their
software "fast enough", Akrites will declare themselves the "maintainer
of last resort" to publish a fixed version.


Yes, that's right, not "we will provide the fiscal support you've been
lacking for 20 years that resulted in you being so sick and tired of
slaving away for free that you declared Enough Is Enough and drew a
moral line in the sand about what constitutes harassment and bullying".

Instead, the Linux Foundation will fork your project and declare
themselves the new maintainers and "fix it without you".

Some projects are absolutely livid about this:

https://github.com/pkgconf/pkgconf/commit/e4049a7e2c3612bfb91ba715fa1352ba7566984f



# Organizations and agents: respect for maintainer autonomy

Humans and agents acting on behalf of a corporate project must
additionally respect the autonomy of the pkgconf maintainers.

The pkgconf maintainers decide what is merged, what is released, what is
supported, what is disclosed, and on what schedule. These decisions are
not subject to the priorities, deadlines, embargoes, or escalation paths
of any outside organization, consortium, or foundation, regardless of
who its members are or how critical it believes pkgconf to be.

Conduct that disrespects this autonomy includes, but is not limited to:

-   Asserting a disclosure deadline, embargo, or remediation timeline
    for pkgconf that the maintainers did not agree to.
-   Requiring the maintainers to accept confidentiality obligations as a
    condition of receiving a vulnerability report. Reports are welcome
    on the maintainers' terms; a report offered only under conditions
    the maintainers have not accepted is not a contribution, it is
    leverage.
-   Submitting machine-generated patches, reports, or issues at a volume
    or cadence that transfers the cost of review onto the maintainers,
    or continuing to do so after being asked to stop.
-   Escalating a maintainer decision to the maintainers' employer, to a
    downstream distributor, to a funder, or to the press in order to
    obtain a different outcome.
-   Characterizing pkgconf as unmaintained, abandoned, under-maintained,
    or in need of external stewardship, other than by the maintainers
    themselves.

Behavior that disrespects this autonomy will result in an
organization-wide ban: the organization the human or agent is acting on
behalf of will be banned from participation in its entirety, not merely
the individual human or agent involved. Where the actor is a consortium,
alliance, or foundation program, the ban extends to the program as a whole.


# "Maintainer of last resort"

pkgconf is actively maintained. Only the pkgconf maintainers are
competent to declare otherwise, and no such declaration has been made.

pkgconf is distributed under the ISC license, which permits anyone to
copy, modify, and redistribute the software, including as a fork.
Nothing in this document restricts that right, and forks made under a
distinct name are a legitimate exercise of it.

The license does not, however, convey the pkgconf name, nor the right to
speak for the pkgconf project or its authors. The following is
unwelcome, and carries the same consequence as any other failure to
respect maintainer autonomy:

-   Representing any person or organization as the maintainer, steward,
    or "maintainer of last resort" of pkgconf, whether generally or in
    response to a ban under this document.



-- 
Eli Schwartz


Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (237 bytes)
