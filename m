X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2049" "Saturday" "20" "August" "2016" "11:05:10" "+0200" "Summer of Pwnage" "lists@securify.nl" "<cc5ec17a-0cae-f262-b865-243d67045ef9@securify.nl>" "44" "[oss-security] Path traversal vulnerability in WordPress Core Ajax handlers" nil nil nil "8" "2016082009:05:10" "[oss-security] Path traversal vulnerability in WordPress Core Ajax handlers" (number mark "U       lists@securi Aug 20   44/2049  " thread-indent "\"[oss-security] Path traversal vulnerability in WordPress Core Ajax handlers\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17563 invoked by uid 550); 20 Aug 2016 09:05:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17545 invoked from network); 20 Aug 2016 09:05:22 -0000
X-Virus-Scanned: amavisd-new at pine.nl
From: Summer of Pwnage <lists@securify.nl>
To: oss-security@lists.openwall.com
Organization: Securify B.V.
Message-ID: <cc5ec17a-0cae-f262-b865-243d67045ef9@securify.nl>
Date: Sat, 20 Aug 2016 11:05:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Path traversal vulnerability in WordPress Core Ajax handlers

------------------------------------------------------------------------
Path traversal vulnerability in WordPress Core Ajax handlers
------------------------------------------------------------------------
Yorick Koster, July 2016

------------------------------------------------------------------------
Abstract
------------------------------------------------------------------------
A path traversal vulnerability was found in the Core Ajax handlers of
the WordPress Admin API. This issue can (potentially) be used by an
authenticated user (Subscriber) to create a denial of service condition
of an affected WordPress site.

------------------------------------------------------------------------
OVE ID
------------------------------------------------------------------------
OVE-20160712-0036

------------------------------------------------------------------------
See also
------------------------------------------------------------------------
#37490 - Improve capability checks in wp_ajax_update_plugin() and
wp_ajax_delete_plugin()

------------------------------------------------------------------------
Tested versions
------------------------------------------------------------------------
This issue was successfully tested on the WordPress version 4.5.3.

------------------------------------------------------------------------
Fix
------------------------------------------------------------------------
WordPress version 4.6 mitigates this vulnerability by moving the CSRF
check to the top of the affected method(s).

------------------------------------------------------------------------
Details
------------------------------------------------------------------------
https://sumofpwn.nl/advisory/2016/path_traversal_vulnerability_in_wordpress_core_ajax_handlers.html

------------------------------------------------------------------------
Summer of Pwnage (https://sumofpwn.nl) is a Dutch community project. Its
goal is to contribute to the security of popular, widely used OSS
projects in a fun and educational way.
