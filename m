Received: (qmail 13474 invoked by uid 550); 6 Jul 2023 22:29:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13395 invoked from network); 6 Jul 2023 22:29:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=netmeister.org;
	s=2023; t=1688682563;
	bh=0b7yAqEhcv5938gKqyEl09DYCC2aCCi/zAnIuR70kdw=;
	h=From:To:Subject:Content-Type:From:To:Subject;
	b=QgY7nqhBahJQ9w25GXheofdwvpvgxEABO9dFqLWPEYIANOuBmdmXyCYTKhC21cJ8b
	 stRejtCB760d14/Nk61ENwcn8Iuzz/fXaVhxw90h05zSpWQnDJxBVjNnK8I29la9ob
	 jdRkpq0OZSgBNTjAwajBFy2rlKCd3HXrA5uxr/jJDgrbyr77GnI2oTZ5aCMyxsoZe9
	 EA3/AKvjgn8xcGNlYZUUQYB6BB6Ny+7iuKPp9c8pLau0iTXcB1eF8BQxhs+bnbQL6V
	 HkG+n220XJKBEpx1LwiYvzUIAp1epQtW71QeAQYLOQzmUSn8bEWOdWxtJUKTkqZ5HA
	 NAZg/fqvoi1cA==
Date: Thu, 6 Jul 2023 18:29:23 -0400
From: Jan Schaumann <jschauma@netmeister.org>
To: oss-security@lists.openwall.com
Message-ID: <ZKdAQ6UhSQTuX83d@netmeister.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] CVE-2023-36461: mastodon: Denial of Service through slow HTTP
 responses

(I have no affiliation with the project, but posting
this here because it seems to me that increasingly
non-packaged / GitHub distributed projects tend not to
send out announcements here.)

https://github.com/mastodon/mastodon/security/advisories/GHSA-9pxv-6qvf-pjwc

(This advisory describes an issue found by Cure53 as
part of an audit performed at Mozilla's request)

When performing outgoing HTTP queries, Mastodon sets a
timeout on individual read operations, but a malicious
server can indefinitely extend the duration of the
response through slowloris-type attacks.

Impact
This vulnerability can be used to keep all Mastodon
workers busy for an extended duration of time, leading
to the server becoming unresponsive.

CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H

Severity: 7.5/10

CVE-2023-36461

Affected versions: all
Patched versions:  4.1.3, 4.0.5, 3.5.9
