Received: (qmail 31798 invoked by uid 550); 27 Dec 2025 13:50:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 31767 invoked from network); 27 Dec 2025 13:50:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=notcom.org;
	s=jk; h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:In-Reply-To:
	References; bh=h5GkJR1tIFNIbl5mX6Tw+0YWneUh0RCthALcYBrTMC4=;
	i=b49a205f73f09af5fde31f6781a721d6b26ace42@notcom.org; t=1766843420;
	x=1767491420; b=HxlSApxkC9P+UX37dbtF02WadS6gQ6ANq3lfNFtnuF5/VJn/YNDbbynsy4TK/
	16RKMufEbBed1wscykBQT/3Ua4X82hgpDVU7a6Px65OKyn3/ksrLoCeXtjQ0E71rfw1CUuetfq/n5
	NKq9bDxDhif3/WvycOWQu0WtlmMXVOnp9ompN9B4vKIRtOYmmZHeMMX0fO17tkxD7siXfBCShG3cN
	vRYERAZaAmRlm+WocREGTT4ekgAfB+KAqm+FXLoSMEJ+YOj5LtTx4VYbnrciimNpxAodV3Y+q8tu9
	xt9DD7liUCG3wIJXMjbFmrxqbTP1Lhbb/BxdnEcDZL5vPBsz9A==;
Date: Sat, 27 Dec 2025 15:49:59 +0200
From: Valtteri Vuorikoski <vuori@notcom.org>
To: oss-security@lists.openwall.com
Message-ID: <aU_eCJDHaVTiFkal@donburi.himad.notcom.org>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: NeoMutt/20251211-3-1d6324
Subject: [oss-security] CVE-2025-68460/CVE-2025-68461: Roundcube XSS + I-D prior to
 1.5.12/1.6.12

Roundcube, a PHP-based webmail frontend, released a series of security updates
on Dec 12. From the release announcement:

 * Fix Cross-Site-Scripting vulnerability via SVG’s animate tag reported by
   Valentin T., CrowdStrike.
 
 * Fix Information Disclosure vulnerability in the HTML style sanitizer reported
   by somerandomdev.

There are fixed in the newly-released versions 1.5.12 and 1.6.12. While not
mentioned in the official annoucement, these appear to be CVE-2025-68461 (7.2)
and CVE-2025-68460 (7.2) respectively.

Additionally a new 1.7 series (currently in beta) prerelease 1.7rc2 was
announced fixing the same issues.

Full announcements:
https://roundcube.net/news/2025/12/13/security-updates-1.6.12-and-1.5.12
https://roundcube.net/news/2025/12/15/roundcube-1.7-rc2-released

 -Valtteri
 
