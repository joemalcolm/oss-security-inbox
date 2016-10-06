X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1014" "Thursday" "6" "October" "2016" "11:43:49" "+0100" "Mark Thomas" "markt@apache.org" "<d6eac17d-a019-fde7-0904-1f26a2bc9455@apache.org>" "29" "[oss-security] [SECURITY] CVE-2016-6808 Apache Tomcat JK ISAPI Connector buffer overflow" nil nil nil "10" "2016100610:43:49" "[oss-security] [SECURITY] CVE-2016-6808 Apache Tomcat JK ISAPI Connector buffer overflow" (number mark "U       markt@apache Oct  6   29/1014  " thread-indent "\"[oss-security] [SECURITY] CVE-2016-6808 Apache Tomcat JK ISAPI Connector buffer overflow\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20172 invoked by uid 550); 6 Oct 2016 11:27:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30672 invoked from network); 6 Oct 2016 10:44:50 -0000
From: Mark Thomas <markt@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <d6eac17d-a019-fde7-0904-1f26a2bc9455@apache.org>
Date: Thu, 6 Oct 2016 11:43:49 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] [SECURITY] CVE-2016-6808 Apache Tomcat JK ISAPI Connector buffer
 overflow

CVE-2016-6808 Apache Tomcat JK ISAPI Connector buffer overflow

Severity: Moderate

Vendor: The Apache Software Foundation

Versions Affected:
- Apache Tomcat JK ISAPI Connector 1.2.0 to 1.2.41

Description
The IIS/ISAPI specific code implements special handling when a virtual
host is present. The virtual host name and the URI are concatenated to
create a virtual host mapping rule. The length checks prior to writing
to the target buffer for this rule did not take account of the length of
the virtual host name, creating the potential for a buffer overflow.
It is not known if this overflow is exploitable.

Mitigation
Users of affected versions should apply one of the following mitigations
- Upgrade to Apache Tomcat JK ISAPI Connector 1.2.42
- Where available, use IIS configuration to restrict the maximum URI
  length to 4095 - (the length of the longest virtual host name)

Credit:
This issue was discovered by The Apache Tomcat Security Team.


References:
[1] http://tomcat.apache.org/security-jk.html
