Received: (qmail 10012 invoked by uid 550); 21 Jan 2025 10:54:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9988 invoked from network); 21 Jan 2025 10:54:06 -0000
Date: Tue, 21 Jan 2025 11:53:56 +0100
From: Christian Brabandt <cb@256bit.org>
To: oss-security@lists.openwall.com
Message-ID: <Z498xJYy2eZ9T+42@256bit.org>
References: <Z47IfZiDnNqGAmCt@256bit.org>
 <9ce624fb-1a7c-4ccb-8816-7aadbb754e50@gentoo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <9ce624fb-1a7c-4ccb-8816-7aadbb754e50@gentoo.org>
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: Re: [oss-security] Subject: [vim-security] segmentation fault in
 win_line() in Vim < 9.1.1043

Eli, sorry for the duplicate. I messed up the reply...

On Mon, 20 Jan 2025, Eli Schwartz wrote:

> It seems strange to me to say that it is a vulnerability, for a vim
> option that accepts a full-blown script to also crash when fuzzed.
>
> It's not an attack vector to crash /bin/bash when fed a malformed
> script, so why is there anything to comment on with regard to vim 
> either?

It was reported to us via the Security Advisory feature of Github and
while I am convinced that this cannot be used to do any harm to users
(except for crashing), there was still a small possibility that this may
have been abused in the future.

So when in doubt, I go with the handling this as security relevant.

> How is this "medium" impact?

The CVE calculator tends to exaggerate the score, even when being
conservative with each metric.

Thanks,
Christian
