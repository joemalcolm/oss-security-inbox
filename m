X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["707" "Tuesday" "30" "June" "2015" "09:04:22" "+1000" "David Jorm" "david.jorm@gmail.com" "<CAO33bZW-Gz9ZThev_XPZeUL4bRixFAYHa9sdeYsOZgqft00c9A@mail.gmail.com>" "22" "[oss-security] OpenDaylight security advisory: CVE-2015-3414 CVE-2015-3416 SQLite memory corruption, CVE-2015-4000 LOGJAM TLS MITM" nil nil nil "6" "2015062923:04:22" "[oss-security] OpenDaylight security advisory: CVE-2015-3414 CVE-2015-3416 SQLite memory corruption, CVE-2015-4000 LOGJAM TLS MITM" (number mark "        david.jorm@g Jun 30   22/707   " thread-indent "\"[oss-security] OpenDaylight security advisory: CVE-2015-3414 CVE-2015-3416 SQLite memory corruption, CVE-2015-4000 LOGJAM TLS MITM\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12266 invoked by uid 550); 29 Jun 2015 23:04:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12229 invoked from network); 29 Jun 2015 23:04:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=8G0CM40iNDjs/LXcnMJKd/Z8iRNvdHI6EEJEdU8OX1A=;
        b=Ak7bBRtPZfj+k5w2Tf0Zvl5LUESNMEfBWPkCOD2li09XyROrjIRpTiS9I5EW4bXuFd
         K9CyuONTB+v93x+/6pHTX2SVIXoxTni3A/0FMBLNgt/7cKSETqPmsOfY6slsHM7uaMOs
         yn5b/zw+UNsAvlJzDvdzPbjBOABjfvCFcrDjRtCUvDrPGbU4m4PGuf89U3TcY6Cf4w+H
         JRe1qRhRTLRK+f+D6zJzn1fNwNOsy5zTq5SBfkLBOvnvv5ZX4pzkQIdeZfEAX2DVm/qd
         3X6v82gMGoHBkvQN8/PiVWRKJzfQuZmZGjaia6RV1cnm2ujbcIxYvz4tuSyCuKpcgdjQ
         b5gQ==
MIME-Version: 1.0
X-Received: by 10.202.59.212 with SMTP id i203mr14682800oia.33.1435619062553;
 Mon, 29 Jun 2015 16:04:22 -0700 (PDT)
Message-ID: <CAO33bZW-Gz9ZThev_XPZeUL4bRixFAYHa9sdeYsOZgqft00c9A@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113ccd8e41a20a0519b01cf0
Date: Tue, 30 Jun 2015 09:04:22 +1000
From: David Jorm <david.jorm@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] OpenDaylight security advisory: CVE-2015-3414 CVE-2015-3416 SQLite
 memory corruption, CVE-2015-4000 LOGJAM TLS MITM
To: oss-security@lists.openwall.com, 
	opendaylight-announce@lists.opendaylight.org, 
	security-announce@lists.opendaylight.org

--001a113ccd8e41a20a0519b01cf0
Content-Type: text/plain; charset=UTF-8

Hi All

OpenDaylight Lithium GA has now been released, including patches for
several security vulnerabilities:

[Moderate] CVE-2015-3414 CVE-2015-3416 AAA: SQLite memory corruption
leading to DoS and possible code execution

[Moderate] CVE-2015-4000 OpenDaylight: TLS connections which support export
grade DHE key-exchange are vulnerable to MITM attacks (LOGJAM)

Full details, including links to patched builds, are available on the
OpenDaylight security advisories page:

https://wiki.opendaylight.org/view/Security_Advisories
Thanks
David Jorm on behalf of the OpenDaylight security response team

--001a113ccd8e41a20a0519b01cf0--
