X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1108" "Tuesday" "26" "January" "2016" "21:34:28" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20160126203428.GA30775@eldamar.local>" "38" "Re: [oss-security] Re: Out-of-bounds Read in the libxml2's htmlParseNameComplex() function" "^Cc:" nil nil "1" "2016012620:34:28" "[oss-security] Re: Out-of-bounds Read in the libxml2's htmlParseNameComplex() function" (number mark "        carnil@debia Jan 26   38/1108  " thread-indent "\"Re: [oss-security] Re: Out-of-bounds Read in the libxml2's htmlParseNameComplex() function\"\n") "<20160126174912.8D47B73C4C1@smtpvmsrv1.mitre.org>" ("<3626D6E697A150459C44C0E5D8D8D00E0DBD56EB@EX02.corp.qihoo.net>" "<20160126174912.8D47B73C4C1@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29788 invoked by uid 550); 26 Jan 2016 20:34:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29765 invoked from network); 26 Jan 2016 20:34:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=HNgRL0bBA7ZBToOeflMzcBAVm3slutTT5HnLBe1Pen0=;
        b=fm63FQFc7fYxY662fobkdgf0xsm9gFYpgPfe6tG7uT/Q2elo57feJMiKS/c5Z4EtgY
         ujwyRj3r35nYxnwk6FNj0DPtAn7PjjzHfPG6TeHw4842SH9mGN2WJdsj1+cSiPgl2wcs
         VCiE7/jqd5y5lSifRRtT8+oCZ9X3gdPg81gqtgqRLbQlFhF+ZfYwzwt8CoaMoK2t+CDX
         CKVwLllvtr3AWnnEx6YnMuu6pIEg0bwuWj+xCo9a2qPhZcTH7ZlpOBX/bbb2RuXeEn0U
         tuhCh+DHrzmZNio2qPbvVXVGX4prGW/OIwEYbcQunNsQbN9flo94NBWr811jlOPYVLwF
         89Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=HNgRL0bBA7ZBToOeflMzcBAVm3slutTT5HnLBe1Pen0=;
        b=irbN8h6CmCIKk8+/qrpGxM+2rg2emyWRFCStc/L+lqlrJlZQyFZcmH0yOdhmW6XLif
         wE1uSZgySh16n7WoxdPuor6emts8taQz8h7jJyQ7yoLJhBoRpx5RWq93VJA/DFUrYTdY
         tRSYfKYvMQkoSdVT25dbkBpiewP8SG3q1gvrcYZchGckClKhVLPTg3rq2jt39FO9dvqf
         asVFbTYIBngOf3QmtlEwARwX+LFe3eSThFN5op34P10R6HYd0pbIpt5W2SCigUZTOIO/
         GQ8enMNsnuQwDy3/1VSGUfFYsb0WFw1YJ/XAjbOqpnf+mIeyr9wtfgSUB7AUPTTQhVKP
         HBMQ==
X-Gm-Message-State: AG10YOTCyU29RlCweFYQmPU9QyvUZmgoZcQY2/hVW3VAaunkV8V6kkFXa+j9Ygr1HvC7VA==
X-Received: by 10.28.220.68 with SMTP id t65mr24655615wmg.92.1453840471612;
        Tue, 26 Jan 2016 12:34:31 -0800 (PST)
Message-ID: <20160126203428.GA30775@eldamar.local>
References: <3626D6E697A150459C44C0E5D8D8D00E0DBD56EB@EX02.corp.qihoo.net>
 <20160126174912.8D47B73C4C1@smtpvmsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160126174912.8D47B73C4C1@smtpvmsrv1.mitre.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: limingxing@360.cn, cve-assign@mitre.org
Date: Tue, 26 Jan 2016 21:34:28 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] Re: Out-of-bounds Read in the libxml2's
 htmlParseNameComplex() function
To: oss-security@lists.openwall.com

Hi,

On Tue, Jan 26, 2016 at 12:49:12PM -0500, cve-assign@mitre.org wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
> 
> > HTMLparser.c line:2517 :
> > 
> >        return(xmlDictLookup(ctxt->dict, ctxt->input->cur - len, len));
> > 
> > "ctxt->input->cur - len"  cause Out-of-bounds Read.
> > 
> > heap-buffer-overflow
> > READ of size 1
> 
> Use CVE-2016-2073.
> 
> 
> > From: Salvatore Bonaccorso
> > 
> > While checking upstream bugzilla to see if that was reported I noticed
> > 
> > https://bugzilla.gnome.org/show_bug.cgi?id=749115
> > 
> > Does this have the same root cause?
> 
> The CVE-2016-2073 PoC is an '&' followed by three characters, one of
> which is a 0273 character. The PoC in 749115 has an unexpected
> character immediately after a "<!DOCTYPE html" substring. We feel that
> the CVE-2016-2073 report can have that unique ID on the basis of (at
> least) a different attack methodology. CVE assignment for 749115 is
> also possible unless 749115 already has a CVE ID.

Thank you for the clarification. Can you assign an additional CVE for
the 749115 issue?

Regards,
Salvatore
