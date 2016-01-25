X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/01/25/2
Message-ID: <628131663.11879492.1453704093304.JavaMail.zimbra@redhat.com>
Date: Mon, 25 Jan 2016 01:41:33 -0500 (EST)
From: Wade Mealing <wmealing@...hat.com>
To: OSS Security List <oss-security@...ts.openwall.com>
Cc: cve-assign@...re.org
Subject: Linux kernel : Denial of service with specially crafted key file.
Content-Type: text/plain; charset=utf-8

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

