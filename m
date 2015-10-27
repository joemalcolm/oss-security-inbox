X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1877" "Tuesday" "27" "October" "2015" "11:45:34" "+0100" "Patrick Uiterwijk" "puiterwijk@redhat.com" "<20151027104534.GA1620@bofh.thuis.puiterwijk.org>" "48" "[oss-security] Multiple CVE info for Ipsilon" nil nil nil "10" "2015102710:45:34" "[oss-security] Multiple CVE info for Ipsilon" (number mark "U       puiterwijk@r Oct 27   48/1877  " thread-indent "\"[oss-security] Multiple CVE info for Ipsilon\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1991 invoked by uid 550); 27 Oct 2015 12:27:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22446 invoked from network); 27 Oct 2015 10:47:20 -0000
Date: Tue, 27 Oct 2015 11:45:34 +0100
From: Patrick Uiterwijk <puiterwijk@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <20151027104534.GA1620@bofh.thuis.puiterwijk.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
Subject: [oss-security] Multiple CVE info for Ipsilon

Hi,

I would like to provide information about multiple CVE's related to Ipsilon.


CVE-2015-5216:
Versions affected: 0.1.0 to 1.0.0
Fixed in versions: 1.0.1, 1.1.0
Description:
ipsilon does not escape HTML when processing http(s) request responses,
and that js code could potentially be injected into Python exception message template.

Mitigation: Users of Ipsilon should update to version 1.0.1 or later.
Credit: This issue was discovered by Michael Scherer of Red Hat.
References: https://bugzilla.redhat.com/show_bug.cgi?id=1255170
Upstream patch: https://pagure.io/ipsilon/a503aa9c2a30a74e709d1c88099befd50fb2eb16


CVE-2015-5217:
Versions affected: 0.1.0 to 1.0.0
Fixed in versions: 1.0.1, 1.1.0
Description:
It was found that Ipsilon does not properly authorize change of the name of the provider.
Non-admin users could change the name to a duplicate value which could possibly lead to DoS attack.

Mitigation: Users of Ipsilon should update to version 1.0.1 or later.
Credit: This issue was discovered by Patrick Uiterwijk of Red Hat.
References: https://bugzilla.redhat.com/show_bug.cgi?id=1255172
Upstream patch: https://pagure.io/ipsilon/826e6339441546f596320f3d73304ab5f7c10de6


CVE-2015-5301:
Versions affected: 0.1.0 to 1.0.1 and 1.1.0
Fixed in versions: 1.0.2, 1.1.1
Description:
It was found that Ipsilon does not check whether a user is authorized to delete a service provider.
This makes it possible for any authenticated user to delete any service provider, causing a denial of service.

Mitigation: Users of Ipsilon should update to version 1.0.2 or 1.1.1 or later.
Credit: This issue was discovered by Patrick Uiterwijk and Rob Crittenden of Red Hat.
References: https://bugzilla.redhat.com/show_bug.cgi?id=1271530
Upstream patch: https://pagure.io/ipsilon/9dec97c3c83928d231ea10f4160523a13803e594


---
With kind regards,
Patrick Uiterwijk
Fedora Infra
