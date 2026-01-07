Received: (qmail 23735 invoked by uid 550); 7 Jan 2026 07:09:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23690 invoked from network); 7 Jan 2026 07:09:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=haxx.se; s=silly;
	t=1767769776; bh=5mYAKo9SPynFUMyz960QNKr1hHuk2HZp6B+oG7zX4q0=;
	h=Date:From:To:Subject:From;
	b=ua87eYLf01F5MdPq/o+HlzIFd63VEAGaTY76uhKtfROH51QfQT3/CztAI30oseFLi
	 dQpkBfupXJRMoz6/JiZNkXykSBXhjBECE5Mn0NitnmrQX5ZB6+4bc4mdAQHka7+zjV
	 niOrrz2mTd2N6yKJZlFMLTnm8uiOggdCvRkKPOzR+Ex31MD0TGRVLf/De3/lDp24v6
	 5Y0IG8r8+7oetaHxrZnWYLQQTMDo9Sh2Na0ElpGBDYknS9fNU2LgDKoWwn9mMIE5rU
	 N//VL/HR3cnJkA/llqmwqqlmmWeLvV+sDcDF43L1cNMfceFwtyU4XwxsHyshBZdAlg
	 OFlctE3+3sCJA==
Date: Wed, 7 Jan 2026 08:09:36 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <59r7r2ns-son1-pns0-911o-6561n9567785@unkk.fr>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [ADVISORY] curl CVE-2025-14819: OpenSSL partial chain store policy
 bypass

OpenSSL partial chain store policy bypass
=========================================

Project curl Security Advisory, January 7 2026 -
[Permalink](https://curl.se/docs/CVE-2025-14819.html)

VULNERABILITY
-------------

When doing TLS related transfers with re-used easy or multi handles and
altering the `CURLSSLOPT_NO_PARTIALCHAIN` option, libcurl could accidentally
reuse a CA store cached in memory for which the partial chain option was
reversed. Contrary to the user's wishes and expectations. This could make
libcurl find and accept a trust chain that it otherwise would not.

INFO
----

As a performance enhancement, in libcurl's OpenSSL related backend code, it
holds the loaded CA store cached in memory. This cache is held in memory up to
24 hours by default until refreshed.

The libcurl option `CURLOPT_SSL_OPTIONS` has a bit called
`CURLSSLOPT_NO_PARTIALCHAIN` which if set makes libcurl not set the OpenSSL
*store flag* called `X509_V_FLAG_PARTIAL_CHAIN`.

curl contains support for several different TLS backends. This flaw only
exists when libcurl uses OpenSSL (or one of the many OpenSSL forks) in
runtime.

This only affects TLS related transfers and only if `CURLOPT_CA_CACHE_TIMEOUT`
is not disabled (set to zero).

libcul still verifies the certificate and returns error if it cannot, even
with this flaw. It just might accept a partial trust chain that it otherwise
would not.

Applications *rarely* toggle this option individually for different transfers.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2025-14819 to this issue.

CWE-295: Improper Certificate Validation

Severity: Low

AFFECTED VERSIONS
-----------------

- Affected versions: curl 7.87.0 to and including 8.17.0
- Not affected versions: curl < 7.87.0 and >= 8.18.0
- Introduced-in: https://github.com/curl/curl/commit/3c16697ebd796f799227b

libcurl is used by many applications, but not always advertised as such!

This bug is not considered a *C mistake*. It is not likely to have been
avoided had we not been using C.

This flaw **does not** affect the curl command line tool.

SOLUTION
------------

Starting in curl 8.18.0, this mistake is fixed.

- Fixed-in: https://github.com/curl/curl/commit/cd046f6c93b39d673a58c1864

RECOMMENDATIONS
--------------

  A - Upgrade curl to version 8.18.0

  B - Avoid using `CURLSSLOPT_NO_PARTIALCHAIN`

  C - Switch off CA caching with `CURLOPT_CA_CACHE_TIMEOUT`

TIMELINE
--------

This issue was reported to the curl project on December 16, 2025. We contacted
distros@openwall on December 30, 2025.

curl 8.18.0 was released on January 7 2026 around 07:00 UTC, coordinated with
the publication of this advisory.

The curl security team is not aware of any active exploits using this
vulnerability.

CREDITS
-------

- Reported-by: Stanislav Fort (Aisle Research)
- Patched-by: Daniel Stenberg

Thanks a lot!

-- 

  / daniel.haxx.se || https://rock-solid.curl.dev
