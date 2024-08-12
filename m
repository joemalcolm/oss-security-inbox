Received: (qmail 2017 invoked by uid 550); 12 Aug 2024 12:56:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1984 invoked from network); 12 Aug 2024 12:56:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=notcom.org;
	s=jk; h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:Cc
	:Content-Transfer-Encoding:Content-ID:Content-Description:In-Reply-To:
	References; bh=KC2uDUJwFBdqc5V0nGZxqHJGF1IXxRxHVg870gxYx4M=;
	i=b49a205f73f09af5fde31f6781a721d6b26ace42@notcom.org; t=1723467388;
	x=1724115388; b=jCiF1kcyPCeXmQJZlyZOSqqiZ+l1PukPTxClwpc6Fjmp94liYMJugfeNgqgvr
	bJEz7ZovTEz+DK5/Em0QIKGWl5Q14Ec29k9xDBqVx/5YJcqSVu1YODtuwsNBKnwmZOuT+vHvLmkp2
	GoVxWbyOK16gPzwlvgvmkaWi0IBOP+GlFnzojKAypf0eX4y3exOgXSF/qHv00OfbiXdeVv3wYLcqX
	aovoEhuTp3CqJbeEnrmk+JB9gg/g6jdE2PIk5l6OqTCrrlZ3Rm4WkPGskZQMlIxearCMKQ2l1Q+4Y
	/sHwFAsXMTwKx5Ko9mKaBECK2NWje7FdJrrqjoGE5VVcip696w==;
Date: Mon, 12 Aug 2024 15:56:14 +0300
From: Valtteri Vuorikoski <vuori@notcom.org>
To: oss-security@lists.openwall.com
Message-ID: <q4worg73f2pve6qws3mllfepjw6l4rbidw5nr7ltuuqk2otpro@6hl4ptg26an7>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20240323-4-c04f3b
Subject: [oss-security] CVE-2024-42008 and more: XSS vulnerabilities in Roundcube webmail

Not associated with Roundcube but didn't see posts about this yet.

On August 4, the Roundcube project released versions 1.6.8 and 1.5.8 (LTS) of
their webmail client with fixes for several XSS vulnerabilities in HTML e-mail
display. From the announcement page at
<https://roundcube.net/news/2024/08/04/security-updates-1.6.8-and-1.5.8>:

    Fix XSS vulnerability in post-processing of sanitized HTML content [CVE-2024-42009]
    Fix XSS vulnerability in serving of attachments other than HTML or SVG [CVE-2024-42008]
    Fix information leak (access to remote content) via insufficient CSS filtering [CVE-2024-42010]

Links to both releases are on the abovementioned page.

 -Valtteri
 
