X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1789" "Tuesday" "7" "July" "2015" "11:07:37" "+0200" "Emmanuel Lecharny" "elecharny@apache.org" "<CAG8=FRj5sL+J6YUJqY95uBJN=vxtS=rWfngAfHk4k2vyShadHw@mail.gmail.com>" "58" "[oss-security] [ANNOUNCE] Apache Directory LDAP API 1.0.0-M31 released" nil nil nil "7" "2015070709:07:37" "[oss-security] [ANNOUNCE] Apache Directory LDAP API 1.0.0-M31 released" (number mark "U       elecharny@ap Jul  7   58/1789  " thread-indent "\"[oss-security] [ANNOUNCE] Apache Directory LDAP API 1.0.0-M31 released\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11666 invoked by uid 550); 7 Jul 2015 10:54:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3845 invoked from network); 7 Jul 2015 09:07:51 -0000
MIME-Version: 1.0
X-Received: by 10.129.83.131 with SMTP id h125mr3701036ywb.101.1436260057149;
 Tue, 07 Jul 2015 02:07:37 -0700 (PDT)
Date: Tue, 7 Jul 2015 11:07:37 +0200
Message-ID: <CAG8=FRj5sL+J6YUJqY95uBJN=vxtS=rWfngAfHk4k2vyShadHw@mail.gmail.com>
From: Emmanuel Lecharny <elecharny@apache.org>
To: announce@apache.org, 
	"users@directory.apache.org" <users@directory.apache.org>, 
	Apache Directory Developers List <dev@directory.apache.org>, fortress@directory.apache.org, 
	kerby@directory.apache.org, "security@apache.org" <security@apache.org>, 
	oss-security@lists.openwall.com, bugtraq@securityfocus.com
Content-Type: multipart/alternative; boundary=001a114d8e6682fb3a051a455af8
Subject: [oss-security] [ANNOUNCE] Apache Directory LDAP API 1.0.0-M31 released

--001a114d8e6682fb3a051a455af8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

The Apache Directory Team is proud to announce the availability of the
1.0.0-M31 version of the Apache Directory LDAP API.

The Apache Directory LDAP client API is an ongoing effort to provide
an enhanced LDAP API, as a replacement for JNDI and the existing
LDAPAPI (jLdap and Mozilla LDAP API).

This is a schema aware API, with some convenient ways to access a LDAP
server. This API is not only targeting the Apache Directory Server,
but should work pristine with any LDAP server.

It's also an extensible API : new Controls, schema elements and
network layer could be added or used in the near future. It's also
OSGi capable.


This release is fixing a security vulnerability : CVE-2015-3050, a
Timing Attack vulnerability.


Here is the list of the other fixed issues :


*Bugs :*

   - DIRAPI-238 <https://issues.apache.org/jira/browse/DIRAPI-238>
<https://issues.apache.org/jira/browse/DIRAPI-236> - DSML prettyprint
does not work, prints error
   - DIRAPI-240 <https://issues.apache.org/jira/browse/DIRAPI-240>
<https://issues.apache.org/jira/browse/DIRAPI-234> -
   OpenLDAP SchemaObjectRenderer produces schema with syntax error

*Improvements :*

   - DIRAPI-233 <https://issues.apache.org/jira/browse/DIRAPI-233>
<https://issues.apache.org/jira/browse/DIRAPI-233> - OSGi:
   Import package range for slf4j

Feel free to experiment, we highly appreciate your feedback !


Website : http://directory.apache.org/api
Download : http://directory.apache.org/api/downloads.html
User's Guide : http://directory.apache.org/api/user-guide.html

The Apache Directory Team

--=20
Regards,
Cordialement,
Emmanuel L=C3=A9charny
www.iktek.com

--001a114d8e6682fb3a051a455af8--
