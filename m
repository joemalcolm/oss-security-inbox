X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["587" "Tuesday" "8" "January" "2019" "19:51:18" "+0400" "Entropy Moe" "3ntr0py1337@gmail.com" "<CALzBtjK0ccD1GTL4tG58-UgE8vxEvh23iatOP-dkLcA-FNk_8g@mail.gmail.com>" "24" "[oss-security] Re: Linux Kernel 4.20(21) deadlock vulnerability." nil nil nil "1" "2019010815:51:18" "[oss-security] Re: Linux Kernel 4.20(21) deadlock vulnerability." (number mark "U       3ntr0py1337@ Jan  8   24/587   " thread-indent "\"[oss-security] Re: Linux Kernel 4.20(21) deadlock vulnerability.\"\n") "<20190108153835.GA20418@kroah.com>" ("<CALzBtjJ7Vh8qatDWaf1oHf+=fGQUphm7WM2e0fZXe+8rQ=Sxxg@mail.gmail.com>" "<20190108152627.GA19359@kroah.com>" "<CALzBtjLafJkFNKBEw4iH8D3fc_eMKV5bqt1F4n_7Edf=Lj9NMw@mail.gmail.com>" "<20190108153835.GA20418@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21936 invoked by uid 550); 8 Jan 2019 16:00:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28514 invoked from network); 8 Jan 2019 15:51:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=02vTie8PsnESSksEui2Aa4Y3/2iBPcWnBjKBM7UHsPE=;
        b=ok4cU+/NCgXkvZXdV4naU0B3mgJ/BZb6RwCGiX2XYxX2qifFsB/FwmaA4NGYQeA34w
         JwM6YwpvJAAemYQcWL271hl1T0+IxrK7MJETYgpoeq4+Zm9cM6x6F/FjNO1KnxSnWVXX
         nIWdoF7vfi9y2riWUh3V+T6Ou7TgiK4R3F6wLjNECI0wgPFkoy6zsHIO+zHE+V7Bqf84
         18qS22ehYSy5VqiuwRgCq3DqNWHj2ncBozdDwvfPPIGEdgBVzLbqe5HjE2qTPe3WCZVO
         uPilsIEbUH9QYXh815vP5+py/m8PJHi5jOsN0C8/TJzE9s80JzA1hbp+KoRUTC26ZkBY
         pR5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=02vTie8PsnESSksEui2Aa4Y3/2iBPcWnBjKBM7UHsPE=;
        b=IqRghtoTE02JDEVdo8+CJ4G2Va5EqvXoAl/vN7sq2YyDauw/m88ftfOJR03svcpLi7
         mZgvBjuswdwtL5DqDjYIJ7iwq9TBtv7M0AkNIcAhB3UzMOEUXUrOnVPsj9nS2WpvD8uJ
         3j5XF7S08iFbkJzNC+BRPBYOImzpeMGtPoicIP63DCfrv7iYgpZBrvLPA+bxs3FQ/vv2
         2bTsQU/oZO19lgE7qB12iUS0NjLYfpvrs+sd5tMokkdZBaRZCoEYI7Z0hFlFcrG+RSDj
         xJ0csk7w+DUlxuTrjwDbBkhKGGb0jgqVnoudh3dUhevzVqWabzXHegXi3sjfmD15Ntm8
         w5Lg==
X-Gm-Message-State: AJcUukcBGKWipXFQJBjsFN/FD5OxiziLO17oRAuo4SX4nkY7Q9sCk+pY
	PM1k7JeXRJrsLTAQuJtvpLvoIfpqr77YrnY5fP8=
X-Google-Smtp-Source: ALg8bN4TUpj6plNOyLf5nzgApM7IG/Q2J9M70JUdyCR6ld1VFhuWwuDE+FPtTpwI/dXCs59vi6onJ/+Iv6nIFBV85nY=
X-Received: by 2002:a9f:35f1:: with SMTP id u46mr819682uad.136.1546962689338;
 Tue, 08 Jan 2019 07:51:29 -0800 (PST)
MIME-Version: 1.0
References: <CALzBtjJ7Vh8qatDWaf1oHf+=fGQUphm7WM2e0fZXe+8rQ=Sxxg@mail.gmail.com>
 <20190108152627.GA19359@kroah.com> <CALzBtjLafJkFNKBEw4iH8D3fc_eMKV5bqt1F4n_7Edf=Lj9NMw@mail.gmail.com>
 <20190108153835.GA20418@kroah.com>
In-Reply-To: <20190108153835.GA20418@kroah.com>
From: Entropy Moe <3ntr0py1337@gmail.com>
Date: Tue, 8 Jan 2019 19:51:18 +0400
Message-ID: <CALzBtjK0ccD1GTL4tG58-UgE8vxEvh23iatOP-dkLcA-FNk_8g@mail.gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: security@kernel.org, oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000943505057ef45120"
Subject: [oss-security] Re: Linux Kernel 4.20(21) deadlock vulnerability.

--000000000000943505057ef45120
Content-Type: text/plain; charset="UTF-8"

Hi,
Sorry that was an auto suggestion.

I have just started the fuzzer on kernel 5 now and I will keep you posted.

On Tue, 8 Jan 2019, 19:38 Greg KH, <gregkh@linuxfoundation.org> wrote:

> On Tue, Jan 08, 2019 at 07:34:24PM +0400, Entropy Moe wrote:
> > Hello Greg,
> > thank you for reply,
> > I have have them tested on the new kernel 5
>
> What do you mean by this?  You have tested them and all is good?  Or
> not?  Or something else?
>
> Please be specific.
>
> greg k-h
>

--000000000000943505057ef45120--
