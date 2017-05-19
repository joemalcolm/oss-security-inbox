X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["901" "Friday" "19" "May" "2017" "22:36:40" "+0200" "Martin" "martin_s@apache.org" "<1622774.CTg74Sxca6@golgafrichnam>" "29" "[oss-security] [SECURITY] CVE-2017-5657: Apache Archiva CSRF vulnerability for REST endpoints" nil nil nil "5" "2017051920:36:40" "[oss-security] [SECURITY] CVE-2017-5657: Apache Archiva CSRF vulnerability for REST endpoints" (number mark "U       martin_s@apa May 19   29/901   " thread-indent "\"[oss-security] [SECURITY] CVE-2017-5657: Apache Archiva CSRF vulnerability for REST endpoints\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27985 invoked by uid 550); 19 May 2017 20:56:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9919 invoked from network); 19 May 2017 20:36:56 -0000
From: Martin <martin_s@apache.org>
To: users@archiva.apache.org, users@maven.apache.org, announce@apache.org
Cc: oss-security@lists.openwall.com, bugtraq@securityfocus.com
Date: Fri, 19 May 2017 22:36:40 +0200
Message-ID: <1622774.CTg74Sxca6@golgafrichnam>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: [oss-security] [SECURITY] CVE-2017-5657: Apache Archiva CSRF vulnerability for REST endpoints

CVE-2017-5657: Apache Archiva CSRF vulnerabilities for various REST endpoints

Severity: Important

Vendor:
The Apache Software Foundation

Versions Affected:
    Archiva 2.0.0 - 2.2.1
    The unsupported versions 1.x are also affected.  

Several REST service endpoints of Apache Archiva are not protected against 
Cross Site Request Forgery (CSRF) attacks. A malicious site opened in the same 
browser as the archiva site, may send HTML response that performs arbitrary 
actions on archiva services, with the same rights as the active archiva 
session (e.g. adminstrator rights).

Mitigation:
  All users are recommended to upgrade to Archiva 2.2.3 or higher, 
  where additional measures are taken to verify the origin of REST requests.

References:
http://archiva.apache.org/security.html#CVE-2017-5657

The newest Archiva version can be downloaded from:
http://archiva.apache.org/download.cgi



