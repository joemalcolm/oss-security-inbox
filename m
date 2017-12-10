X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["548" "Sunday" "10" "December" "2017" "17:33:30" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20171210163330.GA13246@eldamar.local>" "21" "Re: [oss-security] CVE Request -- Arbitrary command execution in mercurial repo with a git submodule" nil nil nil "12" "2017121016:33:30" "[oss-security] CVE Request -- Arbitrary command execution in mercurial repo with a git submodule" (number mark "U       carnil@debia Dec 10   21/548   " thread-indent "\"Re: [oss-security] CVE Request -- Arbitrary command execution in mercurial repo with a git submodule\"\n") "<CAKSZ2QtFnvxxRAKSBiCB60T7LX641-+hVeeUddPmAYH426Zxdw@mail.gmail.com>" ("<CAKSZ2QtFnvxxRAKSBiCB60T7LX641-+hVeeUddPmAYH426Zxdw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10152 invoked by uid 550); 10 Dec 2017 16:33:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10131 invoked from network); 10 Dec 2017 16:33:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=RVxiuRsujEuOfTujw0H4LbiZM/mrde+n1CAeD4yJlzI=;
        b=oFxVNbWbHz7cDD9h8tSyBaqWEUTVIUkvs3i1jGAMA0pE8vEdN7MNa/ijyyLF1LZL+U
         IotTlmgHESOzEILbirGP5k4q9kn/DZu2IOW5CjFCc2QUVpGzGcy4kVChKng3upMbBxd1
         YgtG3H5pWkY4Tr3gM/9k+KlvA5UL9njMbxYfFjOSEcaaMbSF2L1ZZ1OSwTNdwNr2Nzhd
         Dpr+JpM1vhblC0r2kD9LIF98KODGz2JjWwVpk3FSuJVfwWYdyKxpfj9f0CETE2lZq8kt
         XOLxaSyPVJsFDs/IHGPduOQ6An6kVlZNOiaNcnDBLNZ5yAgzqhGx7m+JXIGkpiYE9Gb5
         xfKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=RVxiuRsujEuOfTujw0H4LbiZM/mrde+n1CAeD4yJlzI=;
        b=DKXl1y6xfqkByfLaztHxKxGISZdEBEmLsGjZ+1t4Tu+gESK32AmfYOATw1i0YnpkZd
         HcUSFOcRxQ+2+hSpJpw0V4vnqvyQ7u3od7O2eyuSHffgQWdSYi2sxpqMa43UgPLlWRiC
         Jrb8bnte7Wdb8FzEyFE2Z9iy25B1hw/J6L+BzG837Bze84KDi6bPX1bCw3gt+fFVnFfJ
         puG7u5RjeBCCcAKHC4i8qNxPBKlNHm+PopnMB/ZHKppVKjPK4fLBKWo4Xf3n3QS7nv04
         QFys+o6L48iERCKyuuWLgcCzjL9XqM0FBxMeicAlYs8wojxTaE4bGRA9yEtWnOIHRpm7
         hCfQ==
X-Gm-Message-State: AKGB3mIEB1deTpUVEg92mvi5uQkILcHPBbQ88VjsFluAe82kMcC9PRXb
	3j4PJ1KTTtTua8BNCfqZEXQ=
X-Google-Smtp-Source: AGs4zMbXKrP7tdjpUpWIM3wNAIPyB2MNNN9dqejUXkNg+HGRi03xbSxQQkEKS9D7zhdIzubnfyha6Q==
X-Received: by 10.28.111.146 with SMTP id c18mr9129281wmi.123.1512923611931;
        Sun, 10 Dec 2017 08:33:31 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sun, 10 Dec 2017 17:33:30 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Message-ID: <20171210163330.GA13246@eldamar.local>
References: <CAKSZ2QtFnvxxRAKSBiCB60T7LX641-+hVeeUddPmAYH426Zxdw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKSZ2QtFnvxxRAKSBiCB60T7LX641-+hVeeUddPmAYH426Zxdw@mail.gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
Subject: Re: [oss-security] CVE Request -- Arbitrary command execution in
 mercurial repo with a git submodule

Hi

On Thu, Dec 07, 2017 at 04:53:44PM +0800, feer james wrote:
> Hello mitre,
> 
> I'd like to request a cve id for this vulnerability.
> 
> *Vulnerability Details:*
> https://bz.mercurial-scm.org/show_bug.cgi?id=5730
> 
> *Offical fix release:*
> https://www.mercurial-scm.org/wiki/WhatsNew#Mercurial_4.4.1_.282017-11-07.29

FTR, this issue was later on assigned CVE-2017-17458.

@Terry, CVEs cannot be requested anymore via mailing oss-security,
rather filling the request via https://cveform.mitre.org/ for future
requests.

Regards,
Salvatore
