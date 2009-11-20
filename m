X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/11/20/2
Message-ID: <20091120104150.GD621@suse.de>
Date: Fri, 20 Nov 2009 11:41:50 +0100
From: Thomas Biege <thomas@...e.de>
To: OSS-Security Mailinglist <oss-security@...ts.openwall.com>
Subject: CVE request: php 5.3.1 update
Content-Type: text/plain; charset=utf-8

Hello,

PHP was updated to version 5.3.1 and did also address security
issues: http://www.php.net/releases/5_3_1.php

Security Enhancements and Fixes in PHP 5.3.1:

    * Added "max_file_uploads" INI directive, which can be set to limit the number of file uploads per-request to 20 by default, to prevent possible DOS via temporary file exhaustion.
    * Added missing sanity checks around exif processing.
    * Fixed a safe_mode bypass in tempnam().
    * Fixed a open_basedir bypass in posix_mkfifo().
    * Fixed bug #50063 (safe_mode_include_dir fails).
    * Fixed bug #44683 (popen crashes when an invalid mode is passed).


-- 
Bye,
     Thomas
-- 
 Thomas Biege <thomas@...e.de>, SUSE LINUX, Security Support & Auditing
 SUSE LINUX Products GmbH, GF: Markus Rex, HRB 16746 (AG Nuernberg)
-- 
  Wer aufhoert besser werden zu wollen, hoert auf gut zu sein.
                            -- Marie von Ebner-Eschenbach
