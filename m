X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1169" "Monday" "19" "June" "2017" "15:15:26" "-0700" "Jacob Champion" "jchampion@apache.org" "<63607fd4-70b6-dc8f-6aae-82148d38880b@apache.org>" "35" "[oss-security] CVE-2017-3167: Apache httpd 2.x ap_get_basic_auth_pw authentication bypass" nil nil nil "6" "2017061922:15:26" "[oss-security] CVE-2017-3167: Apache httpd 2.x ap_get_basic_auth_pw authentication bypass" (number mark "U       jchampion@ap Jun 19   35/1169  " thread-indent "\"[oss-security] CVE-2017-3167: Apache httpd 2.x ap_get_basic_auth_pw authentication bypass\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12029 invoked by uid 550); 19 Jun 2017 22:55:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5569 invoked from network); 19 Jun 2017 22:15:42 -0000
From: Jacob Champion <jchampion@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <63607fd4-70b6-dc8f-6aae-82148d38880b@apache.org>
Date: Mon, 19 Jun 2017 15:15:26 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.1.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2017-3167: Apache httpd 2.x ap_get_basic_auth_pw authentication
 bypass

CVE-2017-3167: ap_get_basic_auth_pw authentication bypass

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:
httpd 2.2.0 to 2.2.32
httpd 2.4.0 to 2.4.25

Description:
Use of the ap_get_basic_auth_pw() by third-party modules outside of the
authentication phase may lead to authentication requirements being
bypassed.

Mitigation:
2.2.x users should either apply the patch available at
https://www.apache.org/dist/httpd/patches/apply_to_2.2.32/CVE-2017-3167.patch
or upgrade in the future to 2.2.33, which is currently unreleased.

2.4.x users should upgrade to 2.4.26.

Third-party module writers SHOULD use ap_get_basic_auth_components(),
available in 2.2.33 and 2.4.26, instead of ap_get_basic_auth_pw().
Modules which call the legacy ap_get_basic_auth_pw() during the
authentication phase MUST either immediately authenticate the user after
the call, or else stop the request immediately with an error response,
to avoid incorrectly authenticating the current request.

Credit:
The Apache HTTP Server security team would like to thank Emmanuel
Dreyfus for reporting this issue.

References:
https://httpd.apache.org/security_report.html
