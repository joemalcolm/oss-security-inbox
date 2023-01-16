Received: (qmail 13682 invoked by uid 550); 16 Jan 2023 15:20:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19762 invoked from network); 16 Jan 2023 13:45:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mHMdArb2LL7e6N+tO6rnmBmrC1IL2dSpeOEojnLEeAU=;
 b=PFjlGNhMaqo8wB0aLMTCln2A+wYcEgKLSnt4fmmvhl+YplvQBo7s8O8h9/1ORYrM/nE1XFJe0Lez8wPpJeGVx89JVCQiGb6rSZfLWYubQFFXP1b56I/1nX4V8Lx/pUVlL616W8i78n3e21tu66LB3Iz6YGeEMe23wpHP/MkhdZQ=
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
X-CheckRecipientChecked: true
X-CR-MTA-CID: 1304af703101a1ac
X-CR-MTA-TID: 64aa7808
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W8NiRDAOTiDZrPocmeJmJY9bSJuP3hZIGAk72y0wBrEOUj+Qz0er0zy4r+ILLENHqXNKESDLtyjusDFehjr5ZsAyMhLsmN9hT/y8jQgY4zqQRYrZvqfpS1PA2VWUDKwK411pJkPU95h8MkRz9bmKfBfXvMc2ILP5DZZjtkfZHrResZDino5hoCdllYLX6G+giFCyyUNVmVcBJSOFqheBNGsVsr2abQ0QxLXLc4MP2aMYFVj9HPRLyqddC0EeilRP6yKA+bZxNofOu3tkMq00Ge+rhT+AmsLH3P0lBjr3LjeRkLfAotr6yQrlRd8SLqKjv9YkjNvWRBRR8BCrQnnEpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mHMdArb2LL7e6N+tO6rnmBmrC1IL2dSpeOEojnLEeAU=;
 b=gsNl2Y6vQqymf8rrtpiil4xn8vpLGpauhBhClh1EPuGUubH/F38xq068Dio3rzQulDMyvii5E4tP0Xb/Y9lkQuebfNPa6uXqrr9pSS38KuUo5Y5zBLRp4AHjwOPO8lHNrEywRZy1cQiu9EWotlfF9BAIFDEN7qH9zbXYUhU4A8p/+thVw62j1RosXIiMUuPkwMf2ayuTWNjfVQdGnMkHRRHXIRsMa3exPff+jypgLf4hF7gvIYeNcRBQRjiiobE6jQU/rU7ia3nAP6Pf6Zo+thZ1Jplo8Cg8MzvdtQuc/B3kDgt7L8LlxIun7ppGSAnMSjVsCbTTZLmhdWCR9DbEyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mHMdArb2LL7e6N+tO6rnmBmrC1IL2dSpeOEojnLEeAU=;
 b=PFjlGNhMaqo8wB0aLMTCln2A+wYcEgKLSnt4fmmvhl+YplvQBo7s8O8h9/1ORYrM/nE1XFJe0Lez8wPpJeGVx89JVCQiGb6rSZfLWYubQFFXP1b56I/1nX4V8Lx/pUVlL616W8i78n3e21tu66LB3Iz6YGeEMe23wpHP/MkhdZQ=
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
Message-ID: <3f6e7238-7bb8-c4c8-f2e8-0f1b7ea407ba@arm.com>
Date: Mon, 16 Jan 2023 14:44:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
From: Sandrine Bailleux <sandrine.bailleux@arm.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Cc: Demi Marie Obenour <demiobenour@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: LO4P123CA0039.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:152::8) To HE1PR08MB2827.eurprd08.prod.outlook.com
 (2603:10a6:7:37::11)
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic:
	HE1PR08MB2827:EE_|DB9PR08MB6684:EE_|DBAEUR03FT006:EE_|DB9PR08MB8357:EE_
X-MS-Office365-Filtering-Correlation-Id: 4b10d963-ce69-444f-8662-08daf7c7d99b
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original:
 0Z6wm0Cl0VRsR5E833xlGiUa1DZOMBJ9qZ2Ct3pY7XTXoXw2UgqeyOGZ5Ubg8dXY+R3vw4a63ze2GfXAuCTZtR/om1Azn+dECEGXKwRTbGoG6/+rQV6z5ujoMsMhMOsZcJkNFbVQVloNBb2RriCtlrDJ9TGgyp2IjVHD8LZY5AMU1n0eeIdX5r3etOeEtTclpiumrafT6kR0oDJQ+tOjd1QDgJQXe9B7iKy+GRUo7ap966cJdMeBLkII7/CrR/I4fyqECwti1neC5TxtRCRRQQSv6Oxu0mAELH/aubS0OIqr5rh6LUnEWGNKJOMQ7DROwc97ycAqkGMdsqiDK2WNOcor+BvKKL/gXpzjEyL2kV+rUJ64NWd/W4qLp2k5F/D4j41Km6uCKgdmTz8z7gNVHqcSbBmUwxbpB3tAX1ci9QedFtmp73L2Q3ZkWr7lm3wc5OgCclPkEF48SjQ4C2BQr56eWtdrEZVD0TXP949tkC5O1CeaA5k5ww96r9nH3UEodF8PNeazgnAycugthW/rMn6z638vcqzHNXMA6G3xD8rV3KkjWE1ctsPJ1EVYTI03N3J8c8t7DcQqwVP69FbNB7+FyabO6lAGBjBAscEqr5FnAa55BhCM3s/gSzLzwfKYDERLasknXmdBkSLLjDU2qM2j0x/sxroP6Oq4HOGTw1cxF3YfCXo/gpnv8vUqGlS7utQ8lKfQdQKLAOBv26gUvtZBc05zXv3vuzLJZtxc1AGj0wuzImTx3Njcu66HWwnuFEV8ezuc3iNaf3B859X/QA9ATg6V2PmI4NSyqC8hing=
X-Forefront-Antispam-Report-Untrusted:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:HE1PR08MB2827.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(136003)(346002)(376002)(39860400002)(396003)(451199015)(6916009)(8676002)(316002)(66946007)(66476007)(66556008)(4326008)(2616005)(44832011)(2906002)(5660300002)(38100700002)(36756003)(41300700001)(83380400001)(478600001)(8936002)(186003)(6666004)(6486002)(6506007)(26005)(31686004)(6512007)(86362001)(966005)(31696002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6684
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped:
 DBAEUR03FT006.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs:
	45225bb8-13cc-4f61-dad3-08daf7c7d07e
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	Jz3idonbm/KrqJyr40cBb6FgvDZHqfsXNjp/rAfVbWH1mwe0Q3BhZ1zgYUsgMo7FcDv+XdCv5/NJ37efckDJEcOuXESBoRBn1K/e1q9FUngJ58LUJ3quGeF2AEdF4FHe9cDvh9UUIJ29QJTnaFQPEESeWb0Y+u8q2iUM1EAuAoIFhh4f2gpPqY39J/UoEw06366et+Wa2apXz5Dc7DA6++UTDBzF+z6lnQ7LQuI8l+e8eoRoxXwiVJHWbUif7UPbKvIqO+/IrBwGcdxScZxInf2yn51aNJ8sKPcbOclCRGPRCYpVGY7BWA6PT20jV5jALC8dclq0KQ+fQau8OFE84KAFQt30CuNwtAlVEjzXxdjACJrtfQIFlorHXpC8ODAZKIoxF5TxxB7lTLVIrYemEvcKVUNSUapU3FlWc6piQ2smlgz1lx4uD8bYcZ6TekBPEJi7uL4Q2uuYnvPRX+y8WnTcpEBYM1v7pz5moacO1ZJOQb4xPmUVnOGRuJ2sDaFxnqcuhoDlv/CkTqX6l4TicJ/rvJqtjz8njjHLmJQZwRC+aP/f8WvYrzCZTw4UL/2yTKctr019ifG+ddM1vijUz7x6++UKuTnZAxKFQxvs4LuQiyn+CVhaE8/+zY0NlTZkng03SnPB7gtnSxnGu50BtO6w79eQFFq4Y6U9TMYy+O3wgkuFnB4L5s5cUaCrV/a9/xaP9Ly1HgvnyF/fySBIFa8ys6YaWQzrcHkdiih3Lqg4b8Zscg/U9FN/qoFerh+w5ptB5xuIOz6D2O+H8RJI7sriyr4aSA7yWbgYcQMN3BiRH2Jty/YXg3JYbxD9TKpi
X-Forefront-Antispam-Report:
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230022)(4636009)(396003)(346002)(39850400004)(376002)(136003)(451199015)(36840700001)(40470700004)(46966006)(31686004)(6666004)(107886003)(6506007)(966005)(186003)(2906002)(6512007)(478600001)(36860700001)(6486002)(26005)(82310400005)(40480700001)(70586007)(44832011)(336012)(316002)(4326008)(8676002)(36756003)(41300700001)(83380400001)(6916009)(2616005)(47076005)(70206006)(81166007)(356005)(8936002)(5660300002)(40460700003)(31696002)(86362001)(82740400003)(43740500002);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2023 13:44:54.7591
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b10d963-ce69-444f-8662-08daf7c7d99b
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource:
	DBAEUR03FT006.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB8357
Subject: [oss-security] CVE-2022-47630 Trusted Firmware-A - Out-of-bounds read in X.509
 parser

## Overview

The Trusted Firmware Security Team was notified about a vulnerability in
the X.509 parser used to parse boot certificates in the trusted boot
implementation of Trusted Firmware-A [1] (or TF-A for short): it is
possible for a crafted certificate to cause an out-of-bounds memory read.

This vulnerability has been assigned CVE-2022-47630.

## Affected Versions

Versions of TF-A from v1.2 to v2.8 are vulnerable.

Note that TF-A upstream code is *not* vulnerable. Only downstream
implementations of BL1 and BL2 with Trusted Boot enabled with custom
usages of get_ext() and/or auth_nvctr() interfaces may be, if (and only
if) these interfaces are used in a different context than seen in
upstream code. Details of such context is described in the rest of this
document.

## Patches

- fd37982a19a4a291 "fix(auth): forbid junk after extensions"
- 72460f50e2437a85 "fix(auth): require at least one extension to be present"
- f5c51855d36e399e "fix(auth): properly validate X.509 extensions"
- abb8f936fd0ad085 "fix(auth): avoid out-of-bounds read in auth_nvctr()"

Note that 72460f50e2437a85 is not fixing any vulnerability per se but it
is required for f5c51855d36e399e to apply cleanly.

These patches have already been merged upstream.

## Description

#### Bug 1: Insufficient certificate validation

The vulnerability lies in the following source file:
drivers/auth/mbedtls/mbedtls_x509_parser.c. By design, get_ext() does
not check the return value of the various mbedtls_*() functions, as
cert_parse() is assumed to have guaranteed that they will always
succeed. However, it passes the end of an extension as the end pointer
to these functions, whereas cert_parse() passes the end of the
TBSCertificate. Furthermore, cert_parse() does not check that the
contents of the extension have the same length as the extension itself.
It also does not check that the extension block extends to the end of
the TBSCertificate.

This is a problem, as mbedtls_asn1_get_tag() leaves *p and *len
undefined on failure.  In practice, this results in get_ext() continuing
to parse at different offsets than were used (and validated) by
cert_parse(), which means that the in-bounds guarantee provided by
cert_parse() no longer holds.  The result is that it is possible for
get_ext() to read memory past the end of the certificate.  This could
potentially access memory with dangerous read side effects, or leak
microarchitectural state that could theoretically be retrieved through
some side-channel attacks as part of a more complex attack.

#### Bug 2: Missing bounds check in auth_nvctr()

auth_nvctr() does not check that the buffer provided is long enough to
hold an ASN.1 INTEGER.  Since auth_nvctr() will only ever read 6 bytes,
it is possible to read up to 6 bytes past the end of the buffer.

## Exploitability Analysis

#### Upstream TF-A Code

In upstream TF-A code, the only caller of auth_nvctr() takes its input
from get_ext(), which means that the second bug is exploitable, so is
the first. Therefore, only the first bug need be considered.

All standard chains of trust provided in TF-A source tree (that is,
under drivers/auth/) require that the certificate's signature has
already been validated prior to calling get_ext(), or any function that
calls get_ext(). Platforms taking their chain of trust from a dynamic
configuration file (such as fdts/cot_descriptors.dtsi) are also safe, as
signature verification will always be done prior to any calls to
get_ext() or auth_nvctr() in this case, no matter the order of the
properties in the file.  Therefore, it is not possible to exploit this
vulnerability pre-authentication in upstream TF-A.

Furthermore, the data read through get_ext() only ever gets used by the
authentication framework (drivers/auth/auth_mod.c), which greatly
reduces the range of inputs it will ever receive and thus the impact
this has. Specifically, the authentication framework uses get_ext() in
three cases:

   1. Retrieving a hash from an X.509 certificate to check the integrity
of a child certificate (see auth_hash()).

   2. Retrieving the signature details from an X.509 certificate to
check its authenticity and integrity (see auth_signature()).

   3. Retrieving the security counter value from an X.509 certificate to
protect it from unauthorized rollback to a previous version (see
auth_nvctr()).

None of these uses authentication framework write to the out-of-bounds
memory, so no memory corruption is possible.

In summary, there are 2 separate issues - one in get_ext() and another
one in auth_nvctr() - but neither of these can be exploited in the
context of TF-A upstream code.

Only in the following 2 cases do we expect this vulnerability to be
triggerable prior to authentication:

   - The platform uses a custom chain of trust which uses the
non-volatile counter authentication method (AUTH_METHOD_NV_CTR) before
the cryptographic authentication method (AUTH_METHOD_SIG).

   - The chain of trust uses a custom authentication method that calls
get_ext() before cryptographic authentication.

#### Custom Image Parsers

If the platform uses a custom image parser instead of the certificate
parser, the bug in the certificate parser is obviously not relevant. The
bug in auth_nvctr() *may* be relevant, but only if the returned data is:

   - Taken from an untrusted source (meaning that it is read prior to
authentication).

   - Not already checked to be a primitively-encoded ASN.1 tag.

In particular, if the custom image parser implementation wraps a 32-bit
integer in an ASN.1 INTEGER, it is not affected.

## Acknowledgments

Thanks to Demi Marie Obenour from Invisible Things Lab for disclosing
this security vulnerability to Trusted Firmware according to our
security policy [2], for providing patches to fix the identified bugs
and further harden the X.509 parser, for providing a detailed impact
analysis and for helping put this security advisory together.

[1] https://www.trustedfirmware.org/projects/tf-a/
[2] https://developer.trustedfirmware.org/w/collaboration/security_center/

IMPORTANT NOTICE: The contents of this email and any attachments are confid=
ential and may also be privileged. If you are not the intended recipient, p=
lease notify the sender immediately and do not disclose the contents to any=
 other person, use it for any purpose, or store or copy the information in =
any medium. Thank you.
