X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1735" "Monday" "5" "December" "2016" "20:14:35" "+0100" "Solar Designer" "solar@openwall.com" "<20161205191435.GA29500@openwall.com>" "54" "Re: [oss-security] CVE-2016-8740: Apache HTTPD 2.4.17-2.4.23: Server memory can be exhausted and service denied when HTTP/2 is used" "^Date:" nil nil "12" "2016120519:14:35" "[oss-security] CVE-2016-8740: Apache HTTPD 2.4.17-2.4.23: Server memory can be exhausted and service denied when HTTP/2 is used" (number mark "        solar@openwa Dec  5   54/1735  " thread-indent "\"Re: [oss-security] CVE-2016-8740: Apache HTTPD 2.4.17-2.4.23: Server memory can be exhausted and service denied when HTTP/2 is used\"\n") "<20161205185654.GA13378@jasmine>" ("<20161205182210.GA28847@openwall.com>" "<20161205185654.GA13378@jasmine>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27650 invoked by uid 550); 5 Dec 2016 19:14:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25804 invoked from network); 5 Dec 2016 19:14:39 -0000
Message-ID: <20161205191435.GA29500@openwall.com>
References: <20161205182210.GA28847@openwall.com> <20161205185654.GA13378@jasmine>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="W/nzBZO5zC0uMSeA"
Content-Disposition: inline
In-Reply-To: <20161205185654.GA13378@jasmine>
User-Agent: Mutt/1.4.2.3i
Date: Mon, 5 Dec 2016 20:14:35 +0100
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2016-8740: Apache HTTPD 2.4.17-2.4.23: Server memory can be exhausted and service denied when HTTP/2 is used
To: oss-security@lists.openwall.com

--W/nzBZO5zC0uMSeA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Dec 05, 2016 at 01:56:54PM -0500, Leo Famulari wrote:
> On Mon, Dec 05, 2016 at 07:22:10PM +0100, Solar Designer wrote:
> > Patch against 2.4.23 release source:
> 
> I think you forgot to forward the patch.

You're right, re-attached it now.

Alexander

--W/nzBZO5zC0uMSeA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="CVE-2016-8740-2.4.23.diff"

Index: modules/http2/h2_stream.c
===================================================================
--- modules/http2/h2_stream.c	(revision 1771866)
+++ modules/http2/h2_stream.c	(working copy)
@@ -322,18 +322,18 @@
                                            HTTP_REQUEST_HEADER_FIELDS_TOO_LARGE);
             }
         }
-    }
-    
-    if (h2_stream_is_scheduled(stream)) {
-        return h2_request_add_trailer(stream->request, stream->pool,
-                                      name, nlen, value, vlen);
-    }
-    else {
-        if (!input_open(stream)) {
-            return APR_ECONNRESET;
+        
+        if (h2_stream_is_scheduled(stream)) {
+            return h2_request_add_trailer(stream->request, stream->pool,
+                                          name, nlen, value, vlen);
         }
-        return h2_request_add_header(stream->request, stream->pool,
-                                     name, nlen, value, vlen);
+        else {
+            if (!input_open(stream)) {
+                return APR_ECONNRESET;
+            }
+            return h2_request_add_header(stream->request, stream->pool,
+                                         name, nlen, value, vlen);
+        }
     }
 }
 

--W/nzBZO5zC0uMSeA--
