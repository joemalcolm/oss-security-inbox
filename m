Received: (qmail 22443 invoked by uid 550); 9 Mar 2026 17:11:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22405 invoked from network); 9 Mar 2026 17:11:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=notcom.org;
	s=jk; h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:Cc
	:Content-Transfer-Encoding:Content-ID:Content-Description:In-Reply-To:
	References; bh=2zlVed7kFA+CPSDYm1IJ3Z75874xRyZ4u29tkKhZIC4=;
	i=b49a205f73f09af5fde31f6781a721d6b26ace42@notcom.org; t=1773076301;
	x=1773724301; b=kQYzo/Y1D/slIdmnwQi7W4DBlkQd+wu5FKgI2/2Y3cdZv352Iu1Xooe4BLyT+
	hX951UW4hRq1BnE4dESEuiwkweszKx3pTirkJqQRnkvnn0wKhkTgznmQ7A5au4kaZwRfdxQ4B/XNo
	hhY17Mi6osRjNlnVNrOY6auDoHw9MY2Uyp8FfbKohMtCGbeKMmIADC7r7fGUDAcR8lKHFBkOqlbS1
	bkXE7xf0rsrikmm8xJ+XaxEtLQ9GCzZbdDbX7nYwOgtLMc5ToSWiFRfVd+sJzOr6ajw6d8b8Dop8X
	5gZtx86/fcvznsem+j3XA0ZyKP9kanbR9Pd30hgbqCurViCxsA==;
Date: Mon, 9 Mar 2026 19:11:23 +0200
From: Valtteri Vuorikoski <vuori@notcom.org>
To: oss-security@lists.openwall.com
Message-ID: <aa71zt-Fyv6m18oK@donburi.himad.notcom.org>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20251211-3-1d6324
Subject: [oss-security] CVE-2026-28431+more: Misskey/Sharkey "extremely severe"
 vulnerabilities

Misskey and Sharkey, ActivityPub-based social network services (similar to
Mastodon), have released updates to patch vulnerabilities Sharkey maintainers
describe as "extremely severe".

Updated versions are 2026.3.1
<https://github.com/misskey-dev/misskey/releases/tag/2026.3.1> and 2025.4.6
<https://activitypub.software/TransFem-org/Sharkey/-/releases/2025.4.6>
respectively. Sharkey is a fork of Misskey, so some of the vulnerabilities are
shared, but Sharkey developers have not provided any details so it is not clear
which ones. They have promised to publish details "at a future date" (see the
release page above).

Misskey has detailed the following vulnerabilities, summarized from the detailed
advisories:

  * CVE-2026-28431: multiple information disclosure vulnerabilities due to missing permission
  checks (multiple severities, highest is CVSSv4 9.2). Advisories:
  <https://github.com/misskey-dev/misskey/security/advisories/GHSA-r33c-qg3g-v9cr>
  <https://github.com/misskey-dev/misskey/security/advisories/GHSA-cvf3-p7p2-27fh>
  <https://github.com/misskey-dev/misskey/security/advisories/GHSA-gg7j-c76w-8x3g>

  * CVE-2026-28432: authentication bypass in ActivityPub federation (7.1). Advisory:
  <https://github.com/misskey-dev/misskey/security/advisories/GHSA-grwc-c762-gcvp>

  * CVE-2026-28433: authorization bypass in user data import (2.3). Advisory:
  <https://github.com/misskey-dev/misskey/security/advisories/GHSA-g6hj-33h7-6fq8>

Sharkey announcement from two days ago advising server administrators of the
upcoming release, but providing no concrete details:
<https://sharkey.team/notes/ajka8rybkjf80061>

 -Valtteri
 
