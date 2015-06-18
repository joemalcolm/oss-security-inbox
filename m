X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1428" "Thursday" "18" "June" "2015" "11:22:38" "+0200" "Tomas Hoger" "thoger@redhat.com" "<20150618112238.783fdf4b@redhat.com>" "34" "[oss-security] PHP 5.6.10 / 5.5.26 / 5.4.42 CVE request" nil nil nil "6" "2015061809:22:38" "[oss-security] PHP 5.6.10 / 5.5.26 / 5.4.42 CVE request" (number mark "U       thoger@redha Jun 18   34/1428  " thread-indent "\"[oss-security] PHP 5.6.10 / 5.5.26 / 5.4.42 CVE request\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27683 invoked by uid 550); 18 Jun 2015 09:22:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27665 invoked from network); 18 Jun 2015 09:22:58 -0000
Date: Thu, 18 Jun 2015 11:22:38 +0200
From: Tomas Hoger <thoger@redhat.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org, security@php.net
Message-ID: <20150618112238.783fdf4b@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
Subject: [oss-security] PHP 5.6.10 / 5.5.26 / 5.4.42 CVE request

Hi!

PHP 5.6.10 / 5.5.26 / 5.4.42 releases fix few issues tagged as security
in upstream bug tracker:

Fixed bug #69646 (OS command injection vulnerability in escapeshellarg).
https://bugs.php.net/bug.php?id=69646
http://git.php.net/?p=php-src.git;a=commitdiff;h=d2ac264ffea5ca2e85640b6736e0c7cd4ee9a4a9
(Windows specific)

Imroved fix for bug #69545 (Integer overflow in ftp_genlist() resulting
in heap overflow).
https://bugs.php.net/bug.php?id=69545#1431550655
http://git.php.net/?p=php-src.git;a=commitdiff;h=0765623d6991b62ffcd93ddb6be8a5203a2fa7e2
(#69545 was originally fixed in 5.4.41 / 5.5.25 / 5.6.9 and got
CVE-2015-4022, but the fix was found to be incomplete, as explained in
the upstream bug)

Fixed bug #69719 (Incorrect handling of paths with NULs).
http://bugs.php.net/69719
http://git.php.net/?p=php-src.git;a=commitdiff;h=8fc52d77d6f66c438c98d536e2309b5fd13f90de
(This already got CVE-2015-4598 assigned in
http://seclists.org/oss-sec/2015/q2/727)

Fixed bug #69667 (segfault in php_pgsql_meta_data).
https://bugs.php.net/bug.php?id=69667
http://git.php.net/?p=php-src.git;a=commitdiff;h=2cc4e69cc6d8dbc4b3568ad3dd583324a7c11d64
(Not security bug upstream, but we found this when testing updates with
fixes for CVE-2015-1352.  I believe the original issue that got
CVE-2015-1352 is not considered security by upstream either, so just
noting this for completeness.)

-- 
Tomas Hoger / Red Hat Product Security
