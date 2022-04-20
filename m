Received: (qmail 24321 invoked by uid 550); 20 Apr 2022 06:39:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11345 invoked from network); 20 Apr 2022 03:40:54 -0000
Content-Type: text/plain; charset=utf-8
From: Zeping Bai <bzp2010@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <6d2c5e67-b34f-9760-1a9b-a14c5194597b@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 20 Apr 2022 03:40:37 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-29266: Apache APISIX: apisix/jwt-auth may leak secrets in
 error response 

Severity: critical

Description:

An attacker can obtain a plugin-configured secret via an error message resp=
onse by sending an incorrect JSON Web Token to a route protected by the jwt=
-auth plugin.
The error logic in the dependency library lua-resty-jwt enables sending an =
RS256 token to an endpoint that requires an HS256 token, with the original =
secret value included in the error response.

Mitigation:

1. Upgrade to 2.13.1 and above

2. Apply the following patch to Apache APISIX and rebuild it:
This will make this error message no longer contain sensitive information a=
nd return a fixed error message to the caller.
For the current LTS 2.13.x or master:
https://github.com/apache/apisix/pull/6846
https://github.com/apache/apisix/pull/6847
https://github.com/apache/apisix/pull/6858
For the last LTS 2.10.x:
https://github.com/apache/apisix/pull/6847
https://github.com/apache/apisix/pull/6855

3. Manually modify the version you are using according to the commit above =
and rebuild it to circumvent the vulnerability.

Credit:

Discovered and reported by a team from Kingdee Software (China) Ltd. consis=
ting of Zhongyuan Tang, Hongfeng Xie, and Bing Chen.

