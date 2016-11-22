X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1451" "Tuesday" "22" "November" "2016" "09:57:41" "+0000" "Mark Thomas" "markt@apache.org" "<8825611a-b5ef-ffb2-9105-b55ba10dc5e7@apache.org>" "40" "[oss-security] [SECURITY] CVE-2016-6816 Apache Tomcat Information Disclosure" nil nil nil "11" "2016112209:57:41" "[oss-security] [SECURITY] CVE-2016-6816 Apache Tomcat Information Disclosure" (number mark "U       markt@apache Nov 22   40/1451  " thread-indent "\"[oss-security] [SECURITY] CVE-2016-6816 Apache Tomcat Information Disclosure\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24045 invoked by uid 550); 22 Nov 2016 14:54:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3665 invoked from network); 22 Nov 2016 09:58:04 -0000
From: Mark Thomas <markt@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <8825611a-b5ef-ffb2-9105-b55ba10dc5e7@apache.org>
Date: Tue, 22 Nov 2016 09:57:41 +0000
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
MIME-Version: 1.0
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Subject: [oss-security] [SECURITY] CVE-2016-6816 Apache Tomcat Information Disclosure

CVE-2016-6816 Apache Tomcat Information Disclosure

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:
Apache Tomcat 9.0.0.M1 to 9.0.0.M11
Apache Tomcat 8.5.0 to 8.5.6
Apache Tomcat 8.0.0.RC1 to 8.0.38
Apache Tomcat 7.0.0 to 7.0.72
Apache Tomcat 6.0.0 to 6.0.47
Earlier, unsupported versions may also be affected.

Description
The code that parsed the HTTP request line permitted invalid characters.
This could be exploited, in conjunction with a proxy that also permitted
the invalid characters but with a different interpretation, to inject
data into the HTTP response. By manipulating the HTTP response the
attacker could poison a web-cache, perform an XSS attack and/or obtain
sensitive information from requests other then their own.

Mitigation
Users of affected versions should apply one of the following mitigations
- Upgrade to Apache Tomcat 9.0.0.M13 or later
  (Apache Tomcat 9.0.0.M12 has the fix but was not released)
- Upgrade to Apache Tomcat 8.5.8 or later
  (Apache Tomcat 8.5.7 has the fix but was not released)
- Upgrade to Apache Tomcat 8.0.39 or later
- Upgrade to Apache Tomcat 7.0.73 or later
- Upgrade to Apache Tomcat 6.0.48 or later

Credit:
This issue was discovered by Regis Leroy from Makina Corpus.

References:
[1] http://tomcat.apache.org/security-9.html
[2] http://tomcat.apache.org/security-8.html
[3] http://tomcat.apache.org/security-7.html
[4] http://tomcat.apache.org/security-6.html
