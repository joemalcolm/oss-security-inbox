X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1067" "Monday" "10" "April" "2017" "20:14:37" "+0100" "Mark Thomas" "markt@apache.org" "<8c9758b3-34d8-4126-bade-df93a26256bb@apache.org>" "36" "[oss-security] [SECURITY] CVE-2017-5650 Apache Tomcat Denial of Service" nil nil nil "4" "2017041019:14:37" "[oss-security] [SECURITY] CVE-2017-5650 Apache Tomcat Denial of Service" (number mark "U       markt@apache Apr 10   36/1067  " thread-indent "\"[oss-security] [SECURITY] CVE-2017-5650 Apache Tomcat Denial of Service\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10128 invoked by uid 550); 10 Apr 2017 19:23:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28151 invoked from network); 10 Apr 2017 19:14:52 -0000
From: Mark Thomas <markt@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <8c9758b3-34d8-4126-bade-df93a26256bb@apache.org>
Date: Mon, 10 Apr 2017 20:14:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] [SECURITY] CVE-2017-5650 Apache Tomcat Denial of Service

CVE-2017-5650 Apache Tomcat Denial of Service

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:
Apache Tomcat 9.0.0.M1 to 9.0.0.M18
Apache Tomcat 8.5.0 to 8.5.12
Apache Tomcat 8.0.x and earlier are not affected

Description
The handling of an HTTP/2 GOAWAY frame for a connection did not close
streams associated with that connection that were currently waiting for
a WINDOW_UPDATE before allowing the application to write more data.
These waiting streams each consumed a thread. A malicious client could
therefore construct a series of HTTP/2 requests that would consume all
available processing threads.

Mitigation:
Users of the affected versions should apply one of the following
mitigations:
- Upgrade to Apache Tomcat 9.0.0.M19 or later
- Upgrade to Apache Tomcat 8.5.13 or later

Credit:
This issue was identified by Chun Han Hsiao and reported responsibly to
the Tomcat security team.

History:
2017-04-10 Original advisory

References:
[1] http://tomcat.apache.org/security-9.html
[2] http://tomcat.apache.org/security-8.html

