X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1447" "Friday" "23" "March" "2018" "21:49:59" "-0500" "Daniel Ruggeri" "druggeri@apache.org" "<E1ezZFn-00031E-TI@romulus.home.bitnebula.com>" "40" "[oss-security] CVE-2017-15710: Out of bound write in mod_authnz_ldap when using too small Accept-Language values" nil nil nil "3" "2018032402:49:59" "[oss-security] CVE-2017-15710: Out of bound write in mod_authnz_ldap when using too small Accept-Language values" (number mark "U       druggeri@apa Mar 23   40/1447  " thread-indent "\"[oss-security] CVE-2017-15710: Out of bound write in mod_authnz_ldap when using too small Accept-Language values\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28287 invoked by uid 550); 24 Mar 2018 11:25:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24392 invoked from network); 24 Mar 2018 02:50:15 -0000
To: announce@httpd.apache.org, oss-security@lists.openwall.com,
    security@httpd.apache.org
From: Daniel Ruggeri <druggeri@apache.org>
Message-Id: <E1ezZFn-00031E-TI@romulus.home.bitnebula.com>
Date: Fri, 23 Mar 2018 21:49:59 -0500
Subject: [oss-security] CVE-2017-15710: Out of bound write in mod_authnz_ldap when using too small Accept-Language values


CVE-2017-15710: Out of bound write in mod_authnz_ldap when using too small Accept-Language values.

Severity: Low

Vendor: The Apache Software Foundation

Versions Affected:
httpd 2.0.23 to 2.0.65
httpd 2.2.0 to 2.2.34
httpd 2.4.0 to 2.4.29

Description:

mod_authnz_ldap, if configured with AuthLDAPCharsetConfig,
uses the Accept-Language header value to lookup the right charset encoding
when verifying the user's credentials.
If the header value is not present in the charset conversion
table, a fallback mechanism is used to truncate it to a two
characters value to allow a quick retry (for example, 'en-US' is truncated
to 'en'). A header value of less than two characters forces an out of bound
write of one NUL byte to a memory location that is not part of the string.
In the worst case, quite unlikely, the process would crash which could
be used as a Denial of Service attack. In the more likely case, this memory is
already reserved for future use and the issue has no effect at all."

Mitigation:
All httpd users should upgrade to 2.4.30 or later.

Users of (the now end-of-life) httpd 2.2 who cannot upgrade at this time should
apply CVE-2017-15710.patch, which is available at

   https://www.apache.org/dist/httpd/patches/apply_to_2.2.34/

Credit:
The Apache HTTP Server security team would like to thank Alex Nichols
and Jakob Hirsch for reporting this issue.

References:
https://httpd.apache.org/security/vulnerabilities_24.html
