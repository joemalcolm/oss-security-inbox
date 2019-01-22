X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["670" "Tuesday" "22" "January" "2019" "17:40:32" "" "Daniel Ruggeri" "druggeri@apache.org" "<fake-VM-id.565cb2a3b400d4d58c6ed848e4eba6c6@talos.iv>" "26" "[oss-security] CVE-2018-17189: mod_http2, DoS via slow, unneeded request bodies" "^From:" nil nil "1" "2019012217:40:32" "[oss-security] CVE-2018-17189: mod_http2, DoS via slow, unneeded request bodies" (number mark "U       druggeri@apa Jan 22   26/670   " thread-indent "\"[oss-security] CVE-2018-17189: mod_http2, DoS via slow, unneeded request bodies\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
X-Quarantine-ID: <EUhWzYKEI2Kr>
Received: (qmail 20144 invoked by uid 550); 22 Jan 2019 17:40:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26234 invoked from network); 22 Jan 2019 17:12:57 -0000
From: Daniel Ruggeri <druggeri@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2018-17189: mod_http2, DoS via slow, unneeded request bodies
To: oss-security@lists.openwall.com
Message-ID: <20190122174009.BHWYtbhA5dNQawX9MI-dvAId5pMW3JwSwkIm9T8auDU@z>


CVE-2018-17189: mod_http2, DoS via slow, unneeded request bodies

Severity: Low

Vendor: The Apache Software Foundation

Versions Affected:
httpd 2.4.17 to 2.4.37

Description:
By sending request bodies in a slow loris way to plain 
resources, the h2 stream for that request unnecessarily
occupied a server thread cleaning up that incoming data.
This affects only HTTP/2 (mod_http2) connections in 
Apache HTTP Server versions 2.4.37 and prior.

Mitigation:
All httpd users deploying mod_http2 should upgrade to 2.4.38 or later.

Credit:
The issue was discovered by Gal Goldshtein of F5 Networks.

References:
https://httpd.apache.org/security/vulnerabilities_24.html

