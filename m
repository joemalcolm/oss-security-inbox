X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["995" "Friday" "23" "March" "2018" "21:50:00" "-0500" "Daniel Ruggeri" "druggeri@apache.org" "<E1ezZFo-00031Q-45@romulus.home.bitnebula.com>" "31" "[oss-security] CVE-2018-1283: Tampering of mod_session data for CGI applications" nil nil nil "3" "2018032402:50:00" "[oss-security] CVE-2018-1283: Tampering of mod_session data for CGI applications" (number mark "U       druggeri@apa Mar 23   31/995   " thread-indent "\"[oss-security] CVE-2018-1283: Tampering of mod_session data for CGI applications\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21956 invoked by uid 550); 24 Mar 2018 11:24:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24390 invoked from network); 24 Mar 2018 02:50:15 -0000
To: announce@httpd.apache.org, oss-security@lists.openwall.com,
    security@httpd.apache.org
From: Daniel Ruggeri <druggeri@apache.org>
Message-Id: <E1ezZFo-00031Q-45@romulus.home.bitnebula.com>
Date: Fri, 23 Mar 2018 21:50:00 -0500
Subject: [oss-security] CVE-2018-1283: Tampering of mod_session data for CGI applications


CVE-2018-1283: Tampering of mod_session data for CGI applications.

Severity: Medium

Vendor: The Apache Software Foundation

Versions Affected:
httpd 2.4.0 to 2.4.29

Description:

When mod_session is configured to forward its session data to CGI
applications (SessionEnv on, not the default), a remote user may influence
their content by using a "Session" header. This comes from the "HTTP_SESSION"
variable name used by mod_session to forward its data to CGIs, since the
prefix "HTTP_" is also used by the Apache HTTP Server to pass HTTP header
fields, per CGI specifications.

The severity is set to Medium because "SessionEnv on" is not a default nor
common configuration, it should be considered High when this is the case
though, because of the possible remote exploitation.

Mitigation:
All httpd users should upgrade to 2.4.30 or later.

Credit:
The issue was discovered internally by the Apache HTTP Server team.

References:
https://httpd.apache.org/security/vulnerabilities_24.html
