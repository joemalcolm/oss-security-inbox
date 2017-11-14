X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2266" "Tuesday" "14" "November" "2017" "12:26:19" "-0500" "Joan Touzet" "wohali@apache.org" "<1120747843.657.1510680375946.JavaMail.Joan@RITA>" "62" "[oss-security] Apache CouchDB CVE-2017-12635 and CVE-2017-12636" nil nil nil "11" "2017111417:26:19" "[oss-security] Apache CouchDB CVE-2017-12635 and CVE-2017-12636" (number mark "U       wohali@apach Nov 14   62/2266  " thread-indent "\"[oss-security] Apache CouchDB CVE-2017-12635 and CVE-2017-12636\"\n") "<1110478094.654.1510680196477.JavaMail.Joan@RITA>" ("<1110478094.654.1510680196477.JavaMail.Joan@RITA>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30359 invoked by uid 550); 14 Nov 2017 17:42:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12045 invoked from network); 14 Nov 2017 17:26:35 -0000
X-Virus-Scanned: amavisd-new at smtp.justsomehost.net
Date: Tue, 14 Nov 2017 12:26:19 -0500 (EST)
From: Joan Touzet <wohali@apache.org>
To: oss-security@lists.openwall.com
Cc: Security CouchDB <security@couchdb.apache.org>
Message-ID: <1120747843.657.1510680375946.JavaMail.Joan@RITA>
In-Reply-To: <1110478094.654.1510680196477.JavaMail.Joan@RITA>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [204.11.51.157]
X-Mailer: Zimbra 8.6.0_GA_1194 (Zimbra Desktop/7.3.0_13060_Windows)
Thread-Topic: Apache CouchDB CVE-2017-12635 and CVE-2017-12636
Thread-Index: qHfVie9X1AClxb2/YVbg4D/27ZffUw==
Subject: [oss-security] Apache CouchDB CVE-2017-12635 and CVE-2017-12636

Forwarding from https://lists.apache.org/thread.html/6c405bf3f8358e6314076b=
e9f48c89a2e0ddf00539906291ebdf0c67@%3Cdev.couchdb.apache.org%3E on Jan Lehn=
ardt's behalf.

-----

Dear CouchDB Community,

Last week, we announced the release of CouchDB versions 2.1.1 &
1.7.0/1.7.1 and marked them as CRITICAL security updates.

Today we are releasing detailed information about the security issues.

We expect all users to have updated already.

# Overview

## CVE-2017-12635

Due to differences in CouchDB=E2=80=99s Erlang-based JSON parser and JavaSc=
ript-based
JSON parser, it is possible to submit _users documents with duplicate keys =
for
`roles` used for access control within the database, including the special =
case
`_admin` role, that denotes administrative users. In combination with
`CVE-2017-12636` (Remote Code Execution), this can be used to give non-admin
users access to arbitrary shell commands on the server as the database syst=
em
user.

The JSON parser differences result in behaviour that if two `roles` keys
are available in the JSON, the second one will be used for authorising the
document write, but the first `roles` key is used for subsequent
authorization for the newly created user. By design, users can not assign
themselves roles. The vulnerability allows non-admin users to give
themselves admin privileges.

We addressed this issue by updating the way CouchDB parses JSON in
Erlang, mimicking the JavaScript behaviour of picking the last key, if
duplicates exist.

This issue was discovered by `Max Justicz` (https://mastodon.mit.edu/@maxj)

See also: Max=E2=80=99s own blog post about the issue and the motivation be=
hind
his research: https://justi.cz/security/2017/11/14/couchdb-rce-npm.html

## CVE-2017-12636

CouchDB administrative users can configure the database server via HTTP(S).=
 Some
of the configuration options include paths for operating system-level binar=
ies
that are subsequently launched by CouchDB. This allows a CouchDB admin user=
 to
execute arbitrary shell commands as the CouchDB user, including downloading
and executing scripts from the public internet.

This issue was discovered by `Joan Touzet` (http://www.atypical.net) of the
CouchDB Security team during the investigation of `CVE-2017-12635`.

