Received: (qmail 13711 invoked by uid 550); 25 Jul 2023 13:23:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13693 invoked from network); 25 Jul 2023 13:23:33 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Julian Reschke <reschke@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <51769413-37d8-4f9a-6e37-1b50a7ff555a@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 25 Jul 2023 13:23:19 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-37895: Apache Jackrabbit RMI access can lead to RCE 

Severity: critical

Affected versions:

- Apache Jackrabbit Webapp (jackrabbit-webapp) 2.21.0 before 2.21.18
- Apache Jackrabbit Webapp (jackrabbit-webapp) 1.0.0 before 2.20.11
- Apache Jackrabbit Standalone (jackrabbit-standalone and jackrabbit-standa=
lone-components) 2.21.0 before 2.21.18
- Apache Jackrabbit Standalone (jackrabbit-standalone and jackrabbit-standa=
lone-components) 1.0.0 before 2.20.11

Description:

Java object deserialization issue in Jackrabbit webapp/standalone on all pl=
atforms allows attacker to remotely execute code via RMIVersions up to (inc=
luding) 2.20.10 (stable branch) and 2.21.17 (unstable branch) use the compo=
nent "commons-beanutils", which contains a class that can be used for remot=
e code execution over RMI.

Users are advised to immediately update to versions 2.20.11 or 2.21.18. Not=
e that earlier stable branches (1.0.x .. 2.18.x) have been EOLd already and=
 do not receive updates anymore.

In general, RMI support can expose vulnerabilities by the mere presence of =
an exploitable class on the classpath. Even if Jackrabbit itself does not c=
ontain any code known to be exploitable anymore, adding other components to=
 your server can expose the same type of problem. We therefore recommend to=
 disable RMI access altogether (see further below), and will discuss deprec=
ating RMI support in future Jackrabbit releases.

How to check whether RMI support is enabledRMI support can be over an RMI-s=
pecific TCP port, and over an HTTP binding. Both are by default enabled in =
Jackrabbit webapp/standalone.

The native RMI protocol by default uses port 1099. To check whether it is e=
nabled, tools like "netstat" can be used to check.

RMI-over-HTTP in Jackrabbit by default uses the path "/rmi". So when runnin=
g standalone on port 8080, check whether an HTTP GET request on localhost:8=
080/rmi returns 404 (not enabled) or 200 (enabled). Note that the HTTP path=
 may be different when the webapp is deployed in a container as non-root co=
ntext, in which case the prefix is under the user's control.

Turning off RMIFind web.xml (either in JAR/WAR file or in unpacked web appl=
ication folder), and remove the declaration and the mapping definition for =
the RemoteBindingServlet:

=C2=A0 =C2=A0 =C2=A0 =C2=A0 <servlet>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <servlet-name>RMI</servlet-name>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <servlet-class>org.apache.jackrab=
bit.servlet.remote.RemoteBindingServlet</servlet-class>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 </servlet>

=C2=A0 =C2=A0 =C2=A0 =C2=A0 <servlet-mapping>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <servlet-name>RMI</servlet-name>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <url-pattern>/rmi</url-pattern>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 </servlet-mapping>

Find the bootstrap.properties file (in $REPOSITORY_HOME), and set

=C2=A0 =C2=A0 =C2=A0 =C2=A0  rmi.enabled=3Dfalse

=C2=A0 =C2=A0 and also remove

=C2=A0 =C2=A0 =C2=A0 =C2=A0  rmi.host
=C2=A0 =C2=A0 =C2=A0 =C2=A0  rmi.port
=C2=A0 =C2=A0 =C2=A0 =C2=A0  rmi.url-pattern

=C2=A0If there is no file named bootstrap.properties in $REPOSITORY_HOME, i=
t is located somewhere in the classpath. In this case, place a copy in $REP=
OSITORY_HOME and modify it as explained.

Credit:

Siebene@ (reporter)
Michael D=C3=BCrig (other)
Manfred Baedke (other)

References:

https://lists.apache.org/list.html?users@jackrabbit.apache.org
https://jackrabbit.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-37895

Timeline:

2023-06-30: Reported
2023-07-20: Release vote for unstable branch with fix
2023-07-20: Release vote for stable branch with fix
2023-07-24: unstable branch (2.21.18) released
2023-07-24: stable branch (2.20.11) released

