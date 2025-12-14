Received: (qmail 32245 invoked by uid 550); 14 Dec 2025 19:25:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32204 invoked from network); 14 Dec 2025 19:25:41 -0000
Date: Sun, 14 Dec 2025 14:25:31 -0500
From: Jan Schaumann <jschauma@netmeister.org>
To: oss-security@lists.openwall.com
Message-ID: <aT8PK9bEf9dQ2Mus@netmeister.org>
References: <aTCH8VcNK_Lz9Rli@netmeister.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aTCH8VcNK_Lz9Rli@netmeister.org>
Subject: [oss-security] additional React vulnerabilities (CVE-2025-55183, CVE-2025-55184,
 CVE-2025-67779)
X-Spam: Yes

Just noticed these hadn't been posted to this list
yet:

Following up on the "React2Shell" vulnerability
(CVE-2025-55182) from a few days ago, two additional
vulnerabilities were discovered:

Denial of Service - High Severity: CVE-2025-55184 and CVE-2025-67779 (CVSS 7.5)

(CVE-2025-55184 was incompletely fixed, leading to the
full fixes being tracked under CVE-2025-67779.)

"Security researchers have discovered that a malicious
HTTP request can be crafted and sent to any Server
Functions endpoint that, when deserialized by React,
can cause an infinite loop that hangs the server
process and consumes CPU. Even if your app does not
implement any React Server Function endpoints it may
still be vulnerable if your app supports React Server
Components.

This creates a vulnerability vector where an attacker
may be able to deny users from accessing the product,
and potentially have a  performance impact on the
server environment."


Source Code Exposure - Medium Severity: CVE-2025-55183 (CVSS 5.3)

"A security researcher has discovered that a malicious
HTTP request sent to a vulnerable Server Function may
unsafely return the source code of any Server
Function. Exploitation requires the existence of a
Server Function which explicitly or implicitly exposes
a stringified argument:

```
'use server';

export async function serverFunction(name) {
  const conn = db.createConnection('SECRET KEY');
  const user = await conn.createUser(name); //
implicitly stringified, leaked in db

  return {
   id: user.id,
   message: `Hello, ${name}!` // explicitly stringified, leaked in reply
  }}
```

An attacker may be able to leak the following:

```
0:{"a":"$@1","f":"","b":"Wy43RxUKdxmr5iuBzJ1pN"}
1:{"id":"tva1sfodwq","message":"Hello, async function(a){console.log(\"serverFunction\");let b=i.createConnection(\"SECRET KEY\");return{id:(await b.createUser(a)).id,message:`Hello, ${a}!`}}!"}
```

Quoting the React advisory[1]:

"These vulnerabilities are present in the same packages
and versions as CVE-2025-55182.

This includes versions 19.0.0, 19.0.1, 19.0.2, 19.1.0,
19.1.1, 19.1.2, 19.1.2, 19.2.0, 19.2.1 and 19.2.2 of:

    react-server-dom-webpack
    react-server-dom-parcel
    react-server-dom-turbopack

Fixes were backported to versions 19.0.3, 19.1.4, and
19.2.3. If you are using any of the above packages
please upgrade to any of the fixed versions
immediately.

As before, if your app’s React code does not use a
server, your app is not affected by these
vulnerabilities. If your app does not use a framework,
bundler, or bundler plugin that supports React Server
Components, your app is not affected by these
vulnerabilities."

For Next.js specific impact, see [2].


[1] https://react.dev/blog/2025/12/11/denial-of-service-and-source-code-exposure-in-react-server-components

[2] https://nextjs.org/blog/security-update-2025-12-11
