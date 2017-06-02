X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["658" "Friday" "2" "June" "2017" "11:10:55" "+0530" "Varun Vasudev" "vvasudev@apache.org" "<4A2FDA56-491B-4C2A-915F-C9D4A4BDB92A@apache.org>" "21" "[oss-security] CVE-2017-7669: Apache Hadoop privilege escalation" "^Date:" nil nil "6" "2017060205:40:55" "[oss-security] CVE-2017-7669: Apache Hadoop privilege escalation" (number mark "U       vvasudev@apa Jun  2   21/658   " thread-indent "\"[oss-security] CVE-2017-7669: Apache Hadoop privilege escalation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31924 invoked by uid 550); 2 Jun 2017 06:18:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7966 invoked from network); 2 Jun 2017 05:41:19 -0000
User-Agent: Microsoft-MacOutlook/f.20.0.170309
Message-ID: <4A2FDA56-491B-4C2A-915F-C9D4A4BDB92A@apache.org>
Thread-Topic: CVE-2017-7669: Apache Hadoop privilege escalation
Mime-version: 1.0
Content-type: text/plain;
	charset="UTF-8"
Content-transfer-encoding: 7bit
Date: Fri, 02 Jun 2017 11:10:55 +0530
From: Varun Vasudev <vvasudev@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2017-7669: Apache Hadoop privilege escalation
To: <general@hadoop.apache.org>,
	user <user@hadoop.apache.org>,
	"<security@hadoop.apache.org>" <security@hadoop.apache.org>,
	security <security@apache.org>,
	<bugtraq@securityfocus.com>,
	<oss-security@lists.openwall.com>

CVE-2017-7669: Apache Hadoop privilege escalation

Severity: Critical

Vendor: The Apache Software Foundation

Versions affected: Hadoop 2.8.0, Hadoop 3.0.0-alpha1 and Hadoop 3.0.0-alpha2

Description:
The LinuxContainerExecutor runs docker commands as root with
insufficient input validation. When the docker feature is enabled,
authenticated users can run commands as root

Mitigation:
Users of Apache Hadoop 2.8.0 should leave Docker functionality disabled until Hadoop 2.8.1 is released.
Users of Apache Hadoop 3.0.0-alpha1 and Hadoop 3.0.0-alpha2 should upgrade to Hadoop 3.0.0-alpha3 or later.

Credit:
This issue was discovered by Allen Wittenauer.


