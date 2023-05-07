Received: (qmail 21786 invoked by uid 550); 7 May 2023 21:16:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3621 invoked from network); 7 May 2023 19:33:15 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Robert Middleton <rmiddleton@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <a1858f69-212b-f8f7-d9f2-3015bd60544a@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 07 May 2023 19:32:59 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-31038: Apache Log4cxx: SQL injection when using ODBC
 appender 

Severity: 6.8

Affected versions:

- Apache Log4cxx 0.9.0 before 1.1.0

Description:

SQL injection in Log4cxx when using the ODBC appender to send log messages =
to a database.=C2=A0 No fields sent to the database were properly escaped f=
or SQL injection.=C2=A0 This has been the case since at least version 0.9.0=
(released 2003-08-06)




Note that Log4cxx is a C++ framework, so only C++ applications are affected.

Before version 1.1.0, the ODBC appender was automatically part of Log4cxx i=
f the library was found when compiling the library.=C2=A0 As of version 1.1=
.0, this must be both explicitly enabled in order to be compiled in.




Three preconditions must be met for this vulnerability to be possible:

1. Log4cxx compiled with ODBC support(before version 1.1.0, this was auto-d=
etected at compile time)

2. ODBCAppender enabled for logging messages to, generally done via a confi=
g file

3. User input is logged at some point. If your application does not have us=
er input, it is unlikely to be affected.





Users are recommended to upgrade to version 1.1.0 which properly binds the =
parameters to the SQL statement, or migrate to the new DBAppender class whi=
ch supports an ODBC connection in addition to other databases.=20
Note that this fix does require a configuration file update, as the old con=
figuration files will not configure properly.=C2=A0 An example is shown bel=
ow, and more information may be found in the Log4cxx documentation on the O=
DBCAppender.





Example of old configuration snippet:

<appender name=3D"SqlODBCAppender" class=3D"ODBCAppender">

=C2=A0=C2=A0=C2=A0 <param name=3D"sql" value=3D"INSERT INTO logs (message) =
VALUES ('%m')" />

=C2=A0=C2=A0=C2=A0 ... other params here ...

</appender>




The migrated configuration snippet with new ColumnMapping parameters:


<appender name=3D"SqlODBCAppender" class=3D"ODBCAppender">




=C2=A0 =C2=A0 <param name=3D"sql" value=3D"INSERT INTO logs (message) VALUE=
S (?)" />

=C2=A0=C2=A0=C2=A0 <param name=3D"ColumnMapping" value=3D"message"/>
=C2=A0=C2=A0=C2=A0 ... other params here ...


</appender>

Required Configurations:

Log4cxx must be built with ODBC support, and configured to log messages to =
a database for this to occur


References:

https://logging.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-31038

