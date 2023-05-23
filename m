Received: (qmail 9692 invoked by uid 550); 23 May 2023 11:54:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7571 invoked from network); 23 May 2023 09:48:28 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Rongtong Jin <jinrongtong@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <0e99031b-398c-6a65-5ac5-6332ca994da0@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 23 May 2023 09:48:07 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-33246: Apache RocketMQ: RocketMQ may have a remote code
 execution vulnerability when using the update configuration function 

Severity: moderate

Affected versions:

- Apache RocketMQ through 5.1.0

Description:

For RocketMQ versions 5.1.0 and below, under certain conditions, there is a=
 risk of remote command execution.=C2=A0

Several components of RocketMQ, including NameServer, Broker, and Controlle=
r, are leaked on the extranet and lack permission verification, an attacker=
 can exploit this vulnerability by using the update configuration function =
to execute commands as the system users that RocketMQ is running as. Additi=
onally, an attacker can achieve the same effect by forging the RocketMQ pro=
tocol content.=C2=A0

To prevent these attacks, users are recommended to upgrade to version 5.1.1=
 above=C2=A0for using RocketMQ 5.x=C2=A0or 4.9.6 above for using RocketMQ 4=
.x .

Credit:

lvyyevd@gmail.com (reporter)

References:

https://rocketmq.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-33246

