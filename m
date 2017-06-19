X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["971" "Monday" "19" "June" "2017" "14:52:03" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<1497898323.1005.1.camel@gmail.com>" "24" "Re: [oss-security] Re: Qualys Security Advisor -- The Stack Clash" "^Date:" nil nil "6" "2017061918:52:03" "[oss-security] Re: Qualys Security Advisor -- The Stack Clash" (number mark "        danielmicay@ Jun 19   24/971   " thread-indent "\"Re: [oss-security] Re: Qualys Security Advisor -- The Stack Clash\"\n") "<7dbe76e8-99b8-4f8b-fa8d-2ec4708a85a1@redhat.com>" ("<7dbe76e8-99b8-4f8b-fa8d-2ec4708a85a1@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3801 invoked by uid 550); 19 Jun 2017 18:52:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3775 invoked from network); 19 Jun 2017 18:52:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=7dTr7B2kcRpeQzxa7GqytNIDz96uZiz4mTzOGSwsA8s=;
        b=FaTZTE1nL1VFXnZ3L4n22lwdcZLodHIeRW5TSjGaSJgtYXwME2mLGq5Gcwvtoq4sij
         LypukLKp/2+1OJSaI0qoG1qB1dBlxYMDjLvH1DyRLZR7OIqQBS3/uRzxYtpqWwzOLtBY
         Q8RYkFTgRIKuarn7O//xziZn2pF5GCAISK+tM4FBZweNNBzi67Spu2uRRihfSoObaEQn
         MGk8oXfolEfpgXp103dF++BwfDUZvXsDMazRnOgAIbAOGGd60XBNDpMYpQoCnF00FBrs
         I2riIQQqCylZjM4BPbePcNDazrDXlxQYsAF1ztLBqqanh1XfNQ49kHY6XGLh70AVKxmF
         J03w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7dTr7B2kcRpeQzxa7GqytNIDz96uZiz4mTzOGSwsA8s=;
        b=LxbfuYb8uRBj1AuIv6jH1Unc3zabfyr6v9xW873J6bfelyPTqHEwQHdw7WD0is25Yo
         zSJ3C5gEUlv+vsXYP6UwTCmjGt72AXA6e2hxLrC/mAw6c9AZ13PWJEhwYYvJ/VSeb/Hy
         LRinEfbnVyVHVHmMHEtXDrK1wDF0djcg1r84xcwFU2ztudN6JoB60gWo6kD8l/0h3jgS
         TAw1Q3P+8B7BBIIF57RPaxFcLitXGS08z/GE0ahzvIDQWvcQGZwedIagMW3FB5ozPljN
         f4kMHBN5vn63blvHA21bzwuKDDBJkZv2o6YTQjdQ4qIUmC92eeXQj3cEn8kJ8lgQD5k/
         IW9A==
X-Gm-Message-State: AKS2vOxLTU+RhA1gGQkRCh3PIt+0RWlJEP6RUpsXZAARJfCWL4JHX/ZK
	LIbqtY/5FTc3jh+3n5U=
X-Received: by 10.55.185.134 with SMTP id j128mr30281397qkf.148.1497898324209;
        Mon, 19 Jun 2017 11:52:04 -0700 (PDT)
Message-ID: <1497898323.1005.1.camel@gmail.com>
In-Reply-To: <7dbe76e8-99b8-4f8b-fa8d-2ec4708a85a1@redhat.com>
References: <7dbe76e8-99b8-4f8b-fa8d-2ec4708a85a1@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.24.2 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Date: Mon, 19 Jun 2017 14:52:03 -0400
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Qualys Security Advisor -- The Stack Clash
To: oss-security@lists.openwall.com

On Mon, 2017-06-19 at 11:26 -0600, Jeff Law wrote:
> I would consider those two GCC BZs (68065, 66479) a separate an
> distinct
> issue.
> 
> It is far more important to address design issues around the existing
> -fstack-check first.  I think we've got a pretty good handle on how to
> address those problems and discussions with the upstream GCC community
> have already started.
> 
> In an ideal world we'll get to a place where the new -fstack-check
> does
> not change program semantics, never misses probes and is efficient
> enough to just turn on and forget everywhere.  The existing
> -fstack-check fails all three of those criteria.
> 
> Jeff

AFAIK, the main efficiency issue (reserving a register) was fixed for
GCC 6. I might be missing something but it seems very cheap now, at
least for x86_64. It definitely doesn't really work though.

Is there an example of it changing program semantics? I haven't seen
anything since the generic arch stuff was fixed.
