X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1792" "Friday" "26" "April" "2019" "23:45:29" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20190426214529.GA7525@eldamar.local>" "47" "Re: [oss-security] wpa_supplicant/hostapd: EAP-pwd message reassembly issue with unexpected fragment" nil nil nil "4" "2019042621:45:29" "[oss-security] wpa_supplicant/hostapd: EAP-pwd message reassembly issue with unexpected fragment" (number mark "U       carnil@debia Apr 26   47/1792  " thread-indent "\"Re: [oss-security] wpa_supplicant/hostapd: EAP-pwd message reassembly issue with unexpected fragment\"\n") "<20190418155926.GB5455@w1.fi>" ("<20190418155926.GB5455@w1.fi>") nil nil nil nil nil nil nil "Re: [oss-security] wpa_supplicant/hostapd: EAP-pwd message reassembly issue with unexpected fragment" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7404 invoked by uid 550); 26 Apr 2019 21:45:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7384 invoked from network); 26 Apr 2019 21:45:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=dKe8ogiYCPL/myG88noclz964znH5SXQGE8mr2K1+yg=;
        b=oTvAnLiLc+zFLZlqIyKTqJ5+bW8b53xamTR5NFgJnmBFNW8jMe0VTC7J7UXHE7sY+e
         I7x0Jen42RmCRDllK2fumc2zk4u19b30eMuYMuylbErm9TDcdwx7NVMUGc/JYJ4Q25fv
         Nn2xXn9Dt2SfR0wSSv8MthOe39ZCn5vyGGuzREIP6BhyzBflviZBUgG1CuSi83GLGpPV
         6xyluo1NNhsM3joUB3D55IOJvScT4PVeoyVpJcBWBgvdPTUIcpLeyxWw2D17Scvb5Mco
         tmOyQ1YloDDaMOYCsp0C9zGaDjowupsaJDGFBdRTVsaDvvEP6bShwd1oYHvzIWSTPYNl
         SSWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=dKe8ogiYCPL/myG88noclz964znH5SXQGE8mr2K1+yg=;
        b=ay1xCF2j31TduJGMWLtylT0PZ6eXV+e/pDngJ5uwlHxQx0Nj17J1Po2j3a5sA9vtmK
         rOxojZ83zymP5BqJ1aCAWwrHn1WzoI4kNTcKEBD7msG3gbeq8cjBn3LlXsmrgM9FiUez
         Ws3lEH/3c3W2HlREj+7hz3s9O0Hn+orj11LPBKAWhlEXRAjgL5jYmyFQcMu0YJGKS/Oc
         DMRUGkPeDaBQx9bCgv+SH5evTE5qXyUpfaHSXIxNhW6RkJcuOi99ZDdJSIWEtvjnN3g5
         6nPEKpqYrnS9csEEaz3pvk3i0chfTcw5u2eNVcearYjXmszAL60jqBAbybZNoVv50Lco
         Zgvg==
X-Gm-Message-State: APjAAAVkBI5865aarTCKiOxBTHgWFTrOn4V8BOojQ3WurXbFngTBY9kR
	5S9CjQVXp5F5dUGHjZFJzsE3zcvuWGw=
X-Google-Smtp-Source: APXvYqx5da/POEzGDtbNxO7WrUQ6avkWCqRaouVCr+l7gEYTEeHMSTl4d4GX65BTKfQHb7bV65zEwg==
X-Received: by 2002:a17:906:1249:: with SMTP id u9mr19682074eja.58.1556315131368;
        Fri, 26 Apr 2019 14:45:31 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Fri, 26 Apr 2019 23:45:29 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20190426214529.GA7525@eldamar.local>
References: <20190418155926.GB5455@w1.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190418155926.GB5455@w1.fi>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [oss-security] wpa_supplicant/hostapd: EAP-pwd message
 reassembly issue with unexpected fragment

Hi,

On Thu, Apr 18, 2019 at 06:59:26PM +0300, Jouni Malinen wrote:
> Published: April 18, 2019
> Latest version available from: https://w1.fi/security/2019-5/
> 
> Vulnerability
> 
> EAP-pwd implementation in hostapd (EAP server) and wpa_supplicant (EAP
> peer) was discovered not to validate fragmentation reassembly state
> properly for a case where an unexpected fragment could be received. This
> could result in process termination due to NULL pointer dereference.
> 
> An attacker in radio range of a station device with wpa_supplicant
> network profile enabling use of EAP-pwd could cause the wpa_supplicant
> process to terminate by constructing unexpected sequence of EAP
> messages. An attacker in radio range of an access point that points to
> hostapd as an authentication server with EAP-pwd user enabled in runtime
> configuration (or in non-WLAN uses of EAP authentication as long as the
> attacker can send EAP-pwd messages to the server) could cause the
> hostapd process to terminate by constructing unexpected sequence of EAP
> messages.
> 
> 
> Vulnerable versions/configurations
> 
> All hostapd and wpa_supplicant versions with EAP-pwd support
> (CONFIG_EAP_PWD=y in the build configuration and EAP-pwd being enabled
> in the runtime configuration) are vulnerable against the process
> termination (denial of service) attack.
> 
> 
> Possible mitigation steps
> 
> - Merge the following commits to wpa_supplicant/hostapd and rebuild:
> 
>   EAP-pwd peer: Fix reassembly buffer handling
>   EAP-pwd server: Fix reassembly buffer handling
> 
>   These patches are available from https://w1.fi/security/2019-5/
> 
> - Update to wpa_supplicant/hostapd v2.8 or newer, once available

MITRE (via cveform.mitre.org) assigned CVE-2019-11555 for this issue.

Regards,
Salvatore
