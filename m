X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9452" "Monday" "22" "February" "2021" "17:58:40" "+0100" "Oswald Buddenhagen" "oswald.buddenhagen@gmx.de" nil "236" "[oss-security] CVE-2021-20247: isync/mbsync data leak/destruction vulnerability" nil nil nil "2" nil nil (number mark "U       oswald.budde Feb 22  236/9452  " thread-indent "\"[oss-security] CVE-2021-20247: isync/mbsync data leak/destruction vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-20247: isync/mbsync data leak/destruction vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32247 invoked by uid 550); 22 Feb 2021 17:21:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14278 invoked from network); 22 Feb 2021 16:58:53 -0000
Date: Mon, 22 Feb 2021 17:58:40 +0100
From: Oswald Buddenhagen <oswald.buddenhagen@gmx.de>
To: isync-devel@lists.sourceforge.net
Cc: oss-security@lists.openwall.com
Message-ID: <YDPiwBU5Mk3lIoEQ@ugly>
Mail-Followup-To: isync-devel@lists.sourceforge.net,
	oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="F4Z+emF+W4qWbkfW"
Content-Disposition: inline
Subject: [oss-security] CVE-2021-20247: isync/mbsync data leak/destruction vulnerability

--F4Z+emF+W4qWbkfW
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline

description:

mbsync didn't validate the mailbox names returned by IMAP LIST/LSUB, 
which would allow a malicious/compromised server to use specially 
crafted mailbox names containing '..' path components to access data 
outside the designated mailbox on the opposite end of the 
synchronization channel. gory details follow below.
the attack vector is rather narrow, but the effects can be disastrous.
the vulnerability has been there "forever", though it wasn't of much 
concern prior to 1.3 used with a specific configuration.

mitigation:

upgrade to the freshly released v1.3.5 or v1.4.1 available from 
https://sourceforge.net/projects/isync/files/isync/ , or apply one of 
the attached patches (patches for earlier versions can be produced 
easily, should anyone care).

credit:

the possible existence of the vulnerability was suggested by a user who 
does not wish to be credited. :-D

vulnerability details:

- the victim must be using the Pattern channel option containing the '*' 
    wildcard. this is fairly likely (even though only those who actually 
    use hierarchical mailboxes (presumably a minority) actually need that 
    - others may use the '%' wildcard).
- if the opposite end is also an IMAP server (which is presumed to be 
    rare), the exact impact depends on the server. most servers will 
    expose only a very restricted amount of data to any particular user, 
    and will likely reject weird paths. also, most servers use '.' as the 
    hierarchy delimiter, which would make mbsync reject the crafted paths 
    as non-representable after delimiter translation. however, 
    uw-imap/panda-imap for example would be vulnerable, as it basically 
    just exposes the file system via IMAP.
- the much more common case is the opposite end being a local Maildir 
    store, which is somewhat similar to the uw-imap case:
    - users who don't actually use hierarchical mailboxes locally are 
      usually not vulnerable, as they won't set the SubFolders option, 
      which will make mbsync reject any mailbox names containing 
      hierarchy delimiters. (not applicable before v1.3.)
    - if SubFolders is Maildir++, no attack is possible, as periods are 
      hierarchy delimiters and are consequently rejected by the 
      translation. (not applicable before v1.3.)
    - if SubFolders is Legacy, an attack is limited to hidden 
      directories, as a '.' is prepended to each subfolder when mapping 
      to file system paths.
    - if SubFolders is Verbatim, exposure is unlimited. (not applicable 
      before v1.3.)
    - the most likely target are Maildir folders that are synchronized to 
      other servers (e.g., work vs. private mail stores)
      - if the victim is using '*' for the SyncState option (which most 
        users seem to do judging by support requests; the example config 
        file suggests it), all previously synchronized messages will be 
        deleted from that folder (that this happens is a seperate bug 
        that v1.4.1 also fixes), while new messages will be stolen.
      - otherwise, all messages from that folder will be stolen. i 
        consider this the main danger of this vulnerability.
    - non-Maildir paths can be attacked only if they end with one of 
      {cur,new,tmp}, as this is imposed by the expected Maildir structure.
      - if no 'cur' is present, the victim must have the Create option set 
        for that end of the channel (this is likely).
      - all files from 'tmp' will be deleted
      - all files from 'cur' and 'new' will be stolen, and in the process 
        renamed to add some Maildir "decorations"
      - subdirectories are not affected
      - in principle the attacker can deposit dangerous files, but these 
        will also have "weird" names that cannot be influenced much, so 
        they are unlikely to pose an actual threat. (general content 
        attacks are neglected here, as they don't require this 
        vulnerability to be executed.)
    - the attacked paths must be guessed or known in advance. if guessing 
      is used and the victim has Create enabled, every attempted target 
      path will be actually created, so the attacker will leave rather 
      obvious traces, and might be even noticed before landing a single 
      hit.
    - users who run mbsync interactively in verbose mode will likely spot 
      an attack immediately (this is presumed to be rare; cron jobs are 
      more likely).

i got an NVSS score of 'high', but there are lots of caveats that would 
qualify as mitigating factors if the criteria are not interpreted quite 
as literally (the case of a malicious server does not seem to fit very 
well).


--F4Z+emF+W4qWbkfW
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment;
	filename="reject-funny-mailbox-names--1.3.patch"

>From 45e2bdc439a01974b6b990bfb8a8968192c3b721 Mon Sep 17 00:00:00 2001
From: Oswald Buddenhagen <ossi@users.sf.net>
Date: Sun, 14 Feb 2021 20:42:37 +0100
Subject: [PATCH] CVE-2021-20247: reject funny mailbox names from IMAP LIST/LSUB

in particular, '..' in the name could be used to escape the Path/Inbox
of a Maildir Store, which could be exploited for stealing or deleting
data, or staging a (mild) DoS attack.
---
 src/drv_imap.c | 31 ++++++++++++++++++++++++++++++-
 1 file changed, 30 insertions(+), 1 deletion(-)

diff --git a/src/drv_imap.c b/src/drv_imap.c
index 810479e..fbe2fed 100644
--- a/src/drv_imap.c
+++ b/src/drv_imap.c
@@ -1258,11 +1258,12 @@ static int
 parse_list_rsp_p2( imap_store_t *ctx, list_t *list, char *cmd ATTR_UNUSED )
 {
 	string_list_t *narg;
-	char *arg;
+	char *arg, c;
 	int argl, l;
 
 	if (!is_atom( list )) {
 		error( "IMAP error: malformed LIST response\n" );
+	  listbad:
 		free_list( list );
 		return LIST_BAD;
 	}
@@ -1302,6 +1303,34 @@ parse_list_rsp_p2( imap_store_t *ctx, list_t *list, char *cmd ATTR_UNUSED )
 		warn( "IMAP warning: ignoring mailbox %s (reserved character '/' in name)\n", arg );
 		goto skip;
 	}
+	// Validate the normalized name. Technically speaking, we could tolerate
+	// '//' and '/./', and '/../' being forbidden is a limitation of the Maildir
+	// driver, but there isn't really a legitimate reason for these being present.
+	for (const char *p = narg->string, *sp = p;;) {
+		if (!(c = *p) || c == '/') {
+			uint pcl = (uint)(p - sp);
+			if (!pcl) {
+				error( "IMAP warning: ignoring mailbox '%s' due to empty name component\n", narg->string );
+				free( narg );
+				goto skip;
+			}
+			if (pcl == 1 && sp[0] == '.') {
+				error( "IMAP warning: ignoring mailbox '%s' due to '.' component\n", narg->string );
+				free( narg );
+				goto skip;
+			}
+			if (pcl == 2 && sp[0] == '.' && sp[1] == '.') {
+				error( "IMAP error: LIST'd mailbox name '%s' contains '..' component - THIS MIGHT BE AN ATTEMPT TO HACK YOU!\n", narg->string );
+				free( narg );
+				goto listbad;
+			}
+			if (!c)
+				break;
+			sp = ++p;
+		} else {
+			++p;
+		}
+	}
 	narg->next = ctx->boxes;
 	ctx->boxes = narg;
   skip:
-- 
2.29.2.2.g268056bf11.dirty


--F4Z+emF+W4qWbkfW
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment;
	filename="reject-funny-mailbox-names--1.4.patch"

>From 53e400e4e8d88b76b8d05a9ce53f4306f03d8860 Mon Sep 17 00:00:00 2001
From: Oswald Buddenhagen <ossi@users.sf.net>
Date: Sun, 14 Feb 2021 20:42:37 +0100
Subject: [PATCH] CVE-2021-20247: reject funny mailbox names from IMAP LIST/LSUB

in particular, '..' in the name could be used to escape the Path/Inbox
of a Maildir Store, which could be exploited for stealing or deleting
data, or staging a (mild) DoS attack.
---
 src/drv_imap.c | 30 +++++++++++++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/src/drv_imap.c b/src/drv_imap.c
index e6e4b26..f18500d 100644
--- a/src/drv_imap.c
+++ b/src/drv_imap.c
@@ -1378,7 +1378,7 @@ static int
 parse_list_rsp_p2( imap_store_t *ctx, list_t *list, char *cmd ATTR_UNUSED )
 {
 	string_list_t *narg;
-	char *arg;
+	char *arg, c;
 	int argl;
 	uint l;
 
@@ -1422,6 +1422,34 @@ parse_list_rsp_p2( imap_store_t *ctx, list_t *list, char *cmd ATTR_UNUSED )
 		warn( "IMAP warning: ignoring mailbox %s (reserved character '/' in name)\n", arg );
 		return LIST_OK;
 	}
+	// Validate the normalized name. Technically speaking, we could tolerate
+	// '//' and '/./', and '/../' being forbidden is a limitation of the Maildir
+	// driver, but there isn't really a legitimate reason for these being present.
+	for (const char *p = narg->string, *sp = p;;) {
+		if (!(c = *p) || c == '/') {
+			uint pcl = (uint)(p - sp);
+			if (!pcl) {
+				error( "IMAP warning: ignoring mailbox '%s' due to empty name component\n", narg->string );
+				free( narg );
+				return LIST_OK;
+			}
+			if (pcl == 1 && sp[0] == '.') {
+				error( "IMAP warning: ignoring mailbox '%s' due to '.' component\n", narg->string );
+				free( narg );
+				return LIST_OK;
+			}
+			if (pcl == 2 && sp[0] == '.' && sp[1] == '.') {
+				error( "IMAP error: LIST'd mailbox name '%s' contains '..' component - THIS MIGHT BE AN ATTEMPT TO HACK YOU!\n", narg->string );
+				free( narg );
+				return LIST_BAD;
+			}
+			if (!c)
+				break;
+			sp = ++p;
+		} else {
+			++p;
+		}
+	}
 	narg->next = ctx->boxes;
 	ctx->boxes = narg;
 	return LIST_OK;
-- 
2.29.2.2.g268056bf11.dirty


--F4Z+emF+W4qWbkfW--
