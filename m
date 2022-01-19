X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["591" "Wednesday" "19" "January" "2022" "14:08:03" "+0000" "Kaxil Naik" "kaxilnaik@apache.org" nil "19" "[oss-security] CVE-2021-45230: Apache Airflow: Creating DagRuns didn't respect Dag-level permissions in the Webserver " nil nil nil "1" nil nil (number mark "U       kaxilnaik@ap Jan 19   19/591   " thread-indent "\"[oss-security] CVE-2021-45230: Apache Airflow: Creating DagRuns didn't respect Dag-level permissions in the Webserver \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-45230: Apache Airflow: Creating DagRuns didn't respect Dag-level permissions in the Webserver " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5414 invoked by uid 550); 19 Jan 2022 14:44:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22073 invoked from network); 19 Jan 2022 14:08:26 -0000
Content-Type: text/plain; charset=utf-8
From: Kaxil Naik <kaxilnaik@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <9c291caf-92b6-6293-193e-93ddc7fde95e@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 19 Jan 2022 14:08:03 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-45230: Apache Airflow: Creating DagRuns didn't respect
 Dag-level permissions in the Webserver 

Description:

This CVE applies to a specific case where a User who has "can_create" permi=
ssions on DAG Runs can create Dag Runs for dags that they don't have "edit"=
 permissions for.=20

This is a very low severity CVE and admins can mitigate this issue by remov=
ing the global "can_create" permissions on DagRun for Airflow versions >=3D=
2.0.0,<2.2.0 and 1.10.x versions that have set `rbac=3DTrue` in config.

Credit:

Apache Airflow PMC would like to thank Franco Cano Erazo for reporting this=
 issue.

References:

https://lists.apache.org/thread/m778ojn0k595rwco4ht9wjql89mjoxnl

