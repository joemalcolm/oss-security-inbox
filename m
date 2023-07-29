Received: (qmail 7529 invoked by uid 550); 29 Jul 2023 07:53:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7629 invoked from network); 29 Jul 2023 02:25:59 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: David Handermann <exceptionfactory@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <caf72d56-b63f-61d3-1d4d-7f3fee472b9f@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sat, 29 Jul 2023 02:25:39 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-36542: Apache NiFi: Potential Code Injection with
 Properties Referencing Remote Resources 

Severity: moderate

Affected versions:

- Apache NiFi 0.0.2 through 1.22.0

Description:

Apache NiFi 0.0.2 through 1.22.0 include Processors and Controller Services=
 that support HTTP URL references for retrieving drivers, which allows an a=
uthenticated and authorized user to configure a location that enables custo=
m code execution. The resolution introduces a new Required Permission for r=
eferencing remote resources, restricting configuration of these components =
to privileged users. The permission prevents unprivileged users from config=
uring Processors and Controller Services annotated with the new Reference R=
emote Resources restriction. Upgrading to Apache NiFi 1.23.0 is the recomme=
nded mitigation.

This issue is being tracked as NIFI-11744=20

Credit:

nbxiglk (finder)

References:

https://nifi.apache.org/security.html#CVE-2023-36542
https://nifi.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-36542
https://issues.apache.org/jira/browse/NIFI-11744

Timeline:

2023-06-19: reported
2023-06-21: confirmed
2023-06-21: resolved

