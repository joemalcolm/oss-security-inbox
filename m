Received: (qmail 15682 invoked by uid 550); 10 Jul 2025 16:53:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13795 invoked from network); 10 Jul 2025 16:52:59 -0000
Date: Thu, 10 Jul 2025 18:52:52 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: covener <covener@apache.org>
Message-ID: <20250710165252.GA25472@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: Mutt/1.4.2.3i
Subject: [oss-security] CVE fixes in Apache HTTP Server 2.4.64

Apache httpd 2.4.64 released today includes a number of CVE fixes, from:

     https://httpd.apache.org/security/vulnerabilities_24.html

Fixed in Apache HTTP Server 2.4.64

moderate: Apache HTTP Server: HTTP response splitting (CVE-2024-42516)

    HTTP response splitting in the core of Apache HTTP Server allows an attacker who can manipulate the Content-Type response headers of applications hosted or proxied by the server can split the HTTP response.

    This vulnerability was described as CVE-2023-38709 but the patch included in Apache HTTP Server 2.4.59 did not address the issue.

    Users are recommended to upgrade to version 2.4.64, which fixes this issue.
    Reported to security team	2024-07-18
    Update 2.4.64 released	2025-07-10
    Affects	2.4.0 through 2.4.63

low: Apache HTTP Server: SSRF with mod_headers setting Content-Type header (CVE-2024-43204)

    SSRF in Apache HTTP Server with mod_proxy loaded allows an attacker to send outbound proxy requests to a URL controlled by the attacker. Requires an unlikely configuration where mod_headers is configured to modify the Content-Type request or response header with a value provided in the HTTP request.

    Users are recommended to upgrade to version 2.4.64 which fixes this issue.
    Reported to security team	2024-08-07
    Update 2.4.64 released	2025-07-10
    Affects	2.4.0 through 2.4.63

moderate: Apache HTTP Server: SSRF on Windows due to UNC paths (CVE-2024-43394)

    Server-Side Request Forgery (SSRF) in Apache HTTP Server on Windows allows to potentially leak NTLM hashes to a malicious server via

    mod_rewrite or apache expressions that pass unvalidated request input.

    This issue affects Apache HTTP Server: from 2.4.0 through 2.4.63.

    Note: The Apache HTTP Server Project will be setting a higher bar for accepting vulnerability reports regarding SSRF via UNC paths.

    The server offers limited protection against administrators directing the server to open UNC paths.

    Windows servers should limit the hosts they will connect over via SMB based on the nature of NTLM authentication.

    Acknowledgements: finder: Kainan Zhang (@4xpl0r3r) from Fortinet
    Reported to security team	2024-08-10
    Update 2.4.64 released	2025-07-10
    Affects	2.4.0 through 2.4.63

low: Apache HTTP Server: mod_ssl error log variable escaping (CVE-2024-47252)

    Insufficient escaping of user-supplied data in mod_ssl in Apache HTTP Server 2.4.63 and earlier allows an untrusted SSL/TLS client to insert escape characters into log files in some configurations.

    In a logging configuration where CustomLog is used with "%{varname}x" or "%{varname}c" to log variables provided by mod_ssl such as SSL_TLS_SNI, no escaping is performed by either mod_log_config or mod_ssl and unsanitized data provided by the client may appear in log files.

    Acknowledgements: finder: John Runyon
    Reported to security team	2024-09-18
    Update 2.4.64 released	2025-07-10
    Affects	2.4 through 2.4.63

moderate: Apache HTTP Server: mod_ssl access control bypass with session resumption (CVE-2025-23048)

    In some mod_ssl configurations on Apache HTTP Server 2.4.35 through to 2.4.62, an access control bypass by trusted clients is possible using TLS 1.3 session resumption.

    Configurations are affected when mod_ssl is configured for multiple virtual hosts, with each restricted to a different set of trusted client certificates (for example with a different SSLCACertificateFile/Path setting). In such a case, a client trusted to access one virtual host may be able to access another virtual host, if SSLStrictSNIVHostCheck is not enabled in either virtual host.

    Acknowledgements: finder: Sven Hebrok, Felix Cramer, Tim Storm, Maximilian Radoy, and Juraj Somorovsky at Paderborn University
    Reported to security team	2024-11-25
    Update 2.4.64 released	2025-07-10
    Affects	2.4.35 through 2.4.63

low: Apache HTTP Server: mod_proxy_http2 denial of service (CVE-2025-49630)

    In certain proxy configurations, a denial of service attack against Apache HTTP Server versions 2.4.26 through to 2.4.63 can be triggered by untrusted clients causing an assertion in mod_proxy_http2.

    Configurations affected are a reverse proxy is configured for an HTTP/2 backend, with ProxyPreserveHost set to "on".

    Acknowledgements: finder: Anthony CORSIEZ
    Report received	2025-06-04
    Update 2.4.64 released	2025-07-10
    Affects	2.4.26 through 2.4.63

moderate: Apache HTTP Server: mod_ssl TLS upgrade attack (CVE-2025-49812)

    In some mod_ssl configurations on Apache HTTP Server versions through to 2.4.63, an HTTP desynchronisation attack allows a man-in-the-middle attacker to hijack an HTTP session via a TLS upgrade.

    Only configurations using "SSLEngine optional" to enable TLS upgrades are affected. Users are recommended to upgrade to version 2.4.64, which removes support for TLS upgrade.

    Acknowledgements:

        finder: Robert Merget (Technology Innovation Institute)
        finder: Nurullah Erinola (Ruhr University Bochum)
        finder: Marcel Maehren (Ruhr University Bochum)
        finder: Lukas Knittel (Ruhr University Bochum)
        finder: Sven Hebrok (Paderborn University)
        finder: Marcus Brinkmann (Ruhr University Bochum)
        finder: Juraj Somorovsky (Paderborn University)
        finder: Jörg Schwenk (Ruhr University Bochum)

    Report received	2025-04-22
    Update 2.4.64 released	2025-07-10
    Affects	through 2.4.63

moderate: Apache HTTP Server: HTTP/2 DoS by Memory Increase (CVE-2025-53020)

    Late Release of Memory after Effective Lifetime vulnerability in Apache HTTP Server.

    This issue affects Apache HTTP Server: from 2.4.17 up to 2.4.63.

    Users are recommended to upgrade to version 2.4.64, which fixes the issue.

    Acknowledgements: finder: Gal Bar Nahum
    Reported to security team	2025-06-18
    fix developed	2025-06-19
    Update 2.4.64 released	2025-07-10
    Affects	2.4.17 through 2.4.63

----- Forwarded message from covener <covener@apache.org> -----

From: covener <covener@apache.org>
To: announce@httpd.apache.org
Reply-To: dev@httpd.apache.org
Subject: [ANNOUNCEMENT] Apache HTTP Server 2.4.64 Released
Date: Thu, 10 Jul 2025 11:46:39 -0400

                Apache HTTP Server 2.4.64 Released

   July 10, 2025

   The Apache Software Foundation and the Apache HTTP Server Project
   are pleased to announce the release of version 2.4.64 of the Apache
   HTTP Server ("Apache").  This version of Apache is our latest GA
   release of the new generation 2.4.x branch of Apache HTTPD and
   represents fifteen years of innovation by the project, and is
   recommended over all previous releases. This release of Apache is
   a security, feature and bug fix release.

   We consider this release to be the best version of Apache available, and
   encourage users of all prior versions to upgrade.

   Apache HTTP Server 2.4.64 is available for download from:

     https://httpd.apache.org/download.cgi

   Apache 2.4 offers numerous enhancements, improvements, and performance
   boosts over the 2.2 codebase.  For an overview of new features
   introduced since 2.4 please see:

     https://httpd.apache.org/docs/trunk/new_features_2_4.html

   Please see the CHANGES_2.4 file, linked from the download page, for a
   full list of changes. A condensed list, CHANGES_2.4.64 includes only
   those changes introduced since the prior 2.4 release.  A summary of all 
   of the security vulnerabilities addressed in this and earlier releases 
   is available:

     https://httpd.apache.org/security/vulnerabilities_24.html

   This release requires the Apache Portable Runtime (APR), minimum
   version 1.5.x, and APR-Util, minimum version 1.5.x. Some features may
   require the 1.6.x version of both APR and APR-Util. The APR libraries
   must be upgraded for all features of httpd to operate correctly.

   This release builds on and extends the Apache 2.2 API.  Modules written
   for Apache 2.2 will need to be recompiled in order to run with Apache
   2.4, and require minimal or no source code changes.

     https://svn.apache.org/repos/asf/httpd/httpd/trunk/VERSIONING

   When upgrading or installing this version of Apache, please bear in mind
   that if you intend to use Apache with one of the threaded MPMs (other
   than the Prefork MPM), you must ensure that any modules you will be
   using (and the libraries they depend on) are thread-safe.

   Please note the 2.2.x branch has now passed the end of life at the Apache
   HTTP Server project and no further activity will occur including security
   patches.  Users must promptly complete their transitions to this 2.4.x
   release of httpd to benefit from further bug fixes or new features.



--
To unsubscribe from this announcement list, send a mail to
<announce-unsubscribe@httpd.apache.org> from your subscribed address.

----- End forwarded message -----
