X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5044" "Thursday" "27" "October" "2016" "12:26:20" "+0100" "Cory Benfield" "cory@lukasa.co.uk" "<7FA392D7-7065-4BE4-80BD-E3118A003F79@lukasa.co.uk>" "87" "[oss-security] CVE-2016-9015: Python urllib3 1.17 and 1.18 certificate verification failure" nil nil nil "10" "2016102711:26:20" "[oss-security] CVE-2016-9015: Python urllib3 1.17 and 1.18 certificate verification failure" (number mark "U       cory@lukasa. Oct 27   87/5044  " thread-indent "\"[oss-security] CVE-2016-9015: Python urllib3 1.17 and 1.18 certificate verification failure\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32655 invoked by uid 550); 27 Oct 2016 11:26:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32628 invoked from network); 27 Oct 2016 11:26:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lukasa-co-uk.20150623.gappssmtp.com; s=20150623;
        h=from:content-transfer-encoding:mime-version:subject:message-id:date
         :to;
        bh=zU7DiLVu2tJMClBUbWEMI0iThPLslr5RxudENcFGyFw=;
        b=u+L1j/1FtX9ugFw7w1G0pS0/4/zXkwyqcOJzlggI59BiHCkjZfVBacpJT9Hei9WH67
         /W0oR5IIsd3hHHIdKDLlxd4cFofPTatjYkIQfneC0CPxpCUJf4Ccj4rHD/Io4R5s43LK
         UylGeeSWGVcHhX8aoyAau1uaqFYEkoUZ3rOFl+SOD3WKM3JAWpk+ZS+U7/yKslT5w4A2
         W/GrKGlzCaJCn0xGU67+rXFCo+M4z4iS8jccuyd51zF8lSaM4m4T7GZ3lGL+gLJHwLo1
         /h76dV5Ngr4cLOQc3k5gNt8nbGm/WaPIm65qFxi1M2xeTw1iuQDn8YXTrKh2A6UMJcL5
         RrfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:message-id:date:to;
        bh=zU7DiLVu2tJMClBUbWEMI0iThPLslr5RxudENcFGyFw=;
        b=I00/z+crlIwLaxR4gJOLazXycYeoN13U5edVU+9hedr4OwVfRd6ecKHsbyYG/VHTu0
         vwAt3WWO5zabwEszgVbtggsR7buX9gGdhsSuhv57CQb6hijFtN/fMUf17/UkMq1zrXfJ
         kAdghN3lgdyXurE3vphDtyMUg9SdesqHM4JOV9jxSshHEU2xHgHpLOuA4QHT2AjlihAp
         c9+pWKPdIiLK8d9dQ2YB+uUPbCJiYVpS7uzpCuM3da+Jt16+RRd6dTpO0Vw0QTOEIAnk
         1gJDBo1GCcMOf6lYrY0l2hWMy7Fj0oGOpO/tPiTKAsX8dk+dRr0RzL/WWVjIe9f+O3DB
         a5Ng==
X-Gm-Message-State: ABUngvcapqTxET4xhC45SJl3NfaxzfoWe5ZHhWkmBOcQ1BKS3JCO4wxYmEgxxhBcp3PZZQ==
X-Received: by 10.194.142.116 with SMTP id rv20mr6395676wjb.184.1477567581612;
        Thu, 27 Oct 2016 04:26:21 -0700 (PDT)
From: Cory Benfield <cory@lukasa.co.uk>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 10.1 \(3251\))
Message-Id: <7FA392D7-7065-4BE4-80BD-E3118A003F79@lukasa.co.uk>
Date: Thu, 27 Oct 2016 12:26:20 +0100
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3251)
Subject: [oss-security] CVE-2016-9015: Python urllib3 1.17 and 1.18 certificate verification
 failure

Versions 1.17 and 1.18 of the Python urllib3 library suffer from a vulnerab=
ility that can cause them, in certain configurations, to not correctly vali=
date TLS certificates. This places users of the library with those configur=
ations at risk of man-in-the-middle and information leakage attacks. This v=
ulnerability affects users using versions 1.17 and 1.18 of the urllib3 libr=
ary, who are using the optional PyOpenSSL support for TLS instead of the re=
gular standard library TLS backend, and who are using OpenSSL 1.1.0 via PyO=
penSSL. This is an extremely uncommon configuration, so the security impact=
 of this vulnerability is low.

Affected users should upgrade to urllib3 1.18.1, which has been published t=
oday and contains only the mitigation for this vulnerability on top of the =
changes in 1.18. If unable to upgrade, users should downgrade their OpenSSL=
 version or temporarily stop injecting PyOpenSSL into urllib3 until they ar=
e able to upgrade. A more lengthy description of the vulnerability follows.

=E2=80=94

This vulnerability was introduced in a substantial refactor of the PyOpenSS=
L contrib module. During this refactor, a branch of code that mapped the Py=
thon standard library certificate verification constants (ssl.CERT_NONE, ss=
l.CERT_OPTIONAL, ssl.CERT_REQUIRED) to OpenSSL verification mode flags (SSL=
_VERIFY_NONE, SSL_VERIFY_PEER, etc.) was accidentally lost. This meant that=
 Python standard library constants would be passed directly to OpenSSL via =
the SSL_CTX_set_verify function=E2=80=99s mode argument.

Unfortunately, these Python standard library constants are Python wrappers =
around the values of a C enumerated type, declared like this:

    enum py_ssl_cert_requirements {
        PY_SSL_CERT_NONE,
        PY_SSL_CERT_OPTIONAL,
        PY_SSL_CERT_REQUIRED
    };

Per the standard C enumerated type rules, these constants have the values 0=
, 1, and 2 respectively. These integers do not all map to their OpenSSL ver=
ification mode flag equivalents. While PY_SSL_CERT_NONE and SSL_VERIFY_NONE=
 have the same value (0) and PY_SSL_CERT_OPTIONAL and SSL_VERIFY_PEER have =
the same value (1), PY_SSL_CERT_REQUIRED has the value 2, which maps to SSL=
_VERIFY_FAIL_IF_NO_PEER_CERT. This flag is defined by the OpenSSL manual pa=
ge as being meaningless on its own, requiring SSL_VERIFY_PEER to also be se=
t in order to have any effect. Additionally, the manual page declares that =
SSL_VERIFY_FAIL_IF_NO_PEER_CERT has no effect in client mode.

In OpenSSL versions prior to 1.1.0, an implementation detail in the OpenSSL=
 codebase would mean that if any nonzero value was passed to the mode argum=
ent of SSL_CTX_set_verify this would implicitly have the same effect as set=
ting SSL_VERIFY_PEER. Essentially, the only value of mode in OpenSSL versio=
ns prior to 1.1.0 that would cause certificate validation to be disabled wa=
s 0 (SSL_VERIFY_NONE).

In the work done for OpenSSL 1.1.0, this implementation detail was changed =
to check for the SSL_VERIFY_PEER bit directly. As the OpenSSL flags are a b=
it mask, passing PY_SSL_CERT_REQUIRED (2) would *not* have the SSL_VERIFY_P=
EER bit (1) set, which means that OpenSSL would act act as though SSL_VERIF=
Y_PEER was not set. Thus, if PY_SSL_CERT_REQUIRED is passed to OpenSSL dire=
ctly in client mode, OpenSSL 1.0.2 and earlier treat it as equivalent to SS=
L_VERIFY_PEER, whereas OpenSSL 1.1.0 and later treat it as equivalent to SS=
L_VERIFY_NONE.

This is unquestionably an application error. The OpenSSL documentation is c=
lear that the SSL_VERIFY_FAIL_IF_NO_PEER_CERT flag is both meaningless by i=
tself and in client mode. However, OpenSSL=E2=80=99s unexpected change in b=
ehaviour, combined with the fact that it has no way to report an invalid fl=
ag combination to SSL_CTX_set_verify, means that this application error lea=
ds to a catastrophic silent security failure when used with OpenSSL 1.1.0.

The fix for urllib3 is to reintroduce a mapping between the Python standard=
 library enumerated type and the OpenSSL flags. Other applications should a=
udit and confirm that they always successfully pass SSL_VERIFY_PEER to SSL_=
CTX_set_verify. The OpenSSL team have been notified of this behaviour and h=
ave concluded that it is not a security vulnerability in OpenSSL. However, =
they are considering reverting this change regardless, on the principle tha=
t it is better to fail closed than to fail open: https://github.com/openssl=
/openssl/pull/1793

Fortunately, urllib3=E2=80=99s test suite caught this failure, which led to=
 this investigation. Unfortunately, due to the relative scarcity of OpenSSL=
 1.1.0, two released versions of urllib3 had passed before anyone attempted=
 to run urllib3 with OpenSSL 1.1.0.

The urllib3 team have contacted downstream redistributors for Red Hat and D=
ebian: both distributions are not using versions of urllib3 later than 1.16=
, and so are unaffected. Additionally, the Python Requests library is using=
 urllib3 version 1.16 and is also not affected.

