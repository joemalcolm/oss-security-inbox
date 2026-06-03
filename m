Received: (qmail 22439 invoked by uid 550); 3 Jun 2026 18:55:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3159 invoked from network); 3 Jun 2026 18:08:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=notcom.org;
	s=jk; h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:Cc
	:Content-Transfer-Encoding:Content-ID:Content-Description:In-Reply-To:
	References; bh=7UYJbgHLLzlW6l7hc6MfRyxcdvcBOAE3j8e4hnbvAHk=;
	i=b49a205f73f09af5fde31f6781a721d6b26ace42@notcom.org; t=1780510108;
	x=1781158108; b=RIvOm1VtKX84EZJ23UagZt2dGDLKAHMFM3zczqlX64Gre7zmv0qelc29BY/EU
	L+8anDIOYPLt1WaqEi8QAiXV8Vmrx4eTgusqT14ol10qfrYoU2bFTuDVuaTBbDm4MI7CKSlWYRZXk
	458bkcqjMGLcq8BJCv4S/vXl2dT7R05aioFFN4y7MfXbCBPn18sNBYQPUrZq7T1tuSv8eU0zmKrTN
	GgNzjW00RGFKrzAfhpdxxGST8GIL88a6IHI1B7ycUqIizEnjfN3dlX24KYZPPoB36FmZ2ecKLGxAc
	g3oE1eDJkoi6nYgVgnD68q4xnoZDM1XY4d8VtSFvCRZlxnaAgQ==;
Date: Wed, 3 Jun 2026 21:08:07 +0300
From: Valtteri Vuorikoski <vuori@notcom.org>
To: oss-security@lists.openwall.com
Message-ID: <aiBrH_PyoInfBtJj@donburi.himad.notcom.org>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20251211-3-1d6324
Subject: [oss-security] CVE-2026-48842+more: Roundcube numerous vulnerabilities prior to
 1.6.16/1.7.1

Roundcube, a webmail frontend, released versions 1.6.16 and 1.7.1 on May 24 that
fix a variety of vulnerabilities. From the announcement
<https://roundcube.net/news/2026/05/24/security-updates-1.6.16-and-1.7.1>:

  * Fix stored XSS/HTML/CSS injection in subject field of the draft restore
    dialog, reported by zazy
  
  * Fix CSS injection bypass in HTML sanitizer via SVG <animate
    attributeName="style">, reported by wooseokdotkim
  
  * Fix pre-auth SQL injection in virtuser_query plugin via preg_replace
    backslash escape bypass, reported by skull
  
  * Fix SSRF bypass via specific local address URLs
  
  * Fix local/private URL fetch bypass when remote resources were not allowed,
    reported by Orange Cyberdefense Vulnerability Disclosure Team
  
  * Fix bypass of remote image blocking via CSS var(), reported by Geame
  
  * Fix pre-auth arbitrary file delete via redis/memcache session poisoning
    bypass, reported by valent1
  
  * Fix code injection vulnerability - remove support for code evaluation in
    LDAP autovalues option, reported by Glendaenri 
  
As usual, CVE numbers are not provided in the announcement. See for example
<https://security-tracker.debian.org/tracker/source-package/roundcube> for a
list if interested.

Support for the 1.5 LTS branch has ended, so presumably it is and will remain
vulnerable to some or all of these.

 -Valtteri
 
