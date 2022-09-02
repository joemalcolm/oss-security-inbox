Received: (qmail 3397 invoked by uid 550); 2 Sep 2022 09:21:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19925 invoked from network); 2 Sep 2022 03:55:20 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jedidiah Cunningham <jedcunningham@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <c44d5503-8393-4048-2b2b-5bc3ddac3a43@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 02 Sep 2022 03:55:07 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-38170: Apache Airflow: Overly permissive umask for
 deamons 

Description:

In Apache Airflow prior to 2.3.4, an insecure umask was configured for nume=
rous Airflow components when running with the  `--deamon` flag which could =
result in a race condition giving world-writable files in the Airflow home =
directory and allowing local users to expose arbitrary file contents via th=
e webserver.

Mitigation:

Run without the `--deamon` flag via a process supervisor instead (systemd, =
runit, etc.).

Credit:

The Apache Airflow PMC would like to thank Harry Sintonen for reporting thi=
s issue.

