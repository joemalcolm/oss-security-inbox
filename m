Received: (qmail 16247 invoked by uid 550); 17 Feb 2026 17:04:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15510 invoked from network); 17 Feb 2026 10:48:40 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Antoine Pitrou <apitrou@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <c990a994-e29d-59b3-e5ab-bdbd30cc5088@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 17 Feb 2026 10:48:28 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-25087: Apache Arrow: Potential use-after-free when
 reading IPC file with pre-buffering 

Severity: moderate=20

Affected versions:

- Apache Arrow 15.0.0 through 23.0.0
- Apache Arrow 23.0.1 unaffected

Description:

Use After Free vulnerability in Apache Arrow C++.

This issue affects Apache Arrow C++ from 15.0.0 through 23.0.0. It can be t=
riggered when reading an Arrow IPC file (but not an IPC stream) with pre-bu=
ffering enabled, if the IPC file contains data with variadic buffers (such =
as Binary View and String View data). Depending on the number of variadic b=
uffers in a record batch column and on the temporal sequence of multi-threa=
ded IO, a write to a dangling pointer could occur. The value (a `std::share=
d_ptr<Buffer>` object)=C2=A0that is written to the dangling pointer is not =
under direct control of the attacker.

Pre-buffering is disabled by default but can be enabled using a specific C+=
+ API call (`RecordBatchFileReader::PreBufferMetadata`). The functionality =
is not exposed in language bindings (Python, Ruby, C GLib), so these bindin=
gs are not vulnerable.

The most likely consequence of this issue would be random crashes or memory=
 corruption when reading specific kinds of IPC files. If the application al=
lows ingesting IPC files from untrusted sources, this could plausibly be ex=
ploited for denial of service. Inducing more targeted kinds of misbehavior =
(such as confidential data extraction from the running process) depends on =
memory allocation and multi-threaded IO temporal patterns that are unlikely=
 to be easily controlled by an attacker.

Advice for users of Arrow C++:

1. check whether you enable pre-buffering on the IPC file reader (using=C2=
=A0`RecordBatchFileReader::PreBufferMetadata`)

2. if so, either disable pre-buffering (which may have adverse performance =
consequences), or switch to Arrow 23.0.1 which is not vulnerable

Credit:

"emi" / "rootkid19" (reporter)

References:

https://github.com/apache/arrow/pull/48925
https://arrow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-25087

