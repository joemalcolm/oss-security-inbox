X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1106" "Tuesday" "21" "July" "2015" "21:51:01" "+0200" "Tomas Hoger" "thoger@redhat.com" "<20150721215101.5b7c0a96@redhat.com>" "29" "Re: [oss-security] CVE request: php - segmentation fault in Phar::convertToData; buffer overflow in phar_fix_filepath;" nil nil nil "7" "2015072119:51:01" "[oss-security] CVE request: php - segmentation fault in Phar::convertToData; buffer overflow in phar_fix_filepath;" (number mark "U       thoger@redha Jul 21   29/1106  " thread-indent "\"Re: [oss-security] CVE request: php - segmentation fault in Phar::convertToData; buffer overflow in phar_fix_filepath;\"\n") "<20150717135425.GB19821@mail.corp.redhat.com>" ("<20150717135425.GB19821@mail.corp.redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26313 invoked by uid 550); 21 Jul 2015 19:51:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26290 invoked from network); 21 Jul 2015 19:51:22 -0000
Message-ID: <20150721215101.5b7c0a96@redhat.com>
In-Reply-To: <20150717135425.GB19821@mail.corp.redhat.com>
References: <20150717135425.GB19821@mail.corp.redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Cc: Vasyl Kaigorodov <vkaigoro@redhat.com>, oss-security@lists.openwall.com,
        security@php.net
Date: Tue, 21 Jul 2015 21:51:01 +0200
From: Tomas Hoger <thoger@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request: php - segmentation fault in
 Phar::convertToData; buffer overflow in phar_fix_filepath;
To: cve-assign@mitre.org

On Fri, 17 Jul 2015 15:54:25 +0200 Vasyl Kaigorodov wrote:

> I'd like to request a CVEs for the below issues fixed in PHP 5.5.27
> and 5.4.43 (5.6.x was not affected by those it looks like):
> 
> Segfault in Phar::convertToData on invalid file
> https://bugs.php.net/bug.php?id=69958
> http://git.php.net/?p=php-src.git;a=commit;h=bf58162ddf970f63502837f366930e44d6a992cf
> 
> Buffer overflow and stack smashing error in phar_fix_filepath
> https://bugs.php.net/bug.php?id=69923
> http://git.php.net/?p=php-src.git;a=commit;h=6dedeb40db13971af45276f80b5375030aa7e76f

Another fix noted in 5.6.11 / 5.5.27 / 5.4.43 is:

Mysqlnd: Fixed bug #69669 (mysqlnd is vulnerable to BACKRONYM). (CVE-2015-3152)

https://bugs.php.net/bug.php?id=69669
http://git.php.net/?p=php-src.git;a=commitdiff;h=97aa752fee61fccdec361279adbfb17a3c60f3f4

It references a CVE that was assigned to MySQL / libmysqlclient.  As
the fix was applied to mysqlnd - re-implementation of the MySQL client
- can the original BACKRONYM CVE still be used here, or is a new CVE
id needed?

Thank you!

-- 
Tomas Hoger / Red Hat Product Security
