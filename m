Received: (qmail 27681 invoked by uid 550); 26 Jun 2024 00:45:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24085 invoked from network); 26 Jun 2024 00:45:13 -0000
Date: Wed, 26 Jun 2024 02:45:09 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Rafael Gonzaga <work@rafaelgss.dev>
Message-ID: <20240626004509.GA16803@openwall.com>
References: <46450232-0958-4f83-917e-0627346bf519n@googlegroups.com> <519892a2-6a90-45fb-a3c3-99a0159bb210n@googlegroups.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <519892a2-6a90-45fb-a3c3-99a0159bb210n@googlegroups.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Fwd: Node.js security updates for all active release lines, July 2024

On Tue, Jun 25, 2024 at 10:54:21AM -0700, Rafael Gonzaga wrote:
> ---------- Mensagem encaminhada ---------
> De: Rafael Gonzaga <work@rafaelgss.dev>
> Data: ter??a-feira, 25 de junho de 2024 ??s 14:53:37 UTC-3
> Assunto: Node.js security updates for all active release lines, July 2024
> Para: nodejs-sec <nodejs-sec@googlegroups.com>
> 
> The Node.js project will release new versions of all supported release
> lines on or shortly after July 2nd, 2024
> For more information see:
> https://nodejs.org/en/blog/vulnerability/july-2024-security-releases

Thanks.  I include below the Markdown source of the full blog post
above.  For further occasions or if someone else wants to help post
these in here, to obtain it on the blog post click "Edit this page",
which gets to GitHub, then click "Raw".

Alexander

---
date: 2024-07-02T03:00:00.000Z
category: vulnerability
title: Tuesday, July 2, 2024 Security Releases
slug: july-2024-security-releases
layout: blog-post
author: The Node.js Project
---

# Summary

The Node.js project will release new versions of the 22.x, 20.x, 18.x
releases lines on or shortly after, Tuesday, July 2, 2024 in order to address:

- 1 high severity issues.
- 2 medium severity issues.
- 3 low severity issues.

Node.js fetch will be upgraded to undici v6.19.2 on Node.js 18.x and Node.js 20.x.
Node.js 22.x already includes undici v6.19.2.

## Impact

The 22.x release line of Node.js is vulnerable to 1 high severity issues, 2 medium severity issues, 3 low severity issues.
The 20.x release line of Node.js is vulnerable to 1 high severity issues, 2 medium severity issues, 3 low severity issues.
The 18.x release line of Node.js is vulnerable to 1 high severity issues, 2 medium severity issues.

It's important to note that End-of-Life versions are always affected when a security release occurs.
To ensure your system's security, please use an up-to-date version as outlined in our
[Release Schedule](https://github.com/nodejs/release#release-schedule).

## Release timing

Releases will be available on, or shortly after, Tuesday, July 2, 2024.

## Contact and future updates

The current Node.js security policy can be found at https://nodejs.org/en/security/.
Please follow the process outlined in https://github.com/nodejs/node/blob/master/SECURITY.md if you wish to report a vulnerability in Node.js.

Subscribe to the low-volume announcement-only nodejs-sec mailing list at https://groups.google.com/forum/#!forum/nodejs-sec to stay up to date on security vulnerabilities and security-related releases of Node.js and the projects maintained in the nodejs GitHub organization.
