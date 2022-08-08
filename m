Received: (qmail 9354 invoked by uid 550); 8 Aug 2022 20:14:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15731 invoked from network); 8 Aug 2022 19:33:51 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ryan Skraba <rskraba@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <4c7df63d-59b6-d40a-6c22-6b42f5ce7279@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 08 Aug 2022 19:33:37 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-36124: Apache Avro: Memory overconsumption in Avro Rust
 SDK 

Severity: moderate

Description:

It is possible for a Reader to consume memory beyond the allowed constraint=
s and thus lead to out of memory on the system. This issue affects Rust app=
lications using Apache Avro Rust SDK prior to 0.14.0 (previously known as a=
vro-rs).  Users should update to apache-avro version 0.14.0 which addresses=
 this issue.

Credit:

This issue was reported to the Apache Avro team by Evan Richter at ForAllSe=
cure and found with Mayhem.

