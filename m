Received: (qmail 17445 invoked by uid 550); 2 Sep 2022 06:40:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19586 invoked from network); 2 Sep 2022 03:54:46 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jedidiah Cunningham <jedcunningham@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <573c0741-ba91-b802-06db-6b0704e0f687@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 02 Sep 2022 03:53:55 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-38054: Apache Airflow: Session Fixation 

Description:

In Apache Airflow versions 2.2.4 through 2.3.3, the `database` webserver se=
ssion backend was susceptible to session fixation.

Credit:

The Apache Airflow PMC would like to thank Kai Zhao for reporting this issu=
e.

