X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["942" "Monday" "3" "October" "2016" "19:19:11" "+0200" "Florian Weimer" "fw@deneb.enyo.de" "<87oa31xsds.fsf@mid.deneb.enyo.de>" "31" "[oss-security] CVE-2016-1246: Buffer overflow in DBD-mysql error reporting (Perl DBI module)" nil nil nil "10" "2016100317:19:11" "[oss-security] CVE-2016-1246: Buffer overflow in DBD-mysql error reporting (Perl DBI module)" (number mark "U       fw@deneb.eny Oct  3   31/942   " thread-indent "\"[oss-security] CVE-2016-1246: Buffer overflow in DBD-mysql error reporting (Perl DBI module)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13649 invoked by uid 550); 3 Oct 2016 17:19:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13608 invoked from network); 3 Oct 2016 17:19:23 -0000
From: Florian Weimer <fw@deneb.enyo.de>
To: oss-security@lists.openwall.com
Date: Mon, 03 Oct 2016 19:19:11 +0200
Message-ID: <87oa31xsds.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE-2016-1246: Buffer overflow in DBD-mysql error reporting (Perl DBI module)

When a reporting a variable bind error, DBD-mysql would try to
construct the error message in a fixed-size buffer on the stack,
possibly leading to arbitrary code execution.

It depends on the application whether untrusted data is included in
the error message.  -D_FORTIFY_SOURCE=3D2 would catch this and turn the
issue into a mere crash.

Upstream commit:

  <https://github.com/perl5-dbi/DBD-mysql/commit/7c164a0c86cec6ee95df1d141e=
67b0e85dfdefd2>

Upstream credits Pali Roh=E1r with reporting and fixing this issue.

Here is what I used to validate the patch:

use strict;
use warnings;

use DBI;

my $dbh =3D DBI->connect("DBI:mysql:mysql:",
                       "root", "",
                       { PrintError =3D> 0, RaiseError =3D> 1});

$dbh->do('CREATE TEMPORARY TABLE t (i INTEGER NOT NULL)');
$dbh->begin_work;
my $st =3D $dbh->prepare('INSERT INTO t VALUES (?)');
$st->bind_param(1, 'X' x 64, DBI::SQL_INTEGER);
$dbh->commit;
