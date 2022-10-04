Received: (qmail 17894 invoked by uid 550); 4 Oct 2022 19:12:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30596 invoked from network); 4 Oct 2022 18:29:43 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jedidiah Cunningham <jedcunningham@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <1563af5a-1a2a-0d41-f56b-cdd21f503fb6@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 04 Oct 2022 18:29:07 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-41672: Apache Airflow: Session still funtional after user
 is deactivated 

Description:

In Apache Airflow, prior to version 2.4.1, deactivating a user wouldn't pre=
vent an already authenticated user from being able to continue using the UI=
 or API.

Credit:

The Apache Airflow PMC would like to thank Axel Chong (@Haxatron) for repor=
ting this issue.

References:

https://github.com/apache/airflow/pull/26635


