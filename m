X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["415" "Thursday" "24" "February" "2022" "18:01:16" "+0000" "Jedidiah Cunningham" "jedcunningham@apache.org" nil "17" "[oss-security] CVE-2022-24288: Apache Airflow: RCE in example DAGs " nil nil nil "2" nil nil (number mark "U       jedcunningha Feb 24   17/415   " thread-indent "\"[oss-security] CVE-2022-24288: Apache Airflow: RCE in example DAGs \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2022-24288: Apache Airflow: RCE in example DAGs " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5407 invoked by uid 550); 24 Feb 2022 18:16:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32276 invoked from network); 24 Feb 2022 18:01:32 -0000
Content-Type: text/plain; charset=utf-8
From: Jedidiah Cunningham <jedcunningham@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <e22399f1-15c2-da7b-5786-1368aaf87a4d@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 24 Feb 2022 18:01:16 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-24288: Apache Airflow: RCE in example DAGs 

Severity: high

Description:

In Apache Airflow, prior to version 2.2.4, some example DAGs did not proper=
ly sanitize user-provided params, making them susceptible to OS Command Inj=
ection from the web UI.

Mitigation:

This can be mitigated by ensuring `[core] load_examples` is set to `False`.

Credit:

The Apache Airflow PMC would like to thank Kai Zhao of the TToU Security Te=
am for reporting this issue.

