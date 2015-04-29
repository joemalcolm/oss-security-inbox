X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3469" "Wednesday" "29" "April" "2015" "16:00:58" "+0200" "Andrea Barisani" "lcars@ocert.org" "<20150429140058.GH23142@core.inversepath.com>" "97" "[oss-security] [oCERT-2015-003] MySQL SSL/TLS downgrade" nil nil nil "4" "2015042914:00:58" "[oss-security] [oCERT-2015-003] MySQL SSL/TLS downgrade" (number mark "        lcars@ocert. Apr 29   97/3469  " thread-indent "\"[oss-security] [oCERT-2015-003] MySQL SSL/TLS downgrade\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18045 invoked by uid 550); 29 Apr 2015 14:01:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17866 invoked from network); 29 Apr 2015 14:01:10 -0000
Message-ID: <20150429140058.GH23142@core.inversepath.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-GPG-Key: 0x864C9B9E
X-GPG-Fingerprint: 0A76 074A 02CD E989 CE7F  AC3F DA47 578E 864C 9B9E
User-Agent: Mutt/1.5.20 (2009-06-14)
Date: Wed, 29 Apr 2015 16:00:58 +0200
From: Andrea Barisani <lcars@ocert.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [oCERT-2015-003] MySQL SSL/TLS downgrade
To: oss-security@lists.openwall.com, ocert-announce@lists.ocert.org,
        bugtraq@securityfocus.com


#2015-003 MySQL SSL/TLS downgrade

Description:

The MySQL project is an open source relational database management system.

A vulnerability has been reported concerning the impossibility for MySQL users
(with any major stable version) to enforce an effective SSL/TLS connection
that would be immune from man-in-the-middle (MITM) attacks performing a
malicious downgrade.

While the issue has been addressed in MySQL preview release 5.7.3 in December
2013, it is perceived that the majority of MySQL users are not aware of this
limitation and that the issue should be treated as a vulnerability.

The vulnerability lies within the behaviour of the '--ssl' client option,
which on affected versions it is being treated as "advisory". Therefore while
the option would attempt an SSL/TLS connection to be initiated towards a
server, it would not actually require it. This allows a MITM attack to
transparently "strip" the SSL/TLS protection.

The issue affects the ssl client option whether used directly or triggered
automatically by the use of other ssl options ('--ssl-xxx') that imply
'--ssl'.

Such behavior is clearly indicated in MySQL reference manual as follows:

  For the server, this option specifies that the server permits but does not require
  SSL connections.

  For a client program, this option permits but does not require the client to
  connect to the server using SSL. Therefore, this option is not sufficient in
  itself to cause an SSL connection to be used. For example, if you specify this
  option for a client program but the server has not been configured to permit
  SSL connections, an unencrypted connection is used.

In a similar manner to the new '--ssl' option behaviour, users of the MySQL
client library (Connector/C, libmysqlclient), as of MySQL 5.7.3, can take
advantage of the MYSQL_OPT_SSL_ENFORCE option to enforce SSL/TLS connections.

The vulnerability also affects the MySQL forks MariaDB and Percona Server, as
the relevant 5.7.3 patch has not been pulled, at the time of this advisory, in
their respective stable versions.

Affected version:

MySQL <= 5.7.2

MySQl Connector/C (libmysqlclient) < 6.1.3

Percona Server, all versions

MariaDB, all versions

Fixed version:

MySQL >= 5.7.3

MySQl Connector/C (libmysqlclient) >= 6.1.3

Percona Server, N/A

MariaDB, N/A

Credit: vulnerability report from Adam Goodman, Principal Security Architect
at Duo Security.

CVE: CVE-2015-3152 (MariaDB, Percona)

Timeline:

2015-03-20: vulnerability report received
2015-03-23: contacted Oracle Security
2015-04-04: oCERT sets embargo date to April 29th
2015-04-20: reporter confirms MariaDB is affected
2015-04-22: contacted MariaDB and affected vendors, assigned CVEs
2015-04-23: contacted Percona
2015-04-29: advisory release

References:
https://github.com/mysql/mysql-server/commit/3bd5589e1a5a93f9c224badf983cd65c45215390
http://mysqlblog.fivefarmers.com/2014/04/02/redefining-ssl-option
http://dev.mysql.com/doc/relnotes/mysql/5.7/en/news-5-7-3.html
https://mariadb.atlassian.net/browse/MDEV-7937
https://bugs.launchpad.net/percona-server/+bug/1447527

Permalink:
http://www.ocert.org/advisories/ocert-2015-003.html

-- 
Andrea Barisani |                Founder & Project Coordinator
          oCERT | OSS Computer Security Incident Response Team

<lcars@ocert.org>                         http://www.ocert.org
 0x864C9B9E 0A76 074A 02CD E989 CE7F AC3F DA47 578E 864C 9B9E
        "Pluralitas non est ponenda sine necessitate"
