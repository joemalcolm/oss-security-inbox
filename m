X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/26/17
Message-ID: <at-WUEujAaVJn1zM@kitenet.net>
Date: Mon, 26 Oct 2026 14:05:04 -0400
From: Joey Hess <id@...yh.name>
To: oss-security@...ts.openwall.com
Cc: Sean Whitton <spwhitton@...hitton.name>
Subject: CVE-2026-112818: git-annex cross-repository data exfiltration
Content-Type: text/plain; charset=utf-8

I have released git-annex 10.20261026, which fixes a cross-repository
data exfiltration attack.

https://git-annex.branchable.com/download/

There are also backported patches for several past versions available
as branches in the git repository:
	CVE-2026-112818-patch-10.20250416
	CVE-2026-112818-patch-10.20251029
	CVE-2026-112818-patch-10.20261006

https://git-annex.branchable.com/security/cross_repository_data_exfiltration_via_special_remote/

To perform these attacks, the attacker needs to have control over one of
the remotes of the victim's git-annex repository. For example, they may
provide a git-annex repository that the victim clones. 

The attacker also needs to have a certian amount of information about the
victim's private repository that they have obtained in some way. For
example, the victim may have published a git repository but be keeping the
annexed files private.

In the simplest form of the attack, the attacker provides a git-annex
repository that includes in its tree annexed files that the attacker knows
are present in the victim's private git-annex repository. When git-annex is
initialized in the victim's clone, git-annex autoenables a special remote
that the attacker has configured to access the victim's private git-annex
repository. When the victim runs a command such as `git-annex sync
--content`, their private files are retrieved from the special remote and
sent to the attacker.

In another form of the attack, autoenable of special remotes is not needed.
Instead, the attacker provides a special remote (eg a S3 bucket) along with
their git-annex repository. The attacker waits for the victim to clone the
repository and manually enable and use their special remote. Then they
update the configuration of the special remote, retargeting it to access
the victim's own special remote (eg the victim's private S3 bucket). When
the victim runs a command such as `git-annex sync --content`, their private
files are retrieved from their special remote and sent to the attacker.

A third form of the attack only requires that the attacker knows the
location of the victim's private git repository. The attacker provides a
git-annex repository that the victim clones. When git-annex is initialized
in the victim's clone, it autoenables a git remote pointing to the victim's
private git repository. The first time the victim runs a command such as
`git-annex sync --content`, the attacker learns what git-annex keys are
used by annexed files in the private git repository, and adds them to the
tree. The second time the victim runs such a command, their private files
are retrieved from their private git repository and sent to the attacker.

Download attachment "signature.asc" of type "application/pgp-signature" (834 bytes)
