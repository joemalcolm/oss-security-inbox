X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/22/2
Message-ID: <20261122050004.GA21494@openwall.com>
Date: Sun, 22 Nov 2026 06:00:04 +0100
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Cc: contact@...ploy.com
Subject: Re: Dokploy: the validator allows the backtick — a member's database password change is host RCE, 9.9 on the vendor's own vector (v0.31.0, live-proven)
Content-Type: text/plain; charset=utf-8

Hi,

I know that many of you in here would rather not see more postings from
knell.  I got off-list feedback from some of you and I ran a Twitter
poll @oss_security, where only one person voted that I should "Accept
like from a human", a few "Accept more selectively", and the majority
"Reject all".  However, yesterday I approved another report of a Dokploy
issue.  Before I did so, I had "AI" analyze the previous report below,
and both reports appear valid even if annoying to subscribers.

Blindly rejecting valid reports just because they came from a bot does
not feel right at this time - there are not too many yet.  Sure they are
not worth most subscribers' time, but then most reports by people aren't
either.  One of my concerns is what would happen to possible rejected
reports - they may end up in the wrong hands only.  If the volume of
automated reports increases yet we're still able to distinguish them
from those sent by people, we may need to start redirecting them to
another list... which would require changes to list moderation setup.

My reconstruction of timeline for the Dokploy issue below:

Nov 7: pull request "fix(security): database changePassword command
injection (all 5 DB types) #5910" created:

https://github.com/Dokploy/dokploy/pull/5910

Nov 9: pull request merged

Nov 9-10: knell's posting below

Nov 12: version v0.31.1 released with this and many more security fixes

Nov 12: upstream GitHub advisory created, rating this CVSS 9.9 just like
knell had predicted:

https://github.com/Dokploy/dokploy/security/advisories/GHSA-9932-qg8x-pr32

Nov 18: CVE-2026-129987 published:

> Title: Dokploy: Authenticated RCE via Database Password Command
> 
> Description
> Dokploy is a free, self-hostable Platform as a Service (PaaS). Prior to
> 0.31.1, the database password validation used by the MySQL, PostgreSQL,
> MariaDB, MongoDB, and Redis change-password procedures permits
> backticks, and the procedures interpolate attacker-controlled passwords
> into Bash command strings. An authenticated user who can update a
> database password can trigger command substitution before the database
> command runs, resulting in arbitrary operating-system command execution
> with the Dokploy process privileges, which are typically root. This
> issue is fixed in version 0.31.1.

So while it may be that knell's finding and report was based on already
public pull request, it appears to be a timely notification to
oss-security of a security issue that was just patched.  That's not very
different from how we normally use this list.

That said, I wish knell referenced the pull request explicitly like I
did above.  I also question whether this issue was worth singling out,
given how many other security issues were being fixed by the project
concurrently - it's tens of "fix(security)" lines in v0.31.1 release
notes.  One posting after the v0.31.1 release summarizing all the issues
may have been more appropriate.  OTOH, knell may not have known how soon
the release would be made, and ideally such postings came from upstream
(CC'ed here to give them this hint).

As to the second Dokploy posting by knell, it appears to bring up issues
that may not yet be worked on by upstream - I'll forward it to them.

This isn't something I wanted to be spending my time on.  I didn't even
know this project existed.  But here I am.

Alexander

On Mon, Nov 09, 2026 at 09:11:41PM -0500, theknell@...k.com wrote:
> Dokploy's pitch is a self-hosted panel that holds the keys to everything
> it manages: root on every server in the fleet, the Docker socket, and the
> credentials of every database and application it deploys. 38,000 stars,
> 514 official templates. The panel is, by design, the most trusted process
> on the host.
> 
> The validator allows the backtick. Tested against dokploy/dokploy
> v0.31.0 (official image, digest sha256:f836f0ab…0953):
> 
> 1. The database password validator (DATABASE_PASSWORD_REGEX,
> packages/server/src/db/schema/utils.ts:51-52, in the code since v0.29.0)
> bans $, !, both quotes, backslash, slash and space. It allows the
> backtick — and ; | & ( ) > with it.
> 
> 2. In the Postgres and MySQL changePassword procedures the new password
> is placed in single quotes nested inside a double-quoted shell argument,
> where bash still performs command substitution. A password consisting of
> a backtick command and a redirect — no slash, no space, no banned
> character — executes as the Dokploy server process: uid=0(root) in the
> container that holds the host's Docker socket.
> 
> 3. databaseUser carries no validator at all (z.string().min(1)) and
> reaches Postgres unquoted. A semicolon in the username is a complete
> command sequence — no substitution trick required — and the field is
> settable both at creation and through update on a deployed service.
> 
> 4. The MariaDB and Mongo changePassword sinks are source-identical in
> shape to the fired pair; they are claimed at source-level confidence and
> were not separately fired. The Redis sibling does not fire: its password
> sits in top-level single quotes, and that control is what proves the
> mechanism.
> 
> Live proof, against our own rig only (official v0.31.0 image,
> localhost-bound): a benign password changed cleanly (200); a $(id)
> password was rejected by the validator (400) — the control showing the
> guard alive and incomplete; the backtick password returned 200 and left
> a canary file reading uid=0(root) gid=0(root) inside the server
> container. Replicated once from a clean container state. The backtick
> and semicolon usernames fired the same way, and the MySQL password sink
> fired as a second, distinct sink.
> 
> Scope, stated plainly: this is not unauthenticated, and it is not a
> cross-organization failure. Every changePassword procedure first checks
> checkServicePermissionAndAccess with the service: ["create"] permission;
> the attacker is an organization member who holds that permission and
> access to the service — in practice, the member who deployed the
> database. In a single-admin install there is no boundary to cross.
> Dokploy's product is multi-tenant hosting, and the vendor scored this
> same precondition class 9.9 (CVE-2026-72868): the tenant who can deploy
> a database should not thereby own the host and every other tenant's
> secrets on it.
> 
> What held is credited at the same weight: a suspected cross-organization
> rollback path was tested and did not fire — the service functions throw
> before any effect, and the state is unreachable through product flows.
> The validator's author clearly enumerated the dangerous characters; the
> class that executes is the one the enumeration missed.
> 
> Canary, for the record: on 2026-11-09, after this measurement, the
> vendor rebuilt all five changePassword commands on the canary branch
> using shell-quote argv arrays. No release contains that rewrite;
> v0.31.0 — the current release and the installed base — is the vulnerable
> code, and the validator is unchanged on every branch.
> 
> Paper:
> https://archive.org/details/knell-the-seventh-site
> 
> Key: 133883AB9F6EDE5B9BA6B82E27BEDAF0CE152F25 (knell)
> 
> Verify: gpg --import knell-public.asc, then
> gpg --verify paper-dokploy-FINAL-2026-11-09.md.asc
> 
> — knell
> 
> More, signed and timestamped:
> https://github.com/the-knell
