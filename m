X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2188" "Friday" "15" "July" "2016" "10:14:52" "+0200" "Justin Ross" "jross@apache.org" "<CANVjZ_R-e0M_JQ66CNpBN2YbcKj46gHyZYBCNoEj9WPA3JyNuw@mail.gmail.com>" "61" "[oss-security] [SECURITY] CVE-2016-4467: Apache Qpid Proton: Failure to verify that the server host name matches the certificate host name on Windows" nil nil nil "7" "2016071508:14:52" "[oss-security] [SECURITY] CVE-2016-4467: Apache Qpid Proton: Failure to verify that the server host name matches the certificate host name on Windows" (number mark "U       jross@apache Jul 15   61/2188  " thread-indent "\"[oss-security] [SECURITY] CVE-2016-4467: Apache Qpid Proton: Failure to verify that the server host name matches the certificate host name on Windows\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7618 invoked by uid 550); 15 Jul 2016 08:16:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7240 invoked from network); 15 Jul 2016 08:15:11 -0000
X-Gm-Message-State: ALyK8tJlWfq6Dq5t72jih2ZjA284WISDx3pm8+e71yezL0jhBDwPZ9qEq/5Qg7fuuZ7scAch255RDrAjfb02Xg==
X-Received: by 10.28.197.66 with SMTP id v63mr4895496wmf.8.1468570492420; Fri,
 15 Jul 2016 01:14:52 -0700 (PDT)
MIME-Version: 1.0
From: Justin Ross <jross@apache.org>
Date: Fri, 15 Jul 2016 10:14:52 +0200
X-Gmail-Original-Message-ID: <CANVjZ_R-e0M_JQ66CNpBN2YbcKj46gHyZYBCNoEj9WPA3JyNuw@mail.gmail.com>
Message-ID: <CANVjZ_R-e0M_JQ66CNpBN2YbcKj46gHyZYBCNoEj9WPA3JyNuw@mail.gmail.com>
To: "users@qpid.apache.org" <users@qpid.apache.org>, "dev@qpid.apache.org" <dev@qpid.apache.org>, announce@apache.org, 
	security@apache.org
Cc: oss-security@lists.openwall.com, bugtraq@securityfocus.com
Content-Type: multipart/alternative; boundary=94eb2c0d789c8750190537a83688
Subject: [oss-security] [SECURITY] CVE-2016-4467: Apache Qpid Proton: Failure to verify that
 the server host name matches the certificate host name on Windows

--94eb2c0d789c8750190537a83688
Content-Type: text/plain; charset=UTF-8

CVE-ID: CVE-2016-4467

Severity: Medium

Affected versions: 0.8 through 0.13.0 (inclusive)

Fixed in Versions: 0.13.1 and later

Short Description:

The Proton C client and C-based client bindings may fail to verify that the
server host name matches the domain name in the subject's Common Name (CN)
or subjectAltName field in X.509 certificates when running on Windows
operating systems.

Description:

Messaging applications using the Proton C library to provide SSL/TLS
authentication on Windows can falsely authenticate a server whose name does
not match the server name in the connection specifier.  Proton C bindings
are affected to a greater or lesser degree depending on how they use the
underlying Proton C library.

In Proton C, this can only happen if PN_SSL_VERIFY_PEER_NAME has been
specified as the verification mode and pn_ssl_set_peer_hostname() has not
been called at all or has been called with a NULL value for a particular
pn_ssl_t object.

In the Proton C++ binding, this will always happen unless the application
has separately specified a virtual_host name for an SSL/TLS connection.

In the Proton Python and Ruby bindings, this will only happen if the
application has separately specified a NULL virtual_host name for an
SSL/TLS connection after creating the connection but before the
authentication step.

This issue only occurs on Windows versions of Proton that use the default
SChannel-based security layer.

In any of the preceding cases, it is possible for a man-in-the-middle
attacker to spoof an SSL/TLS server if they had a certificate that was
valid for any of the application's Certificate Authorities.

Resolution:

Proton release 0.13.1 resolves this issue in the SChannel-based security
layer by obtaining a default non-NULL peer hostname from the associated
connection address when initialized and by always failing hostname
verification if PN_SSL_VERIFY_PEER_NAME has been specified along with a
NULL peer hostname.  This resolution matches the associated behaviour of
the OpenSSL-based security layer.

References:

PROTON-1228
PROTON-1233

--94eb2c0d789c8750190537a83688--
