Received: (qmail 11800 invoked by uid 550); 6 Jul 2023 22:23:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11752 invoked from network); 6 Jul 2023 22:23:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=netmeister.org;
	s=2023; t=1688682206;
	bh=lU6QI/n6xzW4eA48X1/WmKVyvOCQ3V6xz2egR2aYHic=;
	h=From:To:Subject:Content-Type:From:To:Subject;
	b=EBqKa2aA6bmCmf4J9ulD36Eb0dXd1W58HYDjhC2j2RG5eee/8lFh3FLTd1texwpDo
	 eiUXam5IB7buk7PFyQGAWzP2UJI9DdvUhGqlpm3S/AnUGT2JA9UTvXyOsDV5DCu5Kc
	 M1mythCI7zISJgS759Nr49QYQ278Z6+hVhc18sQw/h82JiNRrpnGoAqX/25l6ruie3
	 bEQ4OnnSjXE2mnubjl4njlN4BuZVCXYmurHlwpDrZC5fOV7KB/ExAS4nvt8R+uzUVG
	 MNMgSAhF+/3OJaiR60CNf09xHvNKbFW8mzliSekv47acfdKZhi3aWEddetHATmbdJd
	 0nkgsHPS1ndMA==
Date: Thu, 6 Jul 2023 18:23:25 -0400
From: Jan Schaumann <jschauma@netmeister.org>
To: oss-security@lists.openwall.com
Message-ID: <ZKc+3fA5yQVqHVTc@netmeister.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] CVE-2023-36459: mastodon: XSS through oEmbed preview cards

(I have no affiliation with the project, but posting
this here because it seems to me that increasingly
non-packaged / GitHub distributed projects tend not to
send out announcements here.)

https://github.com/mastodon/mastodon/security/advisories/GHSA-ccm4-vgcc-73hp

(This advisory describes an issue found by Cure53 as
part of an audit performed at Mozilla's request)

Using carefully crafted oEmbed data, an attacker can
bypass the HTML sanitization performed by Mastodon and
include arbitrary HTML in oEmbed preview cards.

Impact
This introduces a vector for Cross-site-scripting
(XSS) payloads that can be rendered in the user's
browser when a preview card for a malicious link is
clicked through.

CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:H/I:H/A:N

Severity: 9.3/10

CVE-2023-36459

Affected versions: >= 1.3
Patched versions:  4.1.3, 4.0.5, 3.5.9
