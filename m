Received: (qmail 23582 invoked by uid 550); 3 Dec 2025 18:56:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22519 invoked from network); 3 Dec 2025 18:56:59 -0000
Date: Wed, 3 Dec 2025 13:56:49 -0500
From: Jan Schaumann <jschauma@netmeister.org>
To: oss-security@lists.openwall.com
Message-ID: <aTCH8VcNK_Lz9Rli@netmeister.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] CVE-2025-55182: RCE in React Server Components

(I'm not affiliated with React nor Meta, just posting
this here as I don't think I've seen the team send
notes to this list.)

https://react.dev/blog/2025/12/03/critical-security-vulnerability-in-react-server-components

https://www.cve.org/CVERecord?id=CVE-2025-55182

A pre-authentication remote code execution
vulnerability exists in React Server Components
versions 19.0.0, 19.1.0, 19.1.1, and 19.2.0 of

- react-server-dom-webpack
- react-server-dom-parcel
- react-server-dom-turbopack

The vulnerable code unsafely deserializes payloads
from HTTP requests to Server Function endpoints.

The commit including the fix is here:
https://github.com/facebook/react/pull/35277

"Further details of the vulnerability will be provided
after the rollout of the fix is complete."

