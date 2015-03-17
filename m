X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["853" "Tuesday" "17" "March" "2015" "14:34:17" "-0500" "Michael Catanzaro" "mcatanzaro@igalia.com" "<1426620857.13355.39.camel@igalia.com>" "23" "[oss-security] CVE Request: WebKitGTK+ late TLS certificate verification" nil nil nil "3" "2015031719:34:17" "[oss-security] CVE Request: WebKitGTK+ late TLS certificate verification" (number mark "        mcatanzaro@i Mar 17   23/853   " thread-indent "\"[oss-security] CVE Request: WebKitGTK+ late TLS certificate verification\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12120 invoked by uid 550); 17 Mar 2015 19:37:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11580 invoked from network); 17 Mar 2015 19:34:50 -0000
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AoQFAEmBCFVbdWOb/2dsb2JhbABbgwZSWoMMwn+FKEmBPUwBAQEBAQF9hDlWNQImAokhBAEIr1WbOSyBIYErizWCBx2CUoFFBYsHiSWFfoEbOoJ0hnCIZCOEDFEBgkIBAQE
X-IPAS-Result: AoQFAEmBCFVbdWOb/2dsb2JhbABbgwZSWoMMwn+FKEmBPUwBAQEBAQF9hDlWNQImAokhBAEIr1WbOSyBIYErizWCBx2CUoFFBYsHiSWFfoEbOoJ0hnCIZCOEDFEBgkIBAQE
X-IronPort-AV: E=Sophos;i="5.11,418,1422918000"; 
   d="scan'208";a="330426944"
Message-ID: <1426620857.13355.39.camel@igalia.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.12.11 (3.12.11-1.fc21) 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: clopez@igalia.com
Date: Tue, 17 Mar 2015 14:34:17 -0500
From: Michael Catanzaro <mcatanzaro@igalia.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: WebKitGTK+ late TLS certificate verification
To: oss-security@lists.openwall.com

Hi,

WebKitGTK+ [1] prior to 2.7.92 performed TLS certificate verification
too late, after sending an HTTP request rather than before. The issue
may be corrected for WebKitGTK+ 2.6.5 and WebKitGTK+ 2.4.8 using the
patch at [2]. Applications are affected if they use the WebKit2GTK+ API
with WEBKIT_TLS_ERRORS_POLICY_FAIL. (This policy is the default in
WebKitGTK+ 2.6.2 and later; applications using earlier versions of
WebKitGTK+ must opt-in to certificate verification failures by calling
webkit_web_context_set_tls_errors_policy.) Applications using the
original WebKitGTK+ 1 API are unaffected because they must handle
certificate verification themselves.

Please assign a CVE for this issue.

Thanks,

Michael

[1] http://webkitgtk.org/
[2]
http://trac.webkit.org/changeset/181074/trunk/Source/WebCore/platform/network/soup/ResourceHandleSoup.cpp

