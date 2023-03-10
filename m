Received: (qmail 11538 invoked by uid 550); 10 Mar 2023 13:47:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5261 invoked from network); 10 Mar 2023 13:37:47 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Arnout Engelen <engelen@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <dc3c70ed-a152-e598-e353-7ba03abde474@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Mar 2023 13:37:22 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-26464: Apache Log4j 1.x (EOL) allows DoS in Chainsaw and
 SocketAppender 

Severity: low

Description:

** UNSUPPORTED WHEN ASSIGNED **

When using the Chainsaw or SocketAppender components with Log4j 1.x on JRE =
less than 1.7, an attacker that manages to cause a logging entry involving =
a specially-crafted (ie, deeply nested)=20
hashmap or hashtable (depending on which logging component is in use) to be=
 processed could exhaust the available memory in the virtual machine and ac=
hieve Denial of Service when the object is deserialized.

This issue affects Apache Log4j before 2. Affected users are recommended to=
 update to Log4j 2.x.

NOTE: This vulnerability only affects products that are no longer supported=
 by the maintainer.

Credit:

Garrett Tucker of Red Hat (reporter)

References:

https://logging.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-26464

