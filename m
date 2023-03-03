Received: (qmail 8067 invoked by uid 550); 3 Mar 2023 08:57:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10142 invoked from network); 3 Mar 2023 02:24:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1677810251;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=V1jSBBtzxH672Gb2MYK89iouCe3W5H38ApDhDUg3SF4=;
        b=IEStmNhwrKd66HiyM5BKu6JbJZ6UMcu4b9jOZuOPpiXoXvtIQ5lPe4lJPjHIBt/zlF
         95k8FifVgXkyjfWjfdQw3lVnf1UjG76/HKTb0ndOARI7tm9vjUynIRV0gnVXtuTVHPEe
         APxtvS4jf8GgBiuOG3/lKuKNmATG9zqkbzwBWeCfr0pwjJm4XG0ngqrq4rvEdpbh/SKx
         YIl94jQ8XF+WEyl9wKx8W374YFT9nX647dPiqSA4cs3TPZ/Krfsm6MPmM/vJf8Kj0NcB
         zil6Rw9ptXlcQhZxvqTD+h0jQQO5PDLm4f53N8tsyQ2C2UYqLPOzv8yVgr4OXK2Hz1Uk
         OYNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677810251;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=V1jSBBtzxH672Gb2MYK89iouCe3W5H38ApDhDUg3SF4=;
        b=nwlfp8XybD5LpF/OMM1/HzOIGc3AfV9ShFE7f/tBtRaftAHaPz7iGpDdt54MdMB3w5
         6zLH68eV4PTxgnUI9SJ+c914amdUy3qRrVkt9/FXvhX3evCsqYzwN2pw9Z/HW9sMbYvF
         SYbCroufYgzkf/WE+CDd/6AiE3cx/dyl9ZC+YWVpxZKm1k0rylVfeH4oEz8Uxqbikq1X
         t3dsB7Rrml2aAITrg+cM4Bk76cC/9K48CxObXDOMgELJ0luQz2PzhUK8/Vrm9MXZ8upb
         SrmJ55xjOUoxGAKiXOudLabPxvBo3zcxtQhubPluQl99EwntRg5GeiOtpEwXxOqLBP02
         UIHA==
X-Gm-Message-State: AO0yUKVnWzzNb5WzU4mGdwVQl3KZ5Q6FQINrvuKQ+mWbwttmGT2YzNfM
	pN1mzlzGMm5n0R077pMGDSwxLnzhLAPHP9uvMfQNApp7l6k=
X-Google-Smtp-Source: AK7set8f6ZsY2k+iSCo1IYBiJPq4Mj2reQAFixY8e7s+Bvl2U68Y6CDZ1FjfENROp9KLjSrB1TYNnmchD6Z1ijb1Pn8=
X-Received: by 2002:a17:906:2a55:b0:8b3:1041:1d08 with SMTP id
 k21-20020a1709062a5500b008b310411d08mr5806eje.7.1677810250417; Thu, 02 Mar
 2023 18:24:10 -0800 (PST)
MIME-Version: 1.0
From: Octavio Galland <octavio.galland@gmail.com>
Date: Thu, 2 Mar 2023 23:24:00 -0300
Message-ID: <CAPCCXc9UR7FmvkEvyy2_H=h4Y8cSMtJC7i8FsypBQye_FXp5GA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000fa09bb05f5f5a37f"
Subject: [oss-security] UAF in OpenSSL up to 3.0.7

--000000000000fa09bb05f5f5a37f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

There is a heap-based UAF vulnerability in OpenSSL up to version 3.0.7
(note that it affected version branches 1.0 and 1.1 as well). I include the
report that was sent to the OpenSSL security team, with an update
concerning reproducibility.
The vulnerability was triaged by the OpenSSL security team, got assigned
CVE-2023-0215 with MODERATE severity (
https://www.openssl.org/news/secadv/20230207.txt) and has been fixed in
versions 3.0.8, 1.1.1t and 1.0.2zg.

# Summary

There is a heap-based use after free in the function `BIO_new_NDEF`. This
UAF can be triggered when encrypting S/MIME messages with the `-stream`
option enabled if the function `cms_cb` returns an error code.
The error was found in OpenSSL release 3.0.7, and was later confirmed both
to be present in OpenSSL 3.0 development branch and to have existed since
OpenSSL 3.0.0.
Although we have not been able to verify it, we believe that this bug might
have existed since 2008, when CMS functionality was first introduced.

# How to reproduce

Tested on Ubuntu 22.04

```
git clone https://github.com/openssl/openssl
cd openssl
git checkout openssl-3.0.7
CC=3Dclang-14 CFLAGS=3D"-O0 -g -fno-omit-frame-pointer -fsanitize=3Daddress"
LDFLAGS=3D"-fsanitize=3Daddress" ./Configure
make -j$(nproc)
LD_LIBRARY_PATH=3D$(pwd) ./apps/openssl cms -encrypt -in ./test/smcont.txt
-stream -recip ./test/smime-certs/smec1.pem -des
```

Note that -des is specified here in order to induce an error during the
call to `ossl_cms_EncryptedContent_init_bio`, but if any other error
occured during execution of `cms_cb` (such as a bad allocation) the UAF
would still get triggered (see Analysis section below).
In general, specifying some symmetric ciphers (
https://www.openssl.org/docs/man3.0/man1/openssl-enc.html#SUPPORTED-CIPHERS)
does seem to trigger the error as well. We were able to reproduce the error
with bf, des, des-ede, rc4.
We are currently not aware of any way to trigger the bug via a faulty
recipient certificate. However, if an attacker was able to craft a
malicious certificate capable of making `cms_cb` return 0, then the bug
could be triggered when a victim tried to encrypt a message with the
attacker as a recipient by using their malicious certificate.

Here is the ASAN report for the UAF:

```
$ ./apps/openssl cms -encrypt -in ./test/smcont.txt -stream -recip
./test/smime-certs/smec1.pem -des
MIME-Version: 1.0
Content-Disposition: attachment; filename=3D"smime.p7m"
Content-Type: application/pkcs7-mime; smime-type=3Denveloped-data;
name=3D"smime.p7m"
Content-Transfer-Encoding: base64

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
=3D=3D64886=3D=3DERROR: AddressSanitizer: heap-use-after-free on address
0x60d000001198 at pc 0x55c4cc5b6f29 bp 0x7ffff4877ae0 sp 0x7ffff4877ad8
WRITE of size 8 at 0x60d000001198 thread T0
    #0 0x55c4cc5b6f28 in BIO_pop
/home/ogalland/ossl/crypto/bio/bio_lib.c:678:31
    #1 0x55c4ccad6785 in B64_write_ASN1
/home/ogalland/ossl/crypto/asn1/asn_mime.c:121:5
    #2 0x55c4ccad6eee in SMIME_write_ASN1_ex
/home/ogalland/ossl/crypto/asn1/asn_mime.c:324:10
    #3 0x55c4cc62f57d in SMIME_write_CMS
/home/ogalland/ossl/crypto/cms/cms_io.c:92:12
    #4 0x55c4cc3214e4 in cms_main /home/ogalland/ossl/apps/cms.c:1224:23
    #5 0x55c4cc3500c6 in do_cmd /home/ogalland/ossl/apps/openssl.c:418:16
    #6 0x55c4cc34f8fd in main /home/ogalland/ossl/apps/openssl.c:298:11
    #7 0x7ff97992cd8f in __libc_start_call_main
csu/../sysdeps/nptl/libc_start_call_main.h:58:16
    #8 0x7ff97992ce3f in __libc_start_main csu/../csu/libc-start.c:392:3
    #9 0x55c4cc23b0a4 in _start (/home/ogalland/ossl/apps/openssl+0x3780a4)
(BuildId: c47faa80842a319a2e75f78800f870b539fd546a)

0x60d000001198 is located 72 bytes inside of 136-byte region
[0x60d000001150,0x60d0000011d8)
freed by thread T0 here:
    #0 0x55c4cc2bdc42 in free (/home/ogalland/ossl/apps/openssl+0x3fac42)
(BuildId: c47faa80842a319a2e75f78800f870b539fd546a)
    #1 0x55c4cc7a25d8 in CRYPTO_free /home/ogalland/ossl/crypto/mem.c:258:5
    #2 0x55c4cc5b335d in BIO_free
/home/ogalland/ossl/crypto/bio/bio_lib.c:154:5
    #3 0x55c4ccadbe8a in BIO_new_NDEF
/home/ogalland/ossl/crypto/asn1/bio_ndef.c:100:5
    #4 0x55c4ccad5fc3 in i2d_ASN1_bio_stream
/home/ogalland/ossl/crypto/asn1/asn_mime.c:77:15
    #5 0x55c4ccad6764 in B64_write_ASN1
/home/ogalland/ossl/crypto/asn1/asn_mime.c:119:9
    #6 0x55c4ccad6eee in SMIME_write_ASN1_ex
/home/ogalland/ossl/crypto/asn1/asn_mime.c:324:10
    #7 0x55c4cc62f57d in SMIME_write_CMS
/home/ogalland/ossl/crypto/cms/cms_io.c:92:12
    #8 0x55c4cc3214e4 in cms_main /home/ogalland/ossl/apps/cms.c:1224:23
    #9 0x55c4cc3500c6 in do_cmd /home/ogalland/ossl/apps/openssl.c:418:16
    #10 0x55c4cc34f8fd in main /home/ogalland/ossl/apps/openssl.c:298:11
    #11 0x7ff97992cd8f in __libc_start_call_main
csu/../sysdeps/nptl/libc_start_call_main.h:58:16

previously allocated by thread T0 here:
    #0 0x55c4cc2bdeee in __interceptor_malloc
(/home/ogalland/ossl/apps/openssl+0x3faeee) (BuildId:
c47faa80842a319a2e75f78800f870b539fd546a)
    #1 0x55c4cc7a246b in CRYPTO_malloc
/home/ogalland/ossl/crypto/mem.c:190:12
    #2 0x55c4cc7a24a2 in CRYPTO_zalloc
/home/ogalland/ossl/crypto/mem.c:197:11
    #3 0x55c4cc5b2ab8 in BIO_new_ex
/home/ogalland/ossl/crypto/bio/bio_lib.c:83:16
    #4 0x55c4cc5b2f08 in BIO_new
/home/ogalland/ossl/crypto/bio/bio_lib.c:123:12
    #5 0x55c4ccadbac1 in BIO_new_NDEF
/home/ogalland/ossl/crypto/asn1/bio_ndef.c:65:15
    #6 0x55c4ccad5fc3 in i2d_ASN1_bio_stream
/home/ogalland/ossl/crypto/asn1/asn_mime.c:77:15
    #7 0x55c4ccad6764 in B64_write_ASN1
/home/ogalland/ossl/crypto/asn1/asn_mime.c:119:9
    #8 0x55c4ccad6eee in SMIME_write_ASN1_ex
/home/ogalland/ossl/crypto/asn1/asn_mime.c:324:10
    #9 0x55c4cc62f57d in SMIME_write_CMS
/home/ogalland/ossl/crypto/cms/cms_io.c:92:12
    #10 0x55c4cc3214e4 in cms_main /home/ogalland/ossl/apps/cms.c:1224:23
    #11 0x55c4cc3500c6 in do_cmd /home/ogalland/ossl/apps/openssl.c:418:16
    #12 0x55c4cc34f8fd in main /home/ogalland/ossl/apps/openssl.c:298:11
    #13 0x7ff97992cd8f in __libc_start_call_main
csu/../sysdeps/nptl/libc_start_call_main.h:58:16

SUMMARY: AddressSanitizer: heap-use-after-free
/home/ogalland/ossl/crypto/bio/bio_lib.c:678:31 in BIO_pop
Shadow bytes around the buggy address:
  0x0c1a7fff81e0: 00 00 00 00 00 00 00 00 00 00 00 00 00 fa fa fa
  0x0c1a7fff81f0: fa fa fa fa fa fa fd fd fd fd fd fd fd fd fd fd
  0x0c1a7fff8200: fd fd fd fd fd fd fd fa fa fa fa fa fa fa fa fa
  0x0c1a7fff8210: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0c1a7fff8220: 00 fa fa fa fa fa fa fa fa fa fd fd fd fd fd fd
=3D>0x0c1a7fff8230: fd fd fd[fd]fd fd fd fd fd fd fd fa fa fa fa fa
  0x0c1a7fff8240: fa fa fa fa fd fd fd fd fd fd fd fd fd fd fd fd
  0x0c1a7fff8250: fd fd fd fd fd fa fa fa fa fa fa fa fa fa fa fa
  0x0c1a7fff8260: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c1a7fff8270: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c1a7fff8280: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
Shadow byte legend (one shadow byte represents 8 application bytes):
  Addressable:           00
  Partially addressable: 01 02 03 04 05 06 07
  Heap left redzone:       fa
  Freed heap region:       fd
  Stack left redzone:      f1
  Stack mid redzone:       f2
  Stack right redzone:     f3
  Stack after return:      f5
  Stack use after scope:   f8
  Global redzone:          f9
  Global init order:       f6
  Poisoned by user:        f7
  Container overflow:      fc
  Array cookie:            ac
  Intra object redzone:    bb
  ASan internal:           fe
  Left alloca redzone:     ca
  Right alloca redzone:    cb
=3D=3D64886=3D=3DABORTING
```

This bug, however, is not specific to the `cms` command. As an example,
here is the command line we used to trigger the same error by using the
`smime` command:

```
LD_LIBRARY_PATH=3D$(pwd) ./apps/openssl smime -provider-path ./providers
-encrypt -in ./test/smcont.txt -des -stream ./test/smime-certs/smrsa1.pem
./test/smime-certs/smrsa2.pem ./test/smime-certs/smrsa3.pem
```

[Reproducibility update]

The following recipient public key will demonstrate the UaF for any cipher
when the CMS_STREAM flag is set.

```
cat << EOF > key.pub
-----BEGIN CERTIFICATE-----
MIIDbTCCAlWgAwIBAgIToTV4Z0iuK08vZP20oTh//hC8BDANBgkqhkiG9w0BAQ0FADAtMSswKQYD
VfcDEyJTYW1wbGUgTEFNUFMgQ2VydGlmaWNhdGUgQXV0aG9yaXR5MCAXDTE5MTEyMDA2NTQxOFoY
DzIwNTIwOTI3MDY1NDE4WjAZMRcwFQYDVQQDEw5BbGljZSBMb3ZlbGFjZTCCASIwDQYJKoZIhvcN
AQEBBQADggEPADCCAQoCggEBALT0iehYOBY+TZp/T5K2KNI05Hwr+E3wP6XTvyi6WWyTgBK9LCOw
I2juwdRrjFBmXkk7pWpjXwsA3A5GOtz0FpfgyC7OxsVcF7q4WHWZWleYXFKlQHJD73nQwXP968+A
/3rBX7PhO0DBbZnfitOLPgPEwjTtdg0VQQ6Wz+CRQ/YbHPKaw7aRphZO63dKvIKp4cQVtkWQHi6s
yTjGsgkLcLNau5LZDQUdsGV+SAo3nBdWCRYV+I65x8Kf4hCxqqmjV3d/2NKRu0BXnDe/N+iDz3X0
zEoj0fqXgq4SWcC0nsG1lyyXt1TL270I6ATKRGJWiQVCCpDtc0NT6vdJ45bCSxgCAwEAAaOBlzCB
lDAMBgNVHRMBAf8EAjAAMB4GA1UdEQQXMBWBE2FsaWNlQHNtaW1lLmV4YW1wbGUwEwYDVR0lBAww
CgYIKwYBBQUHAwQwDwYDVR0PAQH/BAUDAwfAADAdBgNVHQ4EFgQUu/bMsi0dBhIcl64papAQ0yBm
ZnMwHwYDVR0jBBgwFoAUeF8OWnjYa+RUcD2z3ez38fL6wEcwDQYJKoZIhvcNAQENBQADggEBABbW
eonR6TMTckehDKNOabwaCIcekahAIL6l9tTzUX5ew6ufiAPlC6I/zQlmUaU0iSyFDG1NW14kNbFt
5CAokyLhMtE4ASHBIHbiOp/ZSbUBTVYJZB61ot7w1/ol5QECSs08b8zrxIncf+t2DHGuVEy/Qq1d
rBz8d4ay8zpqAE1tUyL5Da6ZiKUfWwZQXSI/JlbjQFzYQqTRDnzHWrg1xPeMTO1P2/cplFaseTiv
yk4cYwOp/W9UAWymOZXF8WcJYCIUXkdcG/nEZxr057KlScrJmFXOoh7Y+8ON4iWYYcAfiNgpUFo/
j8BAwrKKaFvdlZS9k1Ypb2+UQY75mKJE9Bg=3D
-----END CERTIFICATE-----
EOF

./apps/openssl cms -encrypt -in <(echo "") -stream -recip key.pub
```

# Analysis

Looking at the source code tree for OpenSSL 3.0.7:

```
// excerpt from crypto/asn1/bio_ndef.c
BIO *BIO_new_NDEF(BIO *out, ASN1_VALUE *val, const ASN1_ITEM *it) {
[...]
    asn_bio =3D BIO_new(BIO_f_asn1());                             // (1)
    if (ndef_aux =3D=3D NULL || asn_bio =3D=3D NULL)
        goto err;

    /* ASN1 bio needs to be next to output BIO */
    out =3D BIO_push(asn_bio, out);                            // (2)
    if (out =3D=3D NULL)
        goto err;

    BIO_asn1_set_prefix(asn_bio, ndef_prefix, ndef_prefix_free);
    BIO_asn1_set_suffix(asn_bio, ndef_suffix, ndef_suffix_free);

    /*
     * Now let callback prepends any digest, cipher etc BIOs ASN1 structure
     * needs.
     */

    sarg.out =3D out;
    sarg.ndef_bio =3D NULL;
    sarg.boundary =3D NULL;

    if (aux->asn1_cb(ASN1_OP_STREAM_PRE, &val, it, &sarg) <=3D 0)
   // (3)
        goto err;
[...]
 err:
    BIO_free(asn_bio);                                    // (4)
    OPENSSL_free(ndef_aux);
    return NULL;
```

`BIO_new_NDEF` allocates a new BIO object (1) and pushes it into the BIO
that got passed in as paramterer (2). If the call at (3) fails, then
execution jumps to the error handling code at `err`, which frees the
allocated BIO. However the freed BIO is still referenced in the field
`prev_bio` of the `out` BIO passed as a parameter.
The problem shows when this function is called by `i2d_ASN1_bio_stream`,
which also receives a BIO object (5) and passes it to `BIO_new_NDEF` (6),
and upon failure of `BIO_new_NDEF` also propagates the error (7):

```
// excerpt from crypto/asn1/asn_mime.c
int i2d_ASN1_bio_stream(BIO *out, ASN1_VALUE *val, BIO *in, int flags,
       // (5)
                        const ASN1_ITEM *it)
{
    int rv =3D 1;

    /* If streaming create stream BIO and copy all content through it */
    if (flags & SMIME_STREAM) {
        BIO *bio, *tbio;
        bio =3D BIO_new_NDEF(out, val, it);                        // (6)
        if (!bio) {
            ERR_raise(ERR_LIB_ASN1, ERR_R_MALLOC_FAILURE);
            return 0;                                    // (7)
        }
[...]
```

Again, this is called by `B64_write_ASN1` (8). Which tries to pop the `out`
BIO it passed to `i2d_ASN1_bio_stream` (9), but the BIO still holds a
reference (via its `prev_bio` field) to the previously freed BIO (4):

```
// excerpt from crypto/asn1/asn_mime.c
static int B64_write_ASN1(BIO *out, ASN1_VALUE *val, BIO *in, int flags,
                          const ASN1_ITEM *it)
{
    BIO *b64;
    int r;
    b64 =3D BIO_new(BIO_f_base64());
    if (b64 =3D=3D NULL) {
        ERR_raise(ERR_LIB_ASN1, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    /*
     * prepend the b64 BIO so all data is base64 encoded.
     */
    out =3D BIO_push(b64, out);
    r =3D i2d_ASN1_bio_stream(out, val, in, flags, it);                    =
//
(8)
    (void)BIO_flush(out);
    BIO_pop(out);                                    // (9)
    BIO_free(b64);
    return r;
}
```

As stated in the previous section, this can only occur if an error takes
place during (3). We haven't been able to trigger any such error remotely
when executing the `openssl` command line utility in an intended way.
However, the vulnerability might be exploitable if an application using
OpenSSL's libraries invoked API functions related to CMS/SMIME/PKCS7
functionality (several of which result in calls being made to
`B64_write_ASN1`) without properly validating its arguments.

Given some difficulties we have had when building older OpenSSL versions,
we were not able to pinpoint exactly when this bug was introduced. But
through manual code review we arrived at the conclusion that it might have
been introduced when initial support for CMS functionality was added (
https://github.com/openssl/openssl/commit/8931b30d8478b0bd24af251fac64e7b0b=
f121369
).

# Discovery

The UAF was found via fuzzing. It was discovered using Autoharness, a
fuzzer prototype currently under development within the context of Octavio
Galland's internship in Dr. Marcel B=C3=B6hme's group at the Max Planck
Institute for Security and Privacy. The fix was developed by Viktor
Dukhovni and Matt Caswell.

--

Best regards,
Octavio Galland

--000000000000fa09bb05f5f5a37f--
