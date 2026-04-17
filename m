Received: (qmail 9305 invoked by uid 550); 17 Apr 2026 08:34:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1439 invoked from network); 17 Apr 2026 08:17:38 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Luke Chen <showuon@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <c320bf47-5f13-3a91-adb0-ac0856ede86f@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 17 Apr 2026 08:16:30 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-33558: Apache Kafka, Apache Kafka Clients: Information
 Exposure Through Network Client Log Output 

Severity: moderate=20

Affected versions:

- Apache Kafka 0.11.0 through 3.9.1
- Apache Kafka 4.0.0
- Apache Kafka Clients (org.apache.kafka:kafka-clients) 0.11.0 through 3.9.1
- Apache Kafka Clients (org.apache.kafka:kafka-clients) 4.0.0

Description:

Information exposure vulnerability has been identified in Apache Kafka.

The NetworkClient component will output entire requests and responses infor=
mation in the DEBUG log level in the logs. By default, the log level is set=
 to INFO level. If the DEBUG level is enabled, the sensitive information wi=
ll be exposed via the requests and responses output log. The entire lists o=
f impacted requests and responses are:


  *  AlterConfigsRequest

  *  AlterUserScramCredentialsRequest

  *  ExpireDelegationTokenRequest

  *  IncrementalAlterConfigsRequest

  *  RenewDelegationTokenRequest

  *  SaslAuthenticateRequest

  *  createDelegationTokenResponse

  *  describeDelegationTokenResponse

  *  SaslAuthenticateResponse


This issue affects Apache Kafka: from any version supported the listed API =
above through v3.9.1, v4.0.0. We advise the Kafka users to upgrade to v3.9.=
2, v4.0.1, or later to avoid this vulnerability.

Credit:

Alyssa Huang <ahuang@confluent.io> (finder)
Luke Chen <showuon@gmail.com> (finder)

References:

https://kafka.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-33558

