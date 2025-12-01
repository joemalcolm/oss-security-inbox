Received: (qmail 9899 invoked by uid 550); 1 Dec 2025 03:01:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32405 invoked from network); 1 Dec 2025 02:29:19 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Wang Weibing <wwbmmm@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <0f9c3308-8d5a-84e2-27df-b661347ffffc@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 01 Dec 2025 02:26:07 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-59789: Apache bRPC: Stack Exhaustion via Unbounded
 Recursion in JSON Parser 

Severity: critical=20

Affected versions:

- Apache bRPC before 1.15.0

Description:

Uncontrolled recursion in the json2pb component in Apache bRPC (version < 1=
.15.0) on all platforms allows remote attackers to make the server crash vi=
a sending deep recursive json data.

Root Cause:
The bRPC=C2=A0json2pb component uses rapidjson to parse json data from the =
network. The rapidjson parser uses a recursive parsing method by default. I=
f the input json has a large depth of recursive structure, the parser funct=
ion may run into stack overflow.

Affected Scenarios:
Use bRPC server with protobuf message to serve http+json requests from untr=
usted network. Or directly use=C2=A0JsonToProtoMessage to convert json from=
=C2=A0untrusted input.



How to Fix:=20
(Choose one of the following options)=C2=A0
1. Upgrade bRPC to version 1.15.0, which fixes this issue.
2. Apply this patch:  https://github.com/apache/brpc/pull/3099=20



Note:
No matter which option=20

you choose, you should know that the fix introduces a recursion depth limit=
 with default value 100. It affects these functions:=C2=A0

ProtoMessageToJson, ProtoMessageToProtoJson, JsonToProtoMessage, and ProtoJ=
sonToProtoMessage.

 If your requests contain json or protobuf messages that have a depth excee=
ding the limit, the request will be failed after applying the fix. You can =
modify the gflag json2pb_max_recursion_depth to change the limit.

Credit:

Tyler Zars (finder)

References:

https://brpc.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-59789

