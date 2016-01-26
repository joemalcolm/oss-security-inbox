X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["643" "Tuesday" "26" "January" "2016" "18:02:45" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20160126170245.GA2314@eldamar.local>" "22" "Re: [oss-security] Out-of-bounds Read in the libxml2's htmlParseNameComplex() function" "^Date:" nil nil "1" "2016012617:02:45" "[oss-security] Out-of-bounds Read in the libxml2's htmlParseNameComplex() function" (number mark "        carnil@debia Jan 26   22/643   " thread-indent "\"Re: [oss-security] Out-of-bounds Read in the libxml2's htmlParseNameComplex() function\"\n") "<3626D6E697A150459C44C0E5D8D8D00E0DBD56EB@EX02.corp.qihoo.net>" ("<3626D6E697A150459C44C0E5D8D8D00E0DBD56EB@EX02.corp.qihoo.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7536 invoked by uid 550); 26 Jan 2016 17:03:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7516 invoked from network); 26 Jan 2016 17:02:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=hoyMIBOOyb8dSJgeoeLIUY0zznZ0ESFj1g09XRjNjI8=;
        b=uoyyLRiopWcqADHSFHtXWFEw3hhKamM51tvz30xqhnutefqa0UkhEXiU+QZaAhM0cp
         h7c/r9pV3+PuARoiGbPQFbvp0WdWxNEn2HqVfLtDInf5VQNNgxRXzSByg2wBHd9AAl6e
         nMckLNoMhlFOmdcK2Y9viuvL0QaTG83Uqxa9DFC4dO5k5Tx1PTWVGAynIaptC3Y9oWJU
         MdabcxO3ICL37/aiBwU/eAJWIGNXpW/BbqRnvtZKYix1MkdKj9rUv7JAfggG5j/U5QEn
         o5d4QAm3maZ+02QR26og7KLU8UAnifu3BOTWL76YOzzoY7hdNaQIWFLdqIV4t85A6IcJ
         94eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=hoyMIBOOyb8dSJgeoeLIUY0zznZ0ESFj1g09XRjNjI8=;
        b=XBwfkYiRXXi66eK7UOK3AJ2mFdo8jVPxTz3YFD1Ic6Qj7+h4UE+Xg9IOiPFdIM0+gM
         /feH+5ns8C/idDG5uuFBNsndjQxk3OqsBjbZzL5bfImsFo+UiTmIR40/L+BWB9Uw3M++
         cfv4Eg05GV+SPKvBjaCjIVBqa/XZdxYgI9DHSI6fHizDOa7WynubbMlUapFxLfB46R3y
         wTM7XPs4ecpCAL/VYXTaq5rXe98ZPfxK1slJ58eyee+myQYCi2wMUPO/4ur0+5x4J5iq
         wDwwKvISNUkL5E3e8tYsgxP6sKHUmnxaCw/Rbtr2et8mIwsCiFFt+OxxNAvhDgq26ONe
         IWNQ==
X-Gm-Message-State: AG10YORQk3zFBvdzlWS3zWunAXOId0Zb+qnIKAZSzKN1c+AQFmwCM0D0cSywtoE0uDIV8Q==
X-Received: by 10.195.13.129 with SMTP id ey1mr23852945wjd.132.1453827768319;
        Tue, 26 Jan 2016 09:02:48 -0800 (PST)
Message-ID: <20160126170245.GA2314@eldamar.local>
References: <3626D6E697A150459C44C0E5D8D8D00E0DBD56EB@EX02.corp.qihoo.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3626D6E697A150459C44C0E5D8D8D00E0DBD56EB@EX02.corp.qihoo.net>
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Tue, 26 Jan 2016 18:02:45 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] Out-of-bounds Read in the libxml2's
 htmlParseNameComplex() function
To: oss-security@lists.openwall.com

Hi,

On Mon, Jan 25, 2016 at 08:01:08AM +0000, limingxing wrote:
> 
> 
> Hello,
> We find a vulnerability in the way libxml2's htmlParseNameComplex() function parsed certain xml file.
> I was successful in reproducing this issuel in the latest version of libxml2(git clone git://git.gnome.org/libxml2).
> HTMLparser.c line:2517 :
> 
>        return(xmlDictLookup(ctxt->dict, ctxt->input->cur - len, len));
> 
> "ctxt->input->cur - len"  cause Out-of-bounds Read.

While checking upstream bugzilla to see if that was reported I noticed

https://bugzilla.gnome.org/show_bug.cgi?id=749115

Does this have the same root cause?

Regards,
Salvatore
