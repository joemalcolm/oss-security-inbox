Received: (qmail 3187 invoked by uid 550); 14 Aug 2025 18:56:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30084 invoked from network); 14 Aug 2025 14:01:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vonhaugwitz.com;
	s=MBO0001; t=1755180076;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=bLgLOyRjocPVkdC5A7cGgU7E745WuhAc57j3V61BHFo=;
	b=fOGQPnGNZ3zxHHBYPYVm//hcjjD4lAHaWGThmOfqTLg+S1XGfj6G30sYIgy75zyt0m4Z1q
	1CCp9Qd+sjHa7ibHyff/2QpJltqpM4MVIjSyNNJINpvJspyDhlI3MyUbPBiDVS2sChC5go
	w+blP28v0zZnCvyP05KkuzkG591N161PH5pXjZWW2CKViUU/BSK4XjLWuL9wvapJdLihJm
	fy9nwC3zCM8fxV/3esrTZIDh4+1Id071jEoU8ngfJYKcz+A8LvT9rIAZ6e+Cy+gmyNL8iH
	wOtno+2piT6MW+C0n03sj0NcCxOIYQmkAOXIIRcnuPBoVNqmWFQQUb1BjE8x6Q==
Date: Thu, 14 Aug 2025 16:01:11 +0200
From: Hannes von Haugwitz <hannes@vonhaugwitz.com>
To: oss-security@lists.openwall.com
Message-ID: <20250814140111.GA2@magnesium.vonhaugwitz.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hI8tTDkrT26th187"
Content-Disposition: inline
Subject: [oss-security] CVE-2025-54389 - aide (<= 0.19.1): improper output neutralization
 (potential AIDE detection bypass)

--hI8tTDkrT26th187
Content-Type: multipart/mixed; boundary="ZO+lzFhYrqjPId7U"
Content-Disposition: inline


--ZO+lzFhYrqjPId7U
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Summary
=======

Rajesh Pangare discovered an improper output neutralization vulnerability in
AIDE, an advanced intrusion detection system. An attacker can craft a malicious
filename by including terminal escape sequences to hide the addition or removal
of the file from the report and/or tamper with the log output. A local user
might exploit this to bypass the AIDE detection of malicious files.
Additionally the output of extended attribute key names and symbolic links
targets are also not properly neutralized.

Project
=======

AIDE (https://aide.github.io)

Affected versions
=================

AIDE <= 0.19.1

CVE ID
======

CVE-2025-54389

Proof of concept
================

    $ mkdir test
    $ touch test/$(echo -e 'malicious-file\033[1A')
    $ touch test/regular-testfile
    $ aide --config <(printf -- "database_in=file:/dev/null\nroot_prefix = ./test\n/ R") --check
    Start timestamp: 2025-08-10 07:23:25 +0000 (AIDE 0.19.1)
    AIDE found differences between database and filesystem!!
    Root prefix: ./test

    Summary:
      Total number of entries:      3
      Added entries:                3
      Removed entries:              0
      Changed entries:              0

    ---------------------------------------------------
    Added entries:
    ---------------------------------------------------

    d++++++++++++++++++: /
    f++++++++++++++++++: /regular-testfile

    ---------------------------------------------------
    The attributes of the (uncompressed) database(s):
    ---------------------------------------------------

    /dev/null
     SHA256    : 47DEQpj8HBSa+/TImW+5JCeuQeRkm5NM
                 pJWZG3hSuFU=
     SHA512    : z4PhNX7vuL3xVChQ1m2AB9Yg5AULVxXc
                 g/SpIdNs6c5H0NE8XYXysP+DGNKHfuwv
                 Y7kxvUdBeoGlODJ6+SfaPg==
     STRIBOG256: P1OaIT6XyALMIp1HTGqjKoJaNgsqkzqU
                 n9klII2c4bs=
     STRIBOG512: jpRdogmqhp8EVZKFKbyuRnnphzq3B7VT
                 FfVs65i+8Kc2L3FVKDVu6DzaXyqsTGrS
                 ujpxXBvNgcuOn5C/TBwaig==
     SHA512/256: xnK40e9W7Sirh8NiLFEUBpvdOte4+XN0
                 mNDAHs7wlno=
     SHA3-256  : p//G+L8e12ZRwUdWoGHWYvWA/03kO0n6
                 gtgKS4D4Q0o=
     SHA3-512  : pp9zzKI6msXItWfcGFp1bpfJghZP4lhZ
                 4NHcwUdcgKYVshI68fX5TBHj6UAsOsVY
                 9QAZnZW20+MBdYWGKB3NJg==


    End timestamp: 2025-08-10 07:23:25 +0000 (run time: 0m 0s)

The output correctly shows the addition of `regular-testfile` but misses the
addition of the malicious file.

This works because the terminal escape sequence moves the cursor one line up
before the new line character of the regular output moves the cursor back to
the beginning of the line containing the malicious file; the next added entry
then overwrites the line.

Please note that the number of added entries is unchanged in the report. For
this POC a user might notice the difference between the number of added entries
and the list of added entries shown in the report, but with a much higher number
of added files the deviation is likely overlooked.

Analysis
========

The vulnerability is caused by missing output neutralization before printing
the filename, symbolic link target or extended attribute key name to the report
and log output.

This allows a user to craft a filename, symbolic link target or extended
attribute key name including control characters to tamper with or overwrite
previous output.

Mitigation
==========

Upgrade to AIDE v0.19.2 [v0.19.2]

Alternatively apply one of the provided patches:

aide-0.19_cve-2025-54389_control_chars.patch for 0.19.1
aide-0.18_cve-2025-54389_control_chars.patch for 0.18.8 (backported for Debian Bookworm)
aide-0.17_cve-2025-54389_control_chars.patch for 0.17.4 (backported for Debian Bullseye)

If you cannot upgrade, the issue can be mitigated by configuring AIDE to write
the report output to a regular file (e.g. `report_url=file:/var/log/aide.log`)
or redirecting stdout to a regular file. Additionally consider redirecting the
log output written to `stderr` to a regular file. Mind to open the generated
files with a program that escapes terminal sequences correctly.

[v0.19.2] https://github.com/aide/aide/releases/tag/v0.19.2

Credit
======

The issue was reported by Rajesh Pangare.

--ZO+lzFhYrqjPId7U
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment;
	filename="aide-0.17_cve-2025-54389_control_chars.patch"
Content-Transfer-Encoding: quoted-printable

diff --git before/doc/aide.1 after/doc/aide.1
index a7b9462..5d10e33 100644
--- before/doc/aide.1
+++ after/doc/aide.1
@@ -122,12 +122,25 @@ SIGUSR1 toggles the log_level between current and deb=
ug level.
 .PP
 .SH NOTES
=20
+.IP "Checksum encoding"
+
 The checksums in the database and in the output are by default base64
 encoded (see also report_base16 option).
 To decode them you can use the following shell command:
=20
 echo <encoded_checksum> | base64 \-d | hexdump \-v \-e '32/1 "%02x" "\\n"'
=20
+.IP "Control characters"
+
+Control characters (00-31 and 127) are always escaped in log and plain rep=
ort
+output. They are escaped by a literal backslash (\\) followed by exactly 3
+digits representing the character in octal notation (e.g. a newline is out=
put
+as "\fB\\012\fR"). A literal backslash is not escaped unless it is followe=
d by
+3 digits (0-9), in this case the literal backslash is escaped as
+"\fB\\134\fR". Reports in JSON format are escaped according to the JSON sp=
ecs
+(e.g. a newline is output as "\fB\\b\fR" or an escape (\fBESC\fR) is outpu=
t as
+"\fB\\u001b\fR")
+
 .PP
 .SH FILES
=20
diff --git before/include/util.h after/include/util.h
index aaff780..d339740 100644
--- before/include/util.h
+++ after/include/util.h
@@ -51,6 +51,9 @@ int cmpurl(url_t*, url_t*);
=20
 int contains_unsafe(const char*);
=20
+char *strnesc(const char *, size_t);
+char *stresc(const char *);
+
 void decode_string(char*);
=20
 char* encode_string(const char*);
diff --git before/src/aide.c after/src/aide.c
index b04e721..576fbd3 100644
--- before/src/aide.c
+++ after/src/aide.c
@@ -271,7 +271,8 @@ static void read_param(int argc,char**argv)
                 conf->limit=3Dchecked_malloc(strlen(optarg)+1);
                 strcpy(conf->limit,optarg);
                 if((conf->limit_crx=3Dpcre_compile(conf->limit, PCRE_ANCHO=
RED, &pcre_error, &pcre_erroffset, NULL)) =3D=3D NULL) {
-                    INVALID_ARGUMENT("--limit", error in regular expressio=
n '%s' at %i: %s, conf->limit, pcre_erroffset, pcre_error)
+                    char * limit_safe =3D stresc(conf->limit);
+                    INVALID_ARGUMENT("--limit", error in regular expressio=
n '%s' at %i: %s, limit_safe, pcre_erroffset, pcre_error)
                 }
                 log_msg(LOG_LEVEL_INFO,_("(--limit): set limit to '%s'"), =
conf->limit);
             break;
@@ -572,7 +573,11 @@ int main(int argc,char**argv)
       rx_rule* rule =3D NULL;
       int match =3D check_rxtree(conf->check_path, conf->tree, &rule, conf=
->check_file_type, true);
       if (match < 0) {
-        fprintf(stdout, "[ ] %c '%s': outside of limit '%s'\n", get_restri=
ction_char(conf->check_file_type), conf->check_path, conf->limit);
+        char* limit_safe =3D stresc(conf->limit);
+        char* path_safe =3D stresc(conf->check_path);
+        fprintf(stdout, "[ ] %c '%s': outside of limit '%s'\n", get_restri=
ction_char(conf->check_file_type), path_safe, limit_safe);
+        free(path_safe);
+        free(limit_safe);
         exit(2);
       } else {
         exit(match?0:1);
diff --git before/src/gen_list.c after/src/gen_list.c
index 98b437c..7059899 100644
--- before/src/gen_list.c
+++ after/src/gen_list.c
@@ -510,7 +510,9 @@ int check_rxtree(char* filename,seltree* tree, rx_rule*=
 *rule, RESTRICTION_TYPE
   int match =3D check_seltree(tree, filename, file_type, rule);
   if (dry_run) {
       char * str;
-      fprintf(stdout, "[%c] %c '%s': ", match?'X':' ', get_restriction_cha=
r(file_type), filename);
+      char* filename_safe =3D stresc(filename);
+      fprintf(stdout, "[%c] %c '%s': ", match?'X':' ', get_restriction_cha=
r(file_type), filename_safe);
+      free(filename_safe);
       if (match > 0) {
           char* attr_str;
           fprintf(stdout, "%s: '%s%s %s %s' (%s:%d: '%s')\n", get_rule_typ=
e_long_string(match), match =3D=3D EQUAL_MATCH?"=3D":"", (*rule)->rx, str =
=3D get_restriction_string((*rule)->restriction), attr_str =3D diff_attribu=
tes(0, (*rule)->attr), (*rule)->config_filename, (*rule)->config_linenumber=
, (*rule)->config_line);
diff --git before/src/log.c after/src/log.c
index 5a25a36..5d7fa74 100644
--- before/src/log.c
+++ after/src/log.c
@@ -25,6 +25,7 @@
=20
 #include "log.h"
 #include "locale-aide.h"
+#include "util.h"
=20
 LOG_LEVEL prev_log_level =3D LOG_LEVEL_UNSET;
 LOG_LEVEL log_level =3D LOG_LEVEL_UNSET;
@@ -60,7 +61,7 @@ static void cache_line(LOG_LEVEL level, const char* forma=
t, va_list ap) {
=20
     void * tmp =3D realloc(cached_lines, (ncachedlines+1) * sizeof(log_cac=
he)); /* freed in log_cached_lines() */
     if (tmp =3D=3D NULL) {
-        log_msg(LOG_LEVEL_ERROR, "realloc() failed: %s", strerror(errno));
+        fprintf(stderr, "%s: realloc: failed to allocate memory\n", log_le=
vel_array[LOG_LEVEL_ERROR-1].log_string);
         exit(EXIT_FAILURE);
     } else {
         cached_lines =3D tmp;
@@ -85,7 +86,12 @@ const char * get_log_level_name(LOG_LEVEL level) {
=20
 static void log_cached_lines(void) {
     for(int i =3D 0; i < ncachedlines; ++i) {
-        log_msg(cached_lines[i].level, "%s", cached_lines[i].message);
+        LOG_LEVEL level =3D cached_lines[i].level;
+        if (level =3D=3D LOG_LEVEL_ERROR || level <=3D log_level) {
+            char * msg_safe =3D stresc(cached_lines[i].message);
+            fprintf(stderr, "%s: %s\n", log_level_array[level-1].log_strin=
g, msg_safe);
+            free(msg_safe);
+        }
         free(cached_lines[i].message);
     }
     ncachedlines =3D 0;
@@ -96,9 +102,24 @@ static void vlog_msg(LOG_LEVEL level,const char* format=
, va_list ap) {
     FILE* url =3D stderr;
=20
     if (level =3D=3D LOG_LEVEL_ERROR || level <=3D log_level) {
-        fprintf(url, "%s: ", log_level_array[level-1].log_string );
-        vfprintf(url, format, ap);
-        fprintf(url, "\n");
+
+        va_list aq;
+        va_copy(aq, ap);
+        size_t n =3D vsnprintf(NULL, 0, format, aq) + 1;
+        va_end(aq);
+
+        int size =3D n * sizeof(char);
+        char *msg_unsafe =3D malloc(size);
+        if (msg_unsafe =3D=3D NULL) {
+            fprintf(stderr, "%s: malloc: failed to allocate %d bytes of me=
mory\n", log_level_array[LOG_LEVEL_ERROR-1].log_string, size);
+            exit(EXIT_FAILURE);
+        }
+
+        vsnprintf(msg_unsafe, n, format, ap);
+        char *msg_safe =3D stresc(msg_unsafe);
+        free(msg_unsafe);
+        fprintf(url, "%s: %s\n", log_level_array[level-1].log_string, msg_=
safe);
+        free(msg_safe);
     } else if (log_level =3D=3D LOG_LEVEL_UNSET) {
         cache_line(level, format, ap);
     }
diff --git before/src/report.c after/src/report.c
index b342a0f..e3cee48 100644
--- before/src/report.c
+++ after/src/report.c
@@ -631,6 +631,7 @@ if ((conf->action&(DO_COMPARE|DO_DIFF) || (conf->action=
&DO_INIT && r->detailed_i
 #endif
             )) {
=20
+    char *filename_safe =3D stresc(((node->checked&NODE_REMOVED)?node->old=
_data:node->new_data)->filename);
     if(r->summarize_changes) {
         int i;
         char* summary =3D checked_malloc ((report_attrs_order_length+1) * =
sizeof (char));
@@ -676,17 +677,18 @@ if ((conf->action&(DO_COMPARE|DO_DIFF) || (conf->acti=
on&DO_INIT && r->detailed_i
             }
         }
         summary[report_attrs_order_length]=3D'\0';
-        report_printf(r, "\n%s: %s", summary, ((node->checked&NODE_REMOVED=
)?node->old_data:node->new_data)->filename);
+        report_printf(r, "\n%s: %s", summary, filename_safe);
         free(summary); summary=3DNULL;
     } else {
         if (node->checked&NODE_ADDED) {
-            report_printf(r,_("\nadded: %s"),(node->new_data)->filename);
+            report_printf(r,_("\nadded: %s"), filename_safe);
         } else if (node->checked&NODE_REMOVED) {
-            report_printf(r,_("\nremoved: %s"),(node->old_data)->filename);
+            report_printf(r,_("\nremoved: %s"), filename_safe);
         } else if (node->checked&NODE_CHANGED) {
-            report_printf(r,_("\nchanged: %s"),(node->new_data)->filename);
+            report_printf(r,_("\nchanged: %s"), filename_safe);
         }
     }
+    free(filename_safe);
             }
         } else {
             break; /* list sorted by report_level */
@@ -698,36 +700,49 @@ if ((conf->action&(DO_COMPARE|DO_DIFF) || (conf->acti=
on&DO_INIT && r->detailed_i
 static void print_attribute(REPORT_LEVEL report_level, db_line* oline, db_=
line* nline,
         DB_ATTR_TYPE attr, report_t *r, const char* name,
         DB_ATTR_TYPE report_attrs, DB_ATTR_TYPE added_attrs, DB_ATTR_TYPE =
removed_attrs) {
-    char **ovalue, **nvalue;
+    char **ovalues =3D NULL;
+    char **nvalues =3D NULL;
     int onumber, nnumber, olen, nlen, i, k, c;
     int p =3D (width_details-(4 + MAX_WIDTH_DETAILS_STRING))/2;
=20
         if ( (attr&report_attrs && r->level >=3D report_level)
           || (report_attrs && attr&(added_attrs|removed_attrs) && r->level=
 >=3D REPORT_LEVEL_ADDED_REMOVED_ATTRIBUTES) ) {
=20
-            onumber=3Dget_attribute_values(attr, oline, &ovalue, r);
-            nnumber=3Dget_attribute_values(attr, nline, &nvalue, r);
+            onumber=3Dget_attribute_values(attr, oline, &ovalues, r);
+            nnumber=3Dget_attribute_values(attr, nline, &nvalues, r);
=20
             i =3D 0;
             while (i<onumber || i<nnumber) {
-                olen =3D i<onumber?strlen(ovalue[i]):0;
-                nlen =3D i<nnumber?strlen(nvalue[i]):0;
+                char *ovalue =3D NULL;
+                char *nvalue =3D NULL;
+                olen =3D 0;
+                nlen =3D 0;
+                if (i<onumber){
+                    ovalue =3D stresc(ovalues[i]);
+                    olen =3D strlen(ovalue);
+                }
+                if (i<nnumber) {
+                    nvalue =3D stresc(nvalues[i]);
+                    nlen =3D strlen(nvalue);
+                }
                 k =3D 0;
                 while (olen-p*k >=3D 0 || nlen-p*k >=3D 0) {
                     c =3D k*(p-1);
                     if (!onumber) {
-                        report_printf(r," %-*s%c %-*c  %.*s\n", MAX_WIDTH_=
DETAILS_STRING, (i+k)?"":name, (i+k)?' ':':', p, ' ', p-1, nlen-c>0?&nvalue=
[i][c]:"");
+                        report_printf(r," %-*s%c %-*c  %.*s\n", MAX_WIDTH_=
DETAILS_STRING, (i+k)?"":name, (i+k)?' ':':', p, ' ', p-1, nlen-c>0?&nvalue=
[c]:"");
                     } else if (!nnumber) {
-                        report_printf(r," %-*s%c %.*s\n", MAX_WIDTH_DETAIL=
S_STRING, (i+k)?"":name, (i+k)?' ':':', p-1, olen-c>0?&ovalue[i][c]:"");
+                        report_printf(r," %-*s%c %.*s\n", MAX_WIDTH_DETAIL=
S_STRING, (i+k)?"":name, (i+k)?' ':':', p-1, olen-c>0?&ovalue[c]:"");
                     } else {
-                        report_printf(r," %-*s%c %-*.*s| %.*s\n", MAX_WIDT=
H_DETAILS_STRING, (i+k)?"":name, (i+k)?' ':':', p, p-1, olen-c>0?&ovalue[i]=
[c]:"", p-1, nlen-c>0?&nvalue[i][c]:"");
+                        report_printf(r," %-*s%c %-*.*s| %.*s\n", MAX_WIDT=
H_DETAILS_STRING, (i+k)?"":name, (i+k)?' ':':', p, p-1, olen-c>0?&ovalue[c]=
:"", p-1, nlen-c>0?&nvalue[c]:"");
                     }
                     k++;
                 }
                 ++i;
+                free(ovalue);
+                free(nvalue);
             }
-            for(i=3D0; i < onumber; ++i) { free(ovalue[i]); ovalue[i]=3DNU=
LL; } free(ovalue); ovalue=3DNULL;
-            for(i=3D0; i < nnumber; ++i) { free(nvalue[i]); nvalue[i]=3DNU=
LL; } free(nvalue); nvalue=3DNULL;
+            for(i=3D0; i < onumber; ++i) { free(ovalues[i]); ovalues[i]=3D=
NULL; } free(ovalues); ovalues=3DNULL;
+            for(i=3D0; i < nnumber; ++i) { free(nvalues[i]); nvalues[i]=3D=
NULL; } free(nvalues); nvalues=3DNULL;
         }
 }
=20
@@ -760,7 +775,9 @@ static void print_dbline_attributes(REPORT_LEVEL report=
_level, db_line* oline, d
             if (file_type) {
                 report_printf(r, "%s: ", file_type);
             }
-            report_printf(r, "%s\n", (nline=3D=3DNULL?oline:nline)->filena=
me);
+            char *filename_safe =3D stresc((nline=3D=3DNULL?oline:nline)->=
filename);
+            report_printf(r, "%s\n", filename_safe);
+            free(filename_safe);
         }
=20
     for (int j=3D0; j < report_attrs_order_length; ++j) {
@@ -829,9 +846,11 @@ static void terse_report(seltree* node) {
             if (!(node->checked&(NODE_MOVED_IN|NODE_MOVED_OUT))){
                 if (r->level >=3D REPORT_LEVEL_LIST_ENTRIES
                   && (node->old_data->attr&~(r->ignore_removed_attrs))^(no=
de->new_data->attr&~(r->ignore_added_attrs)) ) {
+                    char *entry_safe =3D stresc(node->old_data->filename);
                     char *str =3D NULL;
                     report_printf(r, "Entry %s in databases has different =
attributes: %s\n",
-                            node->old_data->filename,str=3D diff_attribute=
s(node->old_data->attr&~(r->ignore_removed_attrs),node->new_data->attr&~(r-=
>ignore_added_attrs)));
+                            entry_safe,str=3D diff_attributes(node->old_da=
ta->attr&~(r->ignore_removed_attrs),node->new_data->attr&~(r->ignore_added_=
attrs)));
+                    free(entry_safe);
                     free(str);
                 }
                 DB_ATTR_TYPE changed_attrs =3D (node->changed_attrs)&~(r->=
ignore_changed_attrs);
@@ -933,14 +952,18 @@ static void print_report_header() {
         if (r->level >=3D REPORT_LEVEL_SUMMARY) {
             int first =3D 1;
             if (conf->limit !=3D NULL) {
-                report_printf(r, _("Limit: %s"), conf->limit);
+                char *limit_safe =3D stresc(conf->limit);
+                report_printf(r, _("Limit: %s"), limit_safe);
+                free(limit_safe);
                 first =3D 0;
             }
=20
             if (conf->action&(DO_INIT|DO_COMPARE) && conf->root_prefix_len=
gth > 0) {
                 if (first) { first=3D0; }
                 else { report_printf(r," | "); }
-                report_printf(r, _("Root prefix: %s"),conf->root_prefix);
+                char *prefix_safe =3D stresc(conf->root_prefix);
+                report_printf(r, _("Root prefix: %s"), prefix_safe);
+                free(prefix_safe);
             }
=20
             if (r->level !=3D REPORT_LEVEL_CHANGED_ATTRIBUTES) {
diff --git before/src/util.c after/src/util.c
index 1826059..ba7359e 100644
--- before/src/util.c
+++ after/src/util.c
@@ -99,6 +99,40 @@ int cmpurl(url_t* u1,url_t* u2)
   return RETOK;
 };
=20
+static size_t escape_str(const char *unescaped_str, char *str, size_t s) {
+    size_t n =3D 0;
+    size_t i =3D 0;
+    char c;
+    while (i < s && (c =3D unescaped_str[i])) {
+        if ((c >=3D 0 && (c < 0x1f || c =3D=3D 0x7f)) ||
+            (c =3D=3D '\\' && isdigit(unescaped_str[i+1])
+                       && isdigit(unescaped_str[i+2])
+                       && isdigit(unescaped_str[i+3])
+                ) ) {
+            if (str) { snprintf(&str[n], 5, "\\%03o", c); }
+            n +=3D 4;
+        } else {
+            if (str) { str[n] =3D c; }
+            n++;
+        }
+        i++;
+    }
+    if (str) { str[n] =3D '\0'; }
+    n++;
+    return n;
+}
+
+char *strnesc(const char *unescaped_str, size_t s) {
+    int n =3D escape_str(unescaped_str, NULL, s);
+    char *str =3D checked_malloc(n);
+    escape_str(unescaped_str, str, s);
+    return str;
+}
+
+char *stresc(const char *unescaped_str) {
+    return strnesc(unescaped_str, strlen(unescaped_str));
+}
+
 /* Returns 1 if the string contains unsafe characters, 0 otherwise.  */
 int contains_unsafe (const char *s)
 {

--ZO+lzFhYrqjPId7U
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment;
	filename="aide-0.18_cve-2025-54389_control_chars.patch"
Content-Transfer-Encoding: quoted-printable

diff --git before/doc/aide.1 after/doc/aide.1
index c68335f..4737f73 100644
--- before/doc/aide.1
+++ after/doc/aide.1
@@ -130,12 +130,25 @@ SIGUSR1 toggles the log_level between current and deb=
ug level.
 .PP
 .SH NOTES
=20
+.IP "Checksum encoding"
+
 The checksums in the database and in the output are by default base64
 encoded (see also report_base16 option).
 To decode them you can use the following shell command:
=20
 echo <encoded_checksum> | base64 \-d | hexdump \-v \-e '32/1 "%02x" "\\n"'
=20
+.IP "Control characters"
+
+Control characters (00-31 and 127) are always escaped in log and plain rep=
ort
+output. They are escaped by a literal backslash (\\) followed by exactly 3
+digits representing the character in octal notation (e.g. a newline is out=
put
+as "\fB\\012\fR"). A literal backslash is not escaped unless it is followe=
d by
+3 digits (0-9), in this case the literal backslash is escaped as
+"\fB\\134\fR". Reports in JSON format are escaped according to the JSON sp=
ecs
+(e.g. a newline is output as "\fB\\b\fR" or an escape (\fBESC\fR) is outpu=
t as
+"\fB\\u001b\fR")
+
 .PP
 .SH FILES
=20
diff --git before/include/util.h after/include/util.h
index 897ac64..c22c9d6 100644
--- before/include/util.h
+++ after/include/util.h
@@ -57,6 +57,9 @@ int cmpurl(url_t*, url_t*);
=20
 int contains_unsafe(const char*);
=20
+char *strnesc(const char *, size_t);
+char *stresc(const char *);
+
 void decode_string(char*);
=20
 char* encode_string(const char*);
diff --git before/src/aide.c after/src/aide.c
index f9821f4..aa8a569 100644
--- before/src/aide.c
+++ after/src/aide.c
@@ -282,7 +282,8 @@ static void read_param(int argc,char**argv)
                 if((conf->limit_crx=3Dpcre2_compile((PCRE2_SPTR) conf->lim=
it, PCRE2_ZERO_TERMINATED, PCRE2_UTF|PCRE2_ANCHORED, &pcre2_errorcode, &pcr=
e2_erroffset, NULL)) =3D=3D NULL) {
                     PCRE2_UCHAR pcre2_error[128];
                     pcre2_get_error_message(pcre2_errorcode, pcre2_error, =
128);
-                    INVALID_ARGUMENT("--limit", error in regular expressio=
n '%s' at %zu: %s, conf->limit, pcre2_erroffset, pcre2_error)
+                    char * limit_safe =3D stresc(conf->limit);
+                    INVALID_ARGUMENT("--limit", error in regular expressio=
n '%s' at %zu: %s, limit_safe, pcre2_erroffset, pcre2_error)
=20
                 }
                 conf->limit_md =3D pcre2_match_data_create_from_pattern(co=
nf->limit_crx, NULL);
diff --git before/src/gen_list.c after/src/gen_list.c
index 9561443..729dff3 100644
--- before/src/gen_list.c
+++ after/src/gen_list.c
@@ -339,35 +339,39 @@ void print_match(char* filename, rx_rule *rule, match=
_result match, RESTRICTION_
     char * str;
     char* attr_str;
     char file_type =3D get_restriction_char(restriction);
+    char *filename_safe =3D stresc(filename);
     switch (match) {
         case RESULT_SELECTIVE_MATCH:
             str =3D get_restriction_string(rule->restriction);
             attr_str =3D diff_attributes(0, rule->attr);
-            fprintf(stdout, "[X] %c '%s': selective rule: '%s %s %s' (%s:%=
d: '%s%s%s')\n", file_type, filename, rule->rx, str, attr_str, rule->config=
_filename, rule->config_linenumber, rule->config_line, rule->prefix?"', pre=
fix: '":"", rule->prefix?rule->prefix:"");
+            fprintf(stdout, "[X] %c '%s': selective rule: '%s %s %s' (%s:%=
d: '%s%s%s')\n", file_type, filename_safe, rule->rx, str, attr_str, rule->c=
onfig_filename, rule->config_linenumber, rule->config_line, rule->prefix?"'=
, prefix: '":"", rule->prefix?rule->prefix:"");
             free(attr_str);
             free(str);
             break;
         case RESULT_EQUAL_MATCH:
             str =3D get_restriction_string(rule->restriction);
             attr_str =3D diff_attributes(0, rule->attr);
-            fprintf(stdout, "[X] %c '%s': equal rule: '=3D%s %s %s' (%s:%d=
: '%s%s%s')\n", file_type, filename, rule->rx, str, attr_str, rule->config_=
filename, rule->config_linenumber, rule->config_line, rule->prefix?"', pref=
ix: '":"", rule->prefix?rule->prefix:"");
+            fprintf(stdout, "[X] %c '%s': equal rule: '=3D%s %s %s' (%s:%d=
: '%s%s%s')\n", file_type, filename_safe, rule->rx, str, attr_str, rule->co=
nfig_filename, rule->config_linenumber, rule->config_line, rule->prefix?"',=
 prefix: '":"", rule->prefix?rule->prefix:"");
             free(attr_str);
             free(str);
             break;
         case RESULT_PARTIAL_MATCH:
         case RESULT_NO_MATCH:
             if (rule) {
-                fprintf(stdout, "[ ] %c '%s': negative rule: '!%s %s' (%s:=
%d: '%s%s%s')\n", file_type, filename, rule->rx, str =3D get_restriction_st=
ring(rule->restriction), rule->config_filename, rule->config_linenumber, ru=
le->config_line, rule->prefix?"', prefix: '":"", rule->prefix?rule->prefix:=
"");
+                fprintf(stdout, "[ ] %c '%s': negative rule: '!%s %s' (%s:=
%d: '%s%s%s')\n", file_type, filename_safe, rule->rx, str =3D get_restricti=
on_string(rule->restriction), rule->config_filename, rule->config_linenumbe=
r, rule->config_line, rule->prefix?"', prefix: '":"", rule->prefix?rule->pr=
efix:"");
                 free(str);
             } else {
-                fprintf(stdout, "[ ] %c '%s': no matching rule\n", file_ty=
pe, filename);
+                fprintf(stdout, "[ ] %c '%s': no matching rule\n", file_ty=
pe, filename_safe);
             }
             break;
         case RESULT_PARTIAL_LIMIT_MATCH:
         case RESULT_NO_LIMIT_MATCH:
-            fprintf(stdout, "[ ] %c '%s': outside of limit '%s'\n", file_t=
ype, filename, conf->limit);
+            str =3D stresc(conf->limit);
+            fprintf(stdout, "[ ] %c '%s': outside of limit '%s'\n", file_t=
ype, filename_safe, str);
+            free(str);
             break;
     }
+    free(filename_safe);
 }
=20
 /*
diff --git before/src/log.c after/src/log.c
index 3f741a6..ce5417c 100644
--- before/src/log.c
+++ after/src/log.c
@@ -30,6 +30,7 @@
=20
 #include "log.h"
 #include "errorcodes.h"
+#include "util.h"
=20
 LOG_LEVEL prev_log_level =3D LOG_LEVEL_UNSET;
 LOG_LEVEL log_level =3D LOG_LEVEL_UNSET;
@@ -118,7 +119,9 @@ static void log_cached_lines(void) {
     for(int i =3D 0; i < ncachedlines; ++i) {
         LOG_LEVEL level =3D cached_lines[i].level;
         if (level =3D=3D LOG_LEVEL_ERROR || level <=3D log_level) {
-            fprintf(url, "%s: %s\n", log_level_array[level-1].log_string, =
cached_lines[i].message);
+            char * msg_safe =3D stresc(cached_lines[i].message);
+            fprintf(url, "%s: %s\n", log_level_array[level-1].log_string, =
msg_safe);
+            free(msg_safe);
         }
         free(cached_lines[i].message);
     }
@@ -135,9 +138,24 @@ static void vlog_msg(LOG_LEVEL level,const char* forma=
t, va_list ap) {
     FILE* url =3D stderr;
=20
     if (level =3D=3D LOG_LEVEL_ERROR || level <=3D log_level) {
-        fprintf(url, "%s: ", log_level_array[level-1].log_string );
-        vfprintf(url, format, ap);
-        fprintf(url, "\n");
+
+        va_list aq;
+        va_copy(aq, ap);
+        size_t n =3D vsnprintf(NULL, 0, format, aq) + 1;
+        va_end(aq);
+
+        int size =3D n * sizeof(char);
+        char *msg_unsafe =3D malloc(size);
+        if (msg_unsafe =3D=3D NULL) {
+            fprintf(stderr, "%s: malloc: failed to allocate %d bytes of me=
mory\n", log_level_array[LOG_LEVEL_ERROR-1].log_string, size);
+            exit(MEMORY_ALLOCATION_FAILURE);
+        }
+
+        vsnprintf(msg_unsafe, n, format, ap);
+        char *msg_safe =3D stresc(msg_unsafe);
+        free(msg_unsafe);
+        fprintf(url, "%s: %s\n", log_level_array[level-1].log_string, msg_=
safe);
+        free(msg_safe);
     } else if (log_level =3D=3D LOG_LEVEL_UNSET) {
         cache_line(level, format, ap);
     }
diff --git before/src/report_json.c after/src/report_json.c
index 2fc77bc..47e7fe7 100644
--- before/src/report_json.c
+++ after/src/report_json.c
@@ -29,6 +29,8 @@
 #include "report.h"
 #include "seltree_struct.h"
 #include "stdbool.h"
+#include "string.h"
+#include "stdio.h"
 #include "url.h"
=20
 #define JSON_FMT_ARRAY_BEGIN "%*c\"%s\": [\n"
@@ -57,12 +59,53 @@ static int _escape_json_string(const char *src, char *e=
scaped_string) {
     int n =3D 0;
=20
     for (i =3D 0; i < strlen(src); ++i) {
-        if (src[i] =3D=3D '\\') {
-            if (escaped_string) { escaped_string[n] =3D '\\'; }
-            n++;
+        switch(src[i]) {
+            case '\n':
+                if (escaped_string) { escaped_string[n] =3D '\\'; }
+                n++;
+                if (escaped_string) { escaped_string[n] =3D 'n'; }
+                n++;
+                break;
+            case '\t':
+                if (escaped_string) { escaped_string[n] =3D '\\'; }
+                n++;
+                if (escaped_string) { escaped_string[n] =3D 't'; }
+                n++;
+                break;
+            case '\b':
+                if (escaped_string) { escaped_string[n] =3D '\\'; }
+                n++;
+                if (escaped_string) { escaped_string[n] =3D 'b'; }
+                n++;
+                break;
+            case '\f':
+                if (escaped_string) { escaped_string[n] =3D '\\'; }
+                n++;
+                if (escaped_string) { escaped_string[n] =3D 'f'; }
+                n++;
+                break;
+            case '\r':
+                if (escaped_string) { escaped_string[n] =3D '\\'; }
+                n++;
+                if (escaped_string) { escaped_string[n] =3D 'r'; }
+                n++;
+                break;
+            case '"':
+            case '\\':
+                if (escaped_string) { escaped_string[n] =3D '\\'; }
+                n++;
+                if (escaped_string) { escaped_string[n] =3D src[i]; }
+                n++;
+                break;
+            default:
+                if (src[i] >=3D 0 && (src[i] < 0x1f || src[i] =3D=3D 0x7f)=
) {
+                    if (escaped_string) { snprintf(&escaped_string[n], 7, =
"\\u%04d", src[i]); }
+                    n +=3D 6;
+                } else {
+                    if (escaped_string) { escaped_string[n] =3D src[i]; }
+                    n++;
+                }
         }
-        if (escaped_string) { escaped_string[n] =3D src[i]; }
-        n++;
     }
     if (escaped_string) { escaped_string[n] =3D '\0'; }
     n++;
@@ -302,9 +345,11 @@ static void print_report_diff_attrs_entries_json(repor=
t_t *report) {
         report_printf(report, JSON_FMT_OBJECT_BEGIN, 2, ' ', "different_at=
tributes");
         for(int i =3D 0; i < report->num_diff_attrs_entries; ++i) {
             char *str =3D NULL;
+            char *escaped_filename =3D _get_escaped_json_string(report->di=
ff_attrs_entries[i].entry);
             report_printf(report, i+1<report->num_diff_attrs_entries?JSON_=
FMT_STRING_COMMA:JSON_FMT_STRING_LAST , 4, ' ',
-                    report->diff_attrs_entries[i].entry,
+                    escaped_filename,
                     str=3D diff_attributes(report->diff_attrs_entries[i].o=
ld_attrs, report->diff_attrs_entries[i].new_attrs));
+            free(escaped_filename);
             free(str);
         }
         report->num_diff_attrs_entries =3D 0;
diff --git before/src/report_plain.c after/src/report_plain.c
index c87fc72..7d8a746 100644
--- before/src/report_plain.c
+++ after/src/report_plain.c
@@ -55,7 +55,9 @@ static char* _get_not_grouped_list_string(report_t *repor=
t) {
 static void _print_config_option(report_t *report, config_option option, c=
onst char* value) {
     if (first) { first=3Dfalse; }
     else { report_printf(report," | "); }
-    report_printf(report, "%s: %s", config_options[option].report_string, =
value);
+    char *value_safe =3D stresc(value);
+    report_printf(report, "%s: %s", config_options[option].report_string, =
value_safe);
+    free(value_safe);
 }
=20
 static void _print_report_option(report_t *report, config_option option, c=
onst char* value) {
@@ -63,37 +65,49 @@ static void _print_report_option(report_t *report, conf=
ig_option option, const c
 }
=20
 static void _print_attribute(report_t *report, db_line* oline, db_line* nl=
ine, ATTRIBUTE attribute) {
-    char **ovalue =3D NULL;
-    char **nvalue =3D NULL;
+    char **ovalues =3D NULL;
+    char **nvalues =3D NULL;
     int onumber, nnumber, i, c;
     int p =3D (width_details-(4 + MAX_WIDTH_DETAILS_STRING))/2;
=20
     DB_ATTR_TYPE attr =3D ATTR(attribute);
     const char* name =3D attributes[attribute].details_string;
=20
-    onumber=3Dget_attribute_values(attr, oline, &ovalue, report);
-    nnumber=3Dget_attribute_values(attr, nline, &nvalue, report);
+    onumber=3Dget_attribute_values(attr, oline, &ovalues, report);
+    nnumber=3Dget_attribute_values(attr, nline, &nvalues, report);
=20
     i =3D 0;
     while (i<onumber || i<nnumber) {
-        int olen =3D i<onumber?strlen(ovalue[i]):0;
-        int nlen =3D i<nnumber?strlen(nvalue[i]):0;
+        char *ovalue =3D NULL;
+        char *nvalue =3D NULL;
+        int olen =3D 0;
+        int nlen =3D 0;
+        if (i<onumber){
+            ovalue =3D stresc(ovalues[i]);
+            olen =3D strlen(ovalue);
+        }
+        if (i<nnumber) {
+            nvalue =3D stresc(nvalues[i]);
+            nlen =3D strlen(nvalue);
+        }
         int k =3D 0;
         while (olen-p*k >=3D 0 || nlen-p*k >=3D 0) {
             c =3D k*(p-1);
             if (!onumber) {
-                report_printf(report," %-*s%c %-*c  %.*s\n", MAX_WIDTH_DET=
AILS_STRING, (i+k)?"":name, (i+k)?' ':':', p, ' ', p-1, nlen-c>0?&nvalue[i]=
[c]:"");
+                report_printf(report," %-*s%c %-*c  %.*s\n", MAX_WIDTH_DET=
AILS_STRING, (i+k)?"":name, (i+k)?' ':':', p, ' ', p-1, nlen-c>0?&nvalue[c]=
:"");
             } else if (!nnumber) {
-                report_printf(report," %-*s%c %.*s\n", MAX_WIDTH_DETAILS_S=
TRING, (i+k)?"":name, (i+k)?' ':':', p-1, olen-c>0?&ovalue[i][c]:"");
+                report_printf(report," %-*s%c %.*s\n", MAX_WIDTH_DETAILS_S=
TRING, (i+k)?"":name, (i+k)?' ':':', p-1, olen-c>0?&ovalue[c]:"");
             } else {
-                report_printf(report," %-*s%c %-*.*s| %.*s\n", MAX_WIDTH_D=
ETAILS_STRING, (i+k)?"":name, (i+k)?' ':':', p, p-1, olen-c>0?&ovalue[i][c]=
:"", p-1, nlen-c>0?&nvalue[i][c]:"");
+                report_printf(report," %-*s%c %-*.*s| %.*s\n", MAX_WIDTH_D=
ETAILS_STRING, (i+k)?"":name, (i+k)?' ':':', p, p-1, olen-c>0?&ovalue[c]:""=
, p-1, nlen-c>0?&nvalue[c]:"");
             }
             k++;
         }
         ++i;
+        free(ovalue);
+        free(nvalue);
     }
-    for(i=3D0; i < onumber; ++i) { free(ovalue[i]); ovalue[i]=3DNULL; } fr=
ee(ovalue); ovalue=3DNULL;
-    for(i=3D0; i < nnumber; ++i) { free(nvalue[i]); nvalue[i]=3DNULL; } fr=
ee(nvalue); nvalue=3DNULL;
+    for(i=3D0; i < onumber; ++i) { free(ovalues[i]); ovalues[i]=3DNULL; } =
free(ovalues); ovalues=3DNULL;
+    for(i=3D0; i < nnumber; ++i) { free(nvalues[i]); nvalues[i]=3DNULL; } =
free(nvalues); nvalues=3DNULL;
 }
=20
 static void _print_database_attributes(report_t *report, db_line* db) {
@@ -136,19 +150,21 @@ static void print_report_summary_plain(report_t *repo=
rt) {
 }
=20
 static void print_line_plain(report_t* report, seltree* node) {
+    char *filename_safe =3D stresc(((node->checked&NODE_REMOVED)?node->old=
_data:node->new_data)->filename);
     if(report->summarize_changes) {
         char* summary =3D get_summarize_changes_string(report, node);
-        report_printf(report, "\n%s: %s", summary, ((node->checked&NODE_RE=
MOVED)?node->old_data:node->new_data)->filename);
+        report_printf(report, "\n%s: %s", summary, filename_safe);
         free(summary); summary=3DNULL;
     } else {
         if (node->checked&NODE_ADDED) {
-            report_printf(report, _("\nadded: %s"),(node->new_data)->filen=
ame);
+            report_printf(report, _("\nadded: %s"),filename_safe);
         } else if (node->checked&NODE_REMOVED) {
-            report_printf(report, _("\nremoved: %s"),(node->old_data)->fil=
ename);
+            report_printf(report, _("\nremoved: %s"),filename_safe);
         } else if (node->checked&NODE_CHANGED) {
-            report_printf(report, _("\nchanged: %s"),(node->new_data)->fil=
ename);
+            report_printf(report, _("\nchanged: %s"),filename_safe);
         }
     }
+    free(filename_safe);
 }
=20
 static void print_report_dbline_attributes_plain(report_t *report, db_line=
* oline, db_line* nline, DB_ATTR_TYPE report_attrs) {
@@ -158,7 +174,9 @@ static void print_report_dbline_attributes_plain(report=
_t *report, db_line* olin
         if (file_type) {
             report_printf(report, "%s: ", file_type);
         }
-        report_printf(report, "%s\n", (nline=3D=3DNULL?oline:nline)->filen=
ame);
+        char *filename_safe =3D stresc((nline=3D=3DNULL?oline:nline)->file=
name);
+        report_printf(report, "%s\n", filename_safe);
+        free(filename_safe);
=20
         print_dbline_attrs(report, oline, nline, report_attrs, _print_attr=
ibute);
     }
@@ -195,9 +213,11 @@ static void print_report_details_plain(report_t *repor=
t, seltree* node) {
 static void print_report_diff_attrs_entries_plain(report_t *report) {
     for(int i =3D 0; i < report->num_diff_attrs_entries; ++i) {
         char *str =3D NULL;
+        char *entry_safe =3D stresc(report->diff_attrs_entries[i].entry);
         report_printf(report, "Entry %s in databases has different attribu=
tes: %s\n",
-                report->diff_attrs_entries[i].entry,
+                entry_safe,
                 str=3D diff_attributes(report->diff_attrs_entries[i].old_a=
ttrs, report->diff_attrs_entries[i].new_attrs));
+        free(entry_safe);
         free(str);
     }
     report->num_diff_attrs_entries =3D 0;
diff --git before/src/util.c after/src/util.c
index 87f6801..f5c5e60 100644
--- before/src/util.c
+++ after/src/util.c
@@ -105,6 +105,40 @@ int cmpurl(url_t* u1,url_t* u2)
   return RETOK;
 }
=20
+static size_t escape_str(const char *unescaped_str, char *str, size_t s) {
+    size_t n =3D 0;
+    size_t i =3D 0;
+    char c;
+    while (i < s && (c =3D unescaped_str[i])) {
+        if ((c >=3D 0 && (c < 0x1f || c =3D=3D 0x7f)) ||
+            (c =3D=3D '\\' && isdigit(unescaped_str[i+1])
+                       && isdigit(unescaped_str[i+2])
+                       && isdigit(unescaped_str[i+3])
+                ) ) {
+            if (str) { snprintf(&str[n], 5, "\\%03o", c); }
+            n +=3D 4;
+        } else {
+            if (str) { str[n] =3D c; }
+            n++;
+        }
+        i++;
+    }
+    if (str) { str[n] =3D '\0'; }
+    n++;
+    return n;
+}
+
+char *strnesc(const char *unescaped_str, size_t s) {
+    int n =3D escape_str(unescaped_str, NULL, s);
+    char *str =3D checked_malloc(n);
+    escape_str(unescaped_str, str, s);
+    return str;
+}
+
+char *stresc(const char *unescaped_str) {
+    return strnesc(unescaped_str, strlen(unescaped_str));
+}
+
 /* Returns 1 if the string contains unsafe characters, 0 otherwise.  */
 int contains_unsafe (const char *s)
 {

--ZO+lzFhYrqjPId7U
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment;
	filename="aide-0.19_cve-2025-54389_control_chars.patch"
Content-Transfer-Encoding: quoted-printable

diff --git before/doc/aide.1 after/doc/aide.1
index c6b274c..8572ee2 100644
--- before/doc/aide.1
+++ after/doc/aide.1
@@ -158,12 +158,25 @@ Resize the progress bar (if enabled).
 .PP
 .SH NOTES
=20
+.IP "Checksum encoding"
+
 The checksums in the database and in the output are by default base64
 encoded (see also report_base16 option).
 To decode them you can use the following shell command:
=20
 echo <encoded_checksum> | base64 \-d | hexdump \-v \-e '32/1 "%02x" "\\n"'
=20
+.IP "Control characters"
+
+Control characters (00-31 and 127) are always escaped in log and plain rep=
ort
+output. They are escaped by a literal backslash (\\) followed by exactly 3
+digits representing the character in octal notation (e.g. a newline is out=
put
+as "\fB\\012\fR"). A literal backslash is not escaped unless it is followe=
d by
+3 digits (0-9), in this case the literal backslash is escaped as
+"\fB\\134\fR". Reports in JSON format are escaped according to the JSON sp=
ecs
+(e.g. a newline is output as "\fB\\b\fR" or an escape (\fBESC\fR) is outpu=
t as
+"\fB\\u001b\fR")
+
 .PP
 .SH FILES
=20
diff --git before/include/util.h after/include/util.h
index d4c53fc..4340562 100644
--- before/include/util.h
+++ after/include/util.h
@@ -89,6 +89,9 @@ int cmpurl(url_t*, url_t*);
=20
 int contains_unsafe(const char*);
=20
+char *strnesc(const char *, size_t);
+char *stresc(const char *);
+
 void decode_string(char*);
=20
 char* encode_string(const char*);
diff --git before/src/aide.c after/src/aide.c
index 2a5ec9c..622e108 100644
--- before/src/aide.c
+++ after/src/aide.c
@@ -302,7 +302,8 @@ static void read_param(int argc,char**argv)
                 if((conf->limit_crx=3Dpcre2_compile((PCRE2_SPTR) conf->lim=
it, PCRE2_ZERO_TERMINATED, PCRE2_UTF|PCRE2_ANCHORED, &pcre2_errorcode, &pcr=
e2_erroffset, NULL)) =3D=3D NULL) {
                     PCRE2_UCHAR pcre2_error[128];
                     pcre2_get_error_message(pcre2_errorcode, pcre2_error, =
128);
-                    INVALID_ARGUMENT("--limit", error in regular expressio=
n '%s' at %zu: %s, conf->limit, pcre2_erroffset, pcre2_error)
+                    char * limit_safe =3D stresc(conf->limit);
+                    INVALID_ARGUMENT("--limit", error in regular expressio=
n '%s' at %zu: %s, limit_safe, pcre2_erroffset, pcre2_error)
=20
                 }
                 conf->limit_md =3D pcre2_match_data_create_from_pattern(co=
nf->limit_crx, NULL);
@@ -649,14 +650,16 @@ static void list_attribute(db_line* entry, ATTRIBUTE =
attribute) {
=20
     i =3D 0;
     while (i<num) {
-        int olen =3D strlen(value[i]);
+        char *ovalue =3D stresc(value[i]);
+        int olen =3D strlen(ovalue);
         int k =3D 0;
         while (olen-p*k >=3D 0) {
             c =3D k*(p-1);
-            fprintf(stdout,"  %-*s%c %.*s\n", MAX_WIDTH_DETAILS_STRING, (i=
+k)?"":name, (i+k)?' ':':', p-1, olen-c>0?&value[i][c]:"");
+            fprintf(stdout,"  %-*s%c %.*s\n", MAX_WIDTH_DETAILS_STRING, (i=
+k)?"":name, (i+k)?' ':':', p-1, olen-c>0?&ovalue[c]:"");
             k++;
         }
         ++i;
+        free(ovalue);
     }
     for(i=3D0; i < num; ++i) { free(value[i]); value[i]=3DNULL; } free(val=
ue); value=3DNULL;
 }
@@ -810,7 +813,9 @@ int main(int argc,char**argv)
       db_entry_t entry;
       while((entry =3D db_readline(&(conf->database_in), false)).line !=3D=
 NULL) {
           log_msg(LOG_LEVEL_RULE, "\u252c process '%s' (filetype: %c)", (e=
ntry.line)->filename, get_f_type_char_from_perm((entry.line)->perm));
-          fprintf(stdout, "%s\n", (entry.line)->filename);
+          char *entry_safe =3D stresc((entry.line)->filename);
+          fprintf(stdout, "%s\n", entry_safe);
+          free(entry_safe);
           for (int j=3D0; j < report_attrs_order_length; ++j) {
               switch(report_attrs_order[j]) {
                   case attr_allhashsums:
diff --git before/src/gen_list.c after/src/gen_list.c
index 7564fa8..f836440 100644
--- before/src/gen_list.c
+++ after/src/gen_list.c
@@ -344,14 +344,14 @@ static DB_ATTR_TYPE get_different_attributes(db_line*=
 l1, db_line* l2, DB_ATTR_T
 #define PRINT_RULE_MATCH(format, c, ...) \
     if (file.fs_type) { \
         fs_type_str =3D get_fs_type_string_from_magic(file.fs_type); \
-        fprintf(stdout, "[%c] %c=3D%s:%s: " format "\n", c, file_type, fs_=
type_str, file.name, __VA_ARGS__); \
+        fprintf(stdout, "[%c] %c=3D%s:%s: " format "\n", c, file_type, fs_=
type_str, filename_safe, __VA_ARGS__); \
         free(fs_type_str); \
     } else { \
-        fprintf(stdout, "[%c] %c:%s: " format "\n", c, file_type, file.nam=
e, __VA_ARGS__); \
+        fprintf(stdout, "[%c] %c:%s: " format "\n", c, file_type, filename=
_safe, __VA_ARGS__); \
     }
 #else
 #define PRINT_RULE_MATCH(format, c, ...) \
-    fprintf(stdout, "[%c] %c:%s: " format "\n", c, file_type, file.name, _=
_VA_ARGS__);
+    fprintf(stdout, "[%c] %c:%s: " format "\n", c, file_type, filename_saf=
e, __VA_ARGS__);
 #endif
=20
 void print_match(file_t file, match_t match) {
@@ -362,6 +362,8 @@ void print_match(file_t file, match_t match) {
     char *fs_type_str =3D NULL;
 #endif
     rx_rule *rule =3D match.rule;
+    char *filename_safe =3D stresc(file.name);
+    char *limit_safe =3D conf->limit?stresc(conf->limit):NULL;
     switch (match.result) {
         case RESULT_SELECTIVE_MATCH:
         case RESULT_EQUAL_MATCH:
@@ -379,7 +381,7 @@ void print_match(file_t file, match_t match) {
             break;
         case RESULT_NEGATIVE_PARENT_MATCH:
             str =3D get_restriction_string(rule->restriction);
-            PRINT_RULE_MATCH("parent directory '%.*s' matches %s: '%s%s %s=
' (%s:%d: '%s%s%s')", ' ', match.length, file.name, get_rule_type_long_stri=
ng(rule->type), get_rule_type_char(rule->type), rule->rx, str, rule->config=
_filename, rule->config_linenumber, rule->config_line, rule->prefix?"', pre=
fix: '":"", rule->prefix?rule->prefix:"")
+            PRINT_RULE_MATCH("parent directory '%.*s' matches %s: '%s%s %s=
' (%s:%d: '%s%s%s')", ' ', match.length, filename_safe, get_rule_type_long_=
string(rule->type), get_rule_type_char(rule->type), rule->rx, str, rule->co=
nfig_filename, rule->config_linenumber, rule->config_line, rule->prefix?"',=
 prefix: '":"", rule->prefix?rule->prefix:"")
             free(str);
             break;
         case RESULT_PARTIAL_MATCH:
@@ -387,21 +389,23 @@ void print_match(file_t file, match_t match) {
             PRINT_RULE_MATCH("%s", ' ', "no matching rule")
             break;
         case RESULT_PARTIAL_LIMIT_MATCH:
-            PRINT_RULE_MATCH("parital limit match (limit '%s')", ' ', conf=
->limit);
+            PRINT_RULE_MATCH("parital limit match (limit '%s')", ' ', limi=
t_safe);
             break;
         case RESULT_PART_LIMIT_AND_NO_RECURSE_MATCH:
             if (rule) {
                 str =3D get_restriction_string(rule->restriction);
-                PRINT_RULE_MATCH("partial limit match (limit '%s') but %s:=
 '%s%s %s' (%s:%d: '%s%s%s')", ' ', conf->limit, get_rule_type_long_string(=
rule->type), get_rule_type_char(rule->type), rule->rx, str, rule->config_fi=
lename, rule->config_linenumber, rule->config_line, rule->prefix?"', prefix=
: '":"", rule->prefix?rule->prefix:"")
+                PRINT_RULE_MATCH("partial limit match (limit '%s') but %s:=
 '%s%s %s' (%s:%d: '%s%s%s')", ' ', limit_safe, get_rule_type_long_string(r=
ule->type), get_rule_type_char(rule->type), rule->rx, str, rule->config_fil=
ename, rule->config_linenumber, rule->config_line, rule->prefix?"', prefix:=
 '":"", rule->prefix?rule->prefix:"")
                 free(str);
             } else {
-                PRINT_RULE_MATCH("partial limit match (limit '%s') but no =
matching rule", ' ', conf->limit)
+                PRINT_RULE_MATCH("partial limit match (limit '%s') but no =
matching rule", ' ', limit_safe)
             }
             break;
         case RESULT_NO_LIMIT_MATCH:
-            PRINT_RULE_MATCH("outside of limit '%s'", ' ', conf->limit);
+            PRINT_RULE_MATCH("outside of limit '%s'", ' ', limit_safe);
             break;
     }
+    free(filename_safe);
+    free(limit_safe);
 }
=20
 /*
diff --git before/src/log.c after/src/log.c
index 9f4ea37..9bf5580 100644
--- before/src/log.c
+++ after/src/log.c
@@ -117,7 +117,9 @@ static void log_cached_lines(void) {
     for(int i =3D 0; i < ncachedlines; ++i) {
         LOG_LEVEL level =3D cached_lines[i].level;
         if (level =3D=3D LOG_LEVEL_ERROR || level <=3D log_level) {
-            stderr_msg("%s: %s\n", get_log_string(level), cached_lines[i].=
message);
+            char *msg_safe =3D stresc(cached_lines[i].message);
+            stderr_msg("%s: %s\n", get_log_string(level), msg_safe);
+            free(msg_safe);
         }
         free(cached_lines[i].message);
     }
@@ -137,7 +139,23 @@ static void vlog_msg(LOG_LEVEL level,const char* forma=
t, va_list ap) {
         cache_line(level, format, ap);
     pthread_mutex_unlock(&log_mutex);
     } else if (level =3D=3D LOG_LEVEL_ERROR || level <=3D log_level) {
-        vstderr_prefix_line(get_log_string(level), format, ap);
+        va_list aq;
+        va_copy(aq, ap);
+        int n =3D vsnprintf(NULL, 0, format, aq) + 1;
+        va_end(aq);
+
+        int size =3D n * sizeof(char);
+        char *msg_unsafe =3D malloc(size);
+        if (msg_unsafe =3D=3D NULL) {
+            stderr_msg("%s: malloc: failed to allocate %d bytes of memory\=
n", get_log_string(LOG_LEVEL_ERROR), size);
+            exit(MEMORY_ALLOCATION_FAILURE);
+        }
+
+        vsnprintf(msg_unsafe, n, format, ap);
+        char *msg_safe =3D stresc(msg_unsafe);
+        free(msg_unsafe);
+        stderr_msg("%s: %s\n", get_log_string(level), msg_safe);
+        free(msg_safe);
     }
 }
=20
diff --git before/src/progress.c after/src/progress.c
index ea85a68..940b84a 100644
--- before/src/progress.c
+++ after/src/progress.c
@@ -202,7 +202,7 @@ void progress_status(progress_state new_state, const ch=
ar* data) {
             free(path);
             path =3D NULL;
             if (data) {
-                path =3D checked_strdup(data);
+                path =3D stresc(data);
             }
             break;
         case PROGRESS_SKIPPED:
diff --git before/src/report_json.c after/src/report_json.c
index 4a4f485..f9ed737 100644
--- before/src/report_json.c
+++ after/src/report_json.c
@@ -96,8 +96,13 @@ static int _escape_json_string(const char *src, char *es=
caped_string) {
                 n++;
                 break;
             default:
-                if (escaped_string) { escaped_string[n] =3D src[i]; }
-                n++;
+                if (src[i] >=3D 0 && (src[i] < 0x1f || src[i] =3D=3D 0x7f)=
) {
+                    if (escaped_string) { snprintf(&escaped_string[n], 7, =
"\\u%04x", src[i]); }
+                    n +=3D 6;
+                } else {
+                    if (escaped_string) { escaped_string[n] =3D src[i]; }
+                    n++;
+                }
         }
     }
     if (escaped_string) { escaped_string[n] =3D '\0'; }
diff --git before/src/report_plain.c after/src/report_plain.c
index 14f9b14..83cdd39 100644
--- before/src/report_plain.c
+++ after/src/report_plain.c
@@ -53,7 +53,9 @@ static char* _get_not_grouped_list_string(report_t *repor=
t) {
 static void _print_config_option(report_t *report, config_option option, c=
onst char* value) {
     if (first) { first=3Dfalse; }
     else { report_printf(report," | "); }
-    report_printf(report, "%s: %s", config_options[option].report_string, =
value);
+    char *value_safe =3D stresc(value);
+    report_printf(report, "%s: %s", config_options[option].report_string, =
value_safe);
+    free(value_safe);
 }
=20
 static void _print_report_option(report_t *report, config_option option, c=
onst char* value) {
@@ -61,37 +63,49 @@ static void _print_report_option(report_t *report, conf=
ig_option option, const c
 }
=20
 static void _print_attribute(report_t *report, db_line* oline, db_line* nl=
ine, ATTRIBUTE attribute) {
-    char **ovalue =3D NULL;
-    char **nvalue =3D NULL;
+    char **ovalues =3D NULL;
+    char **nvalues =3D NULL;
     int onumber, nnumber, i, c;
     int p =3D (conf->print_details_width-(4 + MAX_WIDTH_DETAILS_STRING))/2;
=20
     DB_ATTR_TYPE attr =3D ATTR(attribute);
     const char* name =3D attributes[attribute].details_string;
=20
-    onumber=3Dget_attribute_values(attr, oline, &ovalue, report);
-    nnumber=3Dget_attribute_values(attr, nline, &nvalue, report);
+    onumber=3Dget_attribute_values(attr, oline, &ovalues, report);
+    nnumber=3Dget_attribute_values(attr, nline, &nvalues, report);
=20
     i =3D 0;
     while (i<onumber || i<nnumber) {
-        int olen =3D i<onumber?strlen(ovalue[i]):0;
-        int nlen =3D i<nnumber?strlen(nvalue[i]):0;
+        char *ovalue =3D NULL;
+        char *nvalue =3D NULL;
+        int olen =3D 0;
+        int nlen =3D 0;
+        if (i<onumber){
+            ovalue =3D stresc(ovalues[i]);
+            olen =3D strlen(ovalue);
+        }
+        if (i<nnumber) {
+            nvalue =3D stresc(nvalues[i]);
+            nlen =3D strlen(nvalue);
+        }
         int k =3D 0;
         while (olen-p*k >=3D 0 || nlen-p*k >=3D 0) {
             c =3D k*(p-1);
             if (!onumber) {
-                report_printf(report," %-*s%c %-*c  %.*s\n", MAX_WIDTH_DET=
AILS_STRING, (i+k)?"":name, (i+k)?' ':':', p, ' ', p-1, nlen-c>0?&nvalue[i]=
[c]:"");
+                report_printf(report," %-*s%c %-*c  %.*s\n", MAX_WIDTH_DET=
AILS_STRING, (i+k)?"":name, (i+k)?' ':':', p, ' ', p-1, nlen-c>0?&nvalue[c]=
:"");
             } else if (!nnumber) {
-                report_printf(report," %-*s%c %.*s\n", MAX_WIDTH_DETAILS_S=
TRING, (i+k)?"":name, (i+k)?' ':':', p-1, olen-c>0?&ovalue[i][c]:"");
+                report_printf(report," %-*s%c %.*s\n", MAX_WIDTH_DETAILS_S=
TRING, (i+k)?"":name, (i+k)?' ':':', p-1, olen-c>0?&ovalue[c]:"");
             } else {
-                report_printf(report," %-*s%c %-*.*s| %.*s\n", MAX_WIDTH_D=
ETAILS_STRING, (i+k)?"":name, (i+k)?' ':':', p, p-1, olen-c>0?&ovalue[i][c]=
:"", p-1, nlen-c>0?&nvalue[i][c]:"");
+                report_printf(report," %-*s%c %-*.*s| %.*s\n", MAX_WIDTH_D=
ETAILS_STRING, (i+k)?"":name, (i+k)?' ':':', p, p-1, olen-c>0?&ovalue[c]:""=
, p-1, nlen-c>0?&nvalue[c]:"");
             }
             k++;
         }
         ++i;
+        free(ovalue);
+        free(nvalue);
     }
-    for(i=3D0; i < onumber; ++i) { free(ovalue[i]); ovalue[i]=3DNULL; } fr=
ee(ovalue); ovalue=3DNULL;
-    for(i=3D0; i < nnumber; ++i) { free(nvalue[i]); nvalue[i]=3DNULL; } fr=
ee(nvalue); nvalue=3DNULL;
+    for(i=3D0; i < onumber; ++i) { free(ovalues[i]); ovalues[i]=3DNULL; } =
free(ovalues); ovalues=3DNULL;
+    for(i=3D0; i < nnumber; ++i) { free(nvalues[i]); nvalues[i]=3DNULL; } =
free(nvalues); nvalues=3DNULL;
 }
=20
 static void _print_database_attributes(report_t *report, db_line* db) {
@@ -134,19 +148,21 @@ static void print_report_summary_plain(report_t *repo=
rt) {
 }
=20
 static void print_line_plain(report_t* report, char* filename, int node_ch=
ecked, seltree* node) {
+    char *filename_safe =3D stresc(filename);
     if(report->summarize_changes) {
         char* summary =3D get_summarize_changes_string(report, node);
-        report_printf(report, "\n%s: %s", summary, filename);
+        report_printf(report, "\n%s: %s", summary, filename_safe);
         free(summary); summary=3DNULL;
     } else {
         if (node_checked&NODE_ADDED) {
-            report_printf(report, _("\nadded: %s"), filename);
+            report_printf(report, _("\nadded: %s"), filename_safe);
         } else if (node_checked&NODE_REMOVED) {
-            report_printf(report, _("\nremoved: %s"), filename);
+            report_printf(report, _("\nremoved: %s"), filename_safe);
         } else if (node_checked&NODE_CHANGED) {
-            report_printf(report, _("\nchanged: %s"), filename);
+            report_printf(report, _("\nchanged: %s"), filename_safe);
         }
     }
+    free(filename_safe);
 }
=20
 static void print_report_dbline_attributes_plain(report_t *report, db_line=
* oline, db_line* nline, DB_ATTR_TYPE report_attrs) {
@@ -156,7 +172,9 @@ static void print_report_dbline_attributes_plain(report=
_t *report, db_line* olin
         if (line->perm) {
             report_printf(report, "%s: ", get_file_type_string(line->perm)=
);
         }
-        report_printf(report, "%s\n", line->filename);
+        char *filename_safe =3D stresc(line->filename);
+        report_printf(report, "%s\n", filename_safe);
+        free(filename_safe);
=20
         print_dbline_attrs(report, oline, nline, report_attrs, _print_attr=
ibute);
     }
@@ -193,9 +211,11 @@ static void print_report_details_plain(report_t *repor=
t, seltree* node) {
 static void print_report_diff_attrs_entries_plain(report_t *report) {
     for(int i =3D 0; i < report->num_diff_attrs_entries; ++i) {
         char *str =3D NULL;
+        char *entry_safe =3D stresc(report->diff_attrs_entries[i].entry);
         report_printf(report, "Entry %s in databases has different attribu=
tes: %s\n",
-                report->diff_attrs_entries[i].entry,
+                entry_safe,
                 str=3D diff_attributes(report->diff_attrs_entries[i].old_a=
ttrs, report->diff_attrs_entries[i].new_attrs));
+        free(entry_safe);
         free(str);
     }
     report->num_diff_attrs_entries =3D 0;
diff --git before/src/util.c after/src/util.c
index 900b3f4..2df2c19 100644
--- before/src/util.c
+++ after/src/util.c
@@ -143,6 +143,40 @@ int cmpurl(url_t* u1,url_t* u2)
   return RETOK;
 }
=20
+static size_t escape_str(const char *unescaped_str, char *str, size_t s) {
+    size_t n =3D 0;
+    size_t i =3D 0;
+    char c;
+    while (i < s && (c =3D unescaped_str[i])) {
+        if ((c >=3D 0 && (c < 0x1f || c =3D=3D 0x7f)) ||
+            (c =3D=3D '\\' && isdigit(unescaped_str[i+1])
+                       && isdigit(unescaped_str[i+2])
+                       && isdigit(unescaped_str[i+3])
+                ) ) {
+            if (str) { snprintf(&str[n], 5, "\\%03o", c); }
+            n +=3D 4;
+        } else {
+            if (str) { str[n] =3D c; }
+            n++;
+        }
+        i++;
+    }
+    if (str) { str[n] =3D '\0'; }
+    n++;
+    return n;
+}
+
+char *strnesc(const char *unescaped_str, size_t s) {
+    int n =3D escape_str(unescaped_str, NULL, s);
+    char *str =3D checked_malloc(n);
+    escape_str(unescaped_str, str, s);
+    return str;
+}
+
+char *stresc(const char *unescaped_str) {
+    return strnesc(unescaped_str, strlen(unescaped_str));
+}
+
 /* Returns 1 if the string contains unsafe characters, 0 otherwise.  */
 int contains_unsafe (const char *s)
 {

--ZO+lzFhYrqjPId7U--

--hI8tTDkrT26th187
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAABCgAdFiEEVJXNoXyawXqyOEGnGO6GOGAi71cFAmid7BoACgkQGO6GOGAi
71de6Qv8DCNxkzGIJx8GZQa0eItHpVrVtZUpi3u3v+d/Wbg9s0jWhsuCimgBcoTw
dpcekiWplVaJqkSxACdg3YSxgNIazr25LmR+nPsk00C/hLZR0eP5uaSNmWuebQjf
Ycr6iAgK7Ibm9zpuEq8/g06DGwuEMQ1FGwS3FDYmWeRCm/AiSgqGSOtDTcHJebse
n5XJQCUFPbls655SddnerDYu8an9be7qCvqOgkCAMBT1nWmzttv5ZMT419KH4bM3
Z8iNPelSsVWk/kjK3oaWIdFFvp0vde2uvA6YbhJAlQs1jRp306xHns3GZjyKAZJm
MiFVEVoP5qbXqv/KdF2Xy62kIgia7Bl33UqqESTMdZaFndvU8COVwf4Mz9yrw7P/
KIR01HCls7VDBVJljtZJ4Le1NTIbn6yMWPD79/grC+0GHSve3tspAcjMChHX57ZB
QlQRP5qfzp0sQxn6oiiCLkHmUKDXanExEDPcT2tbysjeZOExENd9wsuXmRhuTM4p
aDOj0JqP
=T0aG
-----END PGP SIGNATURE-----

--hI8tTDkrT26th187--
