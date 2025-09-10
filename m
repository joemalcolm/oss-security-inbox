Received: (qmail 32123 invoked by uid 550); 10 Sep 2025 05:54:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32024 invoked from network); 10 Sep 2025 05:54:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=haxx.se; s=silly;
	t=1757483670; bh=HzPThZvV8GmrCavlNCIk0f8uLHfRxTgXxPLTqoevqOE=;
	h=Date:From:To:Subject:From;
	b=VVY4ACDwmqV759xNMzMh3t6277gT8/tueSbBuBe5g14leD1cvx+OAN9tCMr1BqFTr
	 5KAO0mEg0cwR+7q8KGBeBkG59Mu8ZJhXkH5wuA7xCbaOG07N2vU/2ROXDmPZjEpRgZ
	 u6x9wvYR4TFfzVzLRbPES/mn/3tDxzOYg5iUtADVHAhzlYPyWpxZKs1oV/7YJ2vzj8
	 4jfOW8pGrmBM6b7hEk7daky9xLyZIik3bep1HjELDtvk37gUMSdsxFRdOnFgpyvmRY
	 FPY/QmdOtiW5Gomkg4c0J4v7l9a2eunrKHr5+eMASWELKT1BCOPQ1WsnIQnrJx7LDE
	 5POGMnduac71Q==
Date: Wed, 10 Sep 2025 07:54:30 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <27oo7n57-95s9-nn64-qqo8-95n4n23901so@unkk.fr>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl: CVE-2025-10148: predictable WebSocket
 mask

predictable WebSocket mask
==========================

Project curl Security Advisory, September 10 2025 -
[Permalink](https://curl.se/docs/CVE-2025-10148.html)

VULNERABILITY
-------------

curl's websocket code did not update the 32 bit mask pattern for each new
outgoing frame as the specification says. Instead it used a fixed mask that
persisted and was used throughout the entire connection.

A predictable mask pattern allows for a malicious server to induce traffic
between the two communicating parties that could be interpreted by an involved
proxy (configured or transparent) as genuine, real, HTTP traffic with content
and thereby poison its cache. That cached poisoned content could then be
served to all users of that proxy.

INFO
----

This exact scenario is warned about in the security section of the WebSocket
RFC 6455 and is the very reason the mask should be updated for every outgoing
frame.

For this bug to become a real-life problem, the libcurl-using application must
be communicating through such a (defective) proxy that confuses a WebSocket
communication for HTTP traffic. Further, to trigger the problem it requires
the traffic to be done using clear text HTTP / WebSocket (`ws://`) and not
over TLS (`wss://`).

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2025-10148 to this issue.

CWE-340: Generation of Predictable Numbers or Identifiers

Severity: Low

AFFECTED VERSIONS
-----------------

- Affected versions: curl 7.86.0 to and including 8.15.0
- Not affected versions: curl < 7.86.0 and >= 8.16.0
- Introduced-in: https://github.com/curl/curl/commit/d78e129d50b2d1

WebSocket was considered experimental before 7.86.0 and therefore we do not
consider earlier versions vulnerable.

libcurl is used by many applications, but not always advertised as such!

This bug is not considered a *C mistake*. It is not likely to have been
avoided had we not been using C.

This flaw also affects the curl command line tool.

SOLUTION
------------

Starting in curl 8.16.0, this mistake is fixed.

- Fixed-in: https://github.com/curl/curl/commit/84db7a9eae8468c0445b15aa806fa

RECOMMENDATIONS
--------------

  A - Upgrade curl to version 8.16.0

  B - Apply the patch to your local version

  C - Avoid using `ws://`

TIMELINE
--------

This issue was reported to the curl project on September 8, 2025. We contacted
distros@openwall on September 9, 2025.

curl 8.16.0 was released on September 10 2025 around 06:00 UTC, coordinated
with the publication of this advisory.

The curl security team is not aware of any active exploits using this
vulnerability.

CREDITS
-------

- Reported-by: Calvin Ruocco
- Patched-by: Daniel Stenberg

Thanks a lot!

-- 

  / daniel.haxx.se || https://rock-solid.curl.dev
