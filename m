Received: (qmail 3484 invoked by uid 550); 3 Mar 2026 18:03:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3423 invoked from network); 3 Mar 2026 18:03:08 -0000
Date: Tue, 3 Mar 2026 13:02:58 -0500
From: Jan Schaumann <jschauma@netmeister.org>
To: oss-security@lists.openwall.com
Message-ID: <aaciUg8U0AQw90Iv@netmeister.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] Issue with AWS-LC: an open-source, general-purpose cryptographic
 library (CVE-2026-3336, CVE-2026-3337, CVE-2026-3338)

Via AWS Security Bulletin

https://github.com/aws/aws-lc

----- Forwarded message from "Latest Bulletins: Amazon Web Services" <aws@amazon.com> -----

> Date: Tue, 03 Mar 2026 09:30:01 -0000
> From: "Latest Bulletins: Amazon Web Services" <aws@amazon.com>
> To: jschauma@netmeister.org
> Subject: Issue with AWS-LC: an open-source, general-purpose cryptographic
> 	library (CVE-2026-3336, CVE-2026-3337, CVE-2026-3338)
> 
> **Bulletin ID:** 2026-005-AWS  
> **Scope:** AWS  
> **Content Type:** Important (requires attention)  
> **Publication Date:** 2026/03/02 14:30 PM PST
> 
> **Description:**
> 
> AWS-LC is an open-source, general-purpose cryptographic library. We identified
> three distinct issues:
> 
> \- CVE-2026-3336: PKCS7_verify Certificate Chain Validation Bypass in AWS-LC  
> Improper certificate validation in PKCS7_verify() in AWS-LC allows an
> unauthenticated user to bypass certificate chain verification when processing
> PKCS7 objects with multiple signers, except the final signer.  
> \- CVE-2026-3337: Timing Side-Channel in AES-CCM Tag Verification in AWS-LC  
> Observable timing discrepancy in AES-CCM decryption in AWS-LC allows an
> unauthenticated user to potentially determine authentication tag validity via
> timing analysis.  
> \- CVE-2026-3338: PKCS7_verify Signature Validation bypass in AWS-LC  
> Improper signature validation in PKCS7_verify() in AWS-LC allows an
> unauthenticated user to bypass signature verification when processing PKCS7
> objects with Authenticated Attributes.
> 
> **Impacted versions:**
> 
> \- PKCS7_verify Certificate Chain Validation Bypass in AWS-LC >= v1.41.0, <
> v1.69.0  
> \- PKCS7_verify Certificate Chain Validation Bypass in aws-lc-sys >= v0.24.0,
> < v0.38.0  
> \- Timing Side-Channel in AES-CCM Tag Verification in AWS-LC >= v1.21.0, <
> v1.69.0  
> \- Timing Side-Channel in AES-CCM Tag Verification in AWS-LC >= AWS-LC-
> FIPS-3.0.0, < AWS-LC-FIPS-3.2.0  
> \- Timing Side-Channel in AES-CCM Tag Verification in aws-lc-sys >= v0.14.0, <
> v0.38.0  
> \- Timing Side-Channel in AES-CCM Tag Verification in aws-lc-sys-fips >=
> v0.13.0, < v0.13.12  
> \- PKCS7_verify Signature Validation bypass in AWS-LC >= v1.41.0, < v1.69.0  
> \- PKCS7_verify Signature Validation bypass in aws-lc-sys >= v0.24.0, <
> v0.38.0
> 
> **Please refer to the article below for the most up-to-date and complete
> information related to this AWS Security Bulletin.**
> 
> 
> 
> URL: https://aws.amazon.com/security/security-bulletins/rss/2026-005-aws/

----- End forwarded message -----
