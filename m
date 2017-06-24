X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2146" "Sunday" "25" "June" "2017" "00:07:10" "+0800" "Shawn" "citypw@gmail.com" "<CABniQZNP2rP2OBdSYtVwrVGVL3wu52_Z_1bLmK7=ZRhgU6ZQOg@mail.gmail.com>" "54" "Re: [oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit method" "^Cc:" nil nil "6" "2017062416:07:10" "[oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit method" (number mark "        citypw@gmail Jun 25   54/2146  " thread-indent "\"Re: [oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit method\"\n") "<20170624155549.GA31293@openwall.com>" ("<20170624005003.GB27479@grsecurity.net>" "<CAADWXX8JYe-AewtzoY6VBVLPTs+UvnfZst76vL4tccf6x9cY=g@mail.gmail.com>" "<CABniQZPtHV+-XiHPRUGcDe+KwEd1JpPdcDb2Xn63t2Z_Os6ETQ@mail.gmail.com>" "<20170624155549.GA31293@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14239 invoked by uid 550); 24 Jun 2017 16:14:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7813 invoked from network); 24 Jun 2017 16:07:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=Gn4sWQwcRc5fhK/VUow+qMlAlY/2QQJu3in5rB2zh6U=;
        b=QlWePIQ1O1LLARkHKbHqbvobaNNhroGoXBJbHrVI5pNTEqUfomcluIdAujnUTT4sYI
         bbJzDFrTc9WwvCZU6ve+LenmIc8gzC47H87WYb25O7nF/ztmetVqDoLeb5RitxbocAFl
         41frZ7N0WaQ+uVO6g8X4Ktv9lgDLhXnl9ZmuVK9xTthrGy1JpgQWvgBV5Tks3GcCxU7O
         /r9Ypfyf0Y52kzG7MAzomStj3RJXgPtyZL16ftdkGpIlbC67enbc6mkF5JqmwC2MQp9E
         APUtaOjh+t/QjVj4/XMgPGpLtUeZnsxe4OGWmpqB+QgEl+iUPt0n3vs46bUhw8xHG9zH
         48Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=Gn4sWQwcRc5fhK/VUow+qMlAlY/2QQJu3in5rB2zh6U=;
        b=BJY/SlFt6p8WSKfyzq89RyuSH1iQJwGjiUFsqbwNYyrCKN18cOvvCB0ip8C5nYCOxG
         G2sC4BMBkLvXUWMLfRRvD3qDNwg/IrRRd7n+ooXp9ZOeSx2n+ZBu/9Hr2iO3+bMnKM/h
         U9kc29GoNgHN69egJ6gKtebiX/d5DnWRM/1HmwgeHYYiHePPH1SAqjHDbiVnA04JKihV
         Tetk4qUD53qq62XThxavFmlxT1x/+N0yXidp5cCBHU0BtWqL1GJOMh/8SSpnXQ/kQK+j
         ONezmelS95tQ2MeW20osM9UFOxdsOnSVFTmll933JliHEof+LPAdXnroKq4dYaTJ3Fk1
         5Wdg==
X-Gm-Message-State: AKS2vOxL8Owp6HO0jFYEuDp8fKwmjFWIjUieRUhNJMoWtAipd5bfFKdg
	q4U76r9xzmbpH3sdX450yP6oBwVJ9g==
X-Received: by 10.37.5.19 with SMTP id 19mr10195761ybf.134.1498320430650; Sat,
 24 Jun 2017 09:07:10 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170624155549.GA31293@openwall.com>
References: <20170624005003.GB27479@grsecurity.net> <CAADWXX8JYe-AewtzoY6VBVLPTs+UvnfZst76vL4tccf6x9cY=g@mail.gmail.com>
 <CABniQZPtHV+-XiHPRUGcDe+KwEd1JpPdcDb2Xn63t2Z_Os6ETQ@mail.gmail.com> <20170624155549.GA31293@openwall.com>
Message-ID: <CABniQZNP2rP2OBdSYtVwrVGVL3wu52_Z_1bLmK7=ZRhgU6ZQOg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: oss-security@lists.openwall.com
Date: Sun, 25 Jun 2017 00:07:10 +0800
From: Shawn <citypw@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities,
 refcount_t UAF, and an ignored Secure Boot bypass / rootkit method
To: Solar Designer <solar@openwall.com>

Hi Alexander,

I respect your decision. Because this is your list. To myself, it's
not a crap. I was just simply talking the fact I know. I've been
suffering from Linux security for a long time due to lacking of the
defensive mitigation. Anyway, this kind of discussion may be somewhere
else but not on oss-security.

S0rry for the extra maintainence work on pre-moderation.


On Sat, Jun 24, 2017 at 11:55 PM, Solar Designer <solar@openwall.com> wrote:
> Shawn,
>
> I really don't appreciate you CC'ing kernel-hardening on this.  As I
> wrote to you in the rejection message for that copy of your message:
>
> "It's sufficient that we have this crap on oss-security.  Let's not spam
> kernel-hardening with it as well.  Let's have it on just one list, and
> it just so happens it started on oss-security this one time.  As a
> moderator, I fully expect I'll have to shut down this thread soon anyway."
>
> I also had to switch kernel-hardening to full message pre-moderation
> because of your CC.  Hopefully temporarily again.  Last time I did this
> (recently), and had since undone it (re-enabling the whitelist until
> today), was because of what I'll call an "anti-grsecurity crap" thread.
>
> Why pre-moderate even for previously whitelisted senders?  Because they
> might be replying to this thread that you attempted to CC to
> kernel-hardening, without them realizing that your initial message was
> not approved there.  This is a general problem with CC's to moderated
> lists, and why I ask that all of us please use CC's sparingly.
>
> I don't like censorship, but I also want these mailing lists to remain
> usable for their primary intended purposes for all of us.  This is why
> we generally don't reject individual messages in these discussion
> threads until eventually having to shut down the threads.  So all sides
> have an equal opportunity to speak.
>
> FWIW, my own opinion on the actual matters raised in these threads is
> nuanced.  I'm not with either side.  I guess this makes it easier for me
> to stay neutral as a moderator.
>
> Alexander



-- 
GNU powered it...
GPL protect it...
God blessing it...

regards
Shawn
