X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["794" "Wednesday" "3" "January" "2018" "11:37:45" "-0200" "=?UTF-8?B?UmFmYWVsIFdlaW5nw6RydG5lcg==?=" "rafael@apache.org" "<beb3e734-8070-f32f-58df-97f85a5ac91f@gmail.com>" "25" "[oss-security] [CVE-2013-4317] Apache CloudStack information disclosure vulnerability" "^Date:" nil nil "1" "2018010313:37:45" "[oss-security] [CVE-2013-4317] Apache CloudStack information disclosure vulnerability" (number mark "U       rafael@apach Jan  3   25/794   " thread-indent "\"[oss-security] [CVE-2013-4317] Apache CloudStack information disclosure vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7746 invoked by uid 550); 3 Jan 2018 14:15:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25679 invoked from network); 3 Jan 2018 13:38:01 -0000
Message-ID: <beb3e734-8070-f32f-58df-97f85a5ac91f@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="------------641AB46066A4094E7EE66C39"
Content-Language: pt-BR
Date: Wed, 3 Jan 2018 11:37:45 -0200
From: =?UTF-8?Q?Rafael_Weing=c3=a4rtner?= <rafael@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [CVE-2013-4317] Apache CloudStack information disclosure
 vulnerability
To: oss-security@lists.openwall.com

--------------641AB46066A4094E7EE66C39
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

The Apache CloudStack’s security team turns public the CVE-2013-4317.

*Severity*: High
*Vendor*: The Apache Software Foundation
*Versions Affected*: Apache CloudStack 4.1.0, 4.1.1

*Description*: When calling the CloudStack API call listProjectAccounts 
as a regular, non-administrative user, the user is able to see 
information for accounts other than their own.
*Mitigation*: Upgrade to Apache CloudStack 4.2

*Credit*: This issue was identified by Ahmad Emneina of Citrix.

P.S. This issue has been fixed a long time ago. However, the 
announcement has been forgotten. We apologize for that.

-- 
Rafael Weingärtner


--------------641AB46066A4094E7EE66C39--
