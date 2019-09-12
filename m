X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2035" "Thursday" "12" "September" "2019" "21:14:53" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20190912191453.GA3629@eldamar.local>" "49" "Re: [oss-security] hostapd/wpa_supplicant: AP mode PMF disconnection protection bypass" nil nil nil "9" "2019091219:14:53" "[oss-security] hostapd/wpa_supplicant: AP mode PMF disconnection protection bypass" (number mark "U       carnil@debia Sep 12   49/2035  " thread-indent "\"Re: [oss-security] hostapd/wpa_supplicant: AP mode PMF disconnection protection bypass\"\n") "<20190911103701.GB10457@w1.fi>" ("<20190911103701.GB10457@w1.fi>") nil nil nil nil nil nil nil "Re: [oss-security] hostapd/wpa_supplicant: AP mode PMF disconnection protection bypass" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29930 invoked by uid 550); 12 Sep 2019 19:15:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29912 invoked from network); 12 Sep 2019 19:15:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=mvZYf5M7kkIB8lNSe6vw65zZGsniTx0AGWz8pzY4kPM=;
        b=pYSKwJe+ciupd8n+sBmPLk+aWrog3jwVZoGoyS550Sw7i1V5JnWoZ7bbFxwmQzVfD+
         0cJ3QrS0+CMJhlpIHXqvebQQNlWlfVBP5DJnuTkXlNPlaTzPKDKVFkomK0LO59Gax3vJ
         i8CnzqY5xSwA0ExZfJWnkUZI7ySUGxXZucn3m1RcQt5rASslGVE9O0CyYoShQRSAlWW9
         yGpdZWgADHk3KV2p2fCI3uus14xJ03msGol6FPbbN17AEdfqUeBglkrbvvJCgrmAadHV
         nr8ajewJNeYFhO8vq7qWGPhbMWRisEVA3lcsEXOiP9bGQyp+5Bk5CUaCADSZguwEAQpd
         8qKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=mvZYf5M7kkIB8lNSe6vw65zZGsniTx0AGWz8pzY4kPM=;
        b=XMp6seJF32aZX00p+mFa5OTgjAURKJ9FRuvV+Xjx0H5jkkXJei8Vnksz2NYlKpXO0t
         5DLEh4D+lAnbQRCbwsmVHVdUdSMf5tpcNJTBj+D5NGp0fR4oeKZeM+jilnfrxwktroUB
         kfWyjpm47Iu5KRY3RWxND7lDtEjZsEsz7qXu1V8ggNrPmkR1P2vClpprii4pELk6fDZC
         oJcDzeoLTbnXF82hJ8jbeP+t0Qebu37keJpuCkX9UsE8LPsqaYZUX1+SYRfVNayUPnk0
         52AsEMP3ilRuYkVVnov0wNpFni5peiF6cKbY1Gc78IqN7hJ5ZpMi4GAw+LPicFBMyplY
         xGzw==
X-Gm-Message-State: APjAAAVfxm+LuKjSv73bD5ax8PXI6ETud1g3xWSGHs+QfWzXWZ/Xdnk+
	z3b2d339lqwW3G5T/2OTLREDvcmGX1w=
X-Google-Smtp-Source: APXvYqw1cqawezfuoRK7PZzcs5heCeoLMwHASnpiuwEztKmkxbVcxon6nbTPp/NWHBbCKAVuQ6sPsg==
X-Received: by 2002:a50:ac03:: with SMTP id v3mr44049627edc.113.1568315695464;
        Thu, 12 Sep 2019 12:14:55 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Thu, 12 Sep 2019 21:14:53 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Cc: Jouni Malinen <j@w1.fi>
Message-ID: <20190912191453.GA3629@eldamar.local>
References: <20190911103701.GB10457@w1.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190911103701.GB10457@w1.fi>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [oss-security] hostapd/wpa_supplicant: AP mode PMF disconnection
 protection bypass

On Wed, Sep 11, 2019 at 01:37:01PM +0300, Jouni Malinen wrote:
> Published: September 11, 2019
> Latest version available from: https://w1.fi/security/2019-7/
> 
> Vulnerability
> 
> hostapd (and wpa_supplicant when controlling AP mode) did not perform
> sufficient source address validation for some received Management frames
> and this could result in ending up sending a frame that caused
> associated stations to incorrectly believe they were disconnected from
> the network even if management frame protection (also known as PMF) was
> negotiated for the association. This could be considered to be a denial
> of service vulnerability since PMF is supposed to protect from this type
> of issues. It should be noted that if PMF is not enabled, there would be
> no protocol level protection against this type of denial service
> attacks.
> 
> An attacker in radio range of the access point could inject a specially
> constructed unauthenticated IEEE 802.11 frame to the access point to
> cause associated stations to be disconnected and require a reconnection
> to the network.
> 
> 
> Vulnerable versions/configurations
> 
> All hostapd and wpa_supplicants versions with PMF support
> (CONFIG_IEEE80211W=y) and a runtime configuration enabled AP mode with
> PMF being enabled (optional or required). In addition, this would be
> applicable only when using user space based MLME/SME in AP mode, i.e.,
> when hostapd (or wpa_supplicant when controlling AP mode) would process
> authentication and association management frames. This condition would
> be applicable mainly with drivers that use mac80211.
> 
> 
> Possible mitigation steps
> 
> - Merge the following commit to wpa_supplicant/hostapd and rebuild:
> 
>   AP: Silently ignore management frame from unexpected source address
> 
>   This patch is available from https://w1.fi/security/2019-7/
> 
> - Update to wpa_supplicant/hostapd v2.10 or newer, once available

CVE-2019-16275 was assigned for this issue (requested via
https://cveform.mitre.org/).

Regards,
Salvatore
