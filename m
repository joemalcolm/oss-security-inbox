X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4245" "Saturday" "5" "November" "2016" "03:30:41" "-0500" "php-dev@coydogsoftware.net" "php-dev@coydogsoftware.net" "<6f4bda10919c68d47fdfd9bbd9a36366@coydogsoftware.net>" "124" "[oss-security] CVE Request: PHP with Zend OPCache  code permission/sensitive data protection vulnerabilities" nil nil nil "11" "2016110508:30:41" "[oss-security] CVE Request: PHP with Zend OPCache code permission/sensitive data protection vulnerabilities" (number mark "U       php-dev@coyd Nov  5  124/4245  " thread-indent "\"[oss-security] CVE Request: PHP with Zend OPCache  code permission/sensitive data protection vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25644 invoked by uid 550); 5 Nov 2016 09:50:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10157 invoked from network); 5 Nov 2016 08:30:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=coydogsoftware.net; s=default; h=Message-ID:Subject:To:From:Date:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	 bh=ZXrgIoygPoxDgYb9O/fWuwVdCHcquXtaTarDtEboylQ=; b=WWIRYiN2/O0zlQshS/OGv/NU0
	u/uQnctsTxyvMLgMqeZ1zObxx7TtClr4RFwBz/tukAQWYKAxC+PB5Ph90FM8DNunjBqiv2B3XG94O
	b7NgJrqwTZHF5H3U2H6Vt5M8gn1lzrzaJIZy7wLToZgOnYZoxWKSdE0UUj7hzGAXw/OEg=;
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date: Sat, 05 Nov 2016 03:30:41 -0500
From: php-dev@coydogsoftware.net
To: oss-security@lists.openwall.com
Message-ID: <6f4bda10919c68d47fdfd9bbd9a36366@coydogsoftware.net>
X-Sender: php-dev@coydogsoftware.net
User-Agent: Roundcube Webmail/1.1.4
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
Subject: [oss-security] CVE Request: PHP with Zend OPCache  code permission/sensitive data
 protection vulnerabilities

Hello,

I did not discover this, but to my knowledge no CVE has been requested 
to date.
The PHP project was informed of this vulnerability over 2 years ago and 
has not
fixed it. I am hoping more public discussion with a CVE will help to 
motivate
them.

SUMMARY:

Affects PHP with Zend OPCache enabled, PHP5 <= 5.6.27 and PHP7 <= 7.0.12
(http://php.net)

Zend OPCache has code permission and sensitive data protection 
vulnerabilities
when deployed on shared hosting web servers.

BACKGROUND:

OPCache uses shared memory to cache compiled PHP "opcode" between HTTP 
requests
for reuse. A single shared memory object is opened and initialized in a 
parent
process, and child processes inherit its file descriptor. Due to this 
design,
OPCache is intended for use with a SAPI with a peristent parent process, 
for
example php-fpm with its master process, or apache2handler where 
initialization
occurs in the Apache parent process.

Cache keys for compiled scripts have two modes of operation, simple
filenames and a "use_cwd" mode which includes additional information 
such as
parent script and working directory in cache keys. The "use_cwd" 
behavior only
occurs when scripts are invoked via relative paths, rare in practice in 
a web
server environment with common web applications. In most circumstances 
the
cache uses a simple filesystem path as a cache key for a cached script's
compiled form.

On shared servers PHP is often deployed so that it will switch to a 
local user
account before running a script, for example using mod_ruid2 if deployed 
as an
Apache module, or using "pools" if deployed as php-fpm. In these
configurations, users expect that they can protect sensitive information 
in PHP
scripts with filesystem permissions.

VULNERABILITY DESCRIPTION:

The single shared OPCache circumvents filesystem permissions. For 
example, when
user alice's WordPress site is requested, PHP runs as user alice and
wp-config.php is read, compiled, and cached, including constants for 
database
credentials, API auth keys, and hash salts.  User bob can then include 
alice's
wp-config.php script via the persistent OPCache, regardless of the 
original
script's file permissions. User bob only has to know the filesystem path 
of the
script.

PHP's open_basedir setting is also circumvented; with a restrictive
open_basedir, a nonfatal error occurs, but a cached script outside of
open_basedir will still load and run.

If PHP is running in chroots, unintentional cross-user script execution 
can
occur due to filename hash key collisions. This might be considered a 
separate
bug, but both stem from the simplistic design of opcache keys.

With a default configuration (other than the zend_extension directive to 
load
OPCache, which is not loaded by default) opcache_get_status() can be 
used to
enumerate cached scripts, making exploitation even easier.

The software's documentation does not mention the issue, so most users 
would
see no reason not to enable OPCache on a shared server:
http://php.net/manual/en/book.opcache.php

Original reporter in bug #67481 closed his bug report stating "It turns 
out
this is not a bug, it is the behaviour that is expected when 
opcache.use_cwd is
set to zero," but the same behavior occurs when opcache.use_cwd is 
enabled
unless scripts are invoked with relative paths. Absolute paths are 
typically
used by web servers and web applications.

I've proposed a fix in bug #69090 with patch linked below.

I have point-and-click proof of concept exploit scripts but I plan to 
give
the PHP project a few more days to patch the issue.

REFERENCES:

https://bugs.php.net/bug.php?id=67481
https://bugs.php.net/bug.php?id=69090
https://bugs.php.net/patch-display.php?bug_id=69090&patch=opcache_bug69090_user_id_keys&revision=latest
http://marc.info/?l=php-internals&m=147825816026557&w=2

In PHP 5.6, the problem is in cache key construction in
accel_make_persistent_key_ex():
https://raw.githubusercontent.com/php/php-src/php-5.6.27/ext/opcache/ZendAccelerator.c

In PHP 7.0, equivalent code is in accel_make_persistent_key():
https://raw.githubusercontent.com/php/php-src/php-7.0.12/ext/opcache/ZendAccelerator.c

Please let me know if more details are needed.

-- 
- php-dev@coydogsoftware.net
