X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1323" "Friday" "20" "November" "2020" "07:33:21" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20201120063321.GA348130@eldamar.lan>" "37" "Re: [oss-security] Re: libass ass_outline.c signed integer overflow" nil nil nil "11" "2020112006:33:21" "[oss-security] Re: libass ass_outline.c signed integer overflow" (number mark "U       carnil@debia Nov 20   37/1323  " thread-indent "\"Re: [oss-security] Re: libass ass_outline.c signed integer overflow\"\n") "<20201120021528.pduwcibewbab47he@moyka>" ("<CAEFBov0z-zr4q=_srb3q7gq1-f1P6GBf78p8GYUj0DvsXVKLTw@mail.gmail.com>" "<20201119053416.vfvkqvgsmbmp2wnd@moyka>" "<861A949F-D5C8-4AE0-829D-E7C2B4F74137@dwheeler.com>" "<20201120021528.pduwcibewbab47he@moyka>") nil nil nil nil nil nil nil "Re: [oss-security] Re: libass ass_outline.c signed integer overflow" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1181 invoked by uid 550); 20 Nov 2020 06:33:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1162 invoked from network); 20 Nov 2020 06:33:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=coHy4Z58KByyXm8YbqSph5CcGsavPzoWohuIWOIwCqA=;
        b=ukclMcfqHH5OBy9qJz1kDa37gVJ92TOUlAvn7lJx5mIK/AIfB8TIESWZOOstcI9tUq
         o9pdI1ODA7kbGXn468Qhn2AksAPVJS+R4963GcbYjf/XQwID3K2VNxWNFiSeMprCnqCf
         OzExXb2eNnchFXP6wY/klFSEMOXUMZMKiPbDuTDm99stvWiB7ortZ8tSjzQaMwSQpPdf
         eDA3bOj9WSSYVZDpONYVW7uhrxj4pXt4Bu2WjNfPBrziofXPqCo/XYPsNFeREM/ylIwT
         74z3L1hvNDbDRcHA4btUn2FIY+DEK2KkIzkd1CWJrVn1JezahsgloTWSaKqZ+h4tcezO
         wZxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to;
        bh=coHy4Z58KByyXm8YbqSph5CcGsavPzoWohuIWOIwCqA=;
        b=tJqt9WQrcNhIj++KNTtSkHyga7ugn1r6z/OjBgsBQEB5ZqDvud5p4Gvn8L2rT/uEKY
         NC9BzCXciFBD1CoccGpMlgv40X9JfaTGggaKeZp/kVxQ6Ro9ITy1FeE7mzlU2t/m6rMM
         twN4OCYxTemExQYEoIZJOrAv6ULQsTLuaigfXrrRbWr2kKF5nAg7H4qfwZd1TVwIJEZ9
         DORPJGDKIcPmVCuQP5z/sQIBgK2NgKed/9qGQEVYvIWnWAoRqcl2oNd25FwVT+Nqwphi
         dINsFhO0CShpi4V5yOu0sIG8a+/mZyp52UfGodmqTYaAhM6Y206ZUTAVbyMB8I9EzkfV
         DSLA==
X-Gm-Message-State: AOAM532kmrVXPC8Jk6nLUhHy8xg2iP7Gtm0xD4xWrgJ5oex3FfcyDQk6
	iOdl+9Jr9CLVDgeYLoiYJIrcATmm5kUogA==
X-Google-Smtp-Source: ABdhPJwBGLm8Ar7C/1LmVEPgMfkNvU3lwk0mSSnPnfYK0/ldrhPMidd28wQrtOYk+yAp8V4hoAspZw==
X-Received: by 2002:adf:e950:: with SMTP id m16mr15226775wrn.0.1605854005274;
        Thu, 19 Nov 2020 22:33:25 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Fri, 20 Nov 2020 07:33:21 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20201120063321.GA348130@eldamar.lan>
References: <CAEFBov0z-zr4q=_srb3q7gq1-f1P6GBf78p8GYUj0DvsXVKLTw@mail.gmail.com>
 <20201119053416.vfvkqvgsmbmp2wnd@moyka>
 <861A949F-D5C8-4AE0-829D-E7C2B4F74137@dwheeler.com>
 <20201120021528.pduwcibewbab47he@moyka>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201120021528.pduwcibewbab47he@moyka>
Subject: Re: [oss-security] Re: libass ass_outline.c signed integer overflow

Hi Ian,

On Thu, Nov 19, 2020 at 06:15:28PM -0800, Ian Zimmerman wrote:
> On 2020-11-19 11:54, David A. Wheeler wrote:
> 
> > I read through the issue discussion. As best as I can tell, no one
> > filed for a CVE, so there was no CVE.  Did I misunderstand something?
> > 
> > If my understanding is correct, that is *NOT* a failure of the CVE
> > process.
> 
> As it often happens to me, what I wrote was too brief to be clear to
> everyone.
> 
> The longer version would be something like:
> 
>   This is an example of a situation where no one filed for a CVE because
>   of perceived hurdles in the process, even if the facts didn't justify
>   the perception.
> 
> Now of course Moritz tells us there is in fact a CVE and indeed I can
> locate the issue in Debian's security tracker. I guess it has been
> judged not serious enough to need fixing in buster. I disagree but
> clearly that is up to the maintainers.

What the no-dsa tag means: The issue will not warrant a dedicated
security upload with an advisory, but issues marked so called 'no-dsa'
can still be fixed as well in buster, via the regular point releases
(for instance the next one happing on 5th of december).

This though still requires someone to have spare resources and prepare
an actual upload to be included.

Hope this helps,

Regards,
Salvatore
