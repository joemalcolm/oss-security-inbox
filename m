X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["451" "Friday" "15" "October" "2021" "13:06:39" "+0000" "Daniel Gaspar" "dpgaspar@apache.org" nil "18" "[oss-security] CVE-2021-41971: Apache Superset: Possible SQL Injection when template processing is enabled " nil nil nil "10" nil nil (number mark "U       dpgaspar@apa Oct 15   18/451   " thread-indent "\"[oss-security] CVE-2021-41971: Apache Superset: Possible SQL Injection when template processing is enabled \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-41971: Apache Superset: Possible SQL Injection when template processing is enabled " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16348 invoked by uid 550); 15 Oct 2021 13:52:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24562 invoked from network); 15 Oct 2021 13:06:53 -0000
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <32945ab5-3cec-2ba1-cc35-b01dec67ed86@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 15 Oct 2021 13:06:39 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-41971: Apache Superset: Possible SQL Injection when
 template processing is enabled 

Severity: low

Description:

Apache Superset up to and including 1.3.0 when configured with ENABLE_TEMPL=
ATE_PROCESSING on (disabled by default) allowed SQL injection when a malici=
ous authenticated user sends an http request with a custom URL.


Mitigation:

Don't enable ENABLE_TEMPLATE_PROCESSING (disabled by default).
Or upgrade to Apache Superset 1.3.1=20

Credit:

Apache Superset would like to thank Kevin Kusnardi for reporting this issue

