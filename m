X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["486" "Thursday" "9" "September" "2021" "11:22:49" "+0000" "Kaxil Naik" "kaxilnaik@apache.org" nil "15" "[oss-security] CVE-2021-38540: Apache Airflow: Variable Import endpoint missed authentication check " nil nil nil "9" nil nil (number mark "U       kaxilnaik@ap Sep  9   15/486   " thread-indent "\"[oss-security] CVE-2021-38540: Apache Airflow: Variable Import endpoint missed authentication check \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-38540: Apache Airflow: Variable Import endpoint missed authentication check " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32385 invoked by uid 550); 9 Sep 2021 11:45:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24089 invoked from network); 9 Sep 2021 11:23:03 -0000
Content-Type: text/plain; charset=utf-8
From: Kaxil Naik <kaxilnaik@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <e2aab54c-0042-d9fd-7df6-386cb1b498e1@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Sep 2021 11:22:49 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-38540: Apache Airflow: Variable Import endpoint missed
 authentication check 

Description:

The variable import endpoint was not protected by authentication in Airflow=
 >=3D2.0.0, <2.1.3. This allowed unauthenticated users to hit that endpoint=
 to add/modify Airflow variables used in DAGs, potentially
resulting in a denial of service, information disclosure or remote code exe=
cution.

This issue affects Apache Airflow >=3D2.0.0, <2.1.3.

Credit:

Apache Airflow would like to thank Nathan Jones, National Australia Bank=E2=
=80=99s Offensive Security Team

