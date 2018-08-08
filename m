X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1420" "Wednesday" "8" "August" "2018" "10:02:02" "-0400" "Joan Touzet" "wohali@apache.org" "<84053823.699.1533736923955.JavaMail.Joan@BRAIN>" "39" "[oss-security] =?utf-8?B?Q1ZFLTIwMTgtMTE3Njk6IEFwYWNoZSBDb3VjaERCIFJlbW90ZSBDb2RlIA==?==?utf-8?B?RXhlY3V0aW9uIChhZmZlY3RzIHZlcnNpb25zIDEueCBhbmQg4omkMi4xLjIp?=" nil nil nil "8" "2018080814:02:02" "[oss-security] =?utf-8?B?Q1ZFLTIwMTgtMTE3Njk6?= =?utf-8?B?QXBhY2hl?= =?utf-8?B?Q291Y2hEQg==?= =?utf-8?B?UmVtb3Rl?= =?utf-8?B?Q29kZQ==?= =?utf-8?B?RXhlY3V0aW9u?= =?utf-8?B?KGFmZmVjdHM=?= =?utf-8?B?dmVyc2lvbnM=?= =?utf-8?B?MS54?= =?utf-8?B?YW5k?= =?utf-8?B?4omkMi4xLjIp?=" (number mark "U       wohali@apach Aug  8   39/1420  " thread-indent "\"[oss-security] =?utf-8?B?Q1ZFLTIwMTgtMTE3Njk6IEFwYWNoZSBDb3VjaERCIFJlbW90ZSBDb2RlIA==?==?utf-8?B?RXhlY3V0aW9uIChhZmZlY3RzIHZlcnNpb25zIDEueCBhbmQg4omkMi4xLjIp?=\"\n") "<1346380412.698.1533736852968.JavaMail.Joan@BRAIN>" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32393 invoked by uid 550); 8 Aug 2018 14:11:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25932 invoked from network); 8 Aug 2018 14:02:22 -0000
X-Virus-Scanned: amavisd-new at smtp.justsomehost.net
Date: Wed, 8 Aug 2018 10:02:02 -0400 (EDT)
From: Joan Touzet <wohali@apache.org>
To: CouchDB Users <user@couchdb.apache.org>
Cc: "announce " <announce@couchdb.apache.org>, 
	CouchDB Developers <dev@couchdb.apache.org>, 
	marketing@couchdb.apache.org, security@couchdb.apache.org, 
	oss-security@lists.openwall.com
Message-ID: <84053823.699.1533736923955.JavaMail.Joan@BRAIN>
In-Reply-To: <1346380412.698.1533736852968.JavaMail.Joan@BRAIN>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [204.11.51.157]
X-Mailer: Zimbra 8.6.0_GA_1194 (Zimbra Desktop/7.3.1_13063_Windows)
Thread-Topic: CVE-2018-11769: Apache CouchDB Remote Code Execution (affects versions 1.x and =?utf-8?B?4omkMi4xLjIp?=
Thread-Index: 9Xrd46ZvlhGutl6Jhiurq/GytGh+Bw==
Subject: [oss-security] =?utf-8?Q?CVE-2018-11769:_Apache_CouchDB_Remote_Code_?=
 =?utf-8?Q?Execution_(affects_versions_1.x_and_=E2=89=A42.1.2)?=

Date: 	        08.08.2018
Affected:	Apache CouchDB 1.x and =E2=89=A42.1.2
Severity:	Low
Vendor:	        The Apache Software Foundation


Description
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

CouchDB administrative users can configure the database server via HTTP(S).=
 Due to insufficient validation of administrator-supplied configuration set=
tings via the HTTP API, it is possible for a CouchDB administrator user to =
escalate their privileges to that of the operating system=E2=80=99s user un=
der which CouchDB runs, by bypassing the blacklist of configuration setting=
s that are not allowed to be modified via the HTTP API.

This privilege escalation effectively allows a CouchDB admin user to gain a=
rbitrary remote code execution, bypassing mitigations for CVE-2017-12636 an=
d CVE-2018-8007.


Mitigation
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

All users should upgrade to CouchDB 2.2.0.

Upgrades from previous 2.x versions in the same series should be seamless.

Users still on CouchDB 1.x should be advised that the Apache CouchDB team n=
o longer support 1.x.

In-place mitigation (on any 1.x release, or 2.x prior to 2.2.0) is possible=
 by removing the _config route from the default.ini file, as follows:

    [httpd_global_handlers]
    ;_config =3D {couch_httpd_misc_handlers, handle_config_req}

or by blocking access to the /_config (1.x) or /_node/*/_config routes at a=
 reverse proxy in front of the service.
