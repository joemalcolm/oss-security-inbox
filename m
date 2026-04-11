Received: (qmail 13377 invoked by uid 550); 11 Apr 2026 12:38:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13347 invoked from network); 11 Apr 2026 12:38:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=notcom.org;
	s=jk; h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:Cc
	:Content-Transfer-Encoding:Content-ID:Content-Description:In-Reply-To:
	References; bh=2GRRMm3EnKHInanP12oq7MPO/Ibc4xKD+KAaFBVzmhY=;
	i=b49a205f73f09af5fde31f6781a721d6b26ace42@notcom.org; t=1775911093;
	x=1776559093; b=F3RUz7/g0aquHdqrq0z65MkfzTLQ3XNynPN12/OMAiQhLtYUvT4cLe3ldFwMG
	D+MgohehNPXULrNVuy2geo0W6iMLMRNbBOZzRKE/DMwnLptqyRLFXw3AWXRXujSTbJh/UNHyckYT1
	Yy/lWTeHVYJM+iQ3yh1g5L2yIe/kN5U/KkpIuGpckJDKGjnv2kzMUSoi/NpLYvnc5OJB0KWZyEMvQ
	yOw5hQ52sWUr2rPh2dH9qnZbU8YC8LrKPFZXu4TzIca0824mo2+uSQwvhPermtWKL5GIG7YAstu2K
	YwEm5Sl9vawez7oIQ3eikSh2wnwcnddpjWPE8FyTcZGjE3JHPw==;
Date: Sat, 11 Apr 2026 15:37:55 +0300
From: Valtteri Vuorikoski <vuori@notcom.org>
To: oss-security@lists.openwall.com
Message-ID: <ado-k2ivxft6BukD@donburi.himad.notcom.org>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20251211-3-1d6324
Subject: [oss-security] CVE-2026-35537+more: Roundcube arbitrary write + ID/XSS/etc. prior
 to 1.6.14

Roundcube, a webmail frontend, released versions 1.5.14 and 1.6.14 on March 18
with fixes to a multitude of vulnerabilities. The 1.7 pre-releases are also
affected.

From the release announcement <https://roundcube.net/news/2026/03/18/security-updates-1.7-rc5-1.6.14-1.5.14>:

    * Fix pre-auth arbitrary file write via unsafe deserialization in
    redis/memcache session handler, reported by y0us.
    
    * Fix bug where a password could get changed without providing the old
    password, reported by flydragon777.
    
    * Fix IMAP Injection + CSRF bypass in mail search, reported by Martila
    Security Research Team.
    
    * Fix remote image blocking bypass via various SVG animate attributes,
    reported by nullcathedral.
    
    * Fix remote image blocking bypass via a crafted body background attribute,
    reported by nullcathedral.
    
    * Fix fixed position mitigation bypass via use of !important, reported by
    nullcathedral.
    
    * Fix XSS issue in a HTML attachment preview, reported by aikido_security.
    
    * Fix SSRF + Information Disclosure via stylesheet links to a local network
    hosts, reported by Georgios Tsimpidas (aka Frey), Security Researcher at
    https://i0.rs/.

The file write is apparently CVE-2026-35537. Roundcube still does not provide
CVE numbers in their official announcements, interested parties can look them
up for the rest for example at the Debian security tracker
<https://security-tracker.debian.org/tracker/source-package/roundcube>.

 -Valtteri
 
