X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1244" "Wednesday" "8" "November" "2017" "15:51:54" "+0900" "Akira Ajisaka" "aajisaka@apache.org" "<dfb21a5f-dc61-a3d4-93ff-333a902623f9@apache.org>" "31" "[oss-security] [SECURITY] CVE-2017-3166: Apache Hadoop Privilege escalation vulnerability" nil nil nil "11" "2017110806:51:54" "[oss-security] [SECURITY] CVE-2017-3166: Apache Hadoop Privilege escalation vulnerability" (number mark "U       aajisaka@apa Nov  8   31/1244  " thread-indent "\"[oss-security] [SECURITY] CVE-2017-3166: Apache Hadoop Privilege escalation vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6001 invoked by uid 550); 8 Nov 2017 10:41:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9378 invoked from network); 8 Nov 2017 06:52:09 -0000
To: oss-security@lists.openwall.com
From: Akira Ajisaka <aajisaka@apache.org>
Message-ID: <dfb21a5f-dc61-a3d4-93ff-333a902623f9@apache.org>
Date: Wed, 8 Nov 2017 15:51:54 +0900
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:52.0)
 Gecko/20100101 Thunderbird/52.4.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [oss-security] [SECURITY] CVE-2017-3166: Apache Hadoop Privilege escalation
 vulnerability

CVE-2017-3166: Apache Hadoop Privilege escalation vulnerability

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:
Hadoop 2.6.1+, 2.7.x before 2.7.4, 3.0.0-alpha before 3.0.0-alpha4

Description:
In a cluster where the YARN user has been granted access to all HDFS
encryption keys, if a file in an encryption zone with access permissions
that make it world readable is localized via YARN's localization mechanism,
e.g. via the MapReduce distributed cache, that file will be stored
in a world-readable location and shared freely with any application
that requests to localize that file, no matter who the application owner
is or whether that user should be allowed to access files from the
target encryption zone.

Mitigation:
Users on 2.6.1+ and 2.7.x before 2.7.4 should upgrade to 2.7.4 or later
Users on 3.0.0-alpha before 3.0.0-alpha4 should upgrade to 3.0.0-alpha4 or later

Impact:
Users may gain access to files that should be protected by HDFS
transparent encryption if those files have world readable access
permissions and are localized through YARN's localization mechanism
in a cluster where YARN has been granted access to all HDFS encryption keys.

Credit:
This issue was discovered by Luke Herbert.
