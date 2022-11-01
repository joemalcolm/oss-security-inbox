Received: (qmail 23802 invoked by uid 550); 1 Nov 2022 21:09:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13488 invoked from network); 1 Nov 2022 21:00:09 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jedidiah Cunningham <jedcunningham@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <6a2839aa-8d22-ae93-a8d7-6676717cee07@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 01 Nov 2022 20:59:26 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-43985: Apache Airflow: Open Redirect 

Description:

In Apache Airflow versions prior to 2.4.2, there was an open redirect in th=
e webserver's `/confirm` endpoint.

Credit:

The Apache Airflow PMC would like to thank Axel Chong (@Haxatron) [https://=
hackerone.com/haxatron1] for reporting this issue.

References:

https://github.com/apache/airflow/pull/27143


