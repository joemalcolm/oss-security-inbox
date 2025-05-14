Received: (qmail 11895 invoked by uid 550); 14 May 2025 23:51:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11763 invoked from network); 14 May 2025 23:51:41 -0000
Date: Thu, 15 May 2025 01:51:38 +0200
From: Solar Designer <solar@openwall.com>
To: Rafael Gonzaga <work@rafaelgss.dev>
Cc: oss-security@lists.openwall.com
Message-ID: <20250514235138.GA10938@openwall.com>
References: <1914b7d5-1e22-4c3d-94f8-ca2814a1853an@googlegroups.com> <14ea0e60-36d4-4267-8614-3d6b455b7fabn@googlegroups.com> <90a34ec4-4572-4e9e-9076-cd3e9d5540c4n@googlegroups.com> <ea9fe7af-8b48-429f-8256-c0e378cbcf6en@googlegroups.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ea9fe7af-8b48-429f-8256-c0e378cbcf6en@googlegroups.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Fwd: Node.js security updates for all active release lines, May 2025

On Wed, May 14, 2025 at 02:47:32PM -0700, Rafael Gonzaga wrote:
> The planned security releases are now available. You can read more about 
> the details at 
> https://nodejs.org/en/blog/vulnerability/may-2025-security-releases

Thanks.  Included below is the current content from:

https://raw.githubusercontent.com/nodejs/nodejs.org/refs/heads/main/apps/site/pages/en/blog/vulnerability/may-2025-security-releases.md

Alexander

---
date: 2025-05-14T03:00:00.000Z
category: vulnerability
title: Wednesday, May 14, 2025 Security Releases
slug: may-2025-security-releases
layout: blog-post
author: The Node.js Project
---

## Security releases available

Updates are now available for the 24.x, 23.x, 22.x, 20.x Node.js release lines for the
following issues.

## Improper error handling in async cryptographic operations crashes process (CVE-2025-23166) - (high)

The C++ method `SignTraits::DeriveBits()` may incorrectly call `ThrowException()`
based on user-supplied inputs when executing in a background thread, crashing the Node.js process.
Such cryptographic operations are commonly applied to untrusted inputs. Thus, this mechanism
potentially allows an adversary to remotely crash a Node.js runtime.

Impact:

- This vulnerability affects all users in active release lines: 20.x, 22.x, 23.x, 24.x

Thank you, @panva and @tniessen, for reporting and fixing this vulnerability.

## Improper HTTP header block termination in llhttp (CVE-2025-23167) - (medium)

A flaw in Node.js 20's HTTP parser allows improper termination of HTTP/1 headers using `\r\n\rX` instead of the required `\r\n\r\n`.
This inconsistency enables request smuggling, allowing attackers to bypass proxy-based access controls and submit unauthorized requests.

The issue was resolved by upgrading `llhttp` to version 9, which enforces correct header termination.

Impact:

- This vulnerability affects only Node.js 20.x users prior to the `llhttp` v9 upgrade.

Thank you, to kenballus for reporting this vulnerability and thank you RafaelGSS for fixing it.

## Corrupted pointer in `node::fs::ReadFileUtf8(const FunctionCallbackInfo<Value>& args)` when `args[0]` is a string. (CVE-2025-23165) - (low)

In Node.js, the `ReadFileUtf8` internal binding leaks memory due to a corrupted pointer in `uv_fs_s.file`: a UTF-16 path buffer is allocated but subsequently overwritten when the file descriptor is set. This results in an unrecoverable memory leak on every call. Repeated use can cause unbounded memory growth, leading to a denial of service.

Impact:

- This vulnerability affects APIs relying on `ReadFileUtf8` on Node.js release lines: v20 and v22.

Thank you, to Justin Nietzel for reporting and fixing this vulnerability.

## Downloads and release details

- [Node.js v20.19.2](/blog/release/v20.19.2/)
- [Node.js v22.15.1](/blog/release/v22.15.1/)
- [Node.js v23.11.1](/blog/release/v23.11.1/)
- [Node.js v24.0.2](/blog/release/v24.0.2)

# Summary

The Node.js project will release new versions of the 24.x, 23.x, 22.x, 20.x
releases lines on or shortly after, Wednesday, May 14, 2025 in order to address:

- 1 high severity issues.
- 1 medium severity issues.
- 1 low severity issues.

## Impact

- The 24.x release line of Node.js is vulnerable to 1 high severity issues.
- The 23.x release line of Node.js is vulnerable to 1 high severity issues.
- The 22.x release line of Node.js is vulnerable to 1 low severity issues, 1 high severity issues.
- The 20.x release line of Node.js is vulnerable to 1 low severity issues, 1 high severity issues, 1 medium severity issues.

It's important to note that End-of-Life versions are always affected when a security release occurs.
To ensure your system's security, please use an up-to-date version as outlined in our
[Release Schedule](https://github.com/nodejs/release#release-schedule).

## Release timing

Releases will be available on, or shortly after, Wednesday, May 14, 2025.

## Contact and future updates

The current Node.js security policy can be found at <https://nodejs.org/en/security/>.
Please follow the process outlined in <https://github.com/nodejs/node/blob/master/SECURITY.md> if you wish to report a vulnerability in Node.js.

Subscribe to the low-volume announcement-only nodejs-sec mailing list at <https://groups.google.com/forum/#!forum/nodejs-sec> to stay up to date on security vulnerabilities and security-related releases of Node.js and the projects maintained in the nodejs GitHub organization.
