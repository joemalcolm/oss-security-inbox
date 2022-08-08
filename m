Received: (qmail 9542 invoked by uid 550); 8 Aug 2022 20:15:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15779 invoked from network); 8 Aug 2022 19:33:55 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ryan Skraba <rskraba@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <886d9e95-0445-3d37-87ab-e73de79132dd@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 08 Aug 2022 19:33:41 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-36125: Apache Avro: Integer overflow when reading
 corrupted .avro file in Avro Rust SDK 

Severity: important

Description:

It is possible to crash (panic) an application by providing a corrupted dat=
a to be read. This issue affects Rust applications using Apache Avro Rust S=
DK prior to 0.14.0 (previously known as avro-rs).  Users should update to a=
pache-avro version 0.14.0 which addresses this issue.

Credit:

This issue was reported to the Apache Avro team by Evan Richter at ForAllSe=
cure and found with Mayhem.

