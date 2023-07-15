Received: (qmail 14151 invoked by uid 550); 15 Jul 2023 14:40:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19955 invoked from network); 15 Jul 2023 12:45:52 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Xue Weiming <mikexue@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <5bd36d34-4ded-2506-e1b4-260d3005b70f@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sat, 15 Jul 2023 12:45:38 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-26512: Apache EventMesh RabbitMQ-Connector plugin allows
 RCE through deserialization of untrusted data 

Severity: critical

Affected versions:

- Apache EventMesh (incubating) 1.7.0 through 1.8.0

Description:

CWE-502 Deserialization of Untrusted Data=C2=A0at the=C2=A0rabbitmq-connect=
or plugin=C2=A0module in Apache EventMesh (incubating)=C2=A0V1.7.0\V1.8.0 o=
n windows\linux\mac os e.g. platforms allows attackers=C2=A0to send control=
led message and=20

remote code execute=C2=A0via rabbitmq messages. Users can use the code unde=
r the master branch in project repo to fix this issue, we will release the =
new version as soon as possible.

Credit:

xuxiaoyu of HW GTS shengjian lab (reporter)

References:

https://eventmesh.incubator.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-26512

