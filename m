Received: (qmail 31867 invoked by uid 550); 19 Jul 2024 13:10:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23997 invoked from network); 19 Jul 2024 12:44:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1721393090;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=48JVFgMA/86xFXtOSgW5z2oqQQDDpQo/XJF1JqXOeZc=;
	b=OqnQZSfE5j3fIw2vtFVWdh1ut0/83PO6yBHUakT/dU15a0p3S4aEX4LyMeRWyW2Nqp0rFp
	bVmAHWxxQByDTAg27fFiGqtYwa3MGIHNEIC5oBsaIBZAd9uzObcUc72001eRp8xCodS7UL
	23LFubLgifVGM5ij5/TktIUbEpY7N9g=
X-MC-Unique: aicE2H7SPTCTNJ62tgBq6Q-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721393088; x=1721997888;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=48JVFgMA/86xFXtOSgW5z2oqQQDDpQo/XJF1JqXOeZc=;
        b=HWrYkBUDSd+uhFvZw9CoY06IDzs/OaR6Y7lBPtF1e3Avegh3arHtTdi510vDWVEV5l
         lEdZ1cD9xwLnqJkD/mcYfZCszaOPojquEDQyamQNgO+YRncZfiGNbN54M8zF104VhOVf
         QGmEsHKxuO8MTGCUuNFMEVY585dmiXtR3gm4ETcN75VstQUDTMFYzI3zYeF6QZxgqTlv
         ViVX0dfhCfJJmSL4FZxY0SuYxsU3e/AU1PzF4RIZIN4osYJpyGBs2vxh3+0BINFXon6p
         sTBZngTrOrbBPniQDJXfkK2YixEyGy2r5QsAHT24fAEq7di4m0nEWSWEUbElXtKm4xfm
         0ASA==
X-Gm-Message-State: AOJu0YyrX1ps1jBxED5QckTjlGRRsMCMj1qeXktG2XGzETwXveDgIWbN
	dINQ5jmA6eOAm8cS7iH58ddTMCscNJ7i/oInOdmL0PAlF0hMC/C6xmHGPCWBnX33HbbKrtSezG0
	5TTcIxCGS64CBqdtlne3eVR9uafqRSC3FGrudYJQ1hxycV7JXTpZmxYkAac8tuqcaRpFEqDlA/5
	tRxPPjPJfu3NSTOEcEjsldawMN7SRkKVqRgoy462KkOrl1hpa8
X-Received: by 2002:a05:690c:6611:b0:62f:f535:f38 with SMTP id 00721157ae682-666016fca39mr83650517b3.8.1721393088179;
        Fri, 19 Jul 2024 05:44:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFeD0PNANTHdY+rPJIqawQNfCDcjprnZn+1SD+E+6eiiwmvtG1CJwZXSGIyxpnS5oc+wAP54v4Abr0cqZzFTf8=
X-Received: by 2002:a05:690c:6611:b0:62f:f535:f38 with SMTP id
 00721157ae682-666016fca39mr83650247b3.8.1721393087735; Fri, 19 Jul 2024
 05:44:47 -0700 (PDT)
MIME-Version: 1.0
References: <46450232-0958-4f83-917e-0627346bf519n@googlegroups.com>
 <519892a2-6a90-45fb-a3c3-99a0159bb210n@googlegroups.com> <20240626004509.GA16803@openwall.com>
 <20240711174040.GA26749@openwall.com>
In-Reply-To: <20240711174040.GA26749@openwall.com>
From: Yogesh Mittal <ymittal@redhat.com>
Date: Fri, 19 Jul 2024 18:14:36 +0530
Message-ID: <CAJvML36R25a_EG_bxiONG4Co8naSDdO64q5mZEN+pskCiOUGwg@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Rafael Gonzaga <work@rafaelgss.dev>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="0000000000008386a3061d990fcb"
Subject: Re: [oss-security] Fwd: Node.js security updates for all active
 release lines, July 2024

--0000000000008386a3061d990fcb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Some of those CVE's haven't been published yet and show as "Reserved" on
cve.org. So could you please expedite the publication? Thanks in advance.

Thanks and regards,

Yogesh Mittal

Manager, Product Security Vulnerability Management

Red Hat Pune <https://www.redhat.com/>

ymittal@redhat.com
M: +91-9637123455


<https://www.redhat.com/>


On Thu, Jul 11, 2024 at 11:12=E2=80=AFPM Solar Designer <solar@openwall.com=
> wrote:

> On Wed, Jun 26, 2024 at 02:45:09AM +0200, Solar Designer wrote:
> > On Tue, Jun 25, 2024 at 10:54:21AM -0700, Rafael Gonzaga wrote:
> > > ---------- Mensagem encaminhada ---------
> > > De: Rafael Gonzaga <work@rafaelgss.dev>
> > > Data: ter??a-feira, 25 de junho de 2024 ??s 14:53:37 UTC-3
> > > Assunto: Node.js security updates for all active release lines, July
> 2024
> > > Para: nodejs-sec <nodejs-sec@googlegroups.com>
> > >
> > > The Node.js project will release new versions of all supported release
> > > lines on or shortly after July 2nd, 2024
> > > For more information see:
> > > https://nodejs.org/en/blog/vulnerability/july-2024-security-releases
> >
> > Thanks.  I include below the Markdown source of the full blog post
> > above.  For further occasions or if someone else wants to help post
> > these in here, to obtain it on the blog post click "Edit this page",
> > which gets to GitHub, then click "Raw".
>
> That blog posted was since updated with the actual detail.  I quote the
> current revision below.
>
> Alexander
>
> ---
> date: 2024-07-08T03:00:00.000Z
> category: vulnerability
> title: Monday, July 8, 2024 Security Releases
> slug: july-2024-security-releases
> layout: blog-post
> author: Rafael Gonzaga
> ---
>
> ## Security releases available
>
> Updates are now available for the 22.x, 20.x, 18.x Node.js release lines
> for the
> following issues.
>
> ## Bypass incomplete fix of CVE-2024-27980 (CVE-2024-36138) - (High)
>
> The CVE-2024-27980 was identified as an incomplete fix for the BatBadBut
> vulnerability.
> This vulnerability arises from improper handling of batch files with all
> possible extensions on Windows via `child_process.spawn` /
> `child_process.spawnSync`.
> A malicious command line argument can inject arbitrary commands and
> achieve code execution
> even if the shell option is not enabled.
>
> This vulnerability affects all users of `child_process.spawn` and
> `child_process.spawnSync`
> on Windows in all active release lines.
>
> Impact:
>
> - This vulnerability affects all Windows users in active release lines:
> 22.x, 20.x, 18.x
>
> Thank you, to tianst for reporting this vulnerability and thank you
> RafaelGSS for fixing it.
>
> ## Bypass network import restriction via data URL (CVE-2024-22020) -
> (Medium)
>
> A security flaw in Node.js allows a bypass of network import restrictions.
>
> By embedding non-network imports in data URLs, an attacker can execute
> arbitrary code, compromising system security.
>
> Verified on various platforms, the vulnerability is mitigated by
> forbidding data URLs in network imports.
>
> Exploiting this flaw can violate network import security, posing a risk to
> developers and servers.
>
> Impact:
>
> - This vulnerability affects all users in active release lines: 22.x,
> 20.x, 18.x
>
> Thank you, to dittyroma for reporting this vulnerability and thank you
> RafaelGSS for fixing it.
>
> ## fs.fchown/fchmod bypasses permission model (CVE-2024-36137) - (Low)
>
> A vulnerability has been identified in Node.js, affecting users of the
> experimental
> permission model when the `--allow-fs-write` flag is used.
>
> Node.js Permission Model do not operate on file descriptors, however,
> operations such
> as `fs.fchown` or `fs.fchmod` can use a "read-only" file descriptor to
> change the
> owner and permissions of a file.
>
> This vulnerability affects all users using the experimental permission
> model in Node.js 20 and Node.js 22.
>
> Please note that at the time this CVE was issued, the permission model is
> an experimental feature of Node.js.
>
> Impact:
>
> - This vulnerability affects all users in active release lines: 22.x, 20.x
>
> Thank you, to 4xpl0r3r for reporting this vulnerability and thank you
> RafaelGSS for fixing it.
>
> ## fs.lstat bypasses permission model (CVE-2024-22018) - (Low)
>
> A vulnerability has been identified in Node.js, affecting users of the
> experimental permission model when
> the `--allow-fs-read` flag is used.
> This flaw arises from an inadequate permission model that fails to
> restrict file stats through the
> `fs.lstat` API. As a result, malicious actors can retrieve stats from
> files that they do not have explicit read access to.
>
> This vulnerability affects all users using the experimental permission
> model in Node.js 20 and Node.js 22.
>
> Please note that at the time this CVE was issued, the permission model is
> an experimental feature of Node.js.
>
> Impact:
>
> - This vulnerability affects all users in active release lines: 22.x, 20.x
>
> Thank you, to haxatron1 for reporting this vulnerability and thank you
> RafaelGSS for fixing it.
>
> ## Permission model improperly processes UNC paths (CVE-2024-37372) - (lo=
w)
>
> The Permission Model assumes that any path starting with two backslashes
> \\ has a four-character prefix that can be ignored, which is not always
> true. This subtle bug leads to vulnerable edge cases.
>
> This vulnerability affects Windows users of the Node.js Permission Model
> in version v22.x and v20.x
>
> Impact:
>
> - This vulnerability affects all users in active release lines: 22.x, 20.x
>
> Thank you, to tniessen for reporting this vulnerability and thank you
> RafaelGSS for fixing it.
>
> ## Downloads and release details
>
> - [Node.js v18.20.4](/blog/release/v18.20.4/)
> - [Node.js v20.15.1](/blog/release/v20.15.1/)
> - [Node.js v22.4.1](/blog/release/v22.4.1/)
>
> ## (Update 04-Jul-2024) Security Release target July 8th
>
> Due to the U.S. National Holiday on July 4th, the Node.js Security
> Releases will
> be available on or shortly after Monday, July 8th, 2024.
>
> The release is being postponed to ensure that people have sufficient time
> to
> upgrade before the weekend, as releasing patches on a holiday would provi=
de
> limited time for updates.
>
> ## (Update 02-Jul-2024) Security Release target July 4th
>
> The Node.js Security Releases will be available on, or shortly after,
> Thursday, July 4th, 2024.
>
> # Summary
>
> The Node.js project will release new versions of the 22.x, 20.x, 18.x
> releases lines on or shortly after, Tuesday, July 2, 2024 in order to
> address:
>
> - 1 high severity issues.
> - 1 medium severity issues.
> - 3 low severity issues.
>
> Node.js fetch will be upgraded to undici v6.19.2 on Node.js 18.x and
> Node.js 20.x.
> Node.js 22.x already includes undici v6.19.2.
>
> ## Impact
>
> The 22.x release line of Node.js is vulnerable to 1 high severity issues,
> 1 medium severity issues, 3 low severity issues.
> The 20.x release line of Node.js is vulnerable to 1 high severity issues,
> 1 medium severity issues, 3 low severity issues.
> The 18.x release line of Node.js is vulnerable to 1 high severity issues,
> 1 medium severity issues.
>
> It's important to note that End-of-Life versions are always affected when
> a security release occurs.
> To ensure your system's security, please use an up-to-date version as
> outlined in our
> [Release Schedule](https://github.com/nodejs/release#release-schedule).
>
> ## Release timing
>
> Releases will be available on, or shortly after, Tuesday, July 2, 2024.
>
> ## Contact and future updates
>
> The current Node.js security policy can be found at
> https://nodejs.org/en/security/.
> Please follow the process outlined in
> https://github.com/nodejs/node/blob/master/SECURITY.md if you wish to
> report a vulnerability in Node.js.
>
> Subscribe to the low-volume announcement-only nodejs-sec mailing list at
> https://groups.google.com/forum/#!forum/nodejs-sec to stay up to date on
> security vulnerabilities and security-related releases of Node.js and the
> projects maintained in the nodejs GitHub organization.
>
>

--0000000000008386a3061d990fcb--

