X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4621" "Tuesday" "25" "August" "2015" "11:24:01" "+0200" "Florian Weimer" "fweimer@redhat.com" "<55DC3431.6000008@redhat.com>" "157" "[oss-security] Several low impact ntp.org ntpd issues" nil nil nil "8" "2015082509:24:01" "[oss-security] Several low impact ntp.org ntpd issues" (number mark "        fweimer@redh Aug 25  157/4621  " thread-indent "\"[oss-security] Several low impact ntp.org ntpd issues\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23905 invoked by uid 550); 25 Aug 2015 09:24:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23884 invoked from network); 25 Aug 2015 09:24:16 -0000
Message-ID: <55DC3431.6000008@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.1.0
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="------------060607090502040209080402"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Date: Tue, 25 Aug 2015 11:24:01 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Several low impact ntp.org ntpd issues
To: oss-security@lists.openwall.com

--------------060607090502040209080402
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Miroslav Lichvár found several low-impact security issues in our ntp
branch, most of which have already been addressed upstream without
noting their security impact.

The first three issues require authentication.  Considering the low
impact and the availability of upstream fixes for most of the issues,
we'd like to make the issues public as soon as possible, unless there
are any objections.

(Impact may be higher if ntpd runs with root privileges.)

* CVE-2015-5194
https://bugzilla.redhat.com/show_bug.cgi?id=1254542

It was found that ntpd could crash due to an uninitialized variable when
processing malformed logconfig configuration commands, for example:

ntpq -c ":config logconfig a"

Upstream fix:

<http://bk1.ntp.org/ntp-dev/?PAGE=patch&REV=4c4fc141LwvcoGp-lLGhkAFp3ZvtrA>
<https://github.com/ntp-project/ntp/commit/553f2fa65865c31c5e3c48812cfd46176cffdd27>

* CVE-2015-5195
https://bugzilla.redhat.com/show_bug.cgi?id=1254544

It was found that ntpd exits with a segmentation fault when a statistics
type that was not enabled during compilation (e.g. timingstats) is
referenced by the statistics or filegen configuration command, for example:

ntpq -c ':config statistics timingstats'
ntpq -c ':config filegen timingstats'

Upstream fix:

<http://bk.ntp.org/ntp-dev/?PAGE=patch&REV=4d253ed0A400LyhRQIV0u23NJwuGAA>
<https://github.com/ntp-project/ntp/commit/52e977d79a0c4ace997e5c74af429844da2f27be>

* CVE-2015-5196
https://bugzilla.redhat.com/show_bug.cgi?id=1254547

It was found that the :config command can be used to set the pidfile and
driftfile paths without any restrictions. A remote attacker could use
this flaw to overwrite a file on the file system with a file containing
the pid of the ntpd process (immediately) or the current estimated drift
of the system clock (in hourly intervals). For example:

ntpq -c ':config pidfile /tmp/ntp.pid'
ntpq -c ':config driftfile /tmp/ntp.drift'

No upstream fix, but Miroslav wrote the attached patch.

* CVE-2015-5219
https://bugzilla.redhat.com/show_bug.cgi?id=1255118

It was discovered that sntp would hang in an infinite loop when a
crafted NTP packet was received, related to the conversion of the
precision value in the packet to double.

Upstream fix:

http://bk1.ntp.org/ntp-dev/?PAGE=patch&REV=51786731Gr4-NOrTBC_a_uXO4wuGhg
https://github.com/ntp-project/ntp/commit/5f295cd05c3c136d39f5b3e500a2d781bdbb59c8


(Reported to the distros list and upstream last week, no request for an
embargo, hence public disclosure.)

-- 
Florian Weimer / Red Hat Product Security


--------------060607090502040209080402
Content-Type: text/x-patch;
 name="ntp-remotewrite.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="ntp-remotewrite.patch"

commit 77dd9917e79cab1e9bc1327a37809606858bca94
Author: Miroslav Lichvar <mlichvar@redhat.com>
Date:   Thu Aug 20 10:17:02 2015 +0200

    Don't allow setting driftfile and pidfile remotely

diff --git a/ntpd/ntp_parser.y b/ntpd/ntp_parser.y
index 149ecce..b8971d5 100644
--- a/ntpd/ntp_parser.y
+++ b/ntpd/ntp_parser.y
@@ -1225,11 +1225,11 @@ misc_cmd_int_keyword
 misc_cmd_str_keyword
 	:	T_Ident
 	|	T_Leapfile
-	|	T_Pidfile
 	;
 
 misc_cmd_str_lcl_keyword
 	:	T_Logfile
+	|	T_Pidfile
 	|	T_Saveconfigdir
 	;
 
@@ -1238,24 +1238,38 @@ drift_parm
 		{
 			attr_val *av;
 
-			av = create_attr_sval(T_Driftfile, $1);
-			APPEND_G_FIFO(cfgt.vars, av);
+			if (lex_from_file()) {
+				av = create_attr_sval(T_Driftfile, $1);
+				APPEND_G_FIFO(cfgt.vars, av);
+			} else {
+				YYFREE($1);
+				yyerror("driftfile remote configuration ignored");
+			}
 		}
 	|	T_String T_Double
 		{
 			attr_val *av;
 
-			av = create_attr_sval(T_Driftfile, $1);
-			APPEND_G_FIFO(cfgt.vars, av);
-			av = create_attr_dval(T_WanderThreshold, $2);
-			APPEND_G_FIFO(cfgt.vars, av);
+			if (lex_from_file()) {
+				av = create_attr_sval(T_Driftfile, $1);
+				APPEND_G_FIFO(cfgt.vars, av);
+				av = create_attr_dval(T_WanderThreshold, $2);
+				APPEND_G_FIFO(cfgt.vars, av);
+			} else {
+				YYFREE($1);
+				yyerror("driftfile remote configuration ignored");
+			}
 		}
 	|	/* Null driftfile,  indicated by empty string "" */
 		{
 			attr_val *av;
 
-			av = create_attr_sval(T_Driftfile, estrdup(""));
-			APPEND_G_FIFO(cfgt.vars, av);
+			if (lex_from_file()) {
+				av = create_attr_sval(T_Driftfile, estrdup(""));
+				APPEND_G_FIFO(cfgt.vars, av);
+			} else {
+				yyerror("driftfile remote configuration ignored");
+			}
 		}
 	;
 


--------------060607090502040209080402--
