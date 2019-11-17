X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["876" "Sunday" "17" "November" "2019" "09:13:53" "-0800" "Madhan Neethiraj" "madhan@apache.org" "<1E3D402E-6B24-473A-B858-296847B072A4@apache.org>" "20" "[oss-security] [CVE-2019-10070] Apache Atlas Stored XSS Vulnerability" nil nil nil "11" "2019111717:13:53" "[oss-security] [CVE-2019-10070] Apache Atlas Stored XSS Vulnerability" (number mark "U       madhan@apach Nov 17   20/876   " thread-indent "\"[oss-security] [CVE-2019-10070] Apache Atlas Stored XSS Vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-10070] Apache Atlas Stored XSS Vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10189 invoked by uid 550); 17 Nov 2019 18:51:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9971 invoked from network); 17 Nov 2019 17:14:09 -0000
User-Agent: Microsoft-MacOutlook/10.1f.0.191110
Date: Sun, 17 Nov 2019 09:13:53 -0800
From: Madhan Neethiraj <madhan@apache.org>
To: <oss-security@lists.openwall.com>
CC: "private@atlas.apache.org" <private@atlas.apache.org>
Message-ID: <1E3D402E-6B24-473A-B858-296847B072A4@apache.org>
Thread-Topic: [CVE-2019-10070] Apache Atlas Stored XSS Vulnerability
Mime-version: 1.0
Content-type: text/plain;
	charset="UTF-8"
Content-transfer-encoding: 7bit
Subject: [oss-security] [CVE-2019-10070] Apache Atlas Stored XSS Vulnerability

Hello,

Please find below details on CVE fixed in Apache Atlas releases 0.8.4 and 1.2.0.

-------------------------------------------------------------------------------------------------
CVE-2019-10070:    Apache Atlas Stored XSS Vulnerability in the search functionality
Severity:          Critical
Vendor:            The Apache Software Foundation
Versions Affected: Apache Atlas versions 0.8.3, 1.1.0
Users affected:    Users of Apache Atlas UI search functionality
Description:       Apache Atlas UI was found vulnerable to stored XSS in the search functionality
Fix detail:        Apache Atlas was updated to sanitize the user input
Mitigation:        Users should upgrade to 0.8.4 or 1.2.0 or later version of Apache Atlas
Credit:            Jakub Heba
-------------------------------------------------------------------------------------------------

Thanks,
Madhan


