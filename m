Received: (qmail 32297 invoked by uid 550); 29 May 2026 20:07:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13973 invoked from network); 29 May 2026 20:01:43 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: =?UTF-8?Q?Jan_H=C3=B8ydahl?= <janhoy@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <75befa58-44b5-caa4-25de-a78bc6f97a93@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 29 May 2026 20:01:06 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-44825: Apache Solr: Enabling BasicAuth using bin/solr CLI
 configures additional insecure users 

Severity: High=20

Affected versions:

- Apache Solr (org.apache.solr:solr-core) 9.4.0 through 9.10.1
- Apache Solr (org.apache.solr:solr-core) 10.0.0

Description:

Hardcoded credentials in the Basic Authentication setup tool (bin/solr auth=
 enable) in Apache Solr versions 9.4.0 through 9.10.1 and 10.0.0 allows a r=
emote attacker to gain full administrative access to the cluster via public=
ly known default credentials installed silently alongside the user-specifie=
d account.=20

As an immediate workaround without upgrading, delete the template users (su=
peradmin, admin, search, index) from security.json=C2=A0or change their pas=
swords.
The future, not yet released, versions 9.11.0 and 10.1.0 will not be vulner=
able, and it will be enough to upgrade to solve the issue.

Not affected:
  *  Clusters where bin/solr auth enable was not used to bootstrap BasicAuth
  *  Clusters where template users have been assigned strong passwords afte=
r bootstrap

This issue is being tracked as SOLR-18233=20

Credit:

Naveen Sunkavally, Horizon3.ai (finder)

References:

https://solr.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2026-44825
https://issues.apache.org/jira/browse/SOLR-18233

