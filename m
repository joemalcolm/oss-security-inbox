Received: (qmail 9471 invoked by uid 550); 5 Jul 2025 09:41:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9450 invoked from network); 5 Jul 2025 09:41:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751708461; x=1752313261; darn=lists.openwall.com;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:to:from:date:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=aUVr/A3sxnHnZagTMHWOnTEymTiZkZNEUFjWcf0Hg2Y=;
        b=XMEOxbidaUTlnC1e92gOUd3ldSoGyte69yw5By+nWGPkTtHmZOGoVvFSEuI8XqqPKh
         J+5CHhAuyn/+tISbsN+r71vxu4ijO2Qh8RCmLlTtAJFiEMG9WUIXK9rUOYNd/fRRa8Ma
         DH8mBl0p0NORNygOYJi7alrfvXyfxCT9VAJvNxvMVHS+uydEMtRiPJumeA7o6F5JacMw
         nxVsH7RnvmWz/WMyW3Pp7PNgSLhNfFARBgOiuvXz7uLbHJlowVQjpBUdShB2FvIRBuYh
         HIxQWJ2UH5SG4sTQ1Y0bFN9eYrwBvW5M114QZT+y4nBnihd45NoEUQNH9wtiSrpl1mQS
         47HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751708461; x=1752313261;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:to:from:date:sender
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aUVr/A3sxnHnZagTMHWOnTEymTiZkZNEUFjWcf0Hg2Y=;
        b=gVvK0VW3epofZiUDQML95fl22ueGHhd3B5did1MhDFBhs6TLxlh8Ttvl0ONWgKnY5X
         vNC/j0vGGb/49OGfwWNtR0idGO+DdjNTrku7oSiOclgr+jLRHTUAKZ+1VZnJ0lSrGquf
         +THa9h/+H++HQ3s+E2vWF6p9YXVh2ROUAk0bVsVytLuV1YGfL9znq/gGT54zJeBFaQkh
         If/t8Ed2YZYiub2tFQVfNFfLGBt8r7mpB7P9+4hgpy9gH+ki5ZVD4WIC+AC4dUk/gM8J
         rMLW+RpMiSaDtjcKXr/79Dk7RvF79u7avrPWRuXFRa8C8NVolq5cg2oj6rmSo28XS2jk
         ja+A==
X-Gm-Message-State: AOJu0YxXEGT28TGgI3uMPsj0vAdPKU5ESINzS+1Xjv+7JsNsPLl5K8b1
	QJ85Rphb7rhDXNQmc/ymzGfJgSEF8Ym7bYeVGCL2BO+82++Vx0gUkHrFu9MTLM/3
X-Gm-Gg: ASbGncsyPPuuEb2yE71HRMTRp7e+Uxr9TBTwgqCyFTnQivIydl+YjzvZYClNoUMh7sR
	oEE5hVkDBaA8geJ3GNrkmMGjSm76Ot7rBA+9SMxtlY092vivGGyT1r2hnhKkK4PHniqaVHMVB17
	mjc7lwrRUpqrU+Ls7l8+v+a62WrsMYuzFKKSUT51QaehB83QShojJYIrr7eM5sz27L+huk26bxo
	6lhtjzvZpvVFv52Oyrt77G6rV8NS8XuRzJ39os4SqzAk+apyY7AFcxTn5jXtG4pbOfqPvl2Mdeg
	0QWfD/5JlS0d9VFqjAmyuoXQ6zs8bUAoEbUCgOvI5RB5DNinuMH6hlIKl0UWVM5p7lM7Sb/uhIr
	BzNLJ5Nape4sfTjeNnPDownknLzgxCA==
X-Google-Smtp-Source: AGHT+IFq+q4kadUKMPi72QKQR+W9eqU/SOb6bVHlhSCKkjVtyMw4Yd1wh5PH1MiYMUYJyBlX+Scq0A==
X-Received: by 2002:a05:600c:8b0e:b0:450:d104:29eb with SMTP id 5b1f17b1804b1-454b4e6bc38mr45676035e9.5.1751708461005;
        Sat, 05 Jul 2025 02:41:01 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sat, 5 Jul 2025 11:40:59 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <aGjzK1UFoeXtepdL@eldamar.lan>
References: <ded8a9b9-fd84-4744-8704-5d2faf1a9ac2@stbuehler.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ded8a9b9-fd84-4744-8704-5d2faf1a9ac2@stbuehler.de>
Subject: Re: [oss-security] DoS segfault (NULL pointer deref) in SOPE / SOGo

Hi,

On Wed, Jul 02, 2025 at 07:01:52PM +0200, Stefan Bühler wrote:
> Hello,
> 
> I found a DoS bug in SOPE, the set of Objective-C frameworks powering
> SOGo [1].
> 
> It is way too easy to trigger with curl:
> 
>     curl -d 'x=' 'https://.../SOGo/?x='
> 
> As far as I can tell all versions since SOGo-2.0.2 (2012-10-29) are
> affected.
> 
> # Details
> 
> I found it inspecting multiple SOGo crashes triggered by someone
> hitting URLs like `/OA_HTML/BneViewerXMLService?bne:uueupload=TRUE`
> with `POST` that my search engine associates with "Oracle E-Business
> Suite (EBS)".
> 
> The crash happens in NGHashMap.m line 790 [2], as root->last is NULL:
> 
>     root->last->next = element;
> 
> NGHashMap maps a key to a single-linked list of values.
> 
> It turns out `-[NGMutableHashMap addObjects:count:forKey:]` is the
> only function maintaining the `root->last` pointer; everything else in
> this file doesn't touch it.
> 
> The SOPE request handling first parses the POST body for
> "formParameters", then clones that NGHashMap (the copied nodes have
> `last == NULL`), and then merges the query string parameters into it;
> if there is a duplicate key the bug triggers.
> 
> I'd like to point out that the linked-list implementation is quite
> bad.  It wastes memory by using the same struct for the root node
> (with count and last metadata) and the member nodes, and seems to
> throw exceptions (e.g. when values are nil) but isn't exception
> safe (metadata isn't updated consistently).
> 
> See attached patch for an attempt to maintain the `last` pointer
> properly across all methods; it seems to work for me (on top of
> 5.8.0-1 in debian/bookworm); submitted to upstream in [4].
> 
> In the long run at least the linked-list implementation should
> probably be replaced by using some properly tested library.
> 
> The `last` handling was introduced in dfceefc 2012-10-15 [3], and I
> think it has been broken since then.
> 
> (I haven't actually tried to reproduce it with latest upstream, but I
> don't think any of the code has been touched in relevant ways.)

FTR, CVE-2025-53603 has been assigned for this issue.

Regards,
Salvatore
