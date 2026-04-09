Received: (qmail 28250 invoked by uid 550); 9 Apr 2026 15:26:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23849 invoked from network); 9 Apr 2026 06:11:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=q8p9PohkszMGWvPveWzOO2gBCA2n2PoJUEv9e/K4myg=; b=rFBoBIE6PQrAqMIaqu9BakvKEh
	xqjlG5F4hWVbj8k0il9IYLWw304B7sJZA/qJinJuMfKMTvkyYIZ1IdBBblbnnfsN4A9jDn4rulsx4
	AdKGRi11LP/dIDGwJFcy95EP5K5JWNvwwBaMyggySH+on3yhUvsLmvsTyB4SwONsvwStbcFJdYxJN
	724lt1Hfqf4zx1iSm4tJBPAxH2K1uByk4syaGJOfsj2fwEPYFY60k7tl1px0JBqWvagEaeACqGOQB
	QvEpQnZiQo53z1hJjkbP6O9ej8ZQ2Mti5ID8G5aViXAY07ahF/S0OpecnJrP5w1if3Hl16orpxJlm
	RhdINneA==;
Date: Thu, 9 Apr 2026 08:11:03 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Cc: adrelanos@whonix.org, arraybolt3@gmail.com
Message-ID: <addC9yTFAPYQnzpi@eldamar.lan>
References: <20260407200906.14b9bcc0@riseup.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260407200906.14b9bcc0@riseup.net>
X-Debian-User: carnil
Subject: Re: [oss-security] systemd-journald in systemd 259 does not escape
 characters in emerg messages that are wall'd to other user's terminals

Hi Aaron,

On Tue, Apr 07, 2026 at 08:09:06PM -0400, Aaron Rainbolt wrote:
[...]
> I discovered this while doing work for the Kicksecure and Whonix
> projects. This bug was reported privately to upstream on December 23,
> 2025. As per Kicksecure's Vulnerability Disclosure Policy [1], we're
> disclosing it publicly on April 7, 2026, 90 days + a 14-day grace
> period later. An upstream bug report can be seen at [2].

JFYI, the reference to the issue: It currently say: "This issue has been
deleted.". Is the issue reference correct, was it really deleted or is
there a typo?

Regards,
Salvatore
