X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2892" "Wednesday" "9" "June" "2021" "10:19:09" "+0200" "Marcus Meissner" "meissner@suse.de" nil "94" "[oss-security] connman stack buffer overflow in dnsproxy CVE-2021-33833" nil nil nil "6" nil nil (number mark "U       meissner@sus Jun  9   94/2892  " thread-indent "\"[oss-security] connman stack buffer overflow in dnsproxy CVE-2021-33833\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] connman stack buffer overflow in dnsproxy CVE-2021-33833" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32368 invoked by uid 550); 9 Jun 2021 08:19:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32350 invoked from network); 9 Jun 2021 08:19:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1623226750; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=kbzeviV0m6S8TftHnXg1FcNc5dLJK3WnLhogfsjr/jI=;
	b=iWQiNu9MyZXib7I7m/cfmVxY0G0Z6qM8uWJBAFvowhQYZxOY6e9SgRIs69udde7bezNRm0
	Iu76CPIgbbdbRvLZLi7yEJLpFh05vwuXO6+jbXHrf5ui6CWFORjyX2pUerjaqPlPhE+X/9
	JJjOySZgIkEVzgXXXXLkDS1TP5Wmres=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1623226750;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=kbzeviV0m6S8TftHnXg1FcNc5dLJK3WnLhogfsjr/jI=;
	b=VdlPgeMGT3qPY5tqGanjnoqG8uLN3xx76YhZNVHWHipd3k59TxOMFv3HrqQRYV852kWwF0
	J2WIhgU5BbOrGWAg==
Date: Wed, 9 Jun 2021 10:19:09 +0200
From: Marcus Meissner <meissner@suse.de>
To: OSS Security List <oss-security@lists.openwall.com>
Message-ID: <20210609081909.GH25582@suse.de>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="uXxzq0nDebZQVNAZ"
Content-Disposition: inline
Organization: SUSE Software Solutions =?iso-8859-1?Q?Ger?=
 =?iso-8859-1?Q?many_GmbH=2C_Maxfeldstr=2E_5=2C_90409_Nuernberg=2C_Germany?=
 =?iso-8859-1?Q?=2C_GF=3A_Felix_Imend=F6rffer=2C_HRB_36809=2C_AG_N=FCrnber?=
 =?iso-8859-1?Q?g?=
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [oss-security] connman stack buffer overflow in dnsproxy CVE-2021-33833

--uXxzq0nDebZQVNAZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On behalf of my colleague Daniel Wagner, connman maintainer.

CVE-2021-33833

Found by Mike Evdokimov at Digital Security.

The issue affects the dnsproxy component in releases 1.32 to 1.39 of connman.

Unpacking of NAME and RDATA/RDLENGTH fields with TYPE A/AAAA in the uncompress
function uses a memcpy with insufficient bounds checking, which can overflow
a stack buffer.

Researcher has written a POC, works with stack overflow heuristics and PIE disabled,
so stack overflow protection seems to mitigate it.

attached is 0001-dnsproxy-Check-the-length-of-buffers-before-memcpy.patch by
r.alyautdin@omprussia.ru will be used by upstream connman team.

Note that it touches the same function and piece of code as a previous CVE in connman,
the earlier fix was apparently not complete.

Ciao, Marcus

--uXxzq0nDebZQVNAZ
Content-Type: text/x-patch; charset=us-ascii
Content-Disposition: attachment; filename="0001-dnsproxy-Check-the-length-of-buffers-before-memcpy.patch"

commit 91e719c96136d9e265cd781c5d6ce3d6c082af94
Author: Valery Kashcheev <v.kascheev@omp.ru>
Date:   Mon May 31 16:08:43 2021 +0300

    dnsproxy: Check the length of buffers before memcpy
    
    Fix using a stack-based buffer overflow attack by checking the length of
    the ptr and uptr buffers.
    
    Fix debug message output.

diff --git a/src/dnsproxy.c b/src/dnsproxy.c
index de52df5a..38dbdd71 100644
--- a/src/dnsproxy.c
+++ b/src/dnsproxy.c
@@ -1788,17 +1788,15 @@ static char *uncompress(int16_t field_count, char *start, char *end,
 		 * tmp buffer.
 		 */
 
-		debug("pos %d ulen %d left %d name %s", pos, ulen,
-			(int)(uncomp_len - (uptr - uncompressed)), uptr);
-
-		ulen = strlen(name);
-		if ((uptr + ulen + 1) > uncomp_end) {
+		ulen = strlen(name) + 1;
+		if ((uptr + ulen) > uncomp_end)
 			goto out;
-		}
-		strncpy(uptr, name, uncomp_len - (uptr - uncompressed));
+		strncpy(uptr, name, ulen);
+
+		debug("pos %d ulen %d left %d name %s", pos, ulen,
+			(int)(uncomp_end - (uptr + ulen)), uptr);
 
 		uptr += ulen;
-		*uptr++ = '\0';
 
 		ptr += pos;
 
@@ -1841,7 +1839,7 @@ static char *uncompress(int16_t field_count, char *start, char *end,
 		} else if (dns_type == ns_t_a || dns_type == ns_t_aaaa) {
 			dlen = uptr[-2] << 8 | uptr[-1];
 
-			if (ptr + dlen > end) {
+			if ((ptr + dlen) > end || (uptr + dlen) > uncomp_end) {
 				debug("data len %d too long", dlen);
 				goto out;
 			}
@@ -1880,6 +1878,10 @@ static char *uncompress(int16_t field_count, char *start, char *end,
 			 * refresh interval, retry interval, expiration
 			 * limit and minimum ttl). They are 20 bytes long.
 			 */
+			if ((uptr + 20) > uncomp_end || (ptr + 20) > end) {
+				debug("soa record too long");
+				goto out;
+			}
 			memcpy(uptr, ptr, 20);
 			uptr += 20;
 			ptr += 20;

--uXxzq0nDebZQVNAZ--
