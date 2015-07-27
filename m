X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3201" "Monday" "27" "July" "2015" "09:18:55" "-0500" "Tyler Hicks" "tyhicks@canonical.com" "<20150727141855.GA14038@boyd>" "92" "[oss-security] Security issue in Linux Kernel Keyring (CVE-2015-1333)" nil nil nil "7" "2015072714:18:55" "[oss-security] Security issue in Linux Kernel Keyring (CVE-2015-1333)" (number mark "        tyhicks@cano Jul 27   92/3201  " thread-indent "\"[oss-security] Security issue in Linux Kernel Keyring (CVE-2015-1333)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16036 invoked by uid 550); 27 Jul 2015 14:19:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16010 invoked from network); 27 Jul 2015 14:19:11 -0000
Message-ID: <20150727141855.GA14038@boyd>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="96YOpH+ONegL0A3E"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: David Howells <dhowells@redhat.com>,
	Colin Ian King <colin.king@canonical.com>, security@ubuntu.com
Date: Mon, 27 Jul 2015 09:18:55 -0500
From: Tyler Hicks <tyhicks@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Security issue in Linux Kernel Keyring (CVE-2015-1333)
To: oss-security@lists.openwall.com

--96YOpH+ONegL0A3E
Content-Type: multipart/mixed; boundary="Fba/0zbH8Xs+Fj9o"
Content-Disposition: inline


--Fba/0zbH8Xs+Fj9o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

While improving the system call coverage in stress-ng[1], Colin Ian King
discovered a bug in the Linux kernel keyring that can be used to cause a
local denial of service due to memory exhaustion when the same key is
repeatedly added to the kernel keyring via the add_key() syscall.

This issue has been assigned CVE-2015-1333.

I've attached the fix since I don't yet have an upstream git commit
hash.

Tyler

[1] http://kernel.ubuntu.com/~cking/stress-ng/

--Fba/0zbH8Xs+Fj9o
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="CVE-2015-1333.patch"
Content-Transfer-Encoding: quoted-printable

From: Colin Ian King <colin.king@canonical.com>
Subject: [PATCH] KEYS: ensure we free the assoc array edit if edit is valid

__key_link_end is not freeing the associated array edit structure
and this leads to a 512 byte memory leak each time an identical
existing key is added with add_key().

The reason the add_key() system call returns okay is that
key_create_or_update() calls __key_link_begin() before checking to see
whether it can update a key directly rather than adding/replacing - which
it turns out it can.  Thus __key_link() is not called through
__key_instantiate_and_link() and __key_link_end() must cancel the edit.

CVE-2015-1333

Signed-off-by: Colin Ian King <colin.king@canonical.com>
Signed-off-by: David Howells <dhowells@redhat.com>
---

diff --git a/security/keys/keyring.c b/security/keys/keyring.c
index e72548b5897e..d33437007ad2 100644
--- a/security/keys/keyring.c
+++ b/security/keys/keyring.c
@@ -1181,9 +1181,11 @@ void __key_link_end(struct key *keyring,
 	if (index_key->type =3D=3D &key_type_keyring)
 		up_write(&keyring_serialise_link_sem);
=20
-	if (edit && !edit->dead_leaf) {
-		key_payload_reserve(keyring,
-				    keyring->datalen - KEYQUOTA_LINK_BYTES);
+	if (edit) {
+		if (!edit->dead_leaf) {
+			key_payload_reserve(keyring,
+				keyring->datalen - KEYQUOTA_LINK_BYTES);
+		}
 		assoc_array_cancel_edit(edit);
 	}
 	up_write(&keyring->sem);

--Fba/0zbH8Xs+Fj9o--

--96YOpH+ONegL0A3E
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVtj3PAAoJENaSAD2qAscKBPsQALTPDgXcxyBqhMnuorApINWn
82vmvFN8x8FhzDp5xTxTK13T6vSVwqCyZrOmYc7J8Gz2H7DOUVPjJYLLut70NcUI
gOg32PgjGt2Vmz83xa4bnJM9LPjRLhW7eTD7q4ha351KwoAhpWiOGdcqB8ri421R
lZz5TN0P7z4o6CA1VuWHne1sZ/qP6DtK9Q559u9wPmA2V5rgAYqmeovIYyciAXGq
TT7BzDOJ9rC/PpvNC4L+MDsw7esFUlmgi21AJZwgjK3jtpUfN2C8X5EhVn7aN5Pp
RJnYYia6SplqjR52nYDhZvfT6m8L+tkTNF7MtVG3EOFaE6xG9ezIG8obp8gvh9pk
CR4vT9VdUlxSoJ8uM/rhEKugImYvPa/D3p1dOHnqjK06Ad6ERDQM7QiR2pi/tdgr
2N7qoSTV31jvUfw7LNj7oToGn7ZbLgDbUW30WSaXA5pjee7x3tunEdShDnDDRdQX
VwrBjBese1kGYKX73T7lhP/r4jLRhPJPy23L8C4KaPkxxAP6M9HgZTB9ElH13q3l
TrTMx1ZD05rFWWrk3wiEBtawHFb9Ss8hVnzzQZscHi288VIXwxskdOkBhmEpXfWR
+EbA4fLCfnC0HsOarXjEmP7/gsNzrBUTw3NxMoWzxUuGYF52Itm9ZfR+zW49nieQ
iWv8ayGdwZ2IJ7e9PILR
=6tZq
-----END PGP SIGNATURE-----

--96YOpH+ONegL0A3E--
