Received: (qmail 14253 invoked by uid 550); 10 Apr 2026 23:22:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14225 invoked from network); 10 Apr 2026 23:22:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:Content-Type:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=d7OhwpxJOY01lXMUyfYQsQw8zaM2jxdftErL9xqRiAM=; b=PjpBWv1KJ0aeSqba/Cv9ohE5+z
	5sycl9aSNyz9FabgAHcnFRfzn1fyeoBcEnFoi1cbSVAb8n3t1DwtXBsAVJNsjwocG+2XVcJqdkjtN
	/bvmjvpdToQz3empkOTXKoPEO1udNuVkp0T5w3kMqcOxN9LyftLsBOEqgaHvD+gQ8Dr7GZ2q6q83O
	RSo7EKd1BJEKRHgWFJev6Y0fv876WmiMPIjTZBlbrRl2zROyzkL5XyBzo6ao48pbhH0HUxrnzCiEU
	eyJngHYxgUeNDAZWd5rp0KNCc+A5byGWqvA1q9IjVzcZRIJG2LLtPsW6btGWLYfgR9zp+Xq8bwQKL
	MpJakJrQ==;
Date: Sat, 11 Apr 2026 00:22:41 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <admGQUalTr1TtMJt@definition.pseudorandom.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
X-Debian-User: smcv
Subject: [oss-security] xdg-dbus-proxy CVE-2026-34080: Eavesdrop filter
 bypass allows message interception

https://github.com/flatpak/xdg-dbus-proxy/security/advisories/GHSA-vjp5-hjfm-7677

Codean Labs reported that a D-Bus match rule parsing bug in 
xdg-dbus-proxy allows bypassing the proxy's eavesdropping restrictions. 
In practice xdg-dbus-proxy is mainly used by Flatpak, so a typical 
attacker would be a malicious or compromised Flatpak app.

The impact is that clients can read D-Bus messages on the session bus 
that they should not have had access to. This is fixed in xdg-dbus-proxy 
0.1.7.
