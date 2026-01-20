Received: (qmail 21627 invoked by uid 550); 20 Jan 2026 16:01:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1393 invoked from network); 20 Jan 2026 15:52:05 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jason Gerlowski <gerlowskija@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <4baedddc-7d59-0d80-3f89-ff9bae6051bc@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 20 Jan 2026 15:50:52 +0000
MIME-Version: 1.0
Subject: [oss-security] =?UTF-8?Q?CVE-2026-22022=3A_Apache_Solr=3A_Unautho?=
 =?UTF-8?Q?rized_bypass_of_certain_=22predefined_pe?=
 =?UTF-8?Q?rmission=22_rules_in_the_RuleBasedAuthor?=
 =?UTF-8?Q?izationPlugin=20?=

Severity: moderate=20

Affected versions:

- Apache Solr 5.3 through 9.10.0

Description:

Deployments of Apache Solr 5.3.0 through 9.10.0 that rely on Solr's "Rule B=
ased Authorization Plugin" are vulnerable to allowing unauthorized access t=
o certain Solr APIs, due to insufficiently strict input validation in those=
 components.=C2=A0 Only deployments that meet all of the following criteria=
 are impacted by this vulnerability:

  *  Use of Solr's "RuleBasedAuthorizationPlugin"
  *  A RuleBasedAuthorizationPlugin config (see security.json) that specifi=
es multiple "roles"
  *  A RuleBasedAuthorizationPlugin permission list (see security.json) tha=
t uses one or more of the following pre-defined permission rules: "config-r=
ead", "config-edit", "schema-read", "metrics-read", or "security-read".
  *  A RuleBasedAuthorizationPlugin permission list that doesn't define the=
 "all" pre-defined permission
  *  A networking setup that allows clients to make unfiltered network requ=
ests to Solr. (i.e. user-submitted HTTP/HTTPS requests reach Solr as-is, un=
modified or restricted by any intervening proxy or gateway)

Users can mitigate this vulnerability by ensuring that their RuleBasedAutho=
rizationPlugin configuration specifies the "all" pre-defined permission and=
 associates the permission with an "admin" or other privileged role.=C2=A0 =
Users can also upgrade to a Solr version outside of the impacted range, suc=
h as the recently released Solr 9.10.1.

This issue is being tracked as SOLR-18054=20

Credit:

monkeontheroof (finder)

References:

https://solr.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2026-22022
https://issues.apache.org/jira/browse/SOLR-18054

