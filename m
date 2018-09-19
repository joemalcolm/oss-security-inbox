X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["383" "Wednesday" "19" "September" "2018" "10:23:43" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20180919082343.zumj3iknwpwmlbwv@lorien.valinor.li>" "14" "Re: [oss-security] Linux kernel: potential local priviledge escalation bug in vmacache code" nil nil nil "9" "2018091908:23:43" "[oss-security] Linux kernel: potential local priviledge escalation bug in vmacache code" (number mark "U       carnil@debia Sep 19   14/383   " thread-indent "\"Re: [oss-security] Linux kernel: potential local priviledge escalation bug in vmacache code\"\n") "<1470776078.14020763.1537344926470.JavaMail.zimbra@redhat.com>" ("<1731710540.14020604.1537344883944.JavaMail.zimbra@redhat.com>" "<1470776078.14020763.1537344926470.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25724 invoked by uid 550); 19 Sep 2018 08:23:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25704 invoked from network); 19 Sep 2018 08:23:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=cUQo+LRFAxcDanr6rIO8M7Jd7yRl7JXFv5YUdTWuNGk=;
        b=rT6DZaqgBCUdEEF/GHZe/3GDnwjS3i6gX+f1zfSt669/GvGJOzZvMbBN7sTleuSM2z
         853UYDktuoZ4DZrrLgwDhq6ZroDOARRzMM/vabkBjiIZocsjq2+B2TvoSmO98w3VMOux
         fcqLgdBikx0F0xmWc2cO7+um8qovB/Mxt3oaAny7eyH7j89r/bz4sp6L4PursiLZd8V3
         /XB1X/76Gm06Phd6MZCMjmLwtgkVszqb/gh3SRGTaGU71c1uQSODSvCmNcdiZxCz77W6
         k71AflBbiXLfpGMONQOz8AAbIWqnlX82wZOLnGVX5rEPXgA+9/Ks30pcvRctf7Oa13eo
         /ZkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=cUQo+LRFAxcDanr6rIO8M7Jd7yRl7JXFv5YUdTWuNGk=;
        b=rfS7S22pM1VcpeHd5C6nv4B7ChlHQpavomFQiiCb+1DtwBoetAOhKBIWScY/Zd8l85
         eVy9kC9mHYDLnunatgK8cZNsCUiylwSIRdC8RjdTmR+9BmiG6O1GuaJc82+gdIKhXb2d
         0hOlUgEGfhYL3PBHcH6+ihFx2TfvKFKEs/TLcPIZY8k4SmHY4PN8XnLO2lhfAj/dZcje
         Z9cco9mexXwqXZ58m09VxFhv8Kj6cpUV6WKxrDxLeK1tx1kKB5hr9rkd11pAgvp5B6qz
         K9zWBAfP2kO8TNbRtP5zfW7paciXZsEnBoqYTdRx4tZCu5k4hXnmW5G/goH6sdlwnaOo
         Dhlg==
X-Gm-Message-State: APzg51DfAUJRqc5P53v6qCsmx6Ow9cZ2LERgJHddSyeDGv8wHOEGwHVF
	dmAbSZFiOEtsCz5DPQ7W3HCA74Zge/c=
X-Google-Smtp-Source: ANB0VdYUXRU7NeB8j5cj39YQN/wHeZL6VU/HKCcdSF1ngfrj2FT5xhK0FzjU8daJvGUttCZD2sOBgA==
X-Received: by 2002:adf:edd2:: with SMTP id v18-v6mr28628686wro.39.1537345425661;
        Wed, 19 Sep 2018 01:23:45 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Wed, 19 Sep 2018 10:23:43 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Cc: Davidlohr Bueso <dave@stgolabs.net>
Message-ID: <20180919082343.zumj3iknwpwmlbwv@lorien.valinor.li>
References: <1731710540.14020604.1537344883944.JavaMail.zimbra@redhat.com>
 <1470776078.14020763.1537344926470.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1470776078.14020763.1537344926470.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: Re: [oss-security] Linux kernel: potential local priviledge
 escalation bug in vmacache code

Hi Vladis,

On Wed, Sep 19, 2018 at 04:15:26AM -0400, Vladis Dronov wrote:
> Hello, Davidlohr,
> 
> Thank you for reporting this. Was CVE-ID assigned or requested
> for this flaw? If not, the Red Hat (as a CNA) could allocate one
> and handle adding it to the MITRE's database.

I requested earlier the day one from MITRE (via webform) but got no
assignment yet.

Regards,
Salvatore
