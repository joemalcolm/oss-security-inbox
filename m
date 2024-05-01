Received: (qmail 1702 invoked by uid 550); 1 May 2024 16:34:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29999 invoked from network); 1 May 2024 16:10:30 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: =?UTF-8?Q?Jean-Baptiste_Onofr=C3=A9?= <jbonofre@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <3109ed27-2555-d49b-2c48-f3e699c5c866@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 May 2024 16:07:22 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-32114: Apache ActiveMQ: Jolokia and REST API were not
 secured with default configuration 

Severity: low

Affected versions:

- Apache ActiveMQ 6.0.0 through 6.1.1

Description:

In Apache ActiveMQ 6.x, the default configuration doesn't secure the API we=
b context (where the Jolokia JMX REST API and the Message REST API are loca=
ted).
It means that anyone can use these layers without any required authenticati=
on. Potentially, anyone can interact with the broker (using Jolokia JMX RES=
T API) and/or produce/consume messages or purge/delete destinations (using =
the Message REST API).

To mitigate, users can update the default conf/jetty.xml configuration file=
 to add authentication requirement:
<bean id=3D"securityConstraintMapping" class=3D"org.eclipse.jetty.security.=
ConstraintMapping">
=C2=A0 <property name=3D"constraint" ref=3D"securityConstraint" />
=C2=A0 <property name=3D"pathSpec" value=3D"/" />
</bean>

Or we encourage users to upgrade to Apache ActiveMQ 6.1.2 where the default=
 configuration has been updated with authentication by default.

This issue is being tracked as AMQ-9477=20

Credit:

Martin Zeissig (finder)

References:

https://activemq.apache.org/security-advisories.data/CVE-2024-32114-announc=
ement.txt
https://activemq.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-32114
https://issues.apache.org/jira/browse/AMQ-9477

