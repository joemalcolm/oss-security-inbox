X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2445" "Monday" "17" "December" "2018" "11:43:55" "+0100" "Jan Lehnardt" "jan@apache.org" "<8A4D6092-8350-438C-B09E-B569A2EB233A@apache.org>" "65" "[oss-security] Apache CouchDB CVE-2018-17188: Remote Privilege Escalations (Affects all versions < 2.3.0)" nil nil nil "12" "2018121710:43:55" "[oss-security] Apache CouchDB CVE-2018-17188: Remote Privilege Escalations (Affects all versions < 2.3.0)" (number mark "U       jan@apache.o Dec 17   65/2445  " thread-indent "\"[oss-security] Apache CouchDB CVE-2018-17188: Remote Privilege Escalations (Affects all versions < 2.3.0)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7379 invoked by uid 550); 17 Dec 2018 10:45:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5747 invoked from network); 17 Dec 2018 10:44:13 -0000
From: Jan Lehnardt <jan@apache.org>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_380C388B-2FE0-4393-8663-FD68C5DDA920"
Mime-Version: 1.0 (Mac OS X Mail 12.0 \(3445.100.39\))
Message-Id: <8A4D6092-8350-438C-B09E-B569A2EB233A@apache.org>
Date: Mon, 17 Dec 2018 11:43:55 +0100
Cc: announce <announce@couchdb.apache.org>,
 CouchDB Developers <dev@couchdb.apache.org>,
 marketing <marketing@couchdb.apache.org>,
 Security CouchDB <security@couchdb.apache.org>,
 oss-security@lists.openwall.com
To: CouchDB Users <user@couchdb.apache.org>
X-Mailer: Apple Mail (2.3445.100.39)
Subject: [oss-security] Apache CouchDB CVE-2018-17188: Remote Privilege Escalations (Affects
 all versions < 2.3.0)

--Apple-Mail=_380C388B-2FE0-4393-8663-FD68C5DDA920
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


#Apache CouchDB CVE-2018-17188: Remote Privilege Escalations (Affects all v=
ersions < 2.3.0)

Date:	17.12.2018
Affected:	All Versions of Apache CouchDB
Severity:	Medium
Vendor:	The Apache Software Foundation

## Description

Prior to CouchDB version 2.3.0, CouchDB allowed for runtime-configuration o=
f key components of the database. In some cases, this lead to vulnerabiliti=
es where CouchDB admin users could access the underlying operating system a=
s the CouchDB user. Together with other vulnerabilities, it allowed full sy=
stem entry for unauthenticated users.

These vulnerabilities were fixed and disclosed in the following CVE reports:

	=E2=80=A2 CVE-2018-11769: Apache CouchDB Remote Code Execution[1]
	=E2=80=A2 CVE-2018-8007: Apache CouchDB Remote Code Execution[2]
	=E2=80=A2 CVE-2017-12636: Apache CouchDB Remote Code Execution[3]
	=E2=80=A2 CVE-2017-12635: Apache CouchDB Remote Privilege Escalation[4]

Rather than waiting for new vulnerabilities to be discovered, and fixing th=
em as they come up, the CouchDB development team decided to make changes to=
 avoid this entire class of vulnerabilities.

With CouchDB version 2.3.0, CouchDB no longer can configure key components =
at runtime. While some flexibility is needed for speciality configurations =
of CouchDB, the configuration was changed from being available at runtime t=
o start-up time. And as such now requires shell access to the CouchDB serve=
r.

This closes all future paths for vulnerabilities of this type.

## Mitigation

All users should upgrade to CouchDB 2.3.0.

Upgrades from previous 2.x versions in the same series should be seamless.

Users on earlier versions should consult with upgrade notes.

## Credit

This issue was discovered by the Apple Information Security team.

=E2=80=94
[1]: http://docs.couchdb.org/en/stable/cve/2017-12635.html <http://docs.cou=
chdb.org/en/stable/cve/2017-12635.html>
[2]: http://docs.couchdb.org/en/stable/cve/2017-12636.html <http://docs.cou=
chdb.org/en/stable/cve/2017-12636.html>
[3]: http://docs.couchdb.org/en/stable/cve/2018-11769.html <http://docs.cou=
chdb.org/en/stable/cve/2018-11769.html>
[3]: http://docs.couchdb.org/en/stable/cve/2018-8007.html <http://docs.couc=
hdb.org/en/stable/cve/2018-8007.html>


--Apple-Mail=_380C388B-2FE0-4393-8663-FD68C5DDA920--
