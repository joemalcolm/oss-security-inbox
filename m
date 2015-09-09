X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6442" "Wednesday" "9" "September" "2015" "11:59:18" "+0200" "Florian Weimer" "fweimer@redhat.com" "<55F002F6.1010602@redhat.com>" "155" "[oss-security] Re: nss: SSL_ImplementedCiphers ABI incompatibility may lead to incorrect cipher suites" nil nil nil "9" "2015090909:59:18" "[oss-security] Re: nss: SSL_ImplementedCiphers ABI incompatibility may lead to incorrect cipher suites" (number mark "        fweimer@redh Sep  9  155/6442  " thread-indent "\"[oss-security] Re: nss: SSL_ImplementedCiphers ABI incompatibility may lead to incorrect cipher suites\"\n") "<20150907154401.164E26C000F@smtpvmsrv1.mitre.org>" ("<20150907154401.164E26C000F@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32405 invoked by uid 550); 9 Sep 2015 09:59:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32384 invoked from network); 9 Sep 2015 09:59:32 -0000
References: <20150907154401.164E26C000F@smtpvmsrv1.mitre.org>
X-Enigmail-Draft-Status: N1010
Message-ID: <55F002F6.1010602@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <20150907154401.164E26C000F@smtpvmsrv1.mitre.org>
Content-Type: multipart/mixed;
 boundary="------------090108080205090708080902"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Cc: oss-security@lists.openwall.com
Date: Wed, 9 Sep 2015 11:59:18 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: nss: SSL_ImplementedCiphers ABI incompatibility may lead to
 incorrect cipher suites
To: cve-assign@mitre.org

--------------090108080205090708080902
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

On 09/07/2015 05:44 PM, cve-assign@mitre.org wrote:

> (We realize that this isn't a great example. A better example would
> have forced the unavailability of an arguably "safe" cipher suite that
> had previously been used. Or, possibly, a better example would have
> caused the customer's application to fail to pick up a new and highly
> recommended cipher suite that exists only in newer NSS upstream code.)

I looked at the upgrade from Red Hat Enterprise Linux 6.1 to 6.7
(nss-3.12.9-9.el6.x86_64 to nss-3.18.0-5.3.el6_6.x86_64), which is
larger.  See the attached text file.

> Is this also a security impact:
> 
>   The applicable NSS code begins with
> 
>        const PRUint16 SSL_ImplementedCiphers[] = {
> 
>   and ends with
> 
>          SSL_EN_RC2_128_CBC_EXPORT40_WITH_MD5,
> 
>          0
> 
>     };
> 
> 
>   in both cases. If SSL_ImplementedCiphers is truncated, then the "0"
>   at the end is lost. In some or all cases, possibly depending on the
>   machine architecture or compiler, this can result in a different
>   type of unwanted behavior for an NSS-based application, such as an
>   out-of-bounds read and application crash caused by a malicious TLS
>   endpoint that intentionally has no mutually agreeable cipher suites.
> 
> ?

As far as I can tell, the value of SSL_ImplementedCiphers does not have
any impact on NSS by itself.  The cipher suites it enables by default do
not change based on the cipher suites listed in the array.

The hypothetical problem I can see is with an application traversing the
SSL_ImplementedCiphers array, looking up each cipher suite using
SSL_GetCipherSuiteInfo, and then changing the set of enabled ciphers
based on some application policy.  This could say, “disable all RC4
cipher suites” or “disable all MD5 cipher suites”.  If the
SSL_ImplementedCiphers array is truncated, the application would miss
cipher suites which are implemented and enabled, and would not be able
to disable them.  As a result the “no RC4” or “no MD5” policy is not
enforced.

-- 
Florian Weimer / Red Hat Product Security


--------------090108080205090708080902
Content-Type: text/plain; charset=UTF-8;
 name="diff.txt"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="diff.txt"

+TLS_RSA_WITH_CAMELLIA_128_CBC_SHA:
+  0x0041 RSA   RSA   CAMELLIA 128 SHA1   Disabled      Domestic=20=20=20=
=20=20=20=20=20=20=20=20=20
+TLS_RSA_WITH_AES_256_CBC_SHA:
+  0x0035 RSA   RSA   AES      256 SHA1   Enabled  FIPS Domestic=20=20=20=
=20=20=20=20=20=20=20=20=20
+TLS_RSA_WITH_AES_256_CBC_SHA256:
+  0x003d RSA   RSA   AES      256 SHA256 Enabled  FIPS Domestic=20=20=20=
=20=20=20=20=20=20=20=20=20
+TLS_RSA_WITH_CAMELLIA_256_CBC_SHA:
+  0x0084 RSA   RSA   CAMELLIA 256 SHA1   Disabled      Domestic=20=20=20=
=20=20=20=20=20=20=20=20=20
+TLS_RSA_WITH_SEED_CBC_SHA:
+  0x0096 RSA   RSA   SEED     128 SHA1   Disabled FIPS Domestic=20=20=20=
=20=20=20=20=20=20=20=20=20
+SSL_RSA_FIPS_WITH_3DES_EDE_CBC_SHA:
+  0xfeff RSA   RSA   3DES     112 SHA1   Disabled FIPS Domestic nonStandard
+TLS_RSA_WITH_3DES_EDE_CBC_SHA:
+  0x000a RSA   RSA   3DES     112 SHA1   Enabled  FIPS Domestic=20=20=20=
=20=20=20=20=20=20=20=20=20
+TLS_RSA_WITH_RC4_128_SHA:
+  0x0005 RSA   RSA   RC4      128 SHA1   Enabled       Domestic=20=20=20=
=20=20=20=20=20=20=20=20=20
+TLS_RSA_WITH_RC4_128_MD5:
+  0x0004 RSA   RSA   RC4      128 MD5    Enabled       Domestic=20=20=20=
=20=20=20=20=20=20=20=20=20
+TLS_DHE_RSA_WITH_DES_CBC_SHA:
+  0x0015 DHE   RSA   DES       56 SHA1   Disabled      Domestic=20=20=20=
=20=20=20=20=20=20=20=20=20
+TLS_DHE_DSS_WITH_DES_CBC_SHA:
+  0x0012 DHE   DSA   DES       56 SHA1   Disabled      Domestic=20=20=20=
=20=20=20=20=20=20=20=20=20
+SSL_RSA_FIPS_WITH_DES_CBC_SHA:
+  0xfefe RSA   RSA   DES       56 SHA1   Disabled      Domestic nonStandard
+TLS_RSA_WITH_DES_CBC_SHA:
+  0x0009 RSA   RSA   DES       56 SHA1   Disabled      Domestic=20=20=20=
=20=20=20=20=20=20=20=20=20
+TLS_RSA_EXPORT1024_WITH_RC4_56_SHA:
+  0x0064 RSA   RSA   RC4       56 SHA1   Disabled      Export=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20
+TLS_RSA_EXPORT1024_WITH_DES_CBC_SHA:
+  0x0062 RSA   RSA   DES       56 SHA1   Disabled      Export=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20
+TLS_RSA_EXPORT_WITH_RC4_40_MD5:
+  0x0003 RSA   RSA   RC4       40 MD5    Disabled      Export=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20
+TLS_RSA_EXPORT_WITH_RC2_CBC_40_MD5:
+  0x0006 RSA   RSA   RC2       40 MD5    Disabled      Export=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20
+TLS_ECDHE_ECDSA_WITH_NULL_SHA:
+  0xc006 ECDHE ECDSA NULL       0 SHA1   Disabled      Domestic=20=20=20=
=20=20=20=20=20=20=20=20=20
+TLS_ECDHE_RSA_WITH_NULL_SHA:
+  0xc010 ECDHE RSA   NULL       0 SHA1   Disabled      Domestic=20=20=20=
=20=20=20=20=20=20=20=20=20
+TLS_ECDH_RSA_WITH_NULL_SHA:
+  0xc00b ECDH  RSA   NULL       0 SHA1   Disabled      Domestic=20=20=20=
=20=20=20=20=20=20=20=20=20
+TLS_ECDH_ECDSA_WITH_NULL_SHA:
+  0xc001 ECDH  ECDSA NULL       0 SHA1   Disabled      Domestic=20=20=20=
=20=20=20=20=20=20=20=20=20
+TLS_RSA_WITH_NULL_SHA:
+  0x0002 RSA   RSA   NULL       0 SHA1   Disabled      Export=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20
+TLS_RSA_WITH_NULL_SHA256:
+  0x003b RSA   RSA   NULL       0 SHA256 Disabled      Export=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20
+TLS_RSA_WITH_NULL_MD5:
+  0x0001 RSA   RSA   NULL       0 MD5    Disabled      Export=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20
+SSL_CK_RC4_128_WITH_MD5:
+  0xff01 RSA   RSA   RC4      128 MD5    Enabled  SSL2 Domestic=20=20=20=
=20=20=20=20=20=20=20=20=20
+SSL_CK_RC2_128_CBC_WITH_MD5:
+  0xff03 RSA   RSA   RC2      128 MD5    Enabled  SSL2 Domestic=20=20=20=
=20=20=20=20=20=20=20=20=20
+SSL_CK_DES_192_EDE3_CBC_WITH_MD5:
+  0xff07 RSA   RSA   3DES     112 MD5    Enabled  SSL2 Domestic=20=20=20=
=20=20=20=20=20=20=20=20=20
+SSL_CK_DES_64_CBC_WITH_MD5:
+  0xff06 RSA   RSA   DES       56 MD5    Enabled  SSL2 Domestic=20=20=20=
=20=20=20=20=20=20=20=20=20
+SSL_CK_RC4_128_EXPORT40_WITH_MD5:
+  0xff02 RSA   RSA   RC4       40 MD5    Enabled  SSL2 Export=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20
+SSL_CK_RC2_128_CBC_EXPORT40_WITH_MD5:
+  0xff04 RSA   RSA   RC2       40 MD5    Enabled  SSL2 Export=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20

--------------090108080205090708080902--
