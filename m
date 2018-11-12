X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1861" "Monday" "12" "November" "2018" "10:57:28" "+0000" "Robbie Gemmell" "robbie@apache.org" "<CAFitrpQSV73Vz7rJYfLJK7gvEymZSCR5ooWUeU8j4jzRydk-eg@mail.gmail.com>" "44" "[oss-security] [SECURITY] [CVE-2018-17187] Apache Qpid Proton-J transport TLS wrapper hostname verification mode not implemented" nil nil nil "11" "2018111210:57:28" "[oss-security] [SECURITY] [CVE-2018-17187] Apache Qpid Proton-J transport TLS wrapper hostname verification mode not implemented" (number mark "U       robbie@apach Nov 12   44/1861  " thread-indent "\"[oss-security] [SECURITY] [CVE-2018-17187] Apache Qpid Proton-J transport TLS wrapper hostname verification mode not implemented\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16013 invoked by uid 550); 12 Nov 2018 11:01:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12059 invoked from network); 12 Nov 2018 10:57:53 -0000
X-Gm-Message-State: AGRZ1gJtRlEVEslZS0LxnXXE26LL9uskCbgexmGq3JE/55bTMzSBZSta
	zE3F0AZ6PkzA922ORPEjKBuPfySjOWfouHH/0NQ=
X-Google-Smtp-Source: AJdET5c4j7DVG9XrxZZt+PjzqZejUb+tDeli35f7RpIztwc3tMyXz4fwAuYXgTFDDbswDPCnm91dDo3LFgTi6jOBOg0=
X-Received: by 2002:a0c:ade7:: with SMTP id x36mr385094qvc.66.1542020258936;
 Mon, 12 Nov 2018 02:57:38 -0800 (PST)
MIME-Version: 1.0
From: Robbie Gemmell <robbie@apache.org>
Date: Mon, 12 Nov 2018 10:57:28 +0000
X-Gmail-Original-Message-ID: <CAFitrpQSV73Vz7rJYfLJK7gvEymZSCR5ooWUeU8j4jzRydk-eg@mail.gmail.com>
Message-ID: <CAFitrpQSV73Vz7rJYfLJK7gvEymZSCR5ooWUeU8j4jzRydk-eg@mail.gmail.com>
To: announce@apache.org, users@qpid.apache.org, dev@qpid.apache.org, 
	Apache Security Team <security@apache.org>, oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [SECURITY] [CVE-2018-17187] Apache Qpid Proton-J transport TLS
 wrapper hostname verification mode not implemented

CVE-2018-17187: Apache Qpid Proton-J transport TLS wrapper hostname
verification mode not implemented

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected: Versions 0.3 to 0.29.0

Description:
The Proton-J transport includes an optional wrapper layer to perform TLS,
enabled by use of the 'transport.ssl(...)' methods. Unless a verification
mode was explicitly configured, client and server modes previously defaulted
as documented to not verifying a peer certificate, with options to
configure this explicitly or select a certificate verification mode with or
without hostname verification being performed.

The latter hostname verifying mode was not previously implemented, with
attempts to use it resulting in an exception. This left only the option to
verify the certificate is trusted, leaving such a client vulnerable to
Man In The Middle (MITM) attack.

Uses of the Proton-J protocol engine which do not utilise the optional
transport TLS wrapper are not impacted, e.g. usage within Qpid JMS.

Resolution:
Uses of Proton-J utilising the optional transport TLS wrapper layer that
wish to enable hostname verification must be upgraded to version 0.30.0 or
later and utilise the VerifyMode#VERIFY_PEER_NAME configuration, which is
now the default for client mode usage unless configured otherwise.

Mitigation:
If upgrading is not currently possible then potential workarounds include
providing a custom SSLContext which enables hostname verification, or
omitting use of the 'transport.ssl(...)' methods and performing TLS through
other means such as utilising existing IO framework support or supplying a
custom transport wrapper layer.

Credit:
This issue was reported by Peter Stockli of Alphabot Security.

References:
[1] https://issues.apache.org/jira/browse/PROTON-1962
[2] https://qpid.apache.org/cves/CVE-2018-17187.html
