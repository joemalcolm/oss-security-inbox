X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1581" "Monday" "2" "December" "2019" "09:39:32" "-0800" "Tavis Ormandy" "taviso@gmail.com" "<20191202173932.GA3369@thinkstation>" "43" "Re: [oss-security] virtual consoles" "^Date:" nil nil "12" "2019120217:39:32" "[oss-security] virtual consoles" (number mark "        taviso@gmail Dec  2   43/1581  " thread-indent "\"Re: [oss-security] virtual consoles\"\n") "<20191202172811.GA7102@openwall.com>" ("<20191202165638.GA3235@thinkstation>" "<20191202172811.GA7102@openwall.com>") nil nil nil nil nil nil nil "Re: [oss-security] virtual consoles" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19853 invoked by uid 550); 2 Dec 2019 18:10:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7986 invoked from network); 2 Dec 2019 17:39:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=f6HuAlKHcwX6tZIMcjSt+sHXvuSs9DpREUHCcHT3YeU=;
        b=p4WKswrlEkqOjDMhYh98Y4Fwg0/oHE+iWdpQ75GxGXOMsyNZbgnPyyOfP9jvj34Aui
         GmqjQBxP3/Qkdh7OMqyD3zrb70H+t4kmYrybcY1dhMgBDke3t3J0gnwNpVaBGIMTTUtx
         W6PmikthicGUAer967tWVbs9SCmffijAp6JAXF/8lzpfb2239veFT8YQBESyjELm4GDU
         PztPsvSZdieJWPeGUTqCo1Arn+yav1JPJ53uMNBd4k/w98djd3e3CqEpi9dXbY5+HSCa
         TIs1bF83AMzXn1si1fB2sc7nUiolgIIeVu1TUsfvKYKQ9M/m78ScirDwwsRL9gP04tDJ
         QnWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=f6HuAlKHcwX6tZIMcjSt+sHXvuSs9DpREUHCcHT3YeU=;
        b=SDXY095iZw21zNG1BQI1Va6uWwjXiIAW+kvxZPTx5850XWHrEwtnKnMFOcXS4ejC3K
         9tbXw8jJL1SLNIm199xpMe/t/mvmYpiAEtfnimqAutjuEw0UsYnpit+O7jkKYINMTZNP
         +J4u9Udx5Q2ANYR7+4zJNcB0qBYUS75JUWjoMfv+wzeRvjVpqFvOUwpOikkbI9AA2a17
         jeRCQ+pSqMeQ1VA2Q6cGa2r0wlSeSdkZFlzXLYxZ6Y4mq5Yss2su855TCFj+F4Ji2j4b
         dO5xWBbDBDIRnkqJSeSh0JDH/LSec9Je1KwiYgAt7spIYVz4SfnEIQugtjagroCoTjLC
         o/gA==
X-Gm-Message-State: APjAAAUpb3bHKE/1V99R1seJfRVus5O7qHCcGJ7U0ephjloL2RtQcuO3
	cAfNAjsqJIvIWgpG800Lr7TcWYUHAhs=
X-Google-Smtp-Source: APXvYqyDR7N83koMpBG0bklID6Z/6Pa+LxKX2obzq7LJUJmv2Ozg8HXMqs/4NgZAQYrhT0b/JFqeuA==
X-Received: by 2002:aa7:972a:: with SMTP id k10mr22167138pfg.140.1575308374326;
        Mon, 02 Dec 2019 09:39:34 -0800 (PST)
Message-ID: <20191202173932.GA3369@thinkstation>
References: <20191202165638.GA3235@thinkstation>
 <20191202172811.GA7102@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191202172811.GA7102@openwall.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Date: Mon, 2 Dec 2019 09:39:32 -0800
From: Tavis Ormandy <taviso@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] virtual consoles
To: oss-security@lists.openwall.com

On Mon, Dec 02, 2019 at 06:28:12PM +0100, Solar Designer wrote:
> On Mon, Dec 02, 2019 at 08:56:38AM -0800, Tavis Ormandy wrote:
> > Regardless of your position, this is certainly possible on desktop Linux
> > too, unprivileged users can start a new X server and switch virtual
> > console, even over ssh.
> > 
> > e.g.
> > 
> > $ dbus-send --system --print-reply --dest=org.freedesktop.login1 /org/freedesktop/login1/seat/seat0 org.freedesktop.login1.Seat.SwitchTo uint32:2
> > 
> > (note: object paths may vary by distro, change the 2 to a different
> > number if you're already on VT2, or seat0 if you're on a different seat)
> 
> If this in fact works over SSH and from a user account different than
> the one logged in on the currently active virtual console, then I'd say
> it's a vulnerability on its own, regardless of the social engineering
> aspects you mention.

Definitely does on Fedora and Ubuntu, an entirely remote unprivileged
user can use it, even if root is logged in at the virtual console.

It's very simple to switch to an X server displaying a fake screensaver
while the user is sitting there.

> 
> Why does this functionality even exist?
> 
> > Should this have some policykit action requirement, or require physical
> > presence? I don't know the answer.
> 
> Maybe simply drop the misfeature?
> 
> Alexander

That would make things simpler! I can't think of any reason this would
ever be useful.

Tavis

-- 
-------------------------------------
taviso@sdf.lonestar.org | finger me for my pgp key.
-------------------------------------------------------
