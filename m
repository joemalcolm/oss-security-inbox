Received: (qmail 17560 invoked by uid 550); 31 Mar 2026 16:00:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17540 invoked from network); 31 Mar 2026 16:00:07 -0000
Date: Tue, 31 Mar 2026 17:57:55 +0200
From: Christian Brabandt <cb@256bit.org>
To: Demi Marie Obenour <demiobenour@gmail.com>
Cc: oss-security@lists.openwall.com
Message-ID: <acvvA2uP7s/aGD9q@256bit.org>
References: <aco9Ai89pj+OQ0YS@256bit.org>
 <e1cbe881-2d13-442f-8977-39baaad84ec8@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e1cbe881-2d13-442f-8977-39baaad84ec8@gmail.com>
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: Re: [oss-security] [vim-security] Vim tabpanel modeline escape
 affects Vim < 9.2.0272


On Mo, 30 Mär 2026, Demi Marie Obenour wrote:

> On 3/30/26 05:06, Christian Brabandt wrote:
> > ## Impact
> > An attacker who can deliver a crafted file to a victim achieves 
> > arbitrary command execution with the privileges of the user running Vim. 
> > The attack requires only that the victim opens the file; no further 
> > interaction is needed. `modeline` is enabled by default and 
> > `modelineexpr` does not need to be enabled. Vim builds with `+tabpanel` 
> > (FEAT_HUGE, the default) are affected.
> 
> Should `modeline` be disabled by default in future releases?
> It's a huge attack surface.

Indeed, it is probably time to disable this by default: 
https://github.com/vim/vim/pull/19875

Thanks,
Christian
-- 
Zwei Schneeflocken begegnen sich auf ihrem Weg zur Erde.
Die eine:
"Wohin?"
"Nach Bayern - Wintersport. Und du?"
"Nach Norddeutschland - Verkehrschaos."
