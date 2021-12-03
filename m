X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["14059" "Friday" "3" "December" "2021" "12:24:32" "+0100" "Oswald Buddenhagen" "oswald.buddenhagen@gmx.de" nil "407" "[oss-security] CVE-2021-3657: multiple buffer overflows in isync/mbsync" nil nil nil "12" nil nil (number mark "U       oswald.budde Dec  3  407/14059 " thread-indent "\"[oss-security] CVE-2021-3657: multiple buffer overflows in isync/mbsync\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-3657: multiple buffer overflows in isync/mbsync" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12137 invoked by uid 550); 3 Dec 2021 11:27:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9818 invoked from network); 3 Dec 2021 11:24:46 -0000
Date: Fri, 3 Dec 2021 12:24:32 +0100
From: Oswald Buddenhagen <oswald.buddenhagen@gmx.de>
To: isync-devel@lists.sourceforge.net
Cc: oss-security@lists.openwall.com
Message-ID: <Yan+cPE6n/neDPhS@ugly>
Mail-Followup-To: isync-devel@lists.sourceforge.net,
	oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="TAc7QUWuUlST/4SO"
Content-Disposition: inline
Subject: [oss-security] CVE-2021-3657: multiple buffer overflows in isync/mbsync

--TAc7QUWuUlST/4SO
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline

description:

A flaw was found in mbsync versions prior to 1.4.4. Due to inadequate
handling of extremely large (>=2GiB) IMAP literals, malicious or
compromised IMAP servers, and hypothetically even external email
senders, could cause several different buffer overflows, which could
conceivably be exploited for remote code execution.

mitigation:

upgrade to the freshly released v1.4.4 available from 
https://sourceforge.net/projects/isync/files/isync/ , or apply the 
matching attached patch. note that while a patch for v1.3.x is provided, 
no upstream release will be made any more.

details:

i'm not sure it's actually possible to pull off RCE with these. a
non-server attacker would be additionally impaired by message size
limitations and being unable to predict the exact size of the headers
stored in the box, so they would likely need an account on the same
liberally configured system, apart from knowing to target mbsync.

--TAc7QUWuUlST/4SO
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment;
	filename="CVE-2021-3657-buffer-overflows-on-big-1.4.patch"

>From 463272eab866a36162fe51813327ca7af2f37ca0 Mon Sep 17 00:00:00 2001
From: Oswald Buddenhagen <ossi@users.sf.net>
Date: Wed, 24 Nov 2021 19:21:48 +0100
Subject: [PATCH 1/5] CVE-2021-3657: reject excessively large IMAP literals

we didn't limit the 32-bit size of literals so far, which, given that we
use int-sized lengths & offsets, permitted all kinds of buffer
overflows. malicious/compromised servers may have been able to exploit
this. actual email senders would be constrained by size limits for
delivered mails, and to cause more than a crash they'd have to predict
the exact size of the final message.

we now limit to 2GB, which, given that we use unsigned ints since
e2d3b4d55 (v1.4.0), gives the handlers downstream plenty of headroom.

an alternative would have been using 64-bit offsets, but this seems like
major overkill, even if IMAP4rev2 recently mandated it (we talk only
IMAP4rev1, so we can ignore it).
---
 src/drv_imap.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/src/drv_imap.c b/src/drv_imap.c
index bd7a0f2..bb71506 100644
--- a/src/drv_imap.c
+++ b/src/drv_imap.c
@@ -877,6 +877,11 @@ parse_imap_list( imap_store_t *ctx, char **sp, parse_list_state_t *sts )
 			bytes = (int)(cur->len = strtoul( s + 1, &s, 10 ));
 			if (*s != '}' || *++s)
 				goto bail;
+			if ((uint)bytes >= INT_MAX) {
+				error( "IMAP error: excessively large literal from %s "
+				       "- THIS MIGHT BE AN ATTEMPT TO HACK YOU!\n", ctx->conn.name );
+				goto bail;
+			}
 
 			s = cur->val = nfmalloc( cur->len + 1 );
 			s[cur->len] = 0;
-- 
2.33.1.11.g2e4d00c830


>From ba13362a52d8749731ba645e5e50e47862a5b91d Mon Sep 17 00:00:00 2001
From: Oswald Buddenhagen <ossi@users.sf.net>
Date: Wed, 24 Nov 2021 17:22:04 +0100
Subject: [PATCH 2/5] deal with oversized messages in maildirs

don't try to read messages > 2G, as that will only lead to trouble down
the line.

this wouldn't have worked on linux anyway (we read in one chunk, and
that is limited to (2^31 - 2^12) on all architectures), but on
platforms were big reads work, this was a security problem if one
synchronized other users' maildirs.

as a minor fix on the side, we now also clip the reported message size,
so MaxSize works for excessively big messages.
---
 src/drv_maildir.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/src/drv_maildir.c b/src/drv_maildir.c
index ea4195d..f916632 100644
--- a/src/drv_maildir.c
+++ b/src/drv_maildir.c
@@ -1168,7 +1168,8 @@ maildir_scan( maildir_store_t *ctx, msg_t_array_alloc_t *msglist )
 					}
 					goto retry;
 				}
-				entry->size = (uint)st.st_size;
+				// The clipped value is good enough for MaxSize comparisons.
+				entry->size = st.st_size > UINT_MAX ? UINT_MAX : (uint)st.st_size;
 			}
 			if (want_tuid || want_msgid) {
 				if (!(f = fopen( buf, "r" ))) {
@@ -1563,12 +1564,17 @@ maildir_fetch_msg( store_t *gctx, message_t *gmsg, msg_data_t *data, int minimal
 		}
 	}
 	fstat( fd, &st );
+	if (st.st_size > INT_MAX) {
+		error( "Maildir error: %s is too big", buf );
+		goto mbad;
+	}
 	data->len = st.st_size;
 	if (data->date == -1)
 		data->date = st.st_mtime;
 	data->data = nfmalloc( data->len );
 	if (read( fd, data->data, data->len ) != data->len) {
 		sys_error( "Maildir error: cannot read %s", buf );
+	  mbad:
 		close( fd );
 		cb( DRV_MSG_BAD, aux );
 		return;
-- 
2.33.1.11.g2e4d00c830


>From bc15e571b650270b87e9758916f93eab04992cef Mon Sep 17 00:00:00 2001
From: Oswald Buddenhagen <ossi@users.sf.net>
Date: Wed, 24 Nov 2021 17:46:43 +0100
Subject: [PATCH 3/5] report conversion errors directly in copy_msg_convert()

that makes it easier to report various conditions without introducing
separate error codes.
---
 src/sync.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/src/sync.c b/src/sync.c
index 79dc223..978521c 100644
--- a/src/sync.c
+++ b/src/sync.c
@@ -406,7 +406,7 @@ copy_msg_bytes( char **out_ptr, const char *in_buf, uint *in_idx, uint in_len, i
 }
 
 static int
-copy_msg_convert( int in_cr, int out_cr, copy_vars_t *vars )
+copy_msg_convert( int in_cr, int out_cr, copy_vars_t *vars, int t )
 {
 	char *in_buf = vars->data.data;
 	uint in_len = vars->data.len;
@@ -451,7 +451,8 @@ copy_msg_convert( int in_cr, int out_cr, copy_vars_t *vars )
 				goto nloop;
 			}
 		}
-		/* invalid message */
+		warn( "Warning: message %u from %s has incomplete header; skipping.\n",
+		      vars->msg->uid, str_fn[1-t] );
 		free( in_buf );
 		return 0;
 	  oke:
@@ -556,9 +557,7 @@ msg_fetched( int sts, void *aux )
 		scr = (svars->drv[1-t]->get_caps( svars->ctx[1-t] ) / DRV_CRLF) & 1;
 		tcr = (svars->drv[t]->get_caps( svars->ctx[t] ) / DRV_CRLF) & 1;
 		if (vars->srec || scr != tcr) {
-			if (!copy_msg_convert( scr, tcr, vars )) {
-				warn( "Warning: message %u from %s has incomplete header.\n",
-				      vars->msg->uid, str_fn[1-t] );
+			if (!copy_msg_convert( scr, tcr, vars, t )) {
 				vars->cb( SYNC_NOGOOD, 0, vars );
 				return;
 			}
-- 
2.33.1.11.g2e4d00c830


>From 92921b1d3b7262eaa0fbb095cc714098b431c2f9 Mon Sep 17 00:00:00 2001
From: Oswald Buddenhagen <ossi@users.sf.net>
Date: Wed, 24 Nov 2021 17:51:06 +0100
Subject: [PATCH 4/5] reject messages that grow too large due to conversion

that shouldn't really be a problem, as we have 2GB of headroom, and most
growth would happen when sending an all-newlines message from maildir to
imap (due to CR additions), which is mostly non-critical. but better
safe than sorry.
---
 src/sync.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/src/sync.c b/src/sync.c
index 978521c..32d4fa1 100644
--- a/src/sync.c
+++ b/src/sync.c
@@ -494,6 +494,12 @@ copy_msg_convert( int in_cr, int out_cr, copy_vars_t *vars, int t )
 	}
 
 	vars->data.len = in_len + extra;
+	if (vars->data.len > INT_MAX) {
+		warn( "Warning: message %u from %s is too big after conversion; skipping.\n",
+		      vars->msg->uid, str_fn[1-t] );
+		free( in_buf );
+		return 0;
+	}
 	char *out_buf = vars->data.data = nfmalloc( vars->data.len );
 	idx = 0;
 	if (vars->srec) {
-- 
2.33.1.11.g2e4d00c830


>From 127003ee37e3eb6d914782be43097338baa32d2b Mon Sep 17 00:00:00 2001
From: Oswald Buddenhagen <ossi@users.sf.net>
Date: Wed, 24 Nov 2021 18:24:00 +0100
Subject: [PATCH 5/5] reject unreasonably long mailbox names from IMAP LIST

this wasn't really a security problem, as the name mapping we actually
do does not change the string length, and the iteration was already
safe after the literal length fix, but it's still better to catch weird
input.
---
 src/drv_imap.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/src/drv_imap.c b/src/drv_imap.c
index bb71506..c5a7aed 100644
--- a/src/drv_imap.c
+++ b/src/drv_imap.c
@@ -1439,6 +1439,10 @@ parse_list_rsp_p2( imap_store_t *ctx, list_t *list, char *cmd ATTR_UNUSED )
 	}
 	arg = list->val;
 	argl = (int)list->len;
+	if (argl > 1000) {
+		warn( "IMAP warning: ignoring unreasonably long mailbox name '%.100s[...]'\n", arg );
+		return LIST_OK;
+	}
 	// The server might be weird and have a non-uppercase INBOX. It
 	// may legitimately do so, but we need the canonical spelling.
 	normalize_INBOX( ctx, arg, argl );
-- 
2.33.1.11.g2e4d00c830


--TAc7QUWuUlST/4SO
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment;
	filename="CVE-2021-3657-buffer-overflows-on-big-1.3.patch"

>From 9f7f0c94b67e9506ebf8ca674dd6cbb6a7989f44 Mon Sep 17 00:00:00 2001
From: Oswald Buddenhagen <ossi@users.sf.net>
Date: Wed, 24 Nov 2021 16:57:00 +0100
Subject: [PATCH] CVE-2021-3657: security fixes

unlike in the 1.4 branch, we use signed ints for offsets and lengths, so
many of the qualifying statements from the 1.4 series don't apply.
---
 src/drv_imap.c    |  9 +++++++++
 src/drv_maildir.c |  8 +++++++-
 src/socket.c      |  8 ++++++--
 src/sync.c        | 15 ++++++++++-----
 4 files changed, 32 insertions(+), 8 deletions(-)

diff --git a/src/drv_imap.c b/src/drv_imap.c
index 4cc3b2a..0d6c869 100644
--- a/src/drv_imap.c
+++ b/src/drv_imap.c
@@ -780,6 +780,11 @@ parse_imap_list( imap_store_t *ctx, char **sp, parse_list_state_t *sts )
 			bytes = cur->len = strtol( s + 1, &s, 10 );
 			if (*s != '}' || *++s)
 				goto bail;
+			if ((uint)bytes >= INT_MAX) {
+				error( "IMAP error: excessively large literal from %s "
+				       "- THIS MIGHT BE AN ATTEMPT TO HACK YOU!\n", ctx->conn.name );
+				goto bail;
+			}
 
 			s = cur->val = nfmalloc( cur->len + 1 );
 			s[cur->len] = 0;
@@ -1279,6 +1284,10 @@ parse_list_rsp_p2( imap_store_t *ctx, list_t *list, char *cmd ATTR_UNUSED )
 	}
 	arg = list->val;
 	argl = list->len;
+	if (argl > 1000) {
+		warn( "IMAP warning: ignoring unreasonably long mailbox name '%.100s[...]'\n", arg );
+		goto skip;
+	}
 	if ((l = strlen( ctx->prefix ))) {
 		if (!starts_with( arg, argl, ctx->prefix, l )) {
 			if (is_inbox( ctx, arg, argl )) {
diff --git a/src/drv_maildir.c b/src/drv_maildir.c
index e1622d3..40a4d2a 100644
--- a/src/drv_maildir.c
+++ b/src/drv_maildir.c
@@ -1147,7 +1147,8 @@ maildir_scan( maildir_store_t *ctx, msg_t_array_alloc_t *msglist )
 					}
 					goto retry;
 				}
-				entry->size = st.st_size;
+				// The clipped value is good enough for MaxSize comparisons.
+				entry->size = st.st_size > INT_MAX ? INT_MAX : (int)st.st_size;
 			}
 			if (want_tuid || want_msgid) {
 				if (!(f = fopen( buf, "r" ))) {
@@ -1534,12 +1535,17 @@ maildir_fetch_msg( store_t *gctx, message_t *gmsg, msg_data_t *data,
 		}
 	}
 	fstat( fd, &st );
+	if (st.st_size > INT_MAX) {
+		error( "Maildir error: %s is too big", buf );
+		goto mbad;
+	}
 	data->len = st.st_size;
 	if (data->date == -1)
 		data->date = st.st_mtime;
 	data->data = nfmalloc( data->len );
 	if (read( fd, data->data, data->len ) != data->len) {
 		sys_error( "Maildir error: cannot read %s", buf );
+	  mbad:
 		close( fd );
 		cb( DRV_MSG_BAD, aux );
 		return;
diff --git a/src/socket.c b/src/socket.c
index 84449e7..d8548a9 100644
--- a/src/socket.c
+++ b/src/socket.c
@@ -898,6 +898,8 @@ do_append( conn_t *conn, buff_chunk_t *bc )
 /* This is big enough to avoid excessive chunking, but is
  * sufficiently small to keep SSL latency low with a slow uplink. */
 #define WRITE_CHUNK_SIZE 1024
+// Huge data blocks (message payloads) are forcibly chunked.
+#define MAX_WRITE_CHUNK_SIZE (1 << 30)
 
 static void
 do_flush( conn_t *conn )
@@ -952,7 +954,8 @@ do_flush( conn_t *conn )
 void
 socket_write( conn_t *conn, conn_iovec_t *iov, int iovcnt )
 {
-	int i, buf_avail, len, offset = 0, total = 0;
+	int i, buf_avail, len, offset = 0;
+	uint total = 0;
 	buff_chunk_t *bc;
 
 	for (i = 0; i < iovcnt; i++)
@@ -971,7 +974,8 @@ socket_write( conn_t *conn, conn_iovec_t *iov, int iovcnt )
 			 * predict a reasonable output buffer size anyway - deflatePending() does
 			 * not account for consumed but not yet compressed input, and adding up
 			 * the deflateBound()s would be a tad *too* pessimistic. */
-			buf_avail = total > WRITE_CHUNK_SIZE ? total : WRITE_CHUNK_SIZE;
+			buf_avail = total > MAX_WRITE_CHUNK_SIZE ? MAX_WRITE_CHUNK_SIZE :
+					total > WRITE_CHUNK_SIZE ? total : WRITE_CHUNK_SIZE;
 			bc = nfmalloc( offsetof(buff_chunk_t, data) + buf_avail );
 			bc->len = 0;
 #ifndef HAVE_LIBZ
diff --git a/src/sync.c b/src/sync.c
index 7d3fe79..46e089c 100644
--- a/src/sync.c
+++ b/src/sync.c
@@ -333,7 +333,7 @@ copy_msg_bytes( char **out_ptr, const char *in_buf, int *in_idx, int in_len, int
 }
 
 static int
-copy_msg_convert( int in_cr, int out_cr, copy_vars_t *vars )
+copy_msg_convert( int in_cr, int out_cr, copy_vars_t *vars, int t )
 {
 	char *in_buf = vars->data.data;
 	int in_len = vars->data.len;
@@ -361,7 +361,8 @@ copy_msg_convert( int in_cr, int out_cr, copy_vars_t *vars )
 				goto nloop;
 			}
 		}
-		/* invalid message */
+		warn( "Warning: message %u from %s has incomplete header; skipping.\n",
+		      vars->msg->uid, str_ms[1-t] );
 		free( in_buf );
 		return 0;
 	  oke:
@@ -382,6 +383,12 @@ copy_msg_convert( int in_cr, int out_cr, copy_vars_t *vars )
 	}
 
 	vars->data.len = in_len + extra;
+	if ((uint)vars->data.len > INT_MAX) {
+		warn( "Warning: message %u from %s is too big after conversion; skipping.\n",
+		      vars->msg->uid, str_ms[1-t] );
+		free( in_buf );
+		return 0;
+	}
 	char *out_buf = vars->data.data = nfmalloc( vars->data.len );
 	idx = 0;
 	if (vars->srec) {
@@ -423,9 +430,7 @@ msg_fetched( int sts, void *aux )
 		scr = (svars->drv[1-t]->get_caps( svars->ctx[1-t] ) / DRV_CRLF) & 1;
 		tcr = (svars->drv[t]->get_caps( svars->ctx[t] ) / DRV_CRLF) & 1;
 		if (vars->srec || scr != tcr) {
-			if (!copy_msg_convert( scr, tcr, vars )) {
-				warn( "Warning: message %u from %s has incomplete header.\n",
-				      vars->msg->uid, str_ms[1-t] );
+			if (!copy_msg_convert( scr, tcr, vars, t )) {
 				vars->cb( SYNC_NOGOOD, 0, vars );
 				return;
 			}
-- 
2.33.1.11.g2e4d00c830


--TAc7QUWuUlST/4SO--
