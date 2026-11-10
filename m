X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/10/2
Message-ID: <87D0755C-FDB6-4698-8665-F790D61D70D2.1@smtp-inbound1.duck.com>
Date: Mon, 09 Nov 2026 21:11:41 -0500
From: theknell@...k.com
To: oss-security@...ts.openwall.com
Subject: Dokploy: the validator allows the backtick — a member's database password change is host RCE, 9.9 on the vendor's own vector (v0.31.0, live-proven)
Content-Type: text/plain; charset=utf-8

Dokploy's pitch is a self-hosted panel that holds the keys to everything
it manages: root on every server in the fleet, the Docker socket, and the
credentials of every database and application it deploys. 38,000 stars,
514 official templates. The panel is, by design, the most trusted process
on the host.

The validator allows the backtick. Tested against dokploy/dokploy
v0.31.0 (official image, digest sha256:f836f0ab…0953):

1. The database password validator (DATABASE_PASSWORD_REGEX,
packages/server/src/db/schema/utils.ts:51-52, in the code since v0.29.0)
bans $, !, both quotes, backslash, slash and space. It allows the
backtick — and ; | & ( ) > with it.

2. In the Postgres and MySQL changePassword procedures the new password
is placed in single quotes nested inside a double-quoted shell argument,
where bash still performs command substitution. A password consisting of
a backtick command and a redirect — no slash, no space, no banned
character — executes as the Dokploy server process: uid=0(root) in the
container that holds the host's Docker socket.

3. databaseUser carries no validator at all (z.string().min(1)) and
reaches Postgres unquoted. A semicolon in the username is a complete
command sequence — no substitution trick required — and the field is
settable both at creation and through update on a deployed service.

4. The MariaDB and Mongo changePassword sinks are source-identical in
shape to the fired pair; they are claimed at source-level confidence and
were not separately fired. The Redis sibling does not fire: its password
sits in top-level single quotes, and that control is what proves the
mechanism.

Live proof, against our own rig only (official v0.31.0 image,
localhost-bound): a benign password changed cleanly (200); a $(id)
password was rejected by the validator (400) — the control showing the
guard alive and incomplete; the backtick password returned 200 and left
a canary file reading uid=0(root) gid=0(root) inside the server
container. Replicated once from a clean container state. The backtick
and semicolon usernames fired the same way, and the MySQL password sink
fired as a second, distinct sink.

Scope, stated plainly: this is not unauthenticated, and it is not a
cross-organization failure. Every changePassword procedure first checks
checkServicePermissionAndAccess with the service: ["create"] permission;
the attacker is an organization member who holds that permission and
access to the service — in practice, the member who deployed the
database. In a single-admin install there is no boundary to cross.
Dokploy's product is multi-tenant hosting, and the vendor scored this
same precondition class 9.9 (CVE-2026-72868): the tenant who can deploy
a database should not thereby own the host and every other tenant's
secrets on it.

What held is credited at the same weight: a suspected cross-organization
rollback path was tested and did not fire — the service functions throw
before any effect, and the state is unreachable through product flows.
The validator's author clearly enumerated the dangerous characters; the
class that executes is the one the enumeration missed.

Canary, for the record: on 2026-11-09, after this measurement, the
vendor rebuilt all five changePassword commands on the canary branch
using shell-quote argv arrays. No release contains that rewrite;
v0.31.0 — the current release and the installed base — is the vulnerable
code, and the validator is unchanged on every branch.

Paper:
https://archive.org/details/knell-the-seventh-site

Key: 133883AB9F6EDE5B9BA6B82E27BEDAF0CE152F25 (knell)

Verify: gpg --import knell-public.asc, then
gpg --verify paper-dokploy-FINAL-2026-11-09.md.asc

— knell

More, signed and timestamped:
https://github.com/the-knell
