X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5491" "Monday" "5" "September" "2016" "14:14:32" "+0200" "Kamil Dudka" "kdudka@redhat.com" "<1649028.3J7HsOb28o@kdudka-nb>" "155" "[oss-security] Re: [SECURITY VULNERABILITY] curl: Re-using connections with wrong client cert" nil nil nil "9" "2016090512:14:32" "[oss-security] Re: [SECURITY VULNERABILITY] curl: Re-using connections with wrong client cert" (number mark "U       kdudka@redha Sep  5  155/5491  " thread-indent "\"[oss-security] Re: [SECURITY VULNERABILITY] curl: Re-using connections with wrong client cert\"\n") "<alpine.DEB.2.20.1608030901400.2418@tvnag.unkk.fr>" ("<alpine.DEB.2.20.1608030901400.2418@tvnag.unkk.fr>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27918 invoked by uid 550); 5 Sep 2016 12:17:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26317 invoked from network); 5 Sep 2016 12:14:42 -0000
From: Kamil Dudka <kdudka@redhat.com>
To: curl-users@cool.haxx.se, curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com
Cc: Daniel Stenberg <daniel@haxx.se>
Date: Mon, 05 Sep 2016 14:14:32 +0200
Message-ID: <1649028.3J7HsOb28o@kdudka-nb>
User-Agent: KMail/4.14.10 (Linux/4.7.2-gentoo; KDE/4.14.20; x86_64; ; )
In-Reply-To: <alpine.DEB.2.20.1608030901400.2418@tvnag.unkk.fr>
References: <alpine.DEB.2.20.1608030901400.2418@tvnag.unkk.fr>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="nextPart5440679.A0VIfQE1iZ"
Content-Transfer-Encoding: 7Bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]); Mon, 05 Sep 2016 12:14:30 +0000 (UTC)
Subject: [oss-security] Re: [SECURITY VULNERABILITY] curl: Re-using connections with wrong client cert

--nextPart5440679.A0VIfQE1iZ
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday, August 03, 2016 09:05:26 Daniel Stenberg wrote:
> Re-using connections with wrong client cert
> ===========================================
> 
> Project cURL Security Advisory, August 3rd 2016 -
> [Permalink](https://curl.haxx.se/docs/adv_20160803B.html)

After torture-testing the patch for CVE-2016-5420, it was discovered that 
libcurl built on top of NSS (Network Security Services) still incorrectly
re-uses client certificates if a certificate from file is used for one TLS
connection but no certificate is set for a subsequent TLS connection.

This problem was caused by an implementation detail of the NSS backend
in libcurl, which is orthogonal to the cause of CVE-2016-5420.  Users of 
libcurl/NSS that load client certificates from files are encouraged to
also apply the attached follow-up patch.

The original patch for CVE-2016-5420 has been amended to also contain the 
attached patch:

https://curl.haxx.se/CVE-2016-5420.patch

> VULNERABILITY
> -------------
> 
> libcurl did not consider client certificates when reusing TLS connections.
> 
> libcurl supports reuse of established connections for subsequent requests.
> It does this by keeping a few previous connections "alive" in a connection
> pool so that a subsequent request that can use one of them instead of
> creating a new connection will do so.
> 
> When using a client certificate for a connection that was then put into the
> connection pool, that connection could then wrongly get reused in a
> subsequent request to that same server that either didn't use a client
> certificate at all or that asked to use a different client certificate thus
> trying to tell the user that it is a different entity.
> 
> This mistakenly using the wrong connection could of course lead to
> applications sending requests to the wrong realms of the server using
> authentication that it wasn't supposed to have for those operations.
> 
> We are not aware of any exploit of this flaw.
> 
> INFO
> ----
> 
> This flaw also affects the curl command line tool.
> 
> The Common Vulnerabilities and Exposures (CVE) project has assigned the name
> CVE-2016-5420 to this issue.
> 
> AFFECTED VERSIONS
> -----------------
> 
> This flaw is relevant for all versions of curl and libcurl that support
> SSL/TLS and client certificates.
> 
> - Affected versions: libcurl 7.1 to and including 7.50.0
> - Not affected versions: libcurl >= 7.50.1
> 
> libcurl is used by many applications, but not always advertised as such!
> 
> THE SOLUTION
> ------------
> 
> In version 7.50.1, curl will check that re-used connections have the correct
> client certificate (file name) before used.
> 
> A [patch for CVE-2016-5420](https://curl.haxx.se/CVE-2016-5420.patch) is
> available. This patch relies on the
> [CVE-2016-5419](https://curl.haxx.se/docs/adv_20160803A.html) patch already
> having been applied.
> 
> RECOMMENDATIONS
> ---------------
> 
> We suggest you take one of the following actions immediately, in order of
> preference:
> 
>   A - Upgrade curl and libcurl to version 7.50.1
> 
>   B - Apply the patch to your version and rebuild
> 
>   C - Do not use client certificates
> 
> TIME LINE
> ---------
> 
> This was figured out by curl security team members during our work with the
> 20160803A flaw during June 2016. We contacted distros@openwall on July 31.
> 
> libcurl 7.50.1 was released on August 3 2016, coordinated with the
> publication of this advisory.
> 
> CREDITS
> -------
> 
> Found by the curl security team. Patch by Daniel Stenberg.
> 
> Thanks a lot!
--nextPart5440679.A0VIfQE1iZ
Content-Disposition: attachment; filename="0001-nss-refuse-previously-loaded-certificate-from-file.patch"
Content-Transfer-Encoding: 7Bit
Content-Type: text/x-patch; charset="UTF-8"; name="0001-nss-refuse-previously-loaded-certificate-from-file.patch"

>From ed60ce7ca2ad6866f87c8accd06a77e2aabc7c32 Mon Sep 17 00:00:00 2001
From: Kamil Dudka <kdudka@redhat.com>
Date: Mon, 22 Aug 2016 10:24:35 +0200
Subject: [PATCH] nss: refuse previously loaded certificate from file

... when we are not asked to use a certificate from file
---
 lib/vtls/nss.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/lib/vtls/nss.c b/lib/vtls/nss.c
index ad33f25..e467360 100644
--- a/lib/vtls/nss.c
+++ b/lib/vtls/nss.c
@@ -1004,10 +1004,10 @@ static SECStatus SelectClientCert(void *arg, PRFileDesc *sock,
   struct ssl_connect_data *connssl = (struct ssl_connect_data *)arg;
   struct Curl_easy *data = connssl->data;
   const char *nickname = connssl->client_nickname;
+  static const char pem_slotname[] = "PEM Token #1";
 
   if(connssl->obj_clicert) {
     /* use the cert/key provided by PEM reader */
-    static const char pem_slotname[] = "PEM Token #1";
     SECItem cert_der = { 0, NULL, 0 };
     void *proto_win = SSL_RevealPinArg(sock);
     struct CERTCertificateStr *cert;
@@ -1069,6 +1069,12 @@ static SECStatus SelectClientCert(void *arg, PRFileDesc *sock,
   if(NULL == nickname)
     nickname = "[unknown]";
 
+  if(!strncmp(nickname, pem_slotname, sizeof(pem_slotname) - 1U)) {
+    failf(data, "NSS: refusing previously loaded certificate from file: %s",
+          nickname);
+    return SECFailure;
+  }
+
   if(NULL == *pRetKey) {
     failf(data, "NSS: private key not found for certificate: %s", nickname);
     return SECFailure;
-- 
2.7.4


--nextPart5440679.A0VIfQE1iZ--

