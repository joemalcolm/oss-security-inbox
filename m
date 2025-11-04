Received: (qmail 26141 invoked by uid 550); 4 Nov 2025 08:42:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26092 invoked from network); 4 Nov 2025 08:42:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=haxx.se; s=silly;
	t=1762245722; bh=30dl7LZguwRfzJHXp+nG0E+RwPKzZssnrYD2aFek4Lg=;
	h=Date:From:To:Subject:From;
	b=KF2jurzxgZQXJ0aOv4nH2b3PlLbWvK8gcVdKHxOpL6+1NyohuIHFERjQjhv9n48Y0
	 rj40zA1HgS57mes6SgaVR+NbRKgVEIlcrCkNRI0WMjGSp3PzBod4cs1m37JmV0AGlY
	 Nwxo+kZKSZrnLBePydhEpH+8wJl0ww9bz7LKQVKQlNlGakCtdf9SsZU+YHaxbnlKQe
	 Z9zkVfv4Grk2IdYbIypQw7VyRknVbyMQdevVs32e+dV41SpEec+61YahXxktTuyLfp
	 cH2JhGoiOnq2XCONDj+O3NU5pmUASUkhP3u/uBUAsPsRk2h8pO3Bfu6fgduE06JoIs
	 l5IUY/1tI0INg==
Date: Tue, 4 Nov 2025 09:42:02 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, oss-security@lists.openwall.com
Message-ID: <2s5nq6r1-o4qn-8ps1-5456-19op48512p93@unkk.fr>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] wcurl path traversal with percent-encoded
 slashes

wcurl path traversal with percent-encoded slashes
=================================================

Project curl Security Advisory, November 4 2025 -
[Permalink](https://curl.se/docs/CVE-2025-11563.html)

VULNERABILITY
-------------

URLs containing percent-encoded slashes (`/` or `\`) can trick wcurl into
saving the output file outside of the current directory without the user
explicitly asking for it.

INFO
----

wcurl will not overwrite any files if the curl version is >= 7.83.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2025-11563 to this issue.

CWE-35: Path Traversal

Severity: Moderate

AFFECTED VERSIONS
-----------------

- Affected versions: wcurl shipped with curl 8.14.0 to and including 8.16.0
- Affected versions: wcurl 2024.12.08 to and including 2025.09.27
- Not affected versions: wcurl shipped with curl < 8.14.0 and >= 8.17.0
- Not affected versions: wcurl < 2024.12.08 and >= 2025.11.04
- Introduced-in: https://github.com/curl/wcurl/commit/e01d578582a23695ee3cec08
- Introduced-in: https://github.com/curl/curl/commit/23bed347b3892277938259

This flaw only affects the wcurl command line tool.

SOLUTION
------------

Starting in wcurl 2025.11.04 (shipped with curl 8.17.0), this mistake is
fixed.

- Fixed-in: https://github.com/curl/wcurl/commit/524f7e733237cd26553dfd
- Fixed-in: https://github.com/curl/curl/commit/fb0c014e30e5f4de7aa0d566c

RECOMMENDATIONS
--------------

  A - Upgrade wcurl to the one shipped in curl version 8.17.0, wcurl to version
      2025.11.04

  B - Apply the patch to your local wcurl version

  C - Explicitly choose an output filename with `-o/-O/--output`

  D - Disable percent-decoding for output filenames with `--no-decode-filename`

TIMELINE
--------

This issue was reported to the curl project on October 6, 2025. We contacted
distros@openwall on October 30.

wcurl 2025.11.04 was released on November 4 2025, coordinated with the
publication of this advisory.

curl 8.17.0 was released on November 5 2025.

The curl security team is not aware of any active exploits using this
vulnerability.

CREDITS
-------

- Reported-by: Stanislav Fort (Aisle Research)
- Patched-by: Samuel Henrique
- Patched-by: Sergio Durigan Junior

Thanks a lot!

-- 

  / daniel.haxx.se || https://rock-solid.curl.dev
