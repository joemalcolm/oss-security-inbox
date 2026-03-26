Received: (qmail 10232 invoked by uid 550); 26 Mar 2026 03:05:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3298 invoked from network); 26 Mar 2026 03:01:26 -0000
Date: Thu, 26 Mar 2026 04:01:12 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Sergey Kandaurov <pluknet@nginx.com>
Message-ID: <20260326030111.GA2606@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.4.2.3i
Subject: [oss-security] 7 CVEs fixed in nginx

Hi,

Since the last nginx CVE I brought in here last year, there appeared 7
more CVEs/advisories at:

https://nginx.org/en/security_advisories.html

6 of these are dated Mar 24, 2026 and one Feb 4, 2026.  Here are the
summaries copy-pasted from the above:

Buffer overflow in ngx_http_dav_module
Severity: medium
CVE-2026-27654
Not vulnerable: 1.29.7+, 1.28.3+
Vulnerable: 0.5.13-1.29.6

Buffer overflow in the ngx_http_mp4_module
Severity: medium
CVE-2026-27784
Not vulnerable: 1.29.7+, 1.28.3+
Vulnerable: 1.1.19-1.29.6

Buffer overflow in the ngx_http_mp4_module
Severity: medium
CVE-2026-32647
Not vulnerable: 1.29.7+, 1.28.3+
Vulnerable: 1.1.19-1.29.6

NULL pointer dereference while using CRAM-MD5 or APOP
Severity: low
CVE-2026-27651
Not vulnerable: 1.29.7+, 1.28.3+
Vulnerable: 0.5.15-1.29.6

Injection in auth_http and XCLIENT
Severity: medium
CVE-2026-28753
Not vulnerable: 1.29.7+, 1.28.3+
Vulnerable: 0.6.27-1.29.6

OCSP result bypass in stream
Severity: medium
CVE-2026-28755
Not vulnerable: 1.29.7+, 1.28.3+
Vulnerable: 1.27.2-1.29.6

SSL upstream injection
Severity: medium
CVE-2026-1642
Not vulnerable: 1.29.5+, 1.28.2+
Vulnerable: 1.3.0-1.29.4

Each of these has a link to the actual advisory on the MyF5 website, but
these are just the CVE description fields plus tables on (not) affected
F5 product versions in addition to "NGINX Open Source" versions above.

I think I am still subscribed to the nginx-announce mailing list where
things like this were sent to last year, but I didn't receive anything
this time.  I just went to the list archive at:

https://mailman.nginx.org/pipermail/nginx-announce/

and it also ends in 2025.

I only learned of these CVEs from a third-party website by chance, which
is not ideal.  Maybe something the nginx project should correct.

Alexander
