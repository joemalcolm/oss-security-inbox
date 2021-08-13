X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["663" "Friday" "13" "August" "2021" "12:20:03" "+0000" "Kaxil Naik" "kaxilnaik@apache.org" nil "22" "[oss-security] CVE-2021-35936: Apache Airflow: No Authentication on Logging Server " nil nil nil "8" nil nil (number mark "U       kaxilnaik@ap Aug 13   22/663   " thread-indent "\"[oss-security] CVE-2021-35936: Apache Airflow: No Authentication on Logging Server \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-35936: Apache Airflow: No Authentication on Logging Server " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9649 invoked by uid 550); 14 Aug 2021 08:26:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11505 invoked from network); 13 Aug 2021 12:20:17 -0000
Content-Type: text/plain; charset=utf-8
From: Kaxil Naik <kaxilnaik@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <7b76d2e2-1438-b059-0e65-a2986c815f76@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 13 Aug 2021 12:20:03 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-35936: Apache Airflow: No Authentication on Logging
 Server 

Description:

If remote logging is not used, the worker (in the case of CeleryExecutor) o=
r the scheduler (in the case of LocalExecutor) runs a Flask logging server =
and is listening on a specific port and also binds on 0.0.0.0 by default.
This logging server had no authentication and allows reading log files of D=
AG jobs.

This issue affects Apache Airflow < 2.1.2.

Mitigation:

Use remote logging with GCS, S3, Elasticsearch etc. This is recommended for=
 production environments.

And do not publicly expose any other ports apart from Webserver port, Flowe=
r port etc.

Credit:

Apache Airflow would like to thank Dolev Farhi for reporting this issue.

