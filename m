Received: (qmail 11929 invoked by uid 550); 6 May 2026 15:09:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 21590 invoked from network); 6 May 2026 12:19:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1778069966;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=BoYxsYB/nmD32lugcAqiTZYptdCeAy7+9eZrZlMJHrs=;
	b=b5stTRd6F+QDKpXOgDWtu1/4eaKI0iP/nNmw/4jD8KTIb7MPp1nHYcwwIZUdi6u677kxjc
	MxDBhJOepXL9ImBdEbPQ/MSwLIG0+d+03GHRzwHwj+Fxpkcn8s650t+Z0PSCLgaC3XFaQr
	efbEhfC2b0XlUyCsIta8j/OXifr55OcwoT/Y1/aWDImZGh4VUenRfyXyM9MlWKDLQn8JbB
	Qm9ahwpy9AXqG9yvOFwWPsK8sZjsYiG1e7BgOSdwMnveGKagSzO2mculKHBbDQn/h4e7DE
	FHeucgVkLphnexvnklPZkoAwtmTh3N3bAyBIlUk79HC+z/vCdt+sDkrvCkjseg==
Message-ID: <f7cdabfc-6c75-4139-8d98-281b45eb40d9@cpansec.org>
Date: Wed, 6 May 2026 13:19:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Robert Rothenberg <rrwo@cpansec.org>
Content-Language: en-GB, en-ZA
To: cve-announce@security.metacpan.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: rrwo@cpansec.org
X-GND-Score: 0
X-GND-Cause: dmFkZTEqUMKwRLHevgNttmNd1/VVUfBY6hm4yMPeFlEwwokQcGos4J0RdZcIjP/Zl3S/F7CjwQzohiyhB6Nd59GFQo1zJ8ODcdt8KypCfzhrC51u1avHxp8k3I5ml6T79T0aSRdGYQLo1uZxfcWyIf57VPJtF5SciVtqrCnUO7LrQTduBol9ncgBS+nt9hAflfueFGLIGjFFIwI5clregz6nXCsqwapASGQ4+sCks1768RQBKXKIgxhCf+mO9rfu0DmK9InQWA63JN8r6kgjUOOwqtpoYkw0qwWhE8NXe7jG9khsXIHO9aQmXhKgFb1ooxcINsPo2yRGY9H/T7qofAVYZz5VNMDV99K0d3451Pve1XU4CP6DVhX/OnNhst+FvARBiF/Ib4IJvx0YCFSB1Fzeg3UgE9HypcwxA+Xjd6+OwyC85aBq0PkbAp+vcTtrZTUENK1QK/u1ro0HUGMfGeplzbA2X6QTwGfOnYBtl8xTWjBRIksIm02kNQMVppmUhnzH3eD10zsfrStqhdVuohGWqt49L5pafxf7hQ1AHb4FhFDoafU4BlsaAsb95ZhdtIP2K1H4ESDnCjnIaeltQwZA0JEWwA+AMkx1YpZRxhpU2r2QoVmB3nyyhTjbc/2tRhxulAtY45fXnBuSkMkuPYZh8llK6xR9W4RHAIYcQ67kR0bi+g
X-GND-State: clean
Subject: [oss-security] CVE-2026-5081: Apache::Session::Generate::ModUniqueId versions from
 1.54 through 1.94 for Perl session ids are insecure

========================================================================
CVE-2026-5081                                        CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-5081
   Distribution:  Apache-Session
       Versions:  from 1.54 through 1.94

       MetaCPAN:  https://metacpan.org/dist/Apache-Session
       VCS Repo:  http://github.com/chorny/Apache-Session


Apache::Session::Generate::ModUniqueId versions from 1.54 through 1.94
for Perl session ids are insecure

Description
-----------
Apache::Session::Generate::ModUniqueId versions from 1.54 through 1.94
for Perl session ids are insecure.

Apache::Session::Generate::ModUniqueId (added in version 1.54) uses the
value of the UNIQUE_ID environment variable for the session id. The
UNIQUE_ID variable is set by the Apache mod_unique_id plugin, which
generates unique ids for the request. The id is based on the IPv4
address, the process id, the epoch time, a 16-bit counter and a thread
index, with no obfuscation.

The server IP is often available to the public, and if not available,
can be guessed from previous session ids being issued. The process ids
may also be guessed from previous session ids. The timestamp is easily
guessed (and leaked in the HTTP Date response header).

The purpose of mod_unique_id is to assign a unique id to requests so
that events can be correlated in different logs. The id is not
designed, nor is it suitable for security purposes.

Problem types
-------------
- CWE-340 Generation of Predictable Numbers or Identifiers

Solutions
---------
In cases where the session id is used for authentication or provides
access to restricted data, consider alternate solutions like
Apache::Session::Generate::Random.


References
----------
https://httpd.apache.org/docs/current/mod/mod_unique_id.html
https://metacpan.org/pod/Apache::Session::Generate::Random



