X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3566" "Sunday" "11" "October" "2015" "19:25:49" "-0500" "William Pitcock" "nenolod@dereferenced.org" "<CA+T2pCE_grvrLnvW9xkv9ct0S7soPj3gpmucy2MtnZkdkk7=dw@mail.gmail.com>" "102" "Re: [oss-security] ircd-ratbox and Derivatives OOM by MONITOR Command" nil nil nil "10" "2015101200:25:49" "[oss-security] ircd-ratbox and Derivatives OOM by MONITOR Command" (number mark "U       nenolod@dere Oct 11  102/3566  " thread-indent "\"Re: [oss-security] ircd-ratbox and Derivatives OOM by MONITOR Command\"\n") "<20151011035552.GA26094@fluttershy>" ("<20151011035552.GA26094@fluttershy>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22273 invoked by uid 550); 12 Oct 2015 00:26:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22253 invoked from network); 12 Oct 2015 00:26:01 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type;
        bh=/6wfCcnXxV8csgBDtJx+sfozXctZDZ0RYlMkb1b/C5w=;
        b=eRY5AlnZcWwLVKrJpBLb7DSl4PPY1PXZH1zP4C4oHJG8gkrmJhtJW0Ic6F6JxiUrLH
         CiHHaAILOYnzjzg+2MNLVST14rQSFanBszbKSp5mEdAbcxgn8805Wcc6u+58PJyBqBtu
         ame2BDJl6xT3eDwZ4UFHQ8noVYDUBG4b+cVPh5tRmp9cGIVUTGvb9snfxYRBFkL4QN/F
         4206wrsQGZ2pD+fSFJW+lkGhjFRT/LZ4nHAhb5sF/8stsMNJwCIWmH002ZGv+PthFCaw
         q/txGRFGFo/c7AWlZfH/AJmA7+VYz/fb3rbUxDhcB8r8U+y87zbz620pAcO9XqWjKHE5
         4V0w==
X-Gm-Message-State: ALoCoQndTiXHsgCbVX3gpaRCP9J82CFYNDsMiwInpdAU5vaGUllE59srx0Z8zfP5E9pymzE4SOaF
MIME-Version: 1.0
X-Received: by 10.180.24.33 with SMTP id r1mr11560770wif.7.1444609549634; Sun,
 11 Oct 2015 17:25:49 -0700 (PDT)
In-Reply-To: <20151011035552.GA26094@fluttershy>
References: <20151011035552.GA26094@fluttershy>
Date: Sun, 11 Oct 2015 19:25:49 -0500
Message-ID: <CA+T2pCE_grvrLnvW9xkv9ct0S7soPj3gpmucy2MtnZkdkk7=dw@mail.gmail.com>
From: William Pitcock <nenolod@dereferenced.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Content-Type: text/plain; charset=UTF-8
Subject: Re: [oss-security] ircd-ratbox and Derivatives OOM by MONITOR Command

Hello,

On Sat, Oct 10, 2015 at 10:55 PM, Christine Dodrill
<me@christine.website> wrote:
> Elemental-IRCd Security Release: 2015-10-07
> ===========================================
>
> CVE-2015-5290
>
> Elemental-IRCd reference code: e50b0d59-f3c5-4472-a3cd-e2e07731417c
>
> Permanent link: http://elemental-ircd.com/security/e50b0d59-f3c5-4472-a3cd-e2e07731417c

LOL.

>
> Distribution of this document is unlimited and encouraged as long as it
> remains unchanged.
>
> ## Summary
>
> Elemental-IRCd is an Internet Relay Chat (IRC / RFC 1459) daemon intended
> for stable, secure deployments for both private and public-facing users. It
> provides quick messaging across servers, even when deployed on a global
> scale. One of the recent goals of the project has been to limit memory
> leaks and test functionality to ensure quality for all users.
>
> While looking for resource leaks and other things to test inside
> Elemental-IRCd git master, we stumbled on an unfortunate programming error
> in how the MONITOR command was handled that can lead to a system
> out-of-memory event if an attacker hammers at the MONITOR command over and
> over.

Sorry to derail your ego-trip, but it's just a pointer-sized memory
leak.  You have to spam it very aggressively to make it leak in any
sort of drastic way.

> ## Affected Daemons
>
> In our testing, the following IRC daemons were affected:
>
> ircd-ratbox 3.0.8, SVN trunk and older
> charybdis 3.5-dev and older
> ircd-seven 1.1.3 and older
> Elemental-IRCd 6.6.2 and older
> Other derivatives of these daemons will be affected as well unless for some
> reason they came across and fixed that issue before this release.

Thank you for your lack of upstream bug report.  Thankfully, this
isn't really a critical security problem, as you describe below:

>
> ## Vulnerability Information
>
> Public release date: 2015-10-07
> CVE: CVE-2015-5290
> CVSS v3:
> CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H/E:H/RL:W/RC:C/CR:H/IR:L/AR:H/MAV:N/MAC:L/MPR:N/MUI:N/MC:L/MI:N/MA:H
> CVSS score: 8.8 / 8.6 / 9.5
> Attack complexity: Trivial (less than 30 lines of code)

I'm totally quaking in my boots at this info-sec disaster, it must be
a security consultant's dream.

Again, people, it's just a relatively minor memory leak, in a codebase
with actual CVE-worthy bugs, mainly introduced by the developers who
"discovered" this one.

>
> ## Notes
>
> If applying these patches is somehow impossible, the attack can be
> completely mitigated by unloading the m_monitor.so module using the
> following command provided you have permission to load and unload modules:
>
>     /MODUNLOAD m_monitor.so
>
> The required privilege to do this is defined as the admin flag inside the
> flags section of the relevant operator{} block in the configuration
> (OLD:O:Line).
>
> This patch can be applied at runtime and will automatically garbage-collect
> any memory that has been leaked in the past.

Except it doesn't really work, because the affected objects are placed
on a magazine allocator, so you are just left with a fragmented
allocator.  At best, it will just ensure there is no further memory
leak.  But of course you could just not care and wait patiently for
the next release, because there are far more effective ways to take
down the product in question.

> A full set of technical details will be released as soon as it is confirmed
> that major IRC networks affected by this have been patched.

I'll save you the time, it's basically:

while(1) {
   send MONITOR + offline_nick
   send MONITOR - offline_nick
}

William
