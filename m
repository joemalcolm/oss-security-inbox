Received: (qmail 24391 invoked by uid 550); 22 Jul 2024 12:27:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1412 invoked from network); 22 Jul 2024 08:07:10 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Rongtong Jin <jinrongtong@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <9926ba38-7a93-266b-4410-296dc0c361f7@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 22 Jul 2024 08:06:58 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-23321: Apache RocketMQ: Unauthorized Exposure of
 Sensitive Data 

Severity: moderate

Affected versions:

- Apache RocketMQ 4.5.2 through 5.2.0

Description:

For RocketMQ versions 5.2.0 and below, under certain conditions, there is a=
 risk of exposure of sensitive Information to an unauthorized actor even if=
 RocketMQ is enabled with authentication and authorization functions.

An attacker, possessing regular user privileges or listed in the IP whiteli=
st, could potentially acquire the administrator's account and password thro=
ugh specific interfaces. Such an action would grant them full control over =
RocketMQ, provided they have access to the broker IP address list.

To mitigate these security threats, it is strongly advised that users upgra=
de to version 5.3.0 or newer. Additionally, we recommend users to use Rocke=
tMQ ACL 2.0 instead of the original RocketMQ ACL when upgrading to version =
Apache RocketMQ 5.3.0.

Credit:

BaoChengZhang (LengJingQiCaiSecurityLab) (finder)

References:

https://rocketmq.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-23321

