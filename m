X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["743" "Tuesday" "30" "April" "2019" "17:18:58" "+0200" "Martin" "martin_s@apache.org" nil "26" nil nil nil nil "4" nil nil (number mark "U       martin_s@apa Apr 30   26/743   " thread-indent "\"[oss-security] [SECURITY] CVE-2019-0213: Apache Archiva Stored XSS\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [SECURITY] CVE-2019-0213: Apache Archiva Stored XSS" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31773 invoked by uid 550); 30 Apr 2019 16:19:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17522 invoked from network); 30 Apr 2019 15:19:18 -0000
From: Martin <martin_s@apache.org>
To: users@archiva.apache.org, users@maven.apache.org, announce@apache.org
Cc: oss-security@lists.openwall.com, bugtraq@securityfocus.com
Date: Tue, 30 Apr 2019 17:18:58 +0200
Message-ID: <2048242.ks9QkeOCCd@golgafrichnam>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: [oss-security] [SECURITY] CVE-2019-0213: Apache Archiva Stored XSS

CVE-2019-0213: Apache Archiva Stored XSS

Severity: Low

Vendor:
The Apache Software Foundation

Versions Affected:
    Apache Archiva 2.0.0 - 2.2.3
    The unsupported versions 1.x are also affected.  

It may be possible to store malicious XSS code into central configuration entries, i.e. the logo URL. 
The vulnerability is considered as minor risk, as only users with admin role can change the configuration, or the communication 
between the browser and the Archiva server must be compromised. 

Mitigation:
  All users are recommended to upgrade to Archiva 2.2.4 or higher, 

References:
http://archiva.apache.org/security.html#CVE-2019-0213

The newest Archiva version can be downloaded from:
http://archiva.apache.org/download.cgi



