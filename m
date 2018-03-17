X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1400" "Saturday" "17" "March" "2018" "15:05:46" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20180317140214.GB8389@eldamar.local>" "47" "Re: [oss-security] CVE request: maliciously crafted notebook files in Jupyter" nil nil nil "3" "2018031714:05:46" "[oss-security] CVE request: maliciously crafted notebook files in Jupyter" (number mark "U       carnil@debia Mar 17   47/1400  " thread-indent "\"Re: [oss-security] CVE request: maliciously crafted notebook files in Jupyter\"\n") "<1521122159.1270614.1304206128.19D1CFEA@webmail.messagingengine.com>" ("<1521122159.1270614.1304206128.19D1CFEA@webmail.messagingengine.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23855 invoked by uid 550); 17 Mar 2018 14:05:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23834 invoked from network); 17 Mar 2018 14:05:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=zL0Epz0iLx1MoZ/ICRDaMiUHApdVVN/PEFerny7iqmo=;
        b=iPdZdLkIJ/I/uCK1OriMfsHsZiISIDgJhLHEgBmzZmamVFADWTYzbilh/9sxyhcH2L
         prFGb7AaXrCYGqqSmbJ7ZWFGheVp9iC6zvSXWytxCCa9rcRkkivpWlMxO+ilvglQHT5r
         6jiWnKNpdWD1ZENuupO4CYFDeJSGK6sAbwQA0rPEGemsp92f/8yvQo478LcLVcQASddT
         UNctz5rEU1aMF5Kim0dwgXib0dIESY+X6e6n9VJn0gslJbfXOLjptinbkFqy6RH1WIJq
         PfStDPpVZ965R8gRmH0ReCosXIdB38BcC+BGAu8ifS5px4mBvwdT9a1nWJHVHePTmxlR
         vUjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=zL0Epz0iLx1MoZ/ICRDaMiUHApdVVN/PEFerny7iqmo=;
        b=tEmhStFF4U2EWM4i4COK+ddk7jabkpZqTzIZukSBsh1qUDXLcjQpkaJOK/Nr3y2ldR
         OxsSAl8gD+sAozseWA9J5Wcx3Y7K9vBwRWLOCq6zkSECaSshg71XoLTpS0VHClwysJ0I
         IyMW1kXN0i1jewm5sdRnAXeugV88FpGLZtgR8Ova7p2+Yvktiwa7ma2KRq2qzZOSvo7F
         6goywlleV2X4oCO47PtpaNNqtL1cZPj2Y/Ark1JFcj1ft7BSpIVOwTfDtFqNGFoqAQs4
         izCwU7pTaEATEAWnQdNvWM6SNVA2XE+iWTjyndV0Lygj0ashjxyYM7G1IEU4LKi9qPRt
         2sew==
X-Gm-Message-State: AElRT7EeVZI0s2WoFyn9sZTz+foaqT5AMGpCYGaPboDl5PqrPWqBZJP1
	DGaBjr1UmKY+aH6dm0Um0uM=
X-Google-Smtp-Source: AG47ELvvWTytn7XOIkZLV3NUjpr2bJxYPlXRJJEBw4+ln/JvKUiqYJxJJr+HakVsi/tcq5uwPTZ9jA==
X-Received: by 10.80.153.221 with SMTP id n29mr6571713edb.303.1521295547740;
        Sat, 17 Mar 2018 07:05:47 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sat, 17 Mar 2018 15:05:46 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Cc: security <security@ipython.org>, MinRK <benjaminrk@gmail.com>,
	jkamens@quantopian.com, ssanderson@quantopian.com
Message-ID: <20180317140214.GB8389@eldamar.local>
References: <1521122159.1270614.1304206128.19D1CFEA@webmail.messagingengine.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1521122159.1270614.1304206128.19D1CFEA@webmail.messagingengine.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [oss-security] CVE request: maliciously crafted notebook files
 in Jupyter

Hi,

On Thu, Mar 15, 2018 at 01:55:59PM +0000, Thomas Kluyver wrote:
> Email address of requester: security@ipython.org, thomas@kluyver.me.uk, benjaminrk@gmail.com, jkamens@quantopian.com, ssanderson@quantopian.com
> 
> Software name: Jupyter Notebook (formerly IPython Notebook)
> Type of vulnerability: Maliciously forged file
> Attack outcome: Possible remote execution
> 
> Vulnerability: A maliciously forged notebook file can bypass sanitization to execute Javascript in the notebook context. Specifically, invalid HTML is 'fixed' by jQuery after sanitization, making it dangerous.
> 
> Affected versions:
> 
> - notebook ≤ 5.4.0
> 
> URI with issues:
> 
> - GET /notebook/**
> 
> Patches:  not yet finalised
> 
> Mitigations:
> 
> Upgrade to Jupyter notebook 5.4.1 or 5.5 once available.
> If using pip,
> 
>     pip install --upgrade notebook
> 
> For conda:
> 
>     conda update conda
>     conda update notebook
> 
> Vulnerability reported by vkgonka@mail.ru , via Jonathan Kamens at Quantopian

Thanks for the headsup.

This reply is mainly for this other purpose: It looks you wanted to
have a CVE assigned trough this reply to the list. CVE's cannot
anymore be requested via the oss-security list. If you want to request
one please have a look at https://cveform.mitre.org/

Once you have the CVE assigned, can you please loop back the
assignement in this thread?

Regards,
Salvatore
