X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["848" "Thursday" "12" "January" "2017" "12:14:05" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20170112121405.563ee9ee@pc1>" "36" "[oss-security] invalid free in GNU ed before 1.14.1" "^Date:" nil nil "1" "2017011211:14:05" "[oss-security] invalid free in GNU ed before 1.14.1" (number mark "        hanno@hboeck Jan 12   36/848   " thread-indent "\"[oss-security] invalid free in GNU ed before 1.14.1\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28313 invoked by uid 550); 12 Jan 2017 11:14:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28272 invoked from network); 12 Jan 2017 11:14:18 -0000
Message-ID: <20170112121405.563ee9ee@pc1>
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 12 Jan 2017 12:14:05 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] invalid free in GNU ed before 1.14.1
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi,

ed 1.14.1 fixes an invalid free, reported here:
https://lists.gnu.org/archive/html/bug-ed/2017-01/msg00000.html

Reproducer:
echo -e "H\n?\{" | ed

Found with afl. ed 1.14.1 didn't show any more issues with afl/asan
fuzzing.

Not sure if there's any scenario where ed is used with untrusted input.

ed isn't developed in a version control system, therefore I can't link
to a commit, but the patch to fix it is this:

--- a/regex.c	2017-01-06 02:06:04.000000000 +0100
+++ b/regex.c	2017-01-09 17:09:51.000000000 +0100
@@ -135,7 +135,6 @@ static regex_t * get_compiled_regex( con
     char buf[80];
     regerror( n, exp, buf, sizeof buf );
     set_error_msg( buf );
-    free( exp );
     exp =3D 0;
     }
   return exp;




--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
