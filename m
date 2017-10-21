X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1210" "Saturday" "21" "October" "2017" "15:57:52" "-0400" "Robert Watson" "robertcwatson1@gmail.com" "<CAOfWR+E5EBSOe5kbSFh2zwUXKAahDXi6Dpax6dr9FLVkT1pY3g@mail.gmail.com>" "33" "Re: [oss-security] CVE-2017-8805: Unsafe symlinks not filtered in Debian mirror script ftpsync" "^Date:" nil nil "10" "2017102119:57:52" "[oss-security] CVE-2017-8805: Unsafe symlinks not filtered in Debian mirror script ftpsync" (number mark "        robertcwatso Oct 21   33/1210  " thread-indent "\"Re: [oss-security] CVE-2017-8805: Unsafe symlinks not filtered in Debian mirror script ftpsync\"\n") "<20171021105847.GA16973@openwall.com>" ("<20171017162507.e7lx6fbnleugoxxa@waldi.eu.org>" "<CAOfWR+EHYftu3Hqbu0qGvk_kk3au-Gkj_WEH95syC3n-QuNnxg@mail.gmail.com>" "<CABMkiz5UkRvC7FRFQ_9nAfG=+gqGXTb-67faWu=s4n=mXghZtA@mail.gmail.com>" "<CAOfWR+GW8oR8+uSKeETF3+mzhhzH5-GiRuJr2sGOnhodefHRaQ@mail.gmail.com>" "<20171019194428.GK20315@hunt>" "<CAOfWR+H_UbXfxh=oECSqUEcLmAh+RZciH61q0E5LqskWSOYWKA@mail.gmail.com>" "<CABMkiz6X3N8X7nq8eCnNGVUEx8jzd7hNLk3W_8OdW0Pg+UvSYQ@mail.gmail.com>" "<CAOfWR+Ga88eCNj-cQiBBXzM=S+xBfE5fsbgBWXMWSnN=8_4rFw@mail.gmail.com>" "<20171021105847.GA16973@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13698 invoked by uid 550); 21 Oct 2017 20:21:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27885 invoked from network); 21 Oct 2017 19:58:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=mF6Hl7KwR4yXN1lyQcTqtdOj8vds0TrkZP2n/7/dG8g=;
        b=XVw64L4SxuDF8l16tLT1EGIk3wo5tsXBLgDIZpqjeNROo154tWuSvsYptKb9QPrTKO
         JwBggsA+HPqCfHFmFaPSyUbAYM2vrZAuMRmHuwvFbKca3SLWCvZLA/oBt0aCzaVgku05
         3aCqZH8qnv7nnENgsBmyBYVoNph7EiLBSdsyqGil6txeAWf2MjsEI5OkpQJNja9+aV4g
         eo4hL4cKv+Uj6gXQldZrnEYX+07w22KAU18QIK2ZOnfL4/BhDOdIioRGonoMSXUnKdQ/
         xeREBayB1Ghq7X3ETedG4F1UImOS+hwzmETE4NUoOto/3e0qyc7NNtohqpbtl5HEG5Rj
         IZ+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=mF6Hl7KwR4yXN1lyQcTqtdOj8vds0TrkZP2n/7/dG8g=;
        b=Is+FCy32B4CElq+Dnmf9I1P/Mx+Ou+xE3dwGxhl0YvJK/Ce52ksKxqP9W4MJSWVOau
         VXW0Uy3Vltes075+i0VGR8UlilS+7G8AwNy8uxK9oS7C0we5KvWgwpmuESjRM4aQsfIY
         J68naKYpV7QswN6/5CMUg8zuSf9E9f9+QxZXXolrdzU93zicdTXoNBTjDYRwU2ApqoFO
         yJErX1U0JKQzb+OP9Y9VGTDLtNRkn3div75bvTPOWCmW0ChiUwI5g5NRjTwmawj95kJE
         OsiLdiGoGGFeZgoPQ0/cX+WMSHvdZQ/HdJWsMNRb0+b5g1veWBZkB3SZ8QXjrML89RY+
         KfKw==
X-Gm-Message-State: AMCzsaWnXEROu41ekykY+Nk0KHXzxL2g+YbAOKosRanERorEVyFGfaYW
	t3f2iLSXdrDWKbZty/al5ZoXdDGxuxQ48PNZ6Ko=
X-Google-Smtp-Source: ABhQp+TZwaj8d2qnCc08/lt4ajTgV0EtbaNmBHDwEdjvyHgCnlPOCpQE8VGihM9S2LEnftRidEJLGrYaxJ0sVy7ir2Q=
X-Received: by 10.28.157.83 with SMTP id g80mr2049887wme.9.1508615913298; Sat,
 21 Oct 2017 12:58:33 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20171021105847.GA16973@openwall.com>
References: <20171017162507.e7lx6fbnleugoxxa@waldi.eu.org> <CAOfWR+EHYftu3Hqbu0qGvk_kk3au-Gkj_WEH95syC3n-QuNnxg@mail.gmail.com>
 <CABMkiz5UkRvC7FRFQ_9nAfG=+gqGXTb-67faWu=s4n=mXghZtA@mail.gmail.com>
 <CAOfWR+GW8oR8+uSKeETF3+mzhhzH5-GiRuJr2sGOnhodefHRaQ@mail.gmail.com>
 <20171019194428.GK20315@hunt> <CAOfWR+H_UbXfxh=oECSqUEcLmAh+RZciH61q0E5LqskWSOYWKA@mail.gmail.com>
 <CABMkiz6X3N8X7nq8eCnNGVUEx8jzd7hNLk3W_8OdW0Pg+UvSYQ@mail.gmail.com>
 <CAOfWR+Ga88eCNj-cQiBBXzM=S+xBfE5fsbgBWXMWSnN=8_4rFw@mail.gmail.com> <20171021105847.GA16973@openwall.com>
Message-ID: <CAOfWR+E5EBSOe5kbSFh2zwUXKAahDXi6Dpax6dr9FLVkT1pY3g@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 21 Oct 2017 15:57:52 -0400
From: Robert Watson <robertcwatson1@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2017-8805: Unsafe symlinks not filtered in
 Debian mirror script ftpsync
To: oss-security@lists.openwall.com

Thank You for tolerating my questions. I've read the wikis and pages
you've suggested, and am attempting to format this reply as required.
Please advise if anything is still wrong.


On Sat, Oct 21, 2017 at 6:58 AM, Solar Designer <solar@openwall.com> wrote:
>
>
> On Fri, Oct 20, 2017 at 11:08:14PM +0000, Robert Watson wrote:
> > Okay, so a script adds a symlink to /etc/shadow or something else
> > confidential. Unless they're root, what good does it do them? They can't
> > read it.
>
> I think this specific question had already been addressed by Ben in:
>
> http://www.openwall.com/lists/oss-security/2017/10/18/12
> ...

I didn't see how revealing configuration details was anything more
than "security by obscurity" but that's not a discussion for this
forum. Mea Culpa.

> While we're at it, I also recommend that you avoid top-posting and
> over-quoting.  Here's how to format your messages better:

Believe it or not, this is first occasion using the "Plain text"
feature in the browser version of Gmail and editing the included text.
Was using Google Inbox on a tablet before. I write programs. Really
pretty naive when it comes to skillfully using software.

Will use this in the future.

Robert
