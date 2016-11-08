X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1311" "Tuesday" "8" "November" "2016" "10:48:31" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20161108094831.GA22910@lorien.valinor.li>" "34" "Re: [oss-security] Re: CVE request: mat doesn't remove metadata in embedded images in PDFs" nil nil nil "11" "2016110809:48:31" "[oss-security] Re: CVE request: mat doesn't remove metadata in embedded images in PDFs" (number mark "U       carnil@debia Nov  8   34/1311  " thread-indent "\"Re: [oss-security] Re: CVE request: mat doesn't remove metadata in embedded images in PDFs\"\n") "<20160602180240.GA23506@layer-acht.org>" ("<20160602103328.GA6618@layer-acht.org>" "<20160602162134.8A5D56C0659@smtpvmsrv1.mitre.org>" "<20160602180240.GA23506@layer-acht.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27934 invoked by uid 550); 8 Nov 2016 09:48:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27916 invoked from network); 8 Nov 2016 09:48:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=nZp/VB5xmlChpVyg7k7mvniRoebAFGvN8PXovdtWa+M=;
        b=UCDERD/JLeSk4AHTxlG589VVFPZohhdeDd7k52l9lnoAoDjo7bbnL3pmGYPTc7oS6z
         IW6pWcV9l1sHk86wtKi6+hp+IBfwnMUKinGIOmNmYO+wXtvXHbqkIgfgW7VFsYsxiOVF
         UFOYVbi3lXuEIbd933lrf+9lMVFFLZiKtkd+CPLgTvpVb5ETMEG3V7iD7nzF8D72zeSP
         r3iIfU1DGH/+mmW05iU5xBk4QBjvOzVAfech/a9ojWp2v8XZbRaPsajJtM8YySGA7EwK
         +RmeJhWioS+EohVXr5OBBajGjGEjZE7f3J6m0ntaCH3FJKwVelTcUteQQuuFpgfr3Zhb
         SVmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=nZp/VB5xmlChpVyg7k7mvniRoebAFGvN8PXovdtWa+M=;
        b=W6mOxA1rQCR9MlvPDnOCnIbDAi/hHY4TAjjril96UJ92tPMNhKeoTV/knkR1/+Kvix
         d9rCyBYHPHR+wrN5bq+A1Of3cTq01yq/TYYTMH7tbFzERo6xGYR10wAjKQRdz5pFCpYp
         nb2eSs/dIVEXFH+vXN0UeRPLrjF1u702JJH/xs6VTwxX/uF1VUYVxUp8f7CL5zhJ0nag
         4p4yKREgFJiy/bFQOxv/hRsJb4wbZXXvTOGNwfd5aJippgj8/nupF1zUs9O3JWSkYWGa
         cWC1hSDfEWlsSwuI+waxxtfBPdEdYZEtEjUxXwmykz4TQyzydku73oXAiX++vfQrQoPT
         6axw==
X-Gm-Message-State: ABUngvcd8oTP5r8zzKJCID+QJBrbeL55zlyCaKgMaXPS29bSqwzpGZG7pdcvHkNiqyTfAA==
X-Received: by 10.55.49.203 with SMTP id x194mr13049699qkx.93.1478598514152;
        Tue, 08 Nov 2016 01:48:34 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Tue, 8 Nov 2016 10:48:31 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Message-ID: <20161108094831.GA22910@lorien.valinor.li>
References: <20160602103328.GA6618@layer-acht.org>
 <20160602162134.8A5D56C0659@smtpvmsrv1.mitre.org>
 <20160602180240.GA23506@layer-acht.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160602180240.GA23506@layer-acht.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: [oss-security] Re: CVE request: mat doesn't remove metadata in
 embedded images in PDFs

Hi,

On Thu, Jun 02, 2016 at 06:02:40PM +0000, Holger Levsen wrote:
> On Thu, Jun 02, 2016 at 12:21:34PM -0400, cve-assign@mitre.org wrote:
> > We think you mean that a CVE ID can exist with the rationale of:
> > 
> >   - as of version 0.7, there will be a required security update in
> >     which the embedded-in-a-PDF security problem is resolved
> > 
> >   - the CVE ID is needed to tag that required security update
> > 
> >   - as of version 0.7, the https://mat.boum.org/ text may be changed
> >     from "images embedded inside PDF may not be cleaned" to something
> >     like "images embedded inside complex documents may not be cleaned,
> >     but users can rely on cleaning in the specific case of PDF
> >     documents"
> > 
> > Does that match your intention for the CVE ID?
> 
> yes.
> 
> Though I disagree with the 3rd paragraph a bit, I don't think it's that
> hard to recursivly process files, eg both
> https://tracker.debian.org/pkg/strip-nondeterminism (in perl) and
> https://tracker.debian.org/pkg/diffoscope (in python) do that.

FTR, in Debian for both Debian wheezy and Debian jessie the support
for PDF was disabled entirely:

https://lists.debian.org/debian-lts-announce/2016/10/msg00006.html
https://lists.debian.org/debian-security-announce/2016/msg00291.html

Regards,
Salvatore
