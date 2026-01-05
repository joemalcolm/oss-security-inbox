Received: (qmail 1517 invoked by uid 550); 5 Jan 2026 17:48:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1487 invoked from network); 5 Jan 2026 17:48:59 -0000
Message-ID: <0852ef98-a57a-4938-8feb-3d40117f3d53@pipping.org>
Date: Mon, 5 Jan 2026 18:48:48 +0100
MIME-Version: 1.0
To: oss-security@lists.openwall.com
References: <af3ef719-2b0a-b7db-9831-74342941b1e1@apache.org>
Content-Language: en-US
From: Sebastian Pipping <sebastian@pipping.org>
Cc: =?UTF-8?Q?Hanno_B=C3=B6ck?= <hanno@hboeck.de>,
 Alan Coopersmith <alan.coopersmith@oracle.com>
In-Reply-To: <af3ef719-2b0a-b7db-9831-74342941b1e1@apache.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] CVE-2025-68280: Apache SIS: XML External Entity
 (XXE) vulnerability

On 1/5/26 14:18, Martin Desruisseaux wrote:
> Users are recommended to upgrade to version 1.6, which will fix the issue. In the meantime, the security vulnerability can be avoided by launching Java with the javax.xml.accessExternalDTD system property sets to a comma-separated list of authorized protocols. For example:
> 
> java -Djavax.xml.accessExternalDTD="" ...

The related commit seems to be 
https://github.com/apache/sis/commit/5bfa162bd56edb7d41d56a0c926592964d31d83b 
?

It would rock if Oracle would finally fix 3+ XML parser defaults
from vulnerable for years to secure for everyone using Java.

