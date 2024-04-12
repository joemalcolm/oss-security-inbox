Received: (qmail 21731 invoked by uid 550); 12 Apr 2024 15:46:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23562 invoked from network); 12 Apr 2024 14:32:39 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jason Gerlowski <gerlowskija@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <ab17648d-ea77-7471-8e7e-9a682664d329@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Apr 2024 14:32:28 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-31391: Apache Solr Operator: Solr-Operator liveness and
 readiness probes may leak basic auth credentials 

Severity: moderate

Affected versions:

- Apache Solr Operator 0.3.0 through 0.8.0

Description:

Insertion of Sensitive Information into Log File vulnerability in the Apach=
e Solr Operator.

This issue affects all versions of the Apache Solr Operator from 0.3.0 thro=
ugh 0.8.0.

When asked to bootstrap Solr security, the operator will enable basic authe=
ntication and create several accounts for accessing Solr: including the "so=
lr" and "admin" accounts for use by end-users, and a "k8s-oper" account whi=
ch the operator uses for its own requests to Solr.
One common source of these operator requests is healthchecks: liveness, rea=
diness, and startup probes are all used to determine Solr's health and abil=
ity to receive traffic.
By default, the operator configures the Solr APIs used for these probes to =
be exempt from authentication, but=C2=A0users may specifically request that=
 authentication be required on probe endpoints as well.
Whenever one of these probes would fail, if authentication was in use, the =
Solr Operator would create a Kubernetes "event" containing the username and=
 password of the "k8s-oper" account.

Within the affected version range, this vulnerability affects any solrcloud=
 resource which (1) bootstrapped security through use of the `.solrOptions.=
security.authenticationType=3Dbasic` option, and (2) required authenticatio=
n be used on probes by setting `.solrOptions.security.probesRequireAuth=3Dt=
rue`.

Users are recommended to upgrade to Solr Operator version 0.8.1, which fixe=
s this issue by ensuring that probes no longer print the credentials used f=
or Solr requests.=C2=A0 Users may also mitigate the vulnerability by disabl=
ing authentication on their healthcheck probes using the setting `.solrOpti=
ons.security.probesRequireAuth=3Dfalse`.

This issue is being tracked as SOLR-17216=20

Credit:

Flip Hess (finder)

References:

https://solr.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-31391
https://issues.apache.org/jira/browse/SOLR-17216

