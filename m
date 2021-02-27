X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1807" "Saturday" "27" "February" "2021" "07:54:16" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" nil "52" "Re: [oss-security] wpa_supplicant P2P provision discovery processing vulnerability" nil nil nil "2" nil nil (number mark "U       carnil@debia Feb 27   52/1807  " thread-indent "\"Re: [oss-security] wpa_supplicant P2P provision discovery processing vulnerability\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] wpa_supplicant P2P provision discovery processing vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14110 invoked by uid 550); 27 Feb 2021 06:54:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14089 invoked from network); 27 Feb 2021 06:54:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=tulTr1ttDWVP1tsvVAwxEyEsE640ABm/WdDSlfAJGxo=;
        b=AJLBfj8PWCcn5AqZWjJsttH4I/DAf+1DnneF1LLYe9UhHMeU4N/3RfVTlJiD4n2sWM
         joqHNe1nZK5Mjr5TSJE0lLZ9VLq7QBXv/FnVPbX7eUfz7xq6tc6jILJ7unQ9/DL2rSaO
         iPW7sodyoGobjjTAxZvfBdbC/JDU3pULDZkqJQ7h+5ilHF2kr3+M+XgbZs2Ke0fb6pSI
         sUT+MXqTuV3mUdlbnivltVEMu5IdoG709XUX1BF0tiSoxFmKszd2cwPw7NEbzQUwB7SY
         0jPw++sr/HQLcQ7w7tlrb2t8otQJiN8G/1jflbAOqwB5Bl/d8wbUmT/s+e9UUe/Q+Aw9
         M8og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to;
        bh=tulTr1ttDWVP1tsvVAwxEyEsE640ABm/WdDSlfAJGxo=;
        b=GiIx3qqOndNnYNiBGKer8wUX39LcBOCmXSIyyf4Z0bebAE4NC71d5biAMfSnY7KbIb
         dic5zxhnElgcic8PI4tA0p6laSJb71A8S3k2uVFC+94tJ4EcmglJMS5mGJ7W0FWSHweY
         +noAHeB6Zwz5A08GLH813Ko649JOfYbipG4upMb8lCpY/R1crljOlXEMmKKBVzAZMPfT
         vF9GmzKWB2hkS8seD5EAHv4pJsC6A+udLiAh8syeRRAUXo/2H4i/SBlTS/KQ6hhE2z0r
         oZw7AmcZwL7Ow4f3Ma7Q0HVKF0kk0WVQD9rJwIBq1ck5h/KUSXVW56iNAAoBJgAWIFPE
         DDgA==
X-Gm-Message-State: AOAM533aeZieg7ilCriiWna05OxrHw9XQ6T+sUeEwg/QnLH1rNQ7Pyi7
	u5wxKGoPlGifcJQ9/WdFWdaBR5wRD/D5jQ==
X-Google-Smtp-Source: ABdhPJyjhLutpCR3X9c0Q0Q6VQwPS1iQNybIiaIOa6a0CUfO0aed2u65wrUWvIG/qcZOrKVl0eF76Q==
X-Received: by 2002:a05:6402:1c86:: with SMTP id cy6mr5757133edb.276.1614408858287;
        Fri, 26 Feb 2021 22:54:18 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sat, 27 Feb 2021 07:54:16 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <YDnsmGZ4hL6knMJD@eldamar.lan>
References: <20210225190350.GB474115@w1.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210225190350.GB474115@w1.fi>
Subject: Re: [oss-security] wpa_supplicant P2P provision discovery processing
 vulnerability

Hi,

On Thu, Feb 25, 2021 at 09:03:50PM +0200, Jouni Malinen wrote:
> Published: February 25, 2021
> Latest version available from: https://w1.fi/security/2021-1/
> 
> 
> Vulnerability
> 
> A vulnerability was discovered in how wpa_supplicant processes P2P
> (Wi-Fi Direct) provision discovery requests. Under a corner case
> condition, an invalid Provision Discovery Request frame could end up
> reaching a state where the oldest peer entry needs to be removed. With
> a suitably constructed invalid frame, this could result in use
> (read+write) of freed memory. This can result in an attacker within
> radio range of the device running P2P discovery being able to cause
> unexpected behavior, including termination of the wpa_supplicant process
> and potentially code execution.
> 
> 
> Vulnerable versions/configurations
> 
> wpa_supplicant v1.0-v2.9 with CONFIG_P2P build option enabled
> 
> An attacker (or a system controlled by the attacker) needs to be within
> radio range of the vulnerable system to send a set of suitably
> constructed management frames that trigger the corner case to be reached
> in the management of the P2P peer table.
> 
> 
> Possible mitigation steps
> 
> - Merge the following commit to wpa_supplicant and rebuild it:
> 
>   P2P: Fix a corner case in peer addition based on PD Request
>   
>   This patch is available from https://w1.fi/security/2021-1/
>   
> - Update to wpa_supplicant v2.10 or newer, once available
> 
> - Disable P2P (control interface command "P2P_SET disabled 1" or
>   "p2p_disabled=1" in (each, if multiple interfaces used) wpa_supplicant
>   configuration file)
> 
> - Disable P2P from the build (remove CONFIG_P2P=y)

CVE-2021-27803 is assigned for this issue:

https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-27803

Regards,
Salvatore
