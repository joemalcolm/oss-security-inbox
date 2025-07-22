Received: (qmail 15380 invoked by uid 550); 22 Jul 2025 21:32:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13834 invoked from network); 22 Jul 2025 21:32:33 -0000
Date: Tue, 22 Jul 2025 23:31:39 +0200
From: Solar Designer <solar@openwall.com>
To: Rafael Gonzaga <work@rafaelgss.dev>
Cc: oss-security@lists.openwall.com
Message-ID: <20250722213139.GA8508@openwall.com>
References: <30ff7c11-717d-479a-9c49-356a796c20abn@googlegroups.com> <d3e03d37-ce0e-4aed-a060-c736fda4f073n@googlegroups.com> <cddfe5d3-7852-4dd7-b72a-a66eaad89ce3n@googlegroups.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cddfe5d3-7852-4dd7-b72a-a66eaad89ce3n@googlegroups.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Fwd: Node.js security updates for all active release lines, July 2025

On Tue, Jul 15, 2025 at 03:39:08PM -0700, Rafael Gonzaga wrote:
> The planned security releases are now available. You can read more about 
> the details at 
> https://nodejs.org/en/blog/vulnerability/july-2025-security-releases

I include below the full content from:

https://raw.githubusercontent.com/nodejs/nodejs.org/refs/heads/main/apps/site/pages/en/blog/vulnerability/july-2025-security-releases.md

Alexander

---
date: 2025-07-15T00:00:00.000Z
category: vulnerability
title: Tuesday, July 15, 2025 Security Releases
slug: july-2025-security-releases
layout: blog-post
author: The Node.js Project
---

## Security releases available

Updates are now available for the 24.x, 22.x, 20.x Node.js release lines for the
following issues.

## Windows Device Names (CON, PRN, AUX) Bypass Path Traversal Protection in path.normalize() (CVE-2025-27210) - (high)

An incomplete fix has been identified for CVE-2025-23084 in Node.js, specifically affecting Windows device names like CON, PRN, and AUX.

This vulnerability affects Windows users of `path.join` API.

Impact:

- This vulnerability affects all users in active release lines: 20.x, 22.x, 24.x

Thank you, to oblivionsage for reporting this vulnerability and thank you RafaelGSS for fixing it.

## HashDoS in V8 (CVE-2025-27209) - (high)

The V8 release used in Node.js v24.0.0 has changed how string hashes are computed using rapidhash.
This implementation re-introduces the HashDoS vulnerability as an attacker who can control the strings to be hashed can generate
many hash collisions - an attacker can generate collisions even without knowing the hash-seed.

While the V8 team does not classify this as a security vulnerability, the Node.js project considers it one due to its potential
impact in real-world scenarios.

- This vulnerability affects Node.js v24.x users.

Impact:

- This vulnerability affects all users in active release lines: 24.x

Thank you, to sharp_edged for reporting this vulnerability and thank you targos for fixing it.

## Downloads and release details

- [Node.js v20.19.4](/blog/release/v20.19.4/)
- [Node.js v22.17.1](/blog/release/v22.17.1/)
- [Node.js v24.4.1](/blog/release/v24.4.1/)

# Summary

The Node.js project will release new versions of the 24.x, 22.x, 20.x
releases lines on or shortly after, Tuesday, July 15, 2025 in order to address:

- 2 high severity issues.

## Impact

The 24.x release line of Node.js is vulnerable to 2 high severity issues.
The 22.x release line of Node.js is vulnerable to 1 high severity issues.
The 20.x release line of Node.js is vulnerable to 1 high severity issues.

It's important to note that End-of-Life versions are always affected when a security release occurs.
To ensure your system's security, please use an up-to-date version as outlined in our
[Release Schedule](https://github.com/nodejs/release#release-schedule).

## Release timing

Releases will be available on, or shortly after, Tuesday, July 15, 2025.

## Contact and future updates

The current Node.js security policy can be found at <https://nodejs.org/en/security/>.
Please follow the process outlined in <https://github.com/nodejs/node/blob/master/SECURITY.md> if you wish to report a vulnerability in Node.js.

Subscribe to the low-volume announcement-only nodejs-sec mailing list at <https://groups.google.com/forum/#!forum/nodejs-sec> to stay up to date on security vulnerabilities and security-related releases of Node.js and the projects maintained in the nodejs GitHub organization.
