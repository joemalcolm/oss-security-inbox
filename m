X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["923" "Wednesday" "11" "October" "2017" "06:45:49" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20171011044549.4p5ochtrxok2nmem@lorien.valinor.li>" "32" "Re: [oss-security] CVE request: Two DoS vulneribilities in libextractor" "^Cc:" nil nil "10" "2017101104:45:49" "[oss-security] CVE request: Two DoS vulneribilities in libextractor" (number mark "        carnil@debia Oct 11   32/923   " thread-indent "\"Re: [oss-security] CVE request: Two DoS vulneribilities in libextractor\"\n") "<CAPwMjngHAWa4F-_hRffJRkNk1JmhKqEFojJyd0VUF+2q5sGN7A@mail.gmail.com>" ("<CAPwMjngHAWa4F-_hRffJRkNk1JmhKqEFojJyd0VUF+2q5sGN7A@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18307 invoked by uid 550); 11 Oct 2017 04:46:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18287 invoked from network); 11 Oct 2017 04:46:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=+dm2b3W9pdj9h/yvZooFRbsf7PIQNjsT79zUkIx48tk=;
        b=iE4VIDraXWWJ1b06KjYmPVb3s4VVXq4wz+DsSTdVEy1+e2hObdsfRWfNNg8pBJMsj6
         xnpbstRhKQSad7G7t+a2ThqOSU6PGbBOvqaSF+yZTNmsKL9XBfwct5c0XzZVQeOz0kdA
         kTbkNDXoSFRFjySiKQ1l1aRMQpisDqfqQSzvwtnxPENozRKgCWeH0cnYyIY1L9OTbiUc
         kWAzjehIdI1+8dCTCchoio8hcqiO7P/mCgGuYkZI/xP0XnR5QKZC0aelD7Z438D1LmPA
         C1nMIFQ/aY6hrXT2jrL6x6SL4h2ZWyQKFLpKoI/a9oGMgxPZMWsGOgm2ubRFCAig4PXO
         DBvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=+dm2b3W9pdj9h/yvZooFRbsf7PIQNjsT79zUkIx48tk=;
        b=Ji1agUK0LFGhkFW1k9eH69GCiQY8pAy5zJJfYVerzEZhpB0L+8bPdc9qjULFh4gWPe
         qsrR8QhR7VRafHez8MZWEIzA2U4I0YQ2/kXGoVrbVSU6orlccYrByIJjIWgxxAVQaI9t
         d0PT8WwhpJ948WhUurAS15iHHh15V0KmVN7Gs5Bu9rZNQGqCwtB7emAhvJaqNFteUtWz
         KeRFMcwmNQxRLvfzGmKEe/3Em4tstMGcNpxHlbggNNuwuGr5TDZ86ROKKXNzRE7//w5B
         bmEUkNGcz33sKlMKj6N2cXPA5eWVCefYICkQ2flNEw1iNvHGH482yiQaSXYrBLG8rZkZ
         x3YA==
X-Gm-Message-State: AMCzsaUQXTb9SoO9FOekoE4vOClzGQyXiLtu0AsIcvcL7iYdEwAvV4zf
	MQGQqfqGoM0FMzsnwH1w8edb7Q==
X-Google-Smtp-Source: AOwi7QCixudbalYPKtLqeOF4gjlsCnMqUqMxD0mMdKwMXb8TX5gwhlUGk6wpbfWAL5LaDpH1tQ6M4g==
X-Received: by 10.28.87.13 with SMTP id l13mr12408623wmb.45.1507697151674;
        Tue, 10 Oct 2017 21:45:51 -0700 (PDT)
Message-ID: <20171011044549.4p5ochtrxok2nmem@lorien.valinor.li>
References: <CAPwMjngHAWa4F-_hRffJRkNk1JmhKqEFojJyd0VUF+2q5sGN7A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAPwMjngHAWa4F-_hRffJRkNk1JmhKqEFojJyd0VUF+2q5sGN7A@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
Cc: oss-security@lists.openwall.com
Date: Wed, 11 Oct 2017 06:45:49 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] CVE request: Two DoS vulneribilities in
 libextractor
To: Leon Zhao <leon.zhao.7@gmail.com>

Hi Leon,

On Wed, Oct 11, 2017 at 11:40:33AM +0800, Leon Zhao wrote:
> Hello oss security,
> 
> I found two DoS vulneribilities in libextractor,
> 
> Affected version
> 1.4
> 
> 1. Divide-By-Zero
> https://bugzilla.redhat.com/show_bug.cgi?id=1499599
> http://lists.gnu.org/archive/html/bug-libextractor/2017-10/msg00002.html
> Fixed
> 
> 2. Null Pointer Dereference
> https://bugzilla.redhat.com/show_bug.cgi?id=1499600
> http://lists.gnu.org/archive/html/bug-libextractor/2017-10/msg00003.html
> Fixed

As this states explicitly a 'CVE request' on the subject. Please note
that CVEs cannot be requested anymore via the oss-security list,
instead please fill the form at https://cveform.mitre.org/ 

Once you got CVEs assigned, can you please post those assignment
following up here on your original post to have the other members of
this list informed on the assignment.

Thanks for your contribution!

Regards,
Salvatore
