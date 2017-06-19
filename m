X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["776" "Monday" "19" "June" "2017" "15:16:21" "-0700" "Jacob Champion" "jchampion@apache.org" "<3e2ebfb9-f0ad-b61b-f1ed-abf9810d8c09@apache.org>" "27" "[oss-security] CVE-2017-3169: Apache httpd 2.x mod_ssl null pointer dereference" nil nil nil "6" "2017061922:16:21" "[oss-security] CVE-2017-3169: Apache httpd 2.x mod_ssl null pointer dereference" (number mark "U       jchampion@ap Jun 19   27/776   " thread-indent "\"[oss-security] CVE-2017-3169: Apache httpd 2.x mod_ssl null pointer dereference\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10226 invoked by uid 550); 19 Jun 2017 22:55:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5824 invoked from network); 19 Jun 2017 22:16:34 -0000
From: Jacob Champion <jchampion@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <3e2ebfb9-f0ad-b61b-f1ed-abf9810d8c09@apache.org>
Date: Mon, 19 Jun 2017 15:16:21 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.1.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2017-3169: Apache httpd 2.x mod_ssl null pointer dereference

CVE-2017-3169: mod_ssl null pointer dereference

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:
httpd 2.2.0 to 2.2.32
httpd 2.4.0 to 2.4.25

Description:
mod_ssl may dereference a NULL pointer when third-party modules call
ap_hook_process_connection() during an HTTP request to an HTTPS port.

Mitigation:
2.2.x users should either apply the patch available at
https://www.apache.org/dist/httpd/patches/apply_to_2.2.32/CVE-2017-3169.patch
or upgrade in the future to 2.2.33, which is currently unreleased.

2.4.x users should upgrade to 2.4.26.

Credit:
The Apache HTTP Server security team would like to thank Vasileios
Panopoulos and AdNovum Informatik AG for reporting this issue.

References:
https://httpd.apache.org/security_report.html
