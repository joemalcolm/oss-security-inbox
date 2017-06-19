X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["974" "Monday" "19" "June" "2017" "15:17:03" "-0700" "Jacob Champion" "jchampion@apache.org" "<d95393cd-f9f9-4ddf-d8bd-9bb972214230@apache.org>" "31" "[oss-security] CVE-2017-7668: Apache httpd 2.x ap_find_token buffer overread" nil nil nil "6" "2017061922:17:03" "[oss-security] CVE-2017-7668: Apache httpd 2.x ap_find_token buffer overread" (number mark "U       jchampion@ap Jun 19   31/974   " thread-indent "\"[oss-security] CVE-2017-7668: Apache httpd 2.x ap_find_token buffer overread\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5971 invoked by uid 550); 19 Jun 2017 22:54:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6077 invoked from network); 19 Jun 2017 22:17:18 -0000
From: Jacob Champion <jchampion@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <d95393cd-f9f9-4ddf-d8bd-9bb972214230@apache.org>
Date: Mon, 19 Jun 2017 15:17:03 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.1.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE-2017-7668: Apache httpd 2.x ap_find_token buffer overread

CVE-2017-7668: ap_find_token buffer overread

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:
httpd 2.2.32
httpd 2.4.24 (unreleased)
httpd 2.4.25

Description:
The HTTP strict parsing changes added in 2.2.32 and 2.4.24 introduced a
bug in token list parsing, which allows ap_find_token() to search past
the end of its input string. By maliciously crafting a sequence of
request headers, an attacker may be able to cause a segmentation fault,
or to force ap_find_token() to return an incorrect value.

Mitigation:
2.2.32 users should either apply the patch available at
https://www.apache.org/dist/httpd/patches/apply_to_2.2.32/CVE-2017-7668.patch
or upgrade in the future to 2.2.33, which is currently unreleased.

2.4.25 users should upgrade to 2.4.26.

Credit:
The Apache HTTP Server security team would like to thank Javier Jiménez
(javijmor@gmail.com) for reporting this issue.

References:
https://httpd.apache.org/security_report.html
