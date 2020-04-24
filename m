X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1146" "Friday" "24" "April" "2020" "21:00:16" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20200424190016.GA2393887@eldamar.local>" "31" "Re: [oss-security] mailman 2.x: XSS via file attachments in list archives" nil nil nil "4" "2020042419:00:16" "[oss-security] mailman 2.x: XSS via file attachments in list archives" (number mark "U       carnil@debia Apr 24   31/1146  " thread-indent "\"Re: [oss-security] mailman 2.x: XSS via file attachments in list archives\"\n") "<20200423164143.4bbda865@lenovo>" ("<20200224153451.4d773294@computer>" "<1309bdbba176b41aebdbeacf5a402fd9180f05c4.camel@k4vqc.com>" "<20200423164143.4bbda865@lenovo>") nil nil nil nil nil nil nil "Re: [oss-security] mailman 2.x: XSS via file attachments in list archives" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22037 invoked by uid 550); 24 Apr 2020 19:00:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22016 invoked from network); 24 Apr 2020 19:00:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=g5jrGi9H2RbsmGYARVgIs5yeQYRZ+BMV9idmPPoYdDY=;
        b=MDgrlsUd0hEkpG3/wQ+e+rh2WHxi3TyN6gxT9d6hf6nIj8ka8w9d9+XTRm7LKtnC98
         CkhR690K9mSjdKXzhO9pGVz90CRQhhshpkT7q/slMT/VSDwUVI8r5Qmx+uy4o1kwxYYG
         HXOcwC9Ze4hFbXfBDcfADpJqvSi7YJuX12MHfpB6e8xWaHm2p/gLL6D/E12jsDfVzZZF
         eob+ruLO+bWsEn2H3dU/MZiAeXxDtje1SVkbvszhHO1BhlaSezwpnUoItAgt48lD98dw
         rD31GtGy60oI/ILcHvRHhy16zqvKpvdPs9gVdQLpplN8/T4rU//ZAwZO+Kd/Gen2XhAr
         gchA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to;
        bh=g5jrGi9H2RbsmGYARVgIs5yeQYRZ+BMV9idmPPoYdDY=;
        b=DEv7scytHnyATe2shk90mFd9XU1+L4aEUmmzup52AzMZ+kKF/wKaXXp5g78EIcqB56
         ATW3bLBfK5Am0ksjkxTZB54ll1BNty1pssZokY2KnvtCYHP6MJ4IDEdQFsNMn/BNE0n4
         p7tbMFtBfl0Xtt/xrKlWpU6SfpcNKv2QfyQWKJGGAel7FRBjUU/uMVH0sEFiJHCVf0v7
         6El24YuNAWDsgoCD85tNq8qk9/bt08KEatZ7iNVt4D+MJcu4YKKlumw7eF6hSWIYa18g
         PYCJz73/9y4XgFnv1NZi/b4Hrbafqd5EboZUDfKuJ2h6GYragVFqtAVy4MxR7f3UVcxg
         Xrhw==
X-Gm-Message-State: AGi0PuZa/U8kl7XSQL3wAZ3NuiW3/zYS5jL5Eg/awOEWTp0O78KGsKnQ
	EMpZmD99DAVf1VCujesibJ5PbDXn514=
X-Google-Smtp-Source: APiQypJhNTBgu5FOLdCaxzkwqWUTOjyYunP4223ZAfBxzPlWCUpaGL+Yi5oIy57/gHbL6nv7wlf5jA==
X-Received: by 2002:a1c:9a81:: with SMTP id c123mr11101943wme.115.1587754818692;
        Fri, 24 Apr 2020 12:00:18 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Fri, 24 Apr 2020 21:00:16 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20200424190016.GA2393887@eldamar.local>
References: <20200224153451.4d773294@computer>
 <1309bdbba176b41aebdbeacf5a402fd9180f05c4.camel@k4vqc.com>
 <20200423164143.4bbda865@lenovo>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200423164143.4bbda865@lenovo>
Subject: Re: [oss-security] mailman 2.x: XSS via file attachments in list
 archives

Hi,

On Thu, Apr 23, 2020 at 04:41:43PM +0200, Stefan Cornelius wrote:
> On Mon, 24 Feb 2020 11:06:38 -0500
> Jim Popovitch <jim@k4vqc.com> wrote:
> 
> > On Mon, 2020-02-24 at 15:34 +0100, Hanno Böck wrote:
> > > This change is in mailman 2.1.30rc1, but not in any stable release
> > > of mailman.  
> > 
> > Just for some added info, Mailman v2.1.30 is almost released, the
> > holdup is with some language translations.  Mailman v2.1.30 will be
> > the last of the Mailman v2 releases as primary development and effort
> > has long shifted to Mailman v3. Further, the Mailman v2 branch is
> > tied to Python v2, which is now EOL by the fine Python folk.
> > 
> > Once Mailman v2.1.30 is release, I'm sure the various distributions
> > will pull the commit and merge the particulars into their release
> > branches, and that will surely include this XSS fix. 
> 
> Hi,
> 
> It seems like this does not have a CVE? Is there a reason for this, or
> did this just slip through the cracks/was never really requested?

This appears to have happened now,
https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2020-12137 was
assigned.

Regards,
Salvatore
