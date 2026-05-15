Received: (qmail 20426 invoked by uid 550); 15 May 2026 19:31:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7954 invoked from network); 15 May 2026 11:15:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1778843690;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=y82dDwSAWC6S2ZmrZugyboBqs22TRwCte2ulHCUc+zc=;
	b=BIdM7VMFJjFJEOp8mMBCdefWUIDqFFl/MwN59oAnLKDBuJRI75urevtwOoy11qE4pYkDWd
	uumsFoPILxWHrjJgt/X1BIjgkV8+jZ9JbErzq+84QvzKzZVWbB9KPZJsu0gOZYpPigTuAI
	kRx4r+W4g7VqJyi9JHIbUeQl2lA6lTO5sbEd2xYBQQX9dxHV0/+aMI6erEXM4vENEKcce/
	V9P/dXXV924sO0XxOtHPT2XaOC7kRoYvLu9j8IuRUjT1lT7IkkvTsZi3ihLuVDAIPAFZfB
	nacu5KZssT/2xU1ON4k+ojaYbDbEGmu0bfyzhOs5GYyDw9PtegWod4kD9u0haw==
Message-ID: <f7c83c54-96ec-4ba5-8b9c-01a663dc5bdd@cpansec.org>
Date: Fri, 15 May 2026 12:14:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Robert Rothenberg <rrwo@cpansec.org>
Content-Language: en-GB, en-ZA
To: cve-announce@security.metacpan.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: rrwo@cpansec.org
X-GND-State: clean
X-GND-Score: 0
X-GND-Cause: dmFkZTG3lcfgGXQ5mljF8mGDpUKSF4kOW4gwf0TVTXqeG0j3WKzFuHShikqspc1rz0VoEKtFTIhoKsBY3fJqzg9VNZ3bKt4/kAvO78CW50bArCIZbI442H3Ww7eAXs7Udt0DeYBqtw/ClaOVAEXEUe+av7vn7hzQG0v90YoT4ZU2ET3y9XiTi7yrDPKH7h03s9OaBvpqv2O7Yq0HP2tD50G3Rzfv5RYbrXWlYphe/RqqaWCDArRynEKxibM4cClQ7ILXxR+TF3aKx4i8PC9hgwpFxz3rj9jhGFXb9uCoggLedr5JflPc9XsVTJ1ITC1Cu1UAZASxd+d2VLMSJPMjQSbHhyDrXcvt7swwjmliuR7aISmMLCnncSTqNuVxE6cxRZlas1RyxtsVKMdDluc/sHUTynTLrQoMNkT5QnBxQxPyltAj7BjB5UYkfkx0alWVtHuq0mgJsSvcWnBpGwK0TqQ6co2gzjR8gA76xXGJ6nPUNQxgPtUOaS6LhFGDaqmB+PldzQVV96AFkx+dJD+727Wd+n/ZHmkJfFQIKYsyDcYCBVlPcKqgUcaNX33REOs3aoYPlnhM9mqxPMHxweRb8FgdOVdHVKTTnL/kjPOFZacs7oqgN3TQG9emEpbtoRVDofB9Yj9q65tZZ8V5KNHXOQZyJ2A0OweQ//iIb2UZvI/GHXuBgw
Subject: [oss-security] CVE-2026-8503: Apache::Session::Generate::SHA256 versions before
 1.3.19 for Perl create insecure session ids

========================================================================
CVE-2026-8503                                        CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-8503
   Distribution:  Apache-Session-Browsable
       Versions:  before 1.3.19

       MetaCPAN: https://metacpan.org/dist/Apache-Session-Browsable
       VCS Repo: https://github.com/LemonLDAPNG/Apache-Session-Browseable


Apache::Session::Generate::SHA256 versions before 1.3.19 for Perl
create insecure session ids

Description
-----------
Apache::Session::Generate::SHA256 versions before 1.3.19 for Perl
create insecure session ids.

Apache::Session::Generate::SHA256 generated session ids insecurely. The
default session id generator returns a SHA-256 hash of the built-in
rand() function, the epoch time, and the PID, that is hashed again.
These are predictable, low-entropy sources. Predicable session ids
could allow an attacker to gain access to systems.

Note that version 1.3.19 has a fallback without warning to use insecure
session generation method if the call to Crypt::URandom::urandom fails.
However, this is unlikely as Crypt::URandom is a hardcoded requirement
of the module.

This issue is similar to CVE-2025-40931 for
Apache::Session::Generate::MD5.

Problem types
-------------
- CWE-340 Generation of Predictable Numbers or Identifiers
- CWE-338 Use of Cryptographically Weak Pseudo-Random Number Generator

Workarounds
-----------
Upgrade to version 1.3.19 or later.


References
----------
https://metacpan.org/release/GUIMARD/Apache-Session-Browseable-1.3.19/changes
https://metacpan.org/release/GUIMARD/Apache-Session-Browseable-1.3.19/diff/GUIMARD/Apache-Session-Browseable-1.3.18#lib/Apache/Session/Generate/SHA256.pm
https://github.com/LemonLDAPNG/Apache-Session-Browseable/commit/cc915cbbd266776eec3dd8bf4748b15fa827dbd0.patch
https://www.cve.org/CVERecord?id=CVE-2025-40931
https://www.cve.org/CVERecord?id=CVE-2025-40932

Timeline
--------
- 2026-05-13: Issue identified by CPANSec
- 2026-05-13: Issue reported to author
- 2026-05-14: Version 1.3.19 released



