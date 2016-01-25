X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["656" "Monday" "25" "January" "2016" "01:41:33" "-0500" "Wade Mealing" "wmealing@redhat.com" "<628131663.11879492.1453704093304.JavaMail.zimbra@redhat.com>" "26" "[oss-security] Linux kernel : Denial of service with specially crafted key file." nil nil nil "1" "2016012506:41:33" "[oss-security] Linux kernel : Denial of service with specially crafted key file." (number mark "U       wmealing@red Jan 25   26/656   " thread-indent "\"[oss-security] Linux kernel : Denial of service with specially crafted key file.\"\n") "<2121236665.11851918.1453696062789.JavaMail.zimbra@redhat.com>" ("<2121236665.11851918.1453696062789.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32234 invoked by uid 550); 25 Jan 2016 06:41:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32216 invoked from network); 25 Jan 2016 06:41:47 -0000
Date: Mon, 25 Jan 2016 01:41:33 -0500 (EST)
From: Wade Mealing <wmealing@redhat.com>
To: OSS Security List <oss-security@lists.openwall.com>
Cc: cve-assign@mitre.org
Message-ID: <628131663.11879492.1453704093304.JavaMail.zimbra@redhat.com>
In-Reply-To: <2121236665.11851918.1453696062789.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.64.51.19]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - GC47 (Mac)/8.0.6_GA_5922)
Thread-Topic: Linux kernel : Denial of service with specially crafted key file.
Thread-Index: 7DfCPBBOXW8H/RMp2MptnJLIfKNRPA==
Subject: [oss-security] Linux kernel : Denial of service with specially crafted key file.

Gday,

I would like a CVE for the following issue:

An issue with ASN1.1 DER decoder was reported that a specially created key can lead to a kernel panic via x509 certificate DER signature parsing.

Vulnerable code:

...
int public_key_verify_signature(const struct public_key *pk,
                                const struct public_key_signature *sig)
{
        const struct public_key_algorithm *algo;

        BUG_ON(!pk);
        BUG_ON(!pk->mpi[0]);



An attacker could craft a BER file without a public key and panic the system.  

There is no patch upstream at the time of writing.

Reference:
https://bugzilla.redhat.com/show_bug.cgi?id=1300237

