X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3463" "Friday" "3" "December" "2021" "12:31:14" "+0100" "Oswald Buddenhagen" "oswald.buddenhagen@gmx.de" nil "98" "[oss-security] CVE-2021-44143: heap overflow in isync/mbsync" nil nil nil "12" nil nil (number mark "U       oswald.budde Dec  3   98/3463  " thread-indent "\"[oss-security] CVE-2021-44143: heap overflow in isync/mbsync\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-44143: heap overflow in isync/mbsync" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32161 invoked by uid 550); 3 Dec 2021 11:34:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29813 invoked from network); 3 Dec 2021 11:31:27 -0000
Date: Fri, 3 Dec 2021 12:31:14 +0100
From: Oswald Buddenhagen <oswald.buddenhagen@gmx.de>
To: isync-devel@lists.sourceforge.net
Cc: oss-security@lists.openwall.com
Message-ID: <YaoAAoib+m56pU/g@ugly>
Mail-Followup-To: isync-devel@lists.sourceforge.net,
	oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="EBJnpFGq/t+SdAbh"
Content-Disposition: inline
Subject: [oss-security] CVE-2021-44143: heap overflow in isync/mbsync

--EBJnpFGq/t+SdAbh
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline

description:

A flaw was found in mbsync versions 1.4.0 through 1.4.3. Due to an
unchecked condition, a malicious or compromised IMAP server could use
a crafted mail message that lacks headers (i.e., one that
starts with an empty line) to provoke a heap overflow, which could
conceivably be exploited for remote code execution.

mitigation:

upgrade to the freshly released v1.4.4 available from 
https://sourceforge.net/projects/isync/files/isync/ , or apply the 
attached patch.


--EBJnpFGq/t+SdAbh
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment;
	filename="CVE-2021-44143-buffer-overflow-on-invalid-1.4.patch"

>From 87065c12b477ee7239dd907f352dda5289c0c919 Mon Sep 17 00:00:00 2001
From: Oswald Buddenhagen <ossi@users.sf.net>
Date: Mon, 22 Nov 2021 20:57:24 +0100
Subject: [PATCH 1/1] CVE-2021-44143: don't overflow heap on messages without
 headers

when a broken/compromised/malicious server gives us a message that
starts with an empty line, we'd enter the path for inserting a pristine
placeholder subject, for which we unfortunately didn't actually allocate
space (unless MaxSize is in use and the message exceeds it).

note that this cannot be triggered by merely receiving a crafted mail
with no headers (yes, it's actually possible to send such a thing), as
the delivery of mails adds plenty of headers.

amends 70bad661.
---
 src/sync.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/src/sync.c b/src/sync.c
index 9804b7e..79dc223 100644
--- a/src/sync.c
+++ b/src/sync.c
@@ -410,7 +410,7 @@ copy_msg_convert( int in_cr, int out_cr, copy_vars_t *vars )
 {
 	char *in_buf = vars->data.data;
 	uint in_len = vars->data.len;
-	uint idx = 0, sbreak = 0, ebreak = 0, break2 = 0;
+	uint idx = 0, sbreak = 0, ebreak = 0, break2 = UINT_MAX;
 	uint lines = 0, hdr_crs = 0, bdy_crs = 0, app_cr = 0, extra = 0;
 	uint add_subj = 0;
 
@@ -428,7 +428,7 @@ copy_msg_convert( int in_cr, int out_cr, copy_vars_t *vars )
 					if (!vars->minimal)
 						goto oke;
 				} else {
-					if (!break2 && vars->minimal && !strncasecmp( in_buf + start, "Subject:", 8 )) {
+					if (break2 == UINT_MAX && vars->minimal && !strncasecmp( in_buf + start, "Subject:", 8 )) {
 						break2 = start + 8;
 						if (in_buf[break2] == ' ')
 							break2++;
@@ -441,7 +441,7 @@ copy_msg_convert( int in_cr, int out_cr, copy_vars_t *vars )
 						sbreak = ebreak = start;
 					if (vars->minimal) {
 						in_len = idx;
-						if (!break2) {
+						if (break2 == UINT_MAX) {
 							break2 = start;
 							add_subj = 1;
 						}
@@ -496,7 +496,7 @@ copy_msg_convert( int in_cr, int out_cr, copy_vars_t *vars )
 	char *out_buf = vars->data.data = nfmalloc( vars->data.len );
 	idx = 0;
 	if (vars->srec) {
-		if (break2 && break2 < sbreak) {
+		if (break2 < sbreak) {
 			copy_msg_bytes( &out_buf, in_buf, &idx, break2, in_cr, out_cr );
 			memcpy( out_buf, dummy_pfx, strlen(dummy_pfx) );
 			out_buf += strlen(dummy_pfx);
@@ -512,7 +512,7 @@ copy_msg_convert( int in_cr, int out_cr, copy_vars_t *vars )
 		*out_buf++ = '\n';
 		idx = ebreak;
 
-		if (break2 >= sbreak) {
+		if (break2 != UINT_MAX && break2 >= sbreak) {
 			copy_msg_bytes( &out_buf, in_buf, &idx, break2, in_cr, out_cr );
 			if (!add_subj) {
 				memcpy( out_buf, dummy_pfx, strlen(dummy_pfx) );
-- 
2.33.1.11.g2e4d00c830


--EBJnpFGq/t+SdAbh--
