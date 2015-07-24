X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["489" "Friday" "24" "July" "2015" "10:16:04" "-0400" "Josh Boyer" "jwboyer@fedoraproject.org" "<CA+5PVA7MZCryECtCVw1zLacEqvRWrsq3rSnZKPBJjcwC3e0h=g@mail.gmail.com>" "11" "[oss-security] Re: Linux x86_64 NMI security issues" nil nil nil "7" "2015072414:16:04" "[oss-security] Re: Linux x86_64 NMI security issues" (number mark "        jwboyer@fedo Jul 24   11/489   " thread-indent "\"[oss-security] Re: Linux x86_64 NMI security issues\"\n") "<CALCETrXViSiMG79NtqN79NauDN9B2k9nOQN18496h9pJg+78+g@mail.gmail.com>" ("<CALCETrXViSiMG79NtqN79NauDN9B2k9nOQN18496h9pJg+78+g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28412 invoked by uid 550); 24 Jul 2015 14:20:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18177 invoked from network); 24 Jul 2015 14:16:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:date:message-id:subject
         :from:to:cc:content-type;
        bh=YWIR1Y7NHT48jZYFpMIzD/e39SvJWwMZZMiQgGEyCbU=;
        b=RrmrvnOtn+8i0eSzgqDp2Q0mgGhDS7oo+9voPLqsOmSkRpkbcWd9iD30dkYfhecIxz
         8LTXLzuOh+TkAoheDdxh9sUt/SRelr2/Jz7QSep3CJGjsiVEN4uhl2uKWBt0lUzcxxRb
         BYZytIvVpUI3CYBcpxtEDIUI3QBorHNjiBcm6I5TcFCDOGNRUAeY3Zx7DWUdg7lqTMzC
         RB9w6FnbI1Cwiy6drCRonLE7f27B3zoQKHhN8KZPto247W243jedkCFhGd6x/Eg6sjhD
         71K+2tbqRdLJ4noKBS3tUHdCMuBsEAfbzOFPKydPVOsi6rS70A1lUu5vS0TEidHzB/SI
         fLZA==
MIME-Version: 1.0
X-Received: by 10.50.109.138 with SMTP id hs10mr7252436igb.48.1437747364739;
 Fri, 24 Jul 2015 07:16:04 -0700 (PDT)
In-Reply-To: <CALCETrXViSiMG79NtqN79NauDN9B2k9nOQN18496h9pJg+78+g@mail.gmail.com>
References: <CALCETrXViSiMG79NtqN79NauDN9B2k9nOQN18496h9pJg+78+g@mail.gmail.com>
X-Google-Sender-Auth: CK9GmHBjC-sV8ib-FI3ai-_Avv4
Message-ID: <CA+5PVA7MZCryECtCVw1zLacEqvRWrsq3rSnZKPBJjcwC3e0h=g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: oss security list <oss-security@lists.openwall.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Date: Fri, 24 Jul 2015 10:16:04 -0400
From: Josh Boyer <jwboyer@fedoraproject.org>
Reply-To: oss-security@lists.openwall.com
Sender: jwboyer@gmail.com
Subject: [oss-security] Re: Linux x86_64 NMI security issues
To: Andy Lutomirski <luto@amacapital.net>

On Wed, Jul 22, 2015 at 2:12 PM, Andy Lutomirski <luto@amacapital.net> wrote:
> Note: Several of these fixes each depend on a few patches immediately
> before them.  The NMI stack switching fix also depends on changes made
> in 4.2 and will appear to apply but crash on older kernels.  I have a
> different variant that's more portable.

Given that none of these are going to apply cleanly on older kernels,
do you have backports available for 4.1.y and the longterm stable
kernels?

josh
