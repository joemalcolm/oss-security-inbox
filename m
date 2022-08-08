Received: (qmail 9238 invoked by uid 550); 8 Aug 2022 20:14:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15686 invoked from network); 8 Aug 2022 19:33:45 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ryan Skraba <rskraba@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <cf914925-7d43-837b-cc49-d587328f1866@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 08 Aug 2022 19:33:29 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-35724: Apache Avro: Denial of service while reading data
 in Avro Rust SDK 

Severity: important

Description:

It is possible to provide data to be read that leads the reader to loop in =
cycles endlessly, consuming CPU.  This issue affects Rust applications usin=
g Apache Avro Rust SDK prior to 0.14.0 (previously known as avro-rs).  User=
s should update to apache-avro version 0.14.0 which addresses this issue.

Credit:

This issue was reported to the Apache Avro team by Evan Richter at ForAllSe=
cure and found with Mayhem.

