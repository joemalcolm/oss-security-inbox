X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["671" "Friday" "23" "October" "2015" "15:19:11" "+0200" "Patrick Uiterwijk" "puiterwijk@redhat.com" "<20151023131911.GA19121@bofh.thuis.puiterwijk.org>" "21" "[oss-security] [CVE-2015-5215] Ipsilon: XSS in multiple pages" nil nil nil "10" "2015102313:19:11" "[oss-security] [CVE-2015-5215] Ipsilon: XSS in multiple pages" (number mark "U       puiterwijk@r Oct 23   21/671   " thread-indent "\"[oss-security] [CVE-2015-5215] Ipsilon: XSS in multiple pages\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5441 invoked by uid 550); 23 Oct 2015 13:23:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3280 invoked from network); 23 Oct 2015 13:20:23 -0000
Date: Fri, 23 Oct 2015 15:19:11 +0200
From: Patrick Uiterwijk <puiterwijk@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <20151023131911.GA19121@bofh.thuis.puiterwijk.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Subject: [oss-security] [CVE-2015-5215] Ipsilon: XSS in multiple pages

CVE-2015-5215: Ipsilon XSS in multiple pages

Versions affected: 0.1.0 to 1.0.0
Fixed in versions: 1.0.1, 1.1.0

Description:
It was found that the Ipsilon IdP server used the default configuration of the Jinja templating engine, which did not HTML escape template variables. This could be exploited to perform an XSS attack if a value from untrusted input was used in the template and rendered in the user`s browser.

Mitigation:
Users of Ipsilon should update to version 1.0.1 or later.

Credit:
This issue was discovered by Michael Scherer of Red Hat.

References:
https://bugzilla.redhat.com/show_bug.cgi?id=1255168


-- 
Patrick Uiterwijk
Fedora Infrastructure Team
