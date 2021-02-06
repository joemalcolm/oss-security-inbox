X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2201" "Saturday" "6" "February" "2021" "17:17:57" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<YB7BNW/c2BsiVj4I@eldamar.lan>" "61" "Re: [oss-security] wpa_supplicant P2P group information processing vulnerability" nil nil nil "2" "2021020616:17:57" "[oss-security] wpa_supplicant P2P group information processing vulnerability" (number mark "U       carnil@debia Feb  6   61/2201  " thread-indent "\"Re: [oss-security] wpa_supplicant P2P group information processing vulnerability\"\n") "<20210203230932.GB431400@w1.fi>" ("<20210203230932.GB431400@w1.fi>") nil nil nil nil nil nil nil "Re: [oss-security] wpa_supplicant P2P group information processing vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6143 invoked by uid 550); 6 Feb 2021 16:18:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6122 invoked from network); 6 Feb 2021 16:18:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=jK83lxTxAuuXF1Zd17A9DEWAUq2GoWXRV6rB8mygzoI=;
        b=g0k086AALI0v9+2BnsG1oCTCzMhEL0V93E3Miz8BCIqa/cWkiMLlQ28yElW58uNfX+
         TZant5e1077P+ZWVkP6KDKFrzI/+POYWErzulU6IVN4i2MNRlrNOFoeNbsXslFsoeFG/
         gemwz+tb+JQdl/I2FQX7eK3UQtCnT2VTbgD7iI+WS8iz6Cu89RgQtHphAfgLEE5+3qD9
         TEAxufIoIbQVFW57sAtZ5yz9odD+mNpa2ajgtFG/upoa+n6KXSm6GPBLAGNzon4fSua3
         A2SAG9yU/Dmmz3/baG5cHldIib0wCHcMj/c0lQRSYMwpiXobnBuUa8KS48/RSbXYLAvr
         Jm6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to;
        bh=jK83lxTxAuuXF1Zd17A9DEWAUq2GoWXRV6rB8mygzoI=;
        b=cFKPtJS6/PlL8/HsG59/nJYkpmgHHki5PuzwjcEzPRytGD7+Uunpc3mpTtXClQxlW1
         j1DoYdybGPPHlJVJZVJJtAiw+3DWZp1jmZMkUWrIQXTt8m5ldpm4SWXqkf0GKSbBZmlw
         qmWUBofV1BIgx2OUoBVGZBJFwf3sUAvXkrWQrrAWpMYNScs2PTsuHoLi1uVFNEWWCTMT
         WZxUF9OqXukcrALrWFMawo4zKKSXRaA3f7COTwnq6tvctCmBMSaHl+PRgCi5PPjsGYfH
         xaXNjRBzvkaQfqkyXgQzkskHewW+G1H9I03mSStM+r6logzQwNTDVCJoYseTyDXY/cnX
         9VXg==
X-Gm-Message-State: AOAM531ws4sg1K6nuh/GLSTniJ6DI6kx99XzS/bQ0QThASFlk43250+6
	IMXS/y087+ncljtzPtAWw884xYCNxBBDlg==
X-Google-Smtp-Source: ABdhPJxjBp3q9nZI6QnwgrD8047VGcFX4jwf3HcM61A+EEW58Bfd7DVkjCqwboj4wDidbgeUYoRDNw==
X-Received: by 2002:aa7:d7d3:: with SMTP id e19mr1007012eds.288.1612628278961;
        Sat, 06 Feb 2021 08:17:58 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sat, 6 Feb 2021 17:17:57 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <YB7BNW/c2BsiVj4I@eldamar.lan>
References: <20210203230932.GB431400@w1.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210203230932.GB431400@w1.fi>
Subject: Re: [oss-security] wpa_supplicant P2P group information processing
 vulnerability

Hi,

On Thu, Feb 04, 2021 at 01:09:32AM +0200, Jouni Malinen wrote:
> Published: February 4, 2021
> Latest version available from: https://w1.fi/security/2020-2/
> 
> 
> Vulnerability
> 
> A vulnerability was discovered in how wpa_supplicant processing P2P
> (Wi-Fi Direct) group information from active group owners. The actual
> parsing of that information validates field lengths appropriately, but
> a copy of the secondary device types. This can result in writing
> attacker controlled data into the peer entry after the area assigned for
> the secondary device type. The overflow can result in corrupting
> pointers for heap allocations. This can result in an attacker within
> radio range of the device running P2P discovery being able to cause
> unexpected behavior, including termination of the wpa_supplicant process
> and potentially arbitrary code execution.
> 
> 
> Vulnerable versions/configurations
> 
> wpa_supplicant v1.0-v2.9 with CONFIG_P2P build option enabled
> 
> An attacker (or a system controlled by the attacker) needs to be within
> radio range of the vulnerable system to send a suitably constructed
> management frame that triggers a P2P peer device information to be
> created or updated.
> 
> 
> Acknowledgments
> 
> This issue was discovered by fuzz testing of wpa_supplicant by Google's
> OSS-Fuzz.
> 
> Possible mitigation steps
> 
> - Merge the following commit to wpa_supplicant and rebuild it:
> 
>   P2P: Fix copying of secondary device types for P2P group client
>   
>   This patch is available from https://w1.fi/security/2020-2/
>   
> - Update to wpa_supplicant v2.10 or newer, once available
> 
> - Disable P2P (control interface command "P2P_SET disabled 1" or
>   "p2p_disabled=1" in (each, if multiple interfaces used) wpa_supplicant
>   configuration file)
> 
> - Disable P2P from the build (remove CONFIG_P2P=y)

>From https://source.android.com/security/bulletin/2021-02-01
following/referencing to
https://android.googlesource.com/platform/external/wpa_supplicant_8/+/0b60cb210510c68871c8d735285bc4915de3bd80
and the information on
https://bugzilla.redhat.com/show_bug.cgi?id=1925152 this looks that it
hs CVE-2021-0326 assigned.

Regards,
Salvatore
