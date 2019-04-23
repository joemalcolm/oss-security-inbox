X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1350" "Tuesday" "23" "April" "2019" "11:40:05" "+0100" "Robbie Gemmell" "robbie@apache.org" "<CAFitrpTXqUibz--1qi+2O1PYKngnRVN-tw7ucSqNSAS8_J9k2g@mail.gmail.com>" "35" "[oss-security] [SECURITY] CVE-2019-0223: Apache Qpid Proton TLS Man in the Middle Vulnerability" nil nil nil "4" "2019042310:40:05" "[oss-security] [SECURITY] CVE-2019-0223: Apache Qpid Proton TLS Man in the Middle Vulnerability" (number mark "U       robbie@apach Apr 23   35/1350  " thread-indent "\"[oss-security] [SECURITY] CVE-2019-0223: Apache Qpid Proton TLS Man in the Middle Vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [SECURITY] CVE-2019-0223: Apache Qpid Proton TLS Man in the Middle Vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1201 invoked by uid 550); 23 Apr 2019 11:14:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9425 invoked from network); 23 Apr 2019 10:40:28 -0000
X-Gm-Message-State: APjAAAV/uXzdAqc765wnwdiGW2pKRg5/YX6/TGhqLcZ8kNGUFhP8ZWu8
	VMuOIMgoBEmFHnUjIbxgK6mArENvYLh27VNf7DY=
X-Google-Smtp-Source: APXvYqwL3QcCdsEaqIH97FalzBoEBDVHm9f3MS8H9KV7np4ZUIK5MAGjerpmZ/pAnOoE2lONyNt1JAdaIW7uHBk/hlM=
X-Received: by 2002:ae9:de07:: with SMTP id s7mr19068722qkf.58.1556016015697;
 Tue, 23 Apr 2019 03:40:15 -0700 (PDT)
MIME-Version: 1.0
From: Robbie Gemmell <robbie@apache.org>
Date: Tue, 23 Apr 2019 11:40:05 +0100
X-Gmail-Original-Message-ID: <CAFitrpTXqUibz--1qi+2O1PYKngnRVN-tw7ucSqNSAS8_J9k2g@mail.gmail.com>
Message-ID: <CAFitrpTXqUibz--1qi+2O1PYKngnRVN-tw7ucSqNSAS8_J9k2g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [SECURITY] CVE-2019-0223: Apache Qpid Proton TLS Man in the Middle Vulnerability

CVE-2019-0223: Apache Qpid Proton TLS Man in the Middle Vulnerability

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected: Qpid Proton 0.9 - 0.27.0.

Description:
The TLS support in Apache Qpid Proton 0.9 - 0.27.0 can under some
circumstances connect as a client to a TLS server that offers anonymous
ciphers irrespective of whether the client was configured to verify the
server's certificate or certificate against the hostname used to connect.

This means that an undetected man in the middle attack could be
constructed if an attacker can arrange to intercept TLS traffic.

Versions 0.9 - 0.27.0 are affected when using OpenSSL prior to 1.1.0. This
includes the Qpid Proton C library, and all language binding libraries using
it. Installations using the native Windows Schannel TLS implementation or
using OpenSSL 1.1.0 or later are not affected.

Note that this attack will not work if client certificate authentication is
in use as anonymous ciphers cannot be used in this case.

Resolution:
Anyone using an affected version with OpenSSL prior to 1.1.0 should upgrade
their installation to 0.27.1 or higher for fix to this vulnerability.

Credit:
This issue was identified by the Qpid developers.

References:
[1] https://issues.apache.org/jira/browse/PROTON-2014
[2] https://qpid.apache.org/cves/CVE-2019-0223.html
