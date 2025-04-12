Received: (qmail 5872 invoked by uid 550); 12 Apr 2025 14:27:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26509 invoked from network); 12 Apr 2025 05:58:06 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Hailin Wang <wanghailin@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <d4fabfcd-4996-20b3-0d7a-37cefce89433@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sat, 12 Apr 2025 05:56:55 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-32896: Apache SeaTunnel: Unauthenticated insecure access 

Severity: moderate

Affected versions:

- Apache SeaTunnel 2.3.1 through 2.3.10

Description:

# Summary

Unauthorized users can perform Arbitrary File Read and Deserialization
attack by submit job using restful api-v1.

# Details
Unauthorized users can access `/hazelcast/rest/maps/submit-job` to submit
job.
An attacker can set extra params in mysql url to perform Arbitrary File
Read and Deserialization attack.

This issue affects Apache SeaTunnel: <=3D2.3.10

# Fixed

Users are recommended to upgrade to version 2.3.11, and=20
enable restful api-v2 & open https two-way authentication , which fixes the=
 issue.

 https://github.com/apache/seatunnel/pull/9010

Credit:

Owen Amadeus (reporter)

References:

https://seatunnel.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-32896

