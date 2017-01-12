X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1313" "Thursday" "12" "January" "2017" "08:38:43" "+0530" "Huzaifa Sidhpurwala" "huzaifas@redhat.com" "<358eb8ff-a72d-78ab-3a0c-8bc409ab2b83@redhat.com>" "44" "Re: [oss-security] CVE-2016-7056 ECDSA P-256 timing attack key recovery (OpenSSL, LibreSSL, BoringSSL)" "^Date:" nil nil "1" "2017011203:08:43" "[oss-security] CVE-2016-7056 ECDSA P-256 timing attack key recovery (OpenSSL, LibreSSL, BoringSSL)" (number mark "        huzaifas@red Jan 12   44/1313  " thread-indent "\"Re: [oss-security] CVE-2016-7056 ECDSA P-256 timing attack key recovery (OpenSSL, LibreSSL, BoringSSL)\"\n") "<6D927636-CDD5-4A48-90F8-3149133ED354@omniti.com>" ("<D159A2841943CE409CC23D3F12A4633A516569@mb2010-3.intra.tut.fi>" "<6D927636-CDD5-4A48-90F8-3149133ED354@omniti.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19585 invoked by uid 550); 12 Jan 2017 03:08:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19564 invoked from network); 12 Jan 2017 03:08:57 -0000
References: <D159A2841943CE409CC23D3F12A4633A516569@mb2010-3.intra.tut.fi>
 <6D927636-CDD5-4A48-90F8-3149133ED354@omniti.com>
Message-ID: <358eb8ff-a72d-78ab-3a0c-8bc409ab2b83@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <6D927636-CDD5-4A48-90F8-3149133ED354@omniti.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]); Thu, 12 Jan 2017 03:08:47 +0000 (UTC)
Date: Thu, 12 Jan 2017 08:38:43 +0530
From: Huzaifa Sidhpurwala <huzaifas@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2016-7056 ECDSA P-256 timing attack key
 recovery (OpenSSL, LibreSSL, BoringSSL)
To: oss-security@lists.openwall.com

On 01/10/2017 09:47 PM, Dan McDonald wrote:
> 
>> On Jan 10, 2017, at 10:50 AM, Cesar Pereida Garcia <cesar.pereidagarcia@tut.fi> wrote:
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
