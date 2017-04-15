X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["766" "Saturday" "15" "April" "2017" "14:38:23" "+0100" "Nick Boyce" "nick.boyce@gmail.com" "<CACqxkW+VWetr30iWUQaEaLOJ0FTgc0Bv4SPRm9pftaw15X1+bw@mail.gmail.com>" "25" "Re: [oss-security] Re: libsamplerate: global buffer overflow in calc_output_single (src_sinc.c)" "^Date:" nil nil "4" "2017041513:38:23" "[oss-security] Re: libsamplerate: global buffer overflow in calc_output_single (src_sinc.c)" (number mark "        nick.boyce@g Apr 15   25/766   " thread-indent "\"Re: [oss-security] Re: libsamplerate: global buffer overflow in calc_output_single (src_sinc.c)\"\n") "<2348591.dvo7L7yzgS@arcadia>" ("<513133.504052774-sendEmail@localhost>" "<20170414192740.28134.332C76E5@matica.foolinux.mooo.com>" "<2348591.dvo7L7yzgS@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3365 invoked by uid 550); 15 Apr 2017 22:41:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24073 invoked from network); 15 Apr 2017 13:39:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=mutwWVJfiLMIesmbAbITwss9G31rGtaZ4raulxzXudM=;
        b=tuas+KsiLXb5P5QUTkHO7CIQrY1u/OS1JqSh5g2sMgeKaLV8TDctKVIUXSEQuq8UkG
         of+gCawPYZqpok5iabVKH8zJkHccNNYb7RVA4n2axPLGW8pII1xWbFj+GcIDUkoaa5cN
         AnX+DRWbVZa5XvdB23dPh5RGtC5aAM4RhDPeJvE74kdtHlQ9mEJHQyvUr3b4wBBpPHI2
         8Vio+yloxE30fdSzt/X13HTYcxg+BoV1zd9qLTslcB6qfBxBsaFlZwMtZBZ74lh+DKsw
         2xm8eYVST5vEbI4pUslz1/2dz1NL89m0rO6rrmkAiTSX44ilZqW6nq2FgHXe3q8TgUr6
         zRWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=mutwWVJfiLMIesmbAbITwss9G31rGtaZ4raulxzXudM=;
        b=p1ZNMBHEb0GKbCiNN0ZWrvPQnkDTJF5Mb/kCAz5emWl4MPNRL8hPDNf+o2awW2QpwC
         teJCYr07BYiMyDDea+QUSnHrB2CDjnzWkcZ4zaBhXBmN6ag1SepNplNeY9lDAbISisUD
         oWJ19qaBdEpzrRPlFbaFp5X4Jg2CfDjrWTT2kZ1P8R6+1oomw/q0Mm+j2jBrhPxLdniQ
         uWnEYp59OdrXTzstfXVwETN2a5YovzBQdt2SeGM7iqPQgRBWvBtnqv23889i1i5gELH/
         hnlc4wIN1+4wWI6rb/rVdHyZfNzGmmh1cnLfj1HHiRj0wLcfFv8k8hE09cZxxD7GbGuj
         iXTg==
X-Gm-Message-State: AN3rC/7DZnZJEMOlxHa9jdqEi3nqQ8cGH/qN8W2i9FYnnGd+EqeN3zE/
	F8Ymm4VjcNb8msd482MkiAiOusDhgARu
X-Received: by 10.200.36.131 with SMTP id s3mr2282314qts.289.1492263543995;
 Sat, 15 Apr 2017 06:39:03 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <2348591.dvo7L7yzgS@arcadia>
References: <513133.504052774-sendEmail@localhost> <20170414192740.28134.332C76E5@matica.foolinux.mooo.com>
 <2348591.dvo7L7yzgS@arcadia>
Message-ID: <CACqxkW+VWetr30iWUQaEaLOJ0FTgc0Bv4SPRm9pftaw15X1+bw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Sat, 15 Apr 2017 14:38:23 +0100
From: Nick Boyce <nick.boyce@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: libsamplerate: global buffer overflow in
 calc_output_single (src_sinc.c)
To: oss-security@lists.openwall.com

Hi Agostino,

Ian>>> Affected version:  1.0.8
Ian>>> Fixed version:  1.0.9
Ian>>
Ian>> Should this be 0.1.8 and 0.1.9 instead?
you>
you> I dind't understand at all what you would to change.

Perhaps Ian is referring to the fact that at the "Secret Rabbit Code"
home of libsamplerate, to which your linked blog article provides this
link:
http://www.mega-nerd.com/SRC/
there is no reference to any version numbers of the form 1.0.x, but
only numbers such as 0.1.8 (the last release [dated 15.Aug.2011]
mentioned in the changelog as I write)
http://www.mega-nerd.com/SRC/ChangeLog
and 0.1.9 (the latest version actually available for download):
http://www.mega-nerd.com/SRC/download.html

I'm just as confused as Ian.

Cheers
Nick Boyce
(just following along at home)
