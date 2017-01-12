X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/01/12/3
Message-ID: <358eb8ff-a72d-78ab-3a0c-8bc409ab2b83@redhat.com>
Date: Thu, 12 Jan 2017 08:38:43 +0530
From: Huzaifa Sidhpurwala <huzaifas@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2016-7056 ECDSA P-256 timing attack key recovery (OpenSSL, LibreSSL, BoringSSL)
Content-Type: text/plain; charset=utf-8

On 01/10/2017 09:47 PM, Dan McDonald wrote:
> 
>> On Jan 10, 2017, at 10:50 AM, Cesar Pereida Garcia <cesar.pereidagarcia@....fi> wrote:
>>
>> Mitigation:
>> Users of OpenSSL with the affected versions should apply
>> the patch available in the manuscript at [1].
> 
> You should just mail the patch to this list.  I'm having a hard time copying/pasting the uuencoded blob from your paper, Cesar.
> 

This is the patch from the whitepaper:

Date: Fri, 16 Dec 2016 12:02:19 +0200
Subject: [PATCH] ECDSA vulnerable to cache-timing attack. BN_mod_inverse
fails
 to take constant-time path, thus leaking nonce's information.

---
 crypto/ecdsa/ecs_ossl.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/crypto/ecdsa/ecs_ossl.c b/crypto/ecdsa/ecs_ossl.c
index 4c5fa6b..72e7c05 100644
--- a/crypto/ecdsa/ecs_ossl.c
+++ b/crypto/ecdsa/ecs_ossl.c
@@ -147,6 +147,8 @@ static int ecdsa_sign_setup(EC_KEY *eckey, BN_CTX
*ctx_in, BIGNUM **kinvp,
             if (!BN_add(k, k, order))
                 goto err;

+        BN_set_flags(k, BN_FLG_CONSTTIME);
+
         /* compute r the x-coordinate of generator * k */
         if (!EC_POINT_mul(group, tmp_point, k, NULL, NULL, ctx)) {
             ECDSAerr(ECDSA_F_ECDSA_SIGN_SETUP, ERR_R_EC_LIB);
-- 
2.7.4




-- 
Huzaifa Sidhpurwala / Red Hat Product Security Team
