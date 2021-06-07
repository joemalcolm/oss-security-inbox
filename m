X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7421" "Monday" "7" "June" "2021" "13:46:43" "+0200" "Oswald Buddenhagen" "oswald.buddenhagen@gmx.de" nil "197" "[oss-security] CVE-2021-3578: possible remote code execution in isync/mbsync" nil nil nil "6" nil nil (number mark "U       oswald.budde Jun  7  197/7421  " thread-indent "\"[oss-security] CVE-2021-3578: possible remote code execution in isync/mbsync\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-3578: possible remote code execution in isync/mbsync" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28599 invoked by uid 550); 7 Jun 2021 14:12:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18181 invoked from network); 7 Jun 2021 11:46:56 -0000
Date: Mon, 7 Jun 2021 13:46:43 +0200
From: Oswald Buddenhagen <oswald.buddenhagen@gmx.de>
To: isync-devel@lists.sourceforge.net
Cc: oss-security@lists.openwall.com
Message-ID: <YL4HIzhrA7I83MF0@ugly>
Mail-Followup-To: isync-devel@lists.sourceforge.net,
	oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="nPYl9x/bkg5EdC7g"
Content-Disposition: inline
Subject: [oss-security] CVE-2021-3578: possible remote code execution in isync/mbsync

--nPYl9x/bkg5EdC7g
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline

description:

A flaw was found in mbsync before v1.3.6 and v1.4.2, where an unchecked
pointer cast allows a malicious or compromised server to write an
arbitrary integer value past the end of a heap-allocated structure by
issuing an unexpected APPENDUID response. This could be plausibly
exploited for remote code execution on the client.

mitigation:

upgrade to the freshly released v1.3.6 or v1.4.2 available from 
https://sourceforge.net/projects/isync/files/isync/ , or apply the 
matching attached patch.

credit:

This problem was found by Lukas Braun <koomi@moshbit.net> using a
fuzzer.


--nPYl9x/bkg5EdC7g
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment;
	filename="fix-handling-of-unexpected-APPENDUID-response-code--1.3.patch"

>From 5fbed519180f155a017a438e479b6268b74b9526 Mon Sep 17 00:00:00 2001
From: Oswald Buddenhagen <ossi@users.sf.net>
Date: Wed, 14 Apr 2021 16:58:27 +0200
Subject: [PATCH] fix handling of unexpected APPENDUID response code

if the code was sent in response to anything but a STORE, we'd overwrite
a data pointer in one of our imap_cmd subclasses, an allocator data
structure, or the start of the next allocation, with an int that was
completely under the server's control. it's plausible that this could be
exploited for remote code execution.

to avoid this, we could ensure that the object is of the right type
prior to casting, by using a new flag in the parameter block. but it's
easier to just dispose of the out_uid field altogether and reuse the uid
field that is present in the parameter block anyway, but was used only
for FETCH commands so far.

this problem was found by Lukas Braun <koomi@moshbit.net> using a
fuzzer.
---
 src/drv_imap.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/src/drv_imap.c b/src/drv_imap.c
index fbe2fed..4cc3b2a 100644
--- a/src/drv_imap.c
+++ b/src/drv_imap.c
@@ -181,7 +181,6 @@ typedef struct {
 	imap_cmd_t gen;
 	void (*callback)( int sts, uint uid, void *aux );
 	void *callback_aux;
-	uint out_uid;
 } imap_cmd_out_uid_t;
 
 typedef struct {
@@ -1184,11 +1183,22 @@ parse_response_code( imap_store_t *ctx, imap_cmd_t *cmd, char *s )
 		 */
 		for (; isspace( (uchar)*p ); p++);
 		error( "*** IMAP ALERT *** %s\n", p );
-	} else if (cmd && !strcmp( "APPENDUID", arg )) {
+	} else if (!strcmp( "APPENDUID", arg )) {
+		// The checks ensure that:
+		// - cmd => this is the final tagged response of a command, at which
+		//   point cmd was already removed from ctx->in_progress, so param.uid
+		//   is available for reuse.
+		// - !param.uid => the command isn't actually a FETCH. This doesn't
+		//   really matter, as the field is safe to overwrite given the
+		//   previous condition; it just has no effect for non-APPENDs.
+		if (!cmd || cmd->param.uid) {
+			error( "IMAP error: unexpected APPENDUID status\n" );
+			return RESP_CANCEL;
+		}
 		if (!(arg = next_arg( &s )) ||
 		    (ctx->uidvalidity = strtoul( arg, &earg, 10 ), *earg) ||
 		    !(arg = next_arg( &s )) ||
-		    (((imap_cmd_out_uid_t *)cmd)->out_uid = strtoul( arg, &earg, 10 ), *earg))
+		    (cmd->param.uid = strtoul( arg, &earg, 10 ), *earg))
 		{
 			error( "IMAP error: malformed APPENDUID status\n" );
 			return RESP_CANCEL;
@@ -2957,7 +2967,6 @@ imap_store_msg( store_t *gctx, msg_data_t *data, int to_trash,
 	ctx->buffer_mem += data->len;
 	cmd->gen.param.data_len = data->len;
 	cmd->gen.param.data = data->data;
-	cmd->out_uid = 0;
 
 	if (to_trash) {
 		cmd->gen.param.create = 1;
@@ -2990,7 +2999,7 @@ imap_store_msg_p2( imap_store_t *ctx ATTR_UNUSED, imap_cmd_t *cmd, int response
 	imap_cmd_out_uid_t *cmdp = (imap_cmd_out_uid_t *)cmd;
 
 	transform_msg_response( &response );
-	cmdp->callback( response, cmdp->out_uid, cmdp->callback_aux );
+	cmdp->callback( response, cmdp->gen.param.uid, cmdp->callback_aux );
 }
 
 /******************* imap_find_new_msgs *******************/
-- 
2.31.1.2.g8c0bdb8a70


--nPYl9x/bkg5EdC7g
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment;
	filename="fix-handling-of-unexpected-APPENDUID-response-code--1.4.patch"

>From f77deb0282d064d817ce6cf903126247bf745ed3 Mon Sep 17 00:00:00 2001
From: Oswald Buddenhagen <ossi@users.sf.net>
Date: Wed, 14 Apr 2021 16:58:27 +0200
Subject: [PATCH] fix handling of unexpected APPENDUID response code

if the code was sent in response to anything but a STORE, we'd overwrite
a data pointer in one of our imap_cmd subclasses, an allocator data
structure, or the start of the next allocation, with an int that was
completely under the server's control. it's plausible that this could be
exploited for remote code execution.

to avoid this, we could ensure that the object is of the right type
prior to casting, by using a new flag in the parameter block. but it's
easier to just dispose of the out_uid field altogether and reuse the uid
field that is present in the parameter block anyway, but was used only
for FETCH commands so far.

this problem was found by Lukas Braun <koomi@moshbit.net> using a
fuzzer.
---
 src/drv_imap.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/src/drv_imap.c b/src/drv_imap.c
index edae95c..3c85c4d 100644
--- a/src/drv_imap.c
+++ b/src/drv_imap.c
@@ -217,7 +217,6 @@ typedef union {
 		IMAP_CMD
 		void (*callback)( int sts, uint uid, void *aux );
 		void *callback_aux;
-		uint out_uid;
 	};
 } imap_cmd_out_uid_t;
 
@@ -1289,11 +1288,22 @@ parse_response_code( imap_store_t *ctx, imap_cmd_t *cmd, char *s )
 		}
 		for (; isspace( (uchar)*s ); s++);
 		error( "*** IMAP ALERT *** %s\n", s );
-	} else if (cmd && !strcmp( "APPENDUID", arg )) {
+	} else if (!strcmp( "APPENDUID", arg )) {
+		// The checks ensure that:
+		// - cmd => this is the final tagged response of a command, at which
+		//   point cmd was already removed from ctx->in_progress, so param.uid
+		//   is available for reuse.
+		// - !param.uid => the command isn't actually a FETCH. This doesn't
+		//   really matter, as the field is safe to overwrite given the
+		//   previous condition; it just has no effect for non-APPENDs.
+		if (!cmd || cmd->param.uid) {
+			error( "IMAP error: unexpected APPENDUID status\n" );
+			return RESP_CANCEL;
+		}
 		if (!(arg = next_arg( &s )) ||
 		    (ctx->uidvalidity = strtoul( arg, &earg, 10 ), *earg) ||
 		    !(arg = next_arg( &s )) ||
-		    (((imap_cmd_out_uid_t *)cmd)->out_uid = strtoul( arg, &earg, 10 ), *earg != ']'))
+		    (cmd->param.uid = strtoul( arg, &earg, 10 ), *earg != ']'))
 		{
 			error( "IMAP error: malformed APPENDUID status\n" );
 			return RESP_CANCEL;
@@ -3167,7 +3177,6 @@ imap_store_msg( store_t *gctx, msg_data_t *data, int to_trash,
 	ctx->buffer_mem += data->len;
 	cmd->param.data_len = data->len;
 	cmd->param.data = data->data;
-	cmd->out_uid = 0;
 
 	if (to_trash) {
 		cmd->param.create = 1;
@@ -3203,7 +3212,7 @@ imap_store_msg_p2( imap_store_t *ctx ATTR_UNUSED, imap_cmd_t *cmd, int response
 	imap_cmd_out_uid_t *cmdp = (imap_cmd_out_uid_t *)cmd;
 
 	transform_msg_response( &response );
-	cmdp->callback( response, cmdp->out_uid, cmdp->callback_aux );
+	cmdp->callback( response, cmdp->param.uid, cmdp->callback_aux );
 }
 
 /******************* imap_find_new_msgs *******************/
-- 
2.31.1.2.g8c0bdb8a70


--nPYl9x/bkg5EdC7g--
