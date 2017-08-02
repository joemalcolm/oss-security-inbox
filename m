X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3065" "Wednesday" "2" "August" "2017" "13:40:32" "+0200" "Tomas Hoger" "thoger@redhat.com" "<20170802134032.547770e7@redhat.com>" "82" "Re: [oss-security] MySQL - use-after-free after mysql_stmt_close()" nil nil nil "8" "2017080211:40:32" "[oss-security] MySQL - use-after-free after mysql_stmt_close()" (number mark "U       thoger@redha Aug  2   82/3065  " thread-indent "\"Re: [oss-security] MySQL - use-after-free after mysql_stmt_close()\"\n") "<201706082349.03355@pali>" ("<201706082349.03355@pali>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7837 invoked by uid 550); 2 Aug 2017 11:40:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7818 invoked from network); 2 Aug 2017 11:40:51 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com BED25883A5
Authentication-Results: ext-mx02.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx02.extmail.prod.ext.phx2.redhat.com; spf=fail smtp.mailfrom=thoger@redhat.com
Date: Wed, 2 Aug 2017 13:40:32 +0200
From: Tomas Hoger <thoger@redhat.com>
To: Pali =?UTF-8?B?Um9ow6Fy?= <pali.rohar@gmail.com>
Cc: oss-security@lists.openwall.com, security@mariadb.org,
 secalert_us@oracle.com, security@percona.com, Andrea Barisani
 <andrea@inversepath.com>, Michiel Beijen <michiel.beijen@gmail.com>, Alceu
 Rodrigues de Freitas Junior <glasswalk3r@yahoo.com.br>,
 cve-assign@mitre.org
Message-ID: <20170802134032.547770e7@redhat.com>
In-Reply-To: <201706082349.03355@pali>
References: <201706082349.03355@pali>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.26]); Wed, 02 Aug 2017 11:40:40 +0000 (UTC)
Subject: Re: [oss-security] MySQL - use-after-free after mysql_stmt_close()

On Thu, 8 Jun 2017 23:49:03 +0200 Pali Roh=C3=A1r wrote:

> MySQL applications written according to Oracle's MySQL documentation &=20
> examples for mysql_stmt_close() function call are vulnerable to use-
> after-free defect.

...

> Whole example of usage is written in mysql_stmt_execute() function [3].=20
> The relevant part for mysql_stmt_close() is at the end of example:
>=20
> /* Close the statement */
> if (mysql_stmt_close(stmt))
> {
>   fprintf(stderr, " failed while closing the statement\n");
>   fprintf(stderr, " %s\n", mysql_stmt_error(stmt));
>   exit(0);
> }
>=20
> And here is a problem, use-after-free defect. Current implementation of=20
> mysql_stmt_close() function unconditionally free passed statement=20
> structure and therefore following mysql_stmt_error() call is defective=20
> to use-after-free.

...

> Oracle team was unwilling to tell anything, provide any information how=20
> to handle such issue or what to do, therefore with suggestion from oCERT=
=20
> I decided to make this report public and open public discussion for=20
> other people on oss-security list how to handle this problem.
>=20
> As Oracle fully ignored this problem and have not stated if problem is=20
> in documentation, implementation or both, I see probably 3 different=20
> solutions:

Oracle has previously updated code examples in the documentation.  They
apparently also assigned CVE-2017-3635 via July 2017 CPU:

http://www.oracle.com/technetwork/security-advisory/cpujul2017-3236622.html=
#AppendixMSQL

There's the following note for the CVE:

"""
The documentation has also been updated for the correct way to use mysql_st=
mt_close(). Please see:
https://dev.mysql.com/doc/refman/5.7/en/mysql-stmt-execute.html,
https://dev.mysql.com/doc/refman/5.7/en/mysql-stmt-fetch.html,
https://dev.mysql.com/doc/refman/5.7/en/mysql-stmt-close.html,
https://dev.mysql.com/doc/refman/5.7/en/mysql-stmt-error.html,
https://dev.mysql.com/doc/refman/5.7/en/mysql-stmt-errno.html, and
https://dev.mysql.com/doc/refman/5.7/en/mysql-stmt-sqlstate.html
"""

The issue is listed as fixed in versions 5.5.57, 5.6.37, and 5.7.19.
Their release notes also mention the change:

https://dev.mysql.com/doc/relnotes/mysql/5.5/en/news-5-5-57.html
https://dev.mysql.com/doc/relnotes/mysql/5.6/en/news-5-6-37.html
https://dev.mysql.com/doc/relnotes/mysql/5.7/en/news-5-7-19.html

"""
If the mysql_stmt_close() C API function was called, it freed memory
that later could be accessed if mysql_stmt_error(), mysql_stmt_errno(),
or mysql_stmt_sqlstate() was called. To obtain error information after
a call to mysql_stmt_close(), call mysql_error(), mysql_errno(), or
mysql_sqlstate() instead. (Bug #25988681)
"""

There is also a code change referencing the above bug:

https://github.com/mysql/mysql-server/commit/3d8134d2c9b74bc8883ffe2ef59c16=
8361223837

which does not seem to address the use-after-free problem.

It seems the CVE is effectively for buggy documentation, and the
fixed-in version numbers are not really relevant.

--=20
Tomas Hoger / Red Hat Product Security
