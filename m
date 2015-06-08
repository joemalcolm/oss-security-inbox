X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["398" "Monday" "8" "June" "2015" "11:46:22" "-0500" "Michael Catanzaro" "mcatanzaro@igalia.com" "<1433781982.9986.17.camel@igalia.com>" "14" "[oss-security] CVE Request: WebKitGTK+ performs DNS prefetch when a proxy is configured" nil nil nil "6" "2015060816:46:22" "[oss-security] CVE Request: WebKitGTK+ performs DNS prefetch when a proxy is configured" (number mark "        mcatanzaro@i Jun  8   14/398   " thread-indent "\"[oss-security] CVE Request: WebKitGTK+ performs DNS prefetch when a proxy is configured\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30539 invoked by uid 550); 8 Jun 2015 16:47:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30521 invoked from network); 8 Jun 2015 16:47:07 -0000
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AmMNAJjGdVVbdWOb/2dsb2JhbABcgxABU16DHolEpB6PSw+HJUwBAQEBAQGBC0EFhAaBCwImAokfBAEImhWPX6N7BIEhgSyOGYJSgUUFjE2LIYZqgS+DeogiihIkYYM0UQGCRgEBAQ
X-IPAS-Result: AmMNAJjGdVVbdWOb/2dsb2JhbABcgxABU16DHolEpB6PSw+HJUwBAQEBAQGBC0EFhAaBCwImAokfBAEImhWPX6N7BIEhgSyOGYJSgUUFjE2LIYZqgS+DeogiihIkYYM0UQGCRgEBAQ
X-IronPort-AV: E=Sophos;i="5.13,574,1427752800"; 
   d="scan'208";a="358675040"
Message-ID: <1433781982.9986.17.camel@igalia.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.16.2.1 (3.16.2.1-1.fc22) 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Date: Mon, 08 Jun 2015 11:46:22 -0500
From: Michael Catanzaro <mcatanzaro@igalia.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: WebKitGTK+ performs DNS prefetch when a proxy is
 configured
To: oss-security@lists.openwall.com

It was discovered that WebKit's libsoup network backend, as used in
WebKitGTK+, performs DNS prefetch even when a proxy has been
configured. An attacker could use this flaw to determine which hosts a
browser has prefetched.

For example, this is problematic when using Tor as a proxy.

See also: https://bugs.webkit.org/show_bug.cgi?id=145542

Please assign a CVE for this issue.

Thanks,

Michael
