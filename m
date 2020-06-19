X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["779" "Friday" "19" "June" "2020" "20:31:22" "+0200" "Martin" "martin_s@apache.org" "<2640261.krIbtSRUe9@golgafrichnam>" "28" "[oss-security] [SECURITY] CVE-2020-9495: Apache Archiva login service is vulnerable to LDAP injection" nil nil nil "6" "2020061918:31:22" "[oss-security] [SECURITY] CVE-2020-9495: Apache Archiva login service is vulnerable to LDAP injection" (number mark "U       martin_s@apa Jun 19   28/779   " thread-indent "\"[oss-security] [SECURITY] CVE-2020-9495: Apache Archiva login service is vulnerable to LDAP injection\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [SECURITY] CVE-2020-9495: Apache Archiva login service is vulnerable to LDAP injection" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31888 invoked by uid 550); 19 Jun 2020 19:01:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16353 invoked from network); 19 Jun 2020 18:33:24 -0000
From: Martin <martin_s@apache.org>
To: users@archiva.apache.org, announce@apache.org, dev@archiva.apache.org
Cc: users@maven.apache.org, oss-security@lists.openwall.com, bugtraq@securityfocus.com
Date: Fri, 19 Jun 2020 20:31:22 +0200
Message-ID: <2640261.krIbtSRUe9@golgafrichnam>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: [oss-security] [SECURITY] CVE-2020-9495: Apache Archiva login service is vulnerable to LDAP injection

CVE-2020-9495: Apache Archiva login service is vulnerable to LDAP injection

Severity: Medium

Vendor:
The Apache Software Foundation

Versions Affected:

    Apache Archiva all versions before 2.2.5

By providing special values to the archiva login form a attacker is able to retrieve user attribute data from the connected LDAP server. 
With certain characters it is possible to modify the LDAP filter used to query the users on the connected LDAP server. 
By measuring the response time, arbitrary attribute data can be retrieved from LDAP user objects.

Mitigation:

    Upgrade to Apache Archiva 2.2.5 or higher

References:
http://archiva.apache.org/security.html#CVE-2020-9495

The newest Archiva version can be downloaded from:
http://archiva.apache.org/download.cgi




