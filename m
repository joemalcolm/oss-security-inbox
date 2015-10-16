X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8162" "Thursday" "15" "October" "2015" "17:54:16" "-0700" "Qualys Security Advisory" "qsa@qualys.com" "<20151016005416.GB12993@localhost.localdomain>" "225" "[oss-security] Qualys Security Advisory - LibreSSL (CVE-2015-5333 and CVE-2015-5334)" nil nil nil "10" "2015101600:54:16" "[oss-security] Qualys Security Advisory - LibreSSL (CVE-2015-5333 and CVE-2015-5334)" (number mark "        qsa@qualys.c Oct 15  225/8162  " thread-indent "\"[oss-security] Qualys Security Advisory - LibreSSL (CVE-2015-5333 and CVE-2015-5334)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3615 invoked by uid 550); 16 Oct 2015 01:56:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3548 invoked from network); 16 Oct 2015 01:56:20 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition;
        bh=IhVkFQAnhaNmcQaleYuOyuRUCLo2beuQzbxn49YxSrU=;
        b=LYKbGfU+tkfQZCcUnb4CbFOO5rdPgKQz/oYpaWKzigp4zZlwlNAY77U4tV2lXdFrp0
         AMuJqZ27NmwpshhNwTPlvhZyozPfCmGZygxt8E5gxqcpQY8c4XzBHP26zYxpAe3agbta
         vW9GjaOdYsE+bqYdpJXrfEXDMYp7/HhWYAr81DfTaQ+M6F7YjTWwNJbeNn0RP8Zpaqy5
         gXS954aAs3rj7oUxUTEizV86GWX6osnc/NCOeDahXhvH638dfGAY9Nd52q+h9qgQVBf0
         PYEMI/NOAwaKcflHq1afVzmejho/ErsWN6m0htqe6irFcAR3wjoGh9i4zWdRioZ57H4p
         OQ3A==
X-Gm-Message-State: ALoCoQmfQFYHwulo3qYSzWHS6khYVKGxUROKDwewb6cEPQZkz+PGat3MSfgqjqcZwJkYcgZK2lp9
X-Received: by 10.68.223.34 with SMTP id qr2mr13452504pbc.97.1444960568459;
        Thu, 15 Oct 2015 18:56:08 -0700 (PDT)
Message-ID: <20151016005416.GB12993@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Date: Thu, 15 Oct 2015 17:54:16 -0700
From: Qualys Security Advisory <qsa@qualys.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Qualys Security Advisory - LibreSSL (CVE-2015-5333 and CVE-2015-5334)
To: oss-security@lists.openwall.com


Qualys Security Advisory

LibreSSL (CVE-2015-5333 and CVE-2015-5334)


========================================================================
Contents
========================================================================

Summary
Memory Leak (CVE-2015-5333)
Buffer Overflow (CVE-2015-5334)
Acknowledgments


========================================================================
Summary
========================================================================

In order to achieve remote code execution against the vulnerabilities
that we recently discovered in OpenSMTPD (CVE-2015-7687), a memory leak
is needed. Because we could not find one in OpenSMTPD itself, we started
to review the malloc()s and free()s of its libraries, and eventually
found a memory leak in LibreSSL's OBJ_obj2txt() function; we then
realized that this function also contains a buffer overflow (an
off-by-one, usually stack-based).

The vulnerable function OBJ_obj2txt() is reachable through
X509_NAME_oneline() and d2i_X509(), which is called automatically to
decode the X.509 certificates exchanged during an SSL handshake (both
client-side, unless an anonymous mode is used, and server-side, if
client authentication is requested).

These vulnerabilities affect all LibreSSL versions, including LibreSSL
2.0.0 (the first public release) and LibreSSL 2.3.0 (the latest release
at the time of writing). OpenSSL is not affected.


========================================================================
Memory Leak (CVE-2015-5333)
========================================================================

OBJ_obj2txt() converts an ASN.1 object identifier (the ASN1_OBJECT a)
into a null-terminated string of numerical subidentifiers separated by
dots (at most buf_len bytes are written to buf).

Large subidentifiers are temporarily stored in a BIGNUM (bl) and
converted by BN_bn2dec() into a printable string of decimal characters
(bndec). Many such bndec strings can be malloc()ated and memory-leaked
in a loop, because only the last one will be free()d, after the end of
the loop:

489 int
490 OBJ_obj2txt(char *buf, int buf_len, const ASN1_OBJECT *a, int no_name)
491 {
...
494         char *bndec = NULL;
...
516         len = a->length;
...
519         while (len > 0) {
...
570                         bndec = BN_bn2dec(bl);
571                         if (!bndec)
572                                 goto err;
573                         i = snprintf(buf, buf_len, ".%s", bndec);
...
598         }
...
601         free(bndec);
...
609 }

This memory leak allows remote attackers to cause a denial of service
(memory exhaustion) or trigger the buffer overflow described below.


========================================================================
Buffer Overflow (CVE-2015-5334)
========================================================================

As a result of CVE-2014-3508, OBJ_obj2txt() was modified to "Ensure
that, at every state, |buf| is NUL-terminated." However, in LibreSSL,
the error-handling code at the end of the function may write this
null-terminator out-of-bounds:

489 int
490 OBJ_obj2txt(char *buf, int buf_len, const ASN1_OBJECT *a, int no_name)
491 {
...
516         len = a->length;
517         p = a->data;
518
519         while (len > 0) {
...
522                 for (;;) {
523                         unsigned char c = *p++;
524                         len--;
525                         if ((len == 0) && (c & 0x80))
526                                 goto err;
...
528                                 if (!BN_add_word(bl, c & 0x7f))
529                                         goto err;
...
535                                 if (!bl && !(bl = BN_new()))
536                                         goto err;
537                                 if (!BN_set_word(bl, l))
538                                         goto err;
...
542                                 if (!BN_lshift(bl, bl, 7))
543                                         goto err;
...
546                 }
...
553                                         if (!BN_sub_word(bl, 80))
554                                                 goto err;
...
561                         if (buf_len > 1) {
562                                 *buf++ = i + '0';
563                                 *buf = '\0';
564                                 buf_len--;
565                         }
...
569                 if (use_bn) {
570                         bndec = BN_bn2dec(bl);
571                         if (!bndec)
572                                 goto err;
573                         i = snprintf(buf, buf_len, ".%s", bndec);
574                         if (i == -1)
575                                 goto err;
576                         if (i >= buf_len) {
577                                 buf += buf_len;
578                                 buf_len = 0;
579                         } else {
580                                 buf += i;
581                                 buf_len -= i;
582                         }
...
584                 } else {
585                         i = snprintf(buf, buf_len, ".%lu", l);
586                         if (i == -1)
587                                 goto err;
588                         if (i >= buf_len) {
589                                 buf += buf_len;
590                                 buf_len = 0;
591                         } else {
592                                 buf += i;
593                                 buf_len -= i;
594                         }
...
597                 }
598         }
599
600 out:
...
603         return ret;
604
605 err:
606         ret = 0;
607         buf[0] = '\0';
608         goto out;
609 }

First, in order to trigger this off-by-one buffer overflow, buf must be
increased until it points to the first out-of-bounds character (i.e.,
until buf_len becomes zero):

- on the one hand, this is impossible with the code blocks at lines
  561-564, 579-581, and 591-593;

- on the other hand, this is very easy with the code blocks at lines
  576-578 and 588-590 (the destination buffer is usually quite small;
  for example, it is only 80 bytes long in X509_NAME_oneline()).

Second, the code must branch to the err label:

- the "goto err"s at lines 574-575 and 586-587 are unreachable, because
  snprintf() cannot possibly return -1 here;

- the "goto err" at lines 525-526 is:

  . very easy to reach in LibreSSL <= 2.0.4;

  . impossible to reach in LibreSSL >= 2.0.5, because of the "MSB must
    be clear in the last octet" sanity check that was added to
    c2i_ASN1_OBJECT():

286         /*
287          * Sanity check OID encoding:
288          * - need at least one content octet
289          * - MSB must be clear in the last octet
290          * - can't have leading 0x80 in subidentifiers, see: X.690 8.19.2
291          */
292         if (len <= 0 || len > INT_MAX || pp == NULL || (p = *pp) == NULL ||
293             p[len - 1] & 0x80) {
294                 ASN1err(ASN1_F_C2I_ASN1_OBJECT, ASN1_R_INVALID_OBJECT_ENCODING);
295                 return (NULL);
296         }

- the remaining "goto err"s are triggered by error conditions in various
  BIGNUM functions:

  . either because of a very large BIGNUM (approximately 64 megabytes,
    which is impossible in the context of an SSL handshake, where X.509
    certificates are limited to 100 kilobytes);

  . or because of an out-of-memory condition (which can be reached
    through the memory leak described above).

This off-by-one buffer overflow allows remote attackers to cause a
denial of service (crash) or possibly execute arbitrary code. However,
when triggered through X509_NAME_oneline() (and therefore d2i_X509()),
this buffer overflow is stack-based and probably not exploitable on
OpenBSD x86, where it appears to always smash the stack canary.


========================================================================
Acknowledgments
========================================================================

We would like to thank the LibreSSL team for their great work and their
incredibly quick response, and Red Hat Product Security for promptly
assigning CVE-IDs to these issues.

