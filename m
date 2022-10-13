Received: (qmail 22336 invoked by uid 550); 13 Oct 2022 12:31:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7387 invoked from network); 13 Oct 2022 12:10:58 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: "Gary D. Gregory" <ggregory@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <630d1a1c-8f32-65e0-86a5-8863e6d86614@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 13 Oct 2022 12:09:48 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-42889: Apache Commons Text prior to 1.10.0 allows RCE
 when applied to untrusted input due to insecure interpolation defaults 

Severity: important

Description:

Apache Commons Text performs variable interpolation, allowing properties to=
 be dynamically evaluated and expanded. The standard format for interpolati=
on is "${prefix:name}", where "prefix" is used to locate an instance of org=
.apache.commons.text.lookup.StringLookup that performs the interpolation. S=
tarting with version 1.5 and continuing through 1.9, the set of default Loo=
kup instances included interpolators that could result in arbitrary code ex=
ecution or contact with remote servers. These lookups are: - "script" - exe=
cute expressions using the JVM script execution engine (javax.script) - "dn=
s" - resolve dns records - "url" - load values from urls, including from re=
mote servers Applications using the interpolation defaults in the affected =
versions may be vulnerable to remote code execution or unintentional contac=
t with remote servers if untrusted configuration values are used. Users are=
 recommended to upgrade to Apache Commons Text 1.10.0, which disables the p=
roblematic interpolators by default.

Mitigation:

Upgrade to Apache Commons Text 1.10.0.

