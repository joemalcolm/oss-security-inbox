Received: (qmail 9452 invoked by uid 550); 18 Feb 2026 14:04:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9220 invoked from network); 18 Feb 2026 14:04:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=beckweb.net;
	s=kas202511021112; t=1771423454;
	bh=ISzSWMQL8j2IfLKRH8+NClQtcZJfwbgAheR5jFerTA8=;
	h=From:Subject:Date:To:From;
	b=Q/tp2iYvtT0+iF5TWAkc7RJtjiEUWYldp7WekMRU97VGdXef/eh6+EOhUU31Gpxdm
	 x+4G04hHVlgNOWqol0Uoe5hTNe02PNpQbTSJFuk5TJ+EdeXLi59V62SESI6iUpFTNz
	 blNJgwOh8dA20bLYrBkOehb3rSdcQBMc4C0/Ut1q7DCimnj/bLdWPbEZua+vbsHFKI
	 jO7YMtjlIOUwA+mQxKFZuBxB3Y8SkW4MSn+TiOm6VHXjAXtQ1NJDvKmPpUnu8Kadp6
	 bV8SPdhte0vRde7Oxs8mwRtS/s+jx9Gu5dIJe7r/9J/dIoK1xH5h0VIcm2L35RCxYR
	 1apXqu4O2lhmQ==
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81.1.3\))
Message-Id: <7CE8AD96-CC7D-4973-9C69-9558DC2D18D7@beckweb.net>
Date: Wed, 18 Feb 2026 15:04:04 +0100
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3826.700.81.1.3)
Subject: [oss-security] Multiple vulnerabilities in Jenkins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Jenkins 2.551
* Jenkins LTS 2.541.2


Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2026-02-18/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-3669 / CVE-2026-27099
Since Jenkins 2.483, the description of the reason why a node is offline
(the "offline cause") is defined as containing HTML and rendered as such.

Jenkins 2.550 and earlier, LTS 2.541.1 and earlier does not escape the
user-provided description of the "Mark temporarily offline" offline cause.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers with Agent/Configure or Agent/Disconnect
permission.


SECURITY-3658 / CVE-2026-27100
Jenkins 2.550 and earlier, LTS 2.541.1 and earlier accepts Run Parameter
values that refer to builds the user submitting the build does not have
access to. This allows attackers with Item/Build and Item/Configure
permission to obtain information about the existence of jobs, the existence
of builds, and if a specified build exists, its display name.



