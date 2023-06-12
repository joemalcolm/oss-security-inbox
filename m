Received: (qmail 9329 invoked by uid 550); 12 Jun 2023 19:15:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15466 invoked from network); 12 Jun 2023 14:26:55 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: David Handermann <exceptionfactory@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <03c4e506-c64e-c997-2607-a8502a6d097e@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 12 Jun 2023 14:26:41 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-34212: Apache NiFi: Potential Deserialization of
 Untrusted Data with JNDI in JMS Components 

Severity: important

Affected versions:

- Apache NiFi 1.8.0 through 1.21.0

Description:

The JndiJmsConnectionFactoryProvider Controller Service, along with the Con=
sumeJMS and PublishJMS Processors, in Apache NiFi 1.8.0 through 1.21.0 allo=
w an authenticated and authorized user to configure URL and library propert=
ies that enable deserialization of untrusted data from a remote location.

The resolution validates the JNDI URL and restricts locations to a set of a=
llowed schemes.

This issue is being tracked as NIFI-11614=20

Credit:

Veraxy00 of Qianxin TI Center (finder)
Matei "Mal" Badanoiu (reporter)

References:

https://nifi.apache.org/security.html#CVE-2023-34212
https://nifi.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-34212
https://issues.apache.org/jira/browse/NIFI-11614

Timeline:

2023-05-28: reported
2023-05-29: confirmed
2023-06-01: resolved

