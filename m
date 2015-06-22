X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1881" "Monday" "22" "June" "2015" "10:03:19" "+0200" "Andrea Barisani" "lcars@ocert.org" "<20150622080319.GO5539@core.inversepath.com>" "58" "[oss-security] [oCERT-2015-008] FreeRADIUS insufficent CRL application" nil nil nil "6" "2015062208:03:19" "[oss-security] [oCERT-2015-008] FreeRADIUS insufficent CRL application" (number mark "U       lcars@ocert. Jun 22   58/1881  " thread-indent "\"[oss-security] [oCERT-2015-008] FreeRADIUS insufficent CRL application\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13655 invoked by uid 550); 22 Jun 2015 08:03:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13607 invoked from network); 22 Jun 2015 08:03:31 -0000
Date: Mon, 22 Jun 2015 10:03:19 +0200
From: Andrea Barisani <lcars@ocert.org>
To: oss-security@lists.openwall.com, ocert-announce@lists.ocert.org,
        bugtraq@securityfocus.com
Message-ID: <20150622080319.GO5539@core.inversepath.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-GPG-Key: 0x864C9B9E
X-GPG-Fingerprint: 0A76 074A 02CD E989 CE7F  AC3F DA47 578E 864C 9B9E
User-Agent: Mutt/1.5.20 (2009-06-14)
Subject: [oss-security] [oCERT-2015-008] FreeRADIUS insufficent CRL application


#2015-008 FreeRADIUS insufficent CRL application

Description:

The FreeRADIUS server is an open source project that provides a RADIUS
implementation.

The FreeRADIUS server relies on OpenSSL to perform certificate validation,
including Certificate Revocation List (CRL) checks. The FreeRADIUS usage of
OpenSSL, in CRL application, limits the checks to leaf certificates,
therefore not detecting revocation of intermediate CA certificates.

An unexpired client certificate, issued by an intermediate CA with a revoked
certificate, is therefore accepted by FreeRADIUS.

Specifically sets the X509_V_FLAG_CRL_CHECK flag for leaf certificate CRL
checks, but does not use X509_V_FLAG_CRL_CHECK_ALL for CRL checks on the
complete trust chain.

The FreeRADIUS project advises that the recommended configuration is to use
self-signed CAs for all EAP-TLS methods.

Affected version:

   FreeRADIUS <= 2.2.7, <= 3.0.8

Fixed version:

   FreeRADIUS >= 2.2.8, >= 3.0.9

Credit: vulnerability anonymously reported.

CVE: CVE-2015-4680

Timeline:

2015-06-17: vulnerability report received
2015-06-18: contacted FreeRADIUS security maintainer
2015-06-18: patch provided by maintainer
2015-06-19: assigned CVE
2015-06-22: advisory release

References:
https://github.com/FreeRADIUS/freeradius-server/blob/b28326004379260ca2fe7b8884f813d90a741197/src/main/tls.c#L2111
https://github.com/FreeRADIUS/freeradius-server/blob/b28326004379260ca2fe7b8884f813d90a741197/src/main/tls.c#L2595
http://freeradius.org/security.html

Permalink:
http://www.ocert.org/advisories/ocert-2015-008.html

-- 
Andrea Barisani |                Founder & Project Coordinator
          oCERT | OSS Computer Security Incident Response Team

<lcars@ocert.org>                         http://www.ocert.org
 0x864C9B9E 0A76 074A 02CD E989 CE7F AC3F DA47 578E 864C 9B9E
        "Pluralitas non est ponenda sine necessitate"
