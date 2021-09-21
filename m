X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["659" "Tuesday" "21" "September" "2021" "16:33:57" "+0000" "Randall Hauch" "rhauch@apache.org" nil "20" "[oss-security] CVE-2021-38153: Timing Attack Vulnerability for Apache Kafka Connect and Clients " nil nil nil "9" nil nil (number mark "U       rhauch@apach Sep 21   20/659   " thread-indent "\"[oss-security] CVE-2021-38153: Timing Attack Vulnerability for Apache Kafka Connect and Clients \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-38153: Timing Attack Vulnerability for Apache Kafka Connect and Clients " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30519 invoked by uid 550); 21 Sep 2021 17:09:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9543 invoked from network); 21 Sep 2021 16:34:10 -0000
Content-Type: text/plain; charset=utf-8
From: Randall Hauch <rhauch@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <de8ffe7a-5058-ccb8-f3a8-c59a6564ed9c@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 21 Sep 2021 16:33:57 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-38153: Timing Attack Vulnerability for Apache Kafka
 Connect and Clients 

Severity: moderate

Description:

Some components in Apache Kafka use `Arrays.equals` to validate a password =
or key, which is vulnerable to timing attacks that make brute force attacks=
 for such credentials more likely to be successful. Users should upgrade to=
 2.8.1 or higher, or 3.0.0 or higher where this vulnerability has been fixe=
d. The affected versions include Apache Kafka 2.0.0, 2.0.1, 2.1.0, 2.1.1, 2=
.2.0, 2.2.1, 2.2.2, 2.3.0, 2.3.1, 2.4.0, 2.4.1, 2.5.0, 2.5.1, 2.6.0, 2.6.1,=
 2.6.2, 2.7.0, 2.7.1, and 2.8.0.

Credit:

Apache Kafka would like to thank J. Santilli for reporting this issue.

References:

https://kafka.apache.org/cve-list

