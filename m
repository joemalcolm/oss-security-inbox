X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["897" "Friday" "24" "July" "2015" "23:12:48" "-0700" "Andy Lutomirski" "luto@amacapital.net" "<55B328E0.8050701@amacapital.net>" "23" "[oss-security] Re: Linux x86_64 NMI security issues" nil nil nil "7" "2015072506:12:48" "[oss-security] Re: Linux x86_64 NMI security issues" (number mark "        luto@amacapi Jul 24   23/897   " thread-indent "\"[oss-security] Re: Linux x86_64 NMI security issues\"\n") "<CA+5PVA7MZCryECtCVw1zLacEqvRWrsq3rSnZKPBJjcwC3e0h=g@mail.gmail.com>" ("<CALCETrXViSiMG79NtqN79NauDN9B2k9nOQN18496h9pJg+78+g@mail.gmail.com>" "<CA+5PVA7MZCryECtCVw1zLacEqvRWrsq3rSnZKPBJjcwC3e0h=g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 2025 invoked by uid 550); 25 Jul 2015 06:13:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1963 invoked from network); 25 Jul 2015 06:13:04 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-type
         :content-transfer-encoding;
        bh=Q4kxJ08/8m43ZEXOhyV9M/uL6S2uldsbDoYnsXbrCZ0=;
        b=Da8e7xU1phDHqH/JUQSgwUOokB5Vt8O/uzNlqa3QpFSI7SGhVvuHtI4HXg8ruujhYQ
         5B2/+Ow8tUmfa3hMMG+xFSNMO1+l2Ahs5jw/hWL3vMiYyfRyRX+l25+hTJZD7iReIZPZ
         1iFCV+KGuMlsECkLgx66zNB+ktX6OGDsBne1BuRlc7ZJc7v7XrwOApodx93PUEIiedcD
         gNSQ7ODHobeTxPZVPDXDsKOWfI3fHEFzjRYrp+g2Xd4Q9uNA3HcuHH+bGJvMdrPFTLX7
         kmm8W5Lwc7CnvjbOFjLb9yhfCzX3S7UUwtYOlltPr8+XKnIpks1n7kXEqTelZNg4kNjb
         jxug==
X-Gm-Message-State: ALoCoQkWShP9u1CeTOBRNN5Pa3adaCApmpaL4NCCUqKW5qv8D9ZfbZOl20P4/ZtxEkupGrhIRYWD
X-Received: by 10.66.186.138 with SMTP id fk10mr39264965pac.75.1437804772596;
        Fri, 24 Jul 2015 23:12:52 -0700 (PDT)
References: <CALCETrXViSiMG79NtqN79NauDN9B2k9nOQN18496h9pJg+78+g@mail.gmail.com>
 <CA+5PVA7MZCryECtCVw1zLacEqvRWrsq3rSnZKPBJjcwC3e0h=g@mail.gmail.com>
Message-ID: <55B328E0.8050701@amacapital.net>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <CA+5PVA7MZCryECtCVw1zLacEqvRWrsq3rSnZKPBJjcwC3e0h=g@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Cc: oss security list <oss-security@lists.openwall.com>
Date: Fri, 24 Jul 2015 23:12:48 -0700
From: Andy Lutomirski <luto@amacapital.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Linux x86_64 NMI security issues
To: Josh Boyer <jwboyer@fedoraproject.org>

On 07/24/2015 07:16 AM, Josh Boyer wrote:
> On Wed, Jul 22, 2015 at 2:12 PM, Andy Lutomirski <luto@amacapital.net> wrote:
>> Note: Several of these fixes each depend on a few patches immediately
>> before them.  The NMI stack switching fix also depends on changes made
>> in 4.2 and will appear to apply but crash on older kernels.  I have a
>> different variant that's more portable.
> 
> Given that none of these are going to apply cleanly on older kernels,
> do you have backports available for 4.1.y and the longterm stable
> kernels?
> 

There's this:

https://git.kernel.org/cgit/linux/kernel/git/luto/linux.git/commit/?h=x86/nmi-backport

which is a combined effort of me and Ben Hutchings.  It's not synced up
to the fixes in Linus' tree.

Note that even Linus' tree doesn't have the synchronous modify_ldt fix
yet.  I sent a hopefully final version of that out a few minutes ago.

--Andy
