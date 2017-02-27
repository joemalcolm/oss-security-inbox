X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1819" "Monday" "27" "February" "2017" "16:52:58" "-0600" "php-dev@coydogsoftware.net" "php-dev@coydogsoftware.net" "<20170227225258.GA13043@sliver.coydogsoftware.net>" "49" "[oss-security] CVE Request: PHP with Zend OPCache code permission/sensitive data protection vulnerability" nil nil nil "2" "2017022722:52:58" "[oss-security] CVE Request: PHP with Zend OPCache code permission/sensitive data protection vulnerability" (number mark "U       php-dev@coyd Feb 27   49/1819  " thread-indent "\"[oss-security] CVE Request: PHP with Zend OPCache code permission/sensitive data protection vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20404 invoked by uid 550); 27 Feb 2017 22:53:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19642 invoked from network); 27 Feb 2017 22:53:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=coydogsoftware.net; s=default; h=Content-Type:MIME-Version:Message-ID:
	Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=CxKdFyI99cBfOsWFR5PBvG04TgITycwROo+tUWPGJHM=; b=Nb21UkdiG85n8Ov/CN2SIt3QEc
	F61lIFofHf7h//cg64A2yHE0AYO2K6PjZkUOluiNu0ZqtFjdX7ZYvbLcmKfXZwkgSxI2MVnjoZqvj
	NbFeFDacRWBpEETFaaKNHx3as7I4vJvQ0KM80JjTe0YsaUxdbgeW7QsN1kWPuc6UGiG0=;
Date: Mon, 27 Feb 2017 16:52:58 -0600
From: php-dev@coydogsoftware.net
To: oss-security@lists.openwall.com
Message-ID: <20170227225258.GA13043@sliver.coydogsoftware.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
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
Subject: [oss-security] CVE Request: PHP with Zend OPCache code permission/sensitive data
 protection vulnerability

Hello,

This never got a response the first time I submitted it. PHP maintainers
recognize the vulnerability, and added an undocumented non-default
setting which mitigates it. Please assign a CVE if possible.

To briefly summarize, in PHP SAPI's where PHP interpreters share a
common parent process (eg. Apache mod_php and PHP-FPM), Zend OpCache
creates a shared memory object owned by the common parent during
initialization. Child PHP processes inherit the SHM descriptor, using it
to cache and retrieve compiled script bytecode ("opcode" in PHP jargon).
Cache keys vary depending on configuration, but filename is a central
key component, and compiled opcode can generally be run if a script's
filename is known or can be guessed.

Many common shared hosting configurations change EUID in child processes
to enforce privilege separation among hosted users. In these scenarios,
default Zend OpCache behavior defeats script file permissions by sharing
a single SHM cache among all child PHP processes.

PHP scripts often contain sensitive information: Think of CMS
configurations where reading or running another user's script usually
means gaining privileges to the CMS database.

 
AFFECTED VERSIONS:
PHP7 < 7.0.14 and PHP5 < 5.6.29. Later versions are still vulnerable by
default unless opcache.validate_permission=1 is enabled.

AFFECTED COMPONENT:
Zend OpCache

VULNERABILITY TYPE:
Code permission/sensitive information disclosure

IMPACT:
Cross-user compromise of PHP web applications in shared hosting
environments.

Let me know if more details are needed, and feel free to contact me
privately if proof of concept is needed.

REFERENCES:
http://marc.info/?l=php-internals&m=147921016724565&w=2
https://bugs.php.net/bug.php?id=69090
http://seclists.org/oss-sec/2016/q4/343

--
php-dev at coydogsoftware dot net
