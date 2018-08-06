X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["538" "Monday" "6" "August" "2018" "10:29:26" "+0100" "Ash Berlin-Taylor" "ash@apache.org" "<5FB834CA-30CF-4B8F-AA12-C1CFE2A7C145@apache.org>" "17" "[oss-security] CVE-2017-12614 XSS Vulnerability in Airflow < 1.9" nil nil nil "8" "2018080609:29:26" "[oss-security] CVE-2017-12614 XSS Vulnerability in Airflow < 1.9" (number mark "U       ash@apache.o Aug  6   17/538   " thread-indent "\"[oss-security] CVE-2017-12614 XSS Vulnerability in Airflow < 1.9\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32581 invoked by uid 550); 6 Aug 2018 09:32:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26079 invoked from network); 6 Aug 2018 09:29:44 -0000
From: Ash Berlin-Taylor <ash@apache.org>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <5FB834CA-30CF-4B8F-AA12-C1CFE2A7C145@apache.org>
Date: Mon, 6 Aug 2018 10:29:26 +0100
To: Apache Security Team <security@apache.org>,
 dev@airflow.incubator.apache.org,
 Seth Long <seth.long@creditkarma.com>,
 oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3273)
Subject: [oss-security] CVE-2017-12614 XSS Vulnerability in Airflow < 1.9

CVE-2017-12614: Apache Reflected Reflected XSS Vulnerability

Vendor: The Apache Software Foundation:

Versions Affected: < 1.9

Description:
It was noticed an XSS in certain 404 pages that could be exploited to perfo=
rm an XSS attack. Chrome will detect this as a reflected XSS attempt and pr=
event the page from loading. Firefox and other browsers don't, and are vuln=
erable to this attack.

Mitigation:
The fix for this is to upgrade to Apache Airflow 1.9.0 or above

Credit:
This issue was discovered by Seth Long at Credit Karma=
