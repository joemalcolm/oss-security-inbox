X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["660" "Tuesday" "14" "January" "2020" "11:30:00" "+0000" "Ash Berlin-Taylor" "ash@apache.org" "<DCAAED18-E405-402F-B422-171BE104BC23@getmailspring.com>" "22" "[oss-security] [CVE-2019-12398] Apache Airflow Stored XSS vulnerability in classic UI" nil nil nil "1" "2020011411:30:00" "[oss-security] [CVE-2019-12398] Apache Airflow Stored XSS vulnerability in classic UI" (number mark "U       ash@apache.o Jan 14   22/660   " thread-indent "\"[oss-security] [CVE-2019-12398] Apache Airflow Stored XSS vulnerability in classic UI\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-12398] Apache Airflow Stored XSS vulnerability in classic UI" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23602 invoked by uid 550); 14 Jan 2020 12:47:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13359 invoked from network); 14 Jan 2020 11:30:14 -0000
Date: Tue, 14 Jan 2020 11:30:00 +0000
From: Ash Berlin-Taylor <ash@apache.org>
To: "=?utf-8?Q?oss-security=40lists.openwall.com?="
 <oss-security@lists.openwall.com>, 
 "=?utf-8?Q?users=40airflow.apache.org?=" <users@airflow.apache.org>, 
 "=?utf-8?Q?dev=40airflow.apache.org?=" <dev@airflow.apache.org>
Cc: yvreddy <yvreddyln@gmail.com>, Apache Security Team
 <security@apache.org>
Message-ID: <DCAAED18-E405-402F-B422-171BE104BC23@getmailspring.com>
X-Mailer: Mailspring
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="5e1da638_2bfd57e0_16e0"
Subject: [oss-security] [CVE-2019-12398] Apache Airflow Stored XSS vulnerability in
 classic UI

--5e1da638_2bfd57e0_16e0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Versions Affected:
<= 1.10.4.

Description:
In Apache Airflow before 1.10.5 when running with the "classic" UI, a malicious admin user could edit the state of objects in the Airflow metadata database to execute arbitrary javascript on certain page views. The new "RBAC" UI is unaffected.

Credit:
This issue was discovered by "Venkat"/yvreddy

(Sorry for the delay in reporting this in a timely manner. It was fixed in 1.10.5 which was released 2019-09-04)
Thanks,
Ash,
on behalf of Apache Airflow PMC


--5e1da638_2bfd57e0_16e0--

