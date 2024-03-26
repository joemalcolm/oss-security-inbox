Received: (qmail 24368 invoked by uid 550); 26 Mar 2024 14:40:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5388 invoked from network); 26 Mar 2024 14:28:48 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jarek Potiuk <potiuk@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <5935a3d4-2b6c-b71d-c934-a43da9297880@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 26 Mar 2024 14:33:16 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-29735: Apache Airflow: Potentially harmful permission
 changing by log task handler 

Severity: important

Affected versions:

- Apache Airflow 2.8.2 through 2.8.3

Description:

Improper Preservation of Permissions vulnerability in Apache Airflow.This i=
ssue affects Apache Airflow from 2.8.2 through 2.8.3.

Airflow's local file task handler in Airflow incorrectly set permissions fo=
r all parent folders of log folder, in default configuration adding write a=
ccess to Unix group=C2=A0of the folders. In the case Airflow is run with th=
e root user (not recommended) it added group write permission to all folder=
s up to the root of the filesystem.

If your log files are stored in the home directory, these permission change=
s might impact your ability to run SSH operations after your home directory=
 becomes group-writeable.

This issue does not affect users who use or extend Airflow using Official A=
irflow Docker reference images ( https://hub.docker.com/r/apache/airflow/ )=
 - those images require to have group write permission set anyway.

You are affected only if you install Airflow using local installation / vir=
tualenv or other Docker images, but the issue has no impact if docker conta=
iners are used as intended, i.e. where Airflow components do not share cont=
ainers with other applications and users.

Also you should not be affected if your umask is 002 (group write enabled) =
- this is the default on many linux systems.

Recommendation for users using Airflow outside of the containers:

  *  if you are using root to run Airflow, change your Airflow user to use =
non-root
  *  upgrade Apache Airflow to 2.8.4 or above
  *  If you prefer not to upgrade, you can change the  https://airflow.apac=
he.org/docs/apache-airflow/stable/configurations-ref.html#file-task-handler=
-new-folder-permissions =C2=A0to 0o755 (original value 0o775).
  *  if you already ran Airflow tasks before and your default umask is 022 =
(group write disabled) you should stop Airflow components, check permission=
s of AIRFLOW_HOME/logs=C2=A0in all your components and all parent directori=
es of this directory and remove group write access for all the parent direc=
tories

Credit:

Matej Murin (finder)

References:

https://github.com/apache/airflow/pull/37310
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-29735

