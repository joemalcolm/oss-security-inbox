Received: (qmail 1390 invoked by uid 550); 6 Jul 2023 22:22:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1369 invoked from network); 6 Jul 2023 22:22:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=netmeister.org;
	s=2023; t=1688682119;
	bh=rEpGi5DcD9I/68b+Ew+R7Sp/TfYJJXCRUy7o78Enu5M=;
	h=From:To:Subject:Content-Type:From:To:Subject;
	b=AxyShG8N2BtwdulJ4eP4dD8SVYC4fCvCAlkCMTB8qyif/zZfQQHRmd/+PzY+i08Xd
	 ZSaKG6B6HLarvFy/L8VF5IdDgwvSwgtptgk4v69A8J207qnywawtbOxuPx7ffmzw73
	 inLk/qKhO6JBdHtsAw5z67kt0mTMz8/Ie8argZoHL8oHi77LfvVpe3qXN734qHSp8/
	 br12KMA9F1PtS5b2WReSkcUzUWYtUgAHMmcnX4cd8nWoRcQWGUwuUA6FWMVZOUFeP8
	 i6nWae0XVPaRkQQK+pD6xhcoYbMTqrwrYhaVbMJSwEeL5Z5KqCD35Hu1uOb0Ata6XW
	 r56T4l9gme/AA==
Date: Thu, 6 Jul 2023 18:21:59 -0400
From: Jan Schaumann <jschauma@netmeister.org>
To: oss-security@lists.openwall.com
Message-ID: <ZKc+hwsLvLmZeYZB@netmeister.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] CVE-2023-36460: mastodon: Arbitrary file creation through media
 attachments

(I have no affiliation with the project, but posting
this here because it seems to me that increasingly
non-packaged / GitHub distributed projects tend not to
send out announcements here.)

https://github.com/mastodon/mastodon/security/advisories/GHSA-9928-3cp5-93fm

(This advisory describes an issue found by Cure53 as
part of an audit performed at Mozilla's request)

Using carefully crafted media files, attackers can
cause Mastodon's media processing code to create
arbitrary files at any location.

Impact
This allows attackers to create and overwrite any file
Mastodon has access to, allowing Denial of Service and
arbitrary Remote Code Execution.

CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:C/C:H/I:H/A:H

Severity: 9.9/10

CVE-2023-36460

Affected versions: >= 3.5.0
Patched versions:  4.1.3, 4.0.5, 3.5.9
