X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1713" "Tuesday" "28" "February" "2017" "05:08:06" "-0600" "php-dev@coydogsoftware.net" "php-dev@coydogsoftware.net" "<20170228110806.GA541@sliver.coydogsoftware.net>" "44" "[oss-security] Re: CVE Request: PHP with Zend OPCache code permission/sensitive data protection vulnerability" nil nil nil "2" "2017022811:08:06" "[oss-security] Re: CVE Request: PHP with Zend OPCache code permission/sensitive data protection vulnerability" (number mark "U       php-dev@coyd Feb 28   44/1713  " thread-indent "\"[oss-security] Re: CVE Request: PHP with Zend OPCache code permission/sensitive data protection vulnerability\"\n") "<20170227225258.GA13043@sliver.coydogsoftware.net>" ("<20170227225258.GA13043@sliver.coydogsoftware.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10042 invoked by uid 550); 28 Feb 2017 11:26:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32170 invoked from network); 28 Feb 2017 11:08:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=coydogsoftware.net; s=default; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	 bh=RvNC3emYo5chjuLhy1eNFrVEmwSO5HwGP5ChDeM5q/Y=; b=pk35ufyaDHR8tMrpDinQZLxRK
	rBI/QN0nn7+qfxXdn9HyT7en68ej22isFxmVaNM/jmO7E4bgXgw9rKln87F/r+We3us8gxBoE+LVD
	1YNSjJxeD+/MykLrbr4KqUi5Yy+sWRmCLOi/VN7pAlnVKFhIgqkPQaRrOIddM+uJBRftw=;
Date: Tue, 28 Feb 2017 05:08:06 -0600
From: php-dev@coydogsoftware.net
To: oss-security@lists.openwall.com
Message-ID: <20170228110806.GA541@sliver.coydogsoftware.net>
References: <20170227225258.GA13043@sliver.coydogsoftware.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170227225258.GA13043@sliver.coydogsoftware.net>
User-Agent: Mutt/1.5.20 (2009-12-10)
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - sliver.coydogsoftware.net
X-AntiAbuse: Original Domain - lists.openwall.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - coydogsoftware.net
X-Get-Message-Sender-Via: sliver.coydogsoftware.net: authenticated_id: php-dev@coydogsoftware.net
X-Authenticated-Sender: sliver.coydogsoftware.net: php-dev@coydogsoftware.net
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: [oss-security] Re: CVE Request: PHP with Zend OPCache code permission/sensitive
 data protection vulnerability

On Mon, Feb 27, 2017 at 04:52:58PM -0600, php-dev@coydogsoftware.net wrote:
> 
> To briefly summarize, in PHP SAPI's where PHP interpreters share a
> common parent process (eg. Apache mod_php and PHP-FPM), Zend OpCache
> creates a shared memory object owned by the common parent during
> initialization. Child PHP processes inherit the SHM descriptor, using it
> to cache and retrieve compiled script bytecode ("opcode" in PHP jargon).
> Cache keys vary depending on configuration, but filename is a central
> key component, and compiled opcode can generally be run if a script's
> filename is known or can be guessed.
> 
> Many common shared hosting configurations change EUID in child processes
> to enforce privilege separation among hosted users. In these scenarios,
> default Zend OpCache behavior defeats script file permissions by sharing
> a single SHM cache among all child PHP processes.
> 
> PHP scripts often contain sensitive information: Think of CMS
> configurations where reading or running another user's script usually
> means gaining privileges to the CMS database.
> 
>  
> AFFECTED VERSIONS:
> PHP7 < 7.0.14 and PHP5 < 5.6.29. Later versions are still vulnerable by
> default unless opcache.validate_permission=1 is enabled.
> 
> AFFECTED COMPONENT:
> Zend OpCache
> 
> VULNERABILITY TYPE:
> Code permission/sensitive information disclosure
> 
> IMPACT:
> Cross-user compromise of PHP web applications in shared hosting
> environments.
> 
> REFERENCES:
> http://marc.info/?l=php-internals&m=147921016724565&w=2
> https://bugs.php.net/bug.php?id=69090
> http://seclists.org/oss-sec/2016/q4/343

This has been assigned CVE-2015-8994 via cveform.mitre.org.

--
php-dev at coydogsoftware dot net
