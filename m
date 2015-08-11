X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["677" "Tuesday" "11" "August" "2015" "02:01:20" "+0200" "Thomas D." "whissi@whissi.de" "<55C93B50.30104@whissi.de>" "25" "Re: [oss-security] Re: Linux x86_64 NMI security issues" nil nil nil "8" "2015081100:01:20" "[oss-security] Re: Linux x86_64 NMI security issues" (number mark "U       whissi@whiss Aug 11   25/677   " thread-indent "\"Re: [oss-security] Re: Linux x86_64 NMI security issues\"\n") "<55B328E0.8050701@amacapital.net>" ("<CALCETrXViSiMG79NtqN79NauDN9B2k9nOQN18496h9pJg+78+g@mail.gmail.com>" "<CA+5PVA7MZCryECtCVw1zLacEqvRWrsq3rSnZKPBJjcwC3e0h=g@mail.gmail.com>" "<55B328E0.8050701@amacapital.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9683 invoked by uid 550); 11 Aug 2015 06:14:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15910 invoked from network); 11 Aug 2015 00:01:34 -0000
To: oss-security@lists.openwall.com
References: <CALCETrXViSiMG79NtqN79NauDN9B2k9nOQN18496h9pJg+78+g@mail.gmail.com>
 <CA+5PVA7MZCryECtCVw1zLacEqvRWrsq3rSnZKPBJjcwC3e0h=g@mail.gmail.com>
 <55B328E0.8050701@amacapital.net>
From: "Thomas D." <whissi@whissi.de>
Message-ID: <55C93B50.30104@whissi.de>
Date: Tue, 11 Aug 2015 02:01:20 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <55B328E0.8050701@amacapital.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Re: Linux x86_64 NMI security issues

Hi,

Andy Lutomirski wrote:
>> Given that none of these are going to apply cleanly on older kernels,
>> do you have backports available for 4.1.y and the longterm stable
>> kernels?
>>
> 
> There's this:
> 
> https://git.kernel.org/cgit/linux/kernel/git/luto/linux.git/commit/?h=x86/nmi-backport
> 
> which is a combined effort of me and Ben Hutchings.  It's not synced up
> to the fixes in Linus' tree.
> 
> Note that even Linus' tree doesn't have the synchronous modify_ldt fix
> yet.  I sent a hopefully final version of that out a few minutes ago.

Looks like linux-4.1.5 doesn't contain the fix.

Wasn't the patch set sent to stable-linux? Is it not yet ready?


-Thomas

