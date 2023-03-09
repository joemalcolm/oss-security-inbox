Received: (qmail 25987 invoked by uid 550); 9 Mar 2023 07:15:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25965 invoked from network); 9 Mar 2023 07:15:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678346116;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QP0Ynf73M6bkly+UyYp97iJ2LTNpin8bOuCvOVZLFQw=;
        b=JTeX/IeH4rVMSDAJnyj2/M5ZY/4sw/l/xTznyx/c+mEk3IMssTJIvZnVni7KtSiLnT
         wIRSyT39umRojmbIELjMbiUBRd+eNU+3HBPqoitL/ShF3HnysVCa+tr1cW+Z0ziqNdbt
         OKW2NOvtUVS1BIa/ltzHaqouFZ25/H/dJ2tPUfB4fPS0LCUkx/APyHSGpCbWgwonbQr3
         VWHflWlyc2uV49fU00fI8+6x0p/eYjZTAOh8ZnSy8igN8s5NBSVDS1zc80UnmGTiHTXo
         Qo+NTCA7WSynrX1IlSsXCRxDu3xJyuW70Tg0RzIX70qY5MvzpIeahYFr2/n5yO5jOFDW
         j3AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678346116;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=QP0Ynf73M6bkly+UyYp97iJ2LTNpin8bOuCvOVZLFQw=;
        b=NnzizIZlhKtrdqPqYT4SiXMGj50eiXp+swyc0zyiBiLZVwo68WOJm7KZ/vnsN6SF80
         F1GYl1DdqD31CwO1Esc12O5x/w9liwyK7p3PECbGkDf1m2Y55P9nupc/G9sAuzRc5vaT
         UPkbRNQ0RAmK0K48VRtQ182yWKT/YH8ZSz44hXLiPLya3Ci2TvsroEdJ8yUGc8AZhsxk
         3qW2RHezei3mh9wgvqPBDXmwo1VEwu18tELnC5FF5PSgdkVOv2gUe5k92WX/w++ETozJ
         7a+VJDZKXVk7r2rBLRw3KpljJpcFqg1Ww5SUYYKuxuR6hCgJr1hkmwDd/qGPiORlY/FI
         oE1w==
X-Gm-Message-State: AO0yUKVJ6MJ/k6uxpWEjhHyDaTR6231ML6ZYEBKcs7HTilyNjVywvA17
	dabGcxbrUY23A2aO1eRJmJnS//jNHbeqcg==
X-Google-Smtp-Source: AK7set/1dIMgNbL1F9BUcUA61m/j9zu3PsVKJihC0YnhaUj7+yaYDYTWzGAh/+fqCSYc3g/iijwpaA==
X-Received: by 2002:a05:600c:3d8f:b0:3e2:91c:7cb7 with SMTP id bi15-20020a05600c3d8f00b003e2091c7cb7mr19441147wmb.39.1678346116302;
        Wed, 08 Mar 2023 23:15:16 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Thu, 9 Mar 2023 08:15:14 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <ZAmHgoA8GvuVpS2V@eldamar.lan>
References: <80616781-a635-02a0-2aa3-a8afc60e6c4c@free.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <80616781-a635-02a0-2aa3-a8afc60e6c4c@free.fr>
Subject: Re: [oss-security] Shell command and Emacs Lisp code injection in
 emacsclient-mail.desktop

Hi,

On Wed, Mar 08, 2023 at 12:37:29PM +0100, Gabriel Corona wrote:
> emacsclient-mail.desktop is vulnerable to shell command
> injections and Emacs Lisp injections through a crafted
> mailto: URI.

Two CVEs are assigned by MITRE:

> 
> This has been introduced in Emacs 28.1:
> 
> http://git.savannah.gnu.org/cgit/emacs.git/commit/?h=emacs-29&id=b1b05c828d67930bb3b897fe98e1992db42cf23c
> 
> A fix for shell command injection is currently included
> in the upcoming 28.3 branch:
> 
> http://git.savannah.gnu.org/cgit/emacs.git/commit/?h=emacs-29&id=d32091199ae5de590a83f1542a01d75fba000467

CVE-2023-27985

> 
> A fix for both is currently included in the upcoming 29.1 branch:
> 
> http://git.savannah.gnu.org/cgit/emacs.git/commit/?h=emacs-29&id=3c1693d08b0a71d40a77e7b40c0ebc42dca2d2cc

CVE-2023-27986

Regards,
Salvatore
