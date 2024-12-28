Received: (qmail 22171 invoked by uid 550); 28 Dec 2024 01:30:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3599 invoked from network); 28 Dec 2024 01:23:28 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: David Handermann <exceptionfactory@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <9cd2e805-fb3c-6bc9-aa03-8f31506d3f70@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sat, 28 Dec 2024 01:23:19 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-56512: Apache NiFi: Missing Complete Authorization for
 Parameter and Service References 

Affected versions:

- Apache NiFi 1.10.0 through 2.0.0

Description:

Apache NiFi 1.10.0 through 2.0.0 are missing fine-grained authorization che=
cking for Parameter Contexts, referenced Controller Services, and reference=
d Parameter Providers, when creating new Process Groups.

Creating a new Process Group can include binding to a Parameter Context, bu=
t in cases where the Process Group did not reference any Parameter values, =
the framework did not check user authorization for the bound Parameter Cont=
ext. Missing authorization for a bound Parameter Context enabled clients to=
 download non-sensitive Parameter values after creating the Process Group.

Creating a new Process Group can also include referencing existing Controll=
er Services or Parameter Providers. The framework did not check user author=
ization for referenced Controller Services or Parameter Providers, enabling=
 clients to create Process Groups and use these components that were otherw=
ise unauthorized.

This vulnerability is limited in scope to authenticated users authorized to=
 create Process Groups. The scope is further limited to deployments with co=
mponent-based authorization policies. Upgrading to Apache NiFi 2.1.0 is the=
 recommended mitigation, which includes authorization checking for Paramete=
r and Controller Service references on Process Group creation.

This issue is being tracked as NIFI-13976=20

Credit:

Matt Gilman (finder)

References:

https://nifi.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-56512
https://issues.apache.org/jira/browse/NIFI-13976

