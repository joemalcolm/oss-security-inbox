X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3768" "Monday" "24" "September" "2018" "06:03:44" "-0400" "Vladis Dronov" "vdronov@redhat.com" "<1159723764.15583680.1537783424023.JavaMail.zimbra@redhat.com>" "77" "[oss-security] CVE-2018-14633: Linux kernel: security flaw in iscsi target code" nil nil nil "9" "2018092410:03:44" "[oss-security] CVE-2018-14633: Linux kernel: security flaw in iscsi target code" (number mark "U       vdronov@redh Sep 24   77/3768  " thread-indent "\"[oss-security] CVE-2018-14633: Linux kernel: security flaw in iscsi target code\"\n") "<1995049383.15582351.1537783007417.JavaMail.zimbra@redhat.com>" ("<1995049383.15582351.1537783007417.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11294 invoked by uid 550); 24 Sep 2018 10:03:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11273 invoked from network); 24 Sep 2018 10:03:56 -0000
Date: Mon, 24 Sep 2018 06:03:44 -0400 (EDT)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <1159723764.15583680.1537783424023.JavaMail.zimbra@redhat.com>
In-Reply-To: <1995049383.15582351.1537783007417.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.5.28, 10.4.195.17]
Thread-Topic: CVE-2018-14633: Linux kernel: security flaw in iscsi target code
Thread-Index: szXzdpck14J0Oq/6YzcJhR/ZVrr9LQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]); Mon, 24 Sep 2018 10:03:44 +0000 (UTC)
Subject: [oss-security] CVE-2018-14633: Linux kernel: security flaw in iscsi target code

Heololo,

"Vincent Pelletier" <plr.vincent@gmail.com> has found a security flaw in the
chap_server_compute_md5() function in the ISCSI target code in the Linux kernel
in a way an authentication request from an ISCSI initiator is processed. An
unauthenticated remote attacker can cause a stack buffer overflow and smash up
to 17 bytes of the stack. The attack requires the iSCSI target to be enabled on
the victim host.

This flaw was assigned a CVE-ID of CVE-2018-14633 and I would suggest to use it
in the future communications re: this:

https://bugzilla.redhat.com/show_bug.cgi?id=1626035

The suggested patches:

https://git.kernel.org/pub/scm/linux/kernel/git/mkp/scsi.git/commit/?h=4.19/scsi-fixes&id=1816494330a83f2a064499d8ed2797045641f92c

https://git.kernel.org/pub/scm/linux/kernel/git/mkp/scsi.git/commit/?h=4.19/scsi-fixes&id=8c39e2699f8acb2e29782a834e56306da24937fe

The impact analysis follows. The flaw resides in this code:

[drivers/target/iscsi/iscsi_target_auth.h]
#define CHAP_CHALLENGE_LENGTH  16
#define MD5_SIGNATURE_SIZE     16      /* 16 bytes in a MD5 message digest */
#define MAX_RESPONSE_LENGTH    64      /* sufficient for MD5 */
#define MAX_CHAP_N_SIZE        512

[drivers/target/iscsi/iscsi_target_auth.c]
static int chap_server_compute_md5( ... char *nr_in_ptr, char *nr_out_ptr, ... )
{       ...
        unsigned char client_digest[MD5_SIGNATURE_SIZE];
        unsigned char server_digest[MD5_SIGNATURE_SIZE];
        unsigned char chap_r[MAX_RESPONSE_LENGTH];
        ...
        if (extract_param(nr_in_ptr, "CHAP_R", MAX_RESPONSE_LENGTH, chap_r,
            &type) < 0) { ...exit... }
        ...
        chap_string_to_hex(client_digest, chap_r, strlen(chap_r));
        ...
        // int crypto_shash_finup(struct shash_desc *desc, const u8 *data,
        //     unsigned int len, u8 *out)
        // note, server_digest is *out
        ret = crypto_shash_finup(desc, chap->challenge, CHAP_CHALLENGE_LENGTH, server_digest);
        ...
        chap_binaryhex_to_asciihex(response, server_digest, MD5_SIGNATURE_SIZE);

Here chap_string_to_hex() (which basically does hex2bin()) can have max 64-bytes
input string, then it converts the input to a 32-bytes binary string and writes
it plus the trailing \0 to the 16-bytes on-stack buffer client_digest[], making
this a classical buffer overflow.

chap_r is attacker-controlled, the question is what an attack can overwrite.
The overwrite can be 16 bytes + zero byte. Checking what is where on the stack
in, for example, RHEL-7/x86_64, server_digest[] and the 1st byte of response[]
can be overwritten. According to the code, server_digest[] and response[] are
not used after the overwrite and are filled with correct values later by the
crypto_shash_finup() and the chap_binaryhex_to_asciihex().

This means the flaw has no impact on the RHEL-7/x86_64 systems.

Depending on how the other distriutions' kernel is built (i.e. depending on a
compiler, compiler flags and hardware architecture) a compiler may put other
local variables or function arguments on the stack after the client_digest. This
may lead to different outcomes, like chap_server_compute_md5() may erroneously
return with a result of a successful authentication by rewriting auth_ret, and
so expose all the target's content to an attacker. Or, if nr_out_ptr is
overwritten, this can damage other kernel memory content via later sprintf() and
thus lead to a system crash.

At last, with distribution kernels where stack canary is disabled the overwrite
may corrupt a return pointer, saved registers and other function's stack frame.
Due to this, privilege escalation cannot be fully ruled out, although we believe
this is highly unlikely.

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
