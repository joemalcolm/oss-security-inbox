X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["428" "Thursday" "24" "February" "2022" "18:00:13" "+0000" "Jedidiah Cunningham" "jedcunningham@apache.org" nil "15" "[oss-security] CVE-2021-45229: Apache Airflow: Reflected XSS via Origin Query Argument in URL " nil nil nil "2" nil nil (number mark "U       jedcunningha Feb 24   15/428   " thread-indent "\"[oss-security] CVE-2021-45229: Apache Airflow: Reflected XSS via Origin Query Argument in URL \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-45229: Apache Airflow: Reflected XSS via Origin Query Argument in URL " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3917 invoked by uid 550); 24 Feb 2022 18:15:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32105 invoked from network); 24 Feb 2022 18:00:33 -0000
Content-Type: text/plain; charset=utf-8
From: Jedidiah Cunningham <jedcunningham@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <7ed76c19-838b-fe97-af15-623df2ce7a35@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 24 Feb 2022 18:00:13 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-45229: Apache Airflow: Reflected XSS via Origin Query
 Argument in URL 

Severity: high

Description:

It was discovered that the "Trigger DAG with config" screen was susceptible=
 to XSS attacks via the `origin` query argument.

This issue affects Apache Airflow versions 2.2.3 and below.=20

Credit:

The Apache Airflow PMC would like to thank both Bogdan Kurinnoy of the Sams=
ung R&D Institute Ukraine (SRK) and Ali Al-Habsi of Accellion for independe=
ntly discovering and reporting this issue.

