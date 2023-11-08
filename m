Received: (qmail 22407 invoked by uid 550); 8 Nov 2023 18:09:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7674 invoked from network); 8 Nov 2023 18:06:13 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Antoine Pitrou <apitrou@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <8bd7dfdd-1a33-1b6c-11d5-c65ebb736eb8@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Nov 2023 18:05:51 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-47248: PyArrow, PyArrow: Arbitrary code execution when
 loading a malicious data file 

Severity: critical

Affected versions:

- PyArrow 0.14.0 through 14.0.0
- PyArrow 0.14.0 through 14.0.0

Description:

Deserialization of untrusted data in IPC and Parquet readers in PyArrow ver=
sions 0.14.0 to 14.0.0 allows arbitrary code execution. An application is v=
ulnerable if it reads Arrow IPC, Feather or Parquet data from untrusted sou=
rces (for example user-supplied input files).

This vulnerability only affects PyArrow, not other Apache Arrow implementat=
ions or bindings.

It is recommended that users of PyArrow upgrade to 14.0.1. Similarly, it is=
 recommended that downstream libraries upgrade their dependency requirement=
s to PyArrow 14.0.1 or later. PyPI packages are already available, and we h=
ope that conda-forge packages will be available soon.

If it is not possible to upgrade, we provide a separate package `pyarrow-ho=
tfix` that disables the vulnerability on older PyArrow versions. See  https=
://pypi.org/project/pyarrow-hotfix/  for instructions.

References:

https://arrow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-47248

