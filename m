X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["660" "Tuesday" "22" "January" "2019" "17:42:12" "" "Daniel Ruggeri" "druggeri@apache.org" "<fake-VM-id.08a6d9cf7c4a0cf780a451d2289a5ff3@talos.iv>" "26" "[oss-security] CVE-2018-17199: mod_session_cookie does not respect expiry time" nil nil nil "1" "2019012217:42:12" "[oss-security] CVE-2018-17199: mod_session_cookie does not respect expiry time" (number mark "U       druggeri@apa Jan 22   26/660   " thread-indent "\"[oss-security] CVE-2018-17199: mod_session_cookie does not respect expiry time\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
X-Quarantine-ID: <zJCOTbulmSIR>
Received: (qmail 20476 invoked by uid 550); 22 Jan 2019 17:40:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26305 invoked from network); 22 Jan 2019 17:13:02 -0000
From: Daniel Ruggeri <druggeri@apache.org>
To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2018-17199: mod_session_cookie does not respect expiry time
Message-ID: <20190122174012.TvFI6F1yxmy4FZ1SEnHIC3QVF_0cJX0Mj1-TzJecF98@z>


CVE-2018-17199: mod_session_cookie does not respect expiry time

Severity: low

Vendor: The Apache Software Foundation

Versions Affected:
httpd 2.4.0 to 2.4.37

Description:
In Apache HTTP Server 2.4 release 2.4.37 and prior, mod_session
checks the session expiry time before decoding the session.
This causes session expiry time to be ignored for
mod_session_cookie sessions since the expiry time is loaded
when the session is decoded.

Mitigation:
All httpd users deploying mod_session should upgrade to 2.4.38 or later.

Credit:
The issue was discovered by Diego Angulo from ImExHS.

References:
https://httpd.apache.org/security/vulnerabilities_24.html

