X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["576" "Thursday" "15" "December" "2016" "06:38:03" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20161215053803.GA2527@lorien.valinor.li>" "21" "Re: [oss-security] CVE Request: Game Music Emulators: incorrect emulation of the SPC700 audio co-processor of SNES: arbitrary code execution via malformed SPC music file" nil nil nil "12" "2016121505:38:03" "[oss-security] CVE Request: Game Music Emulators: incorrect emulation of the SPC700 audio co-processor of SNES: arbitrary code execution via malformed SPC music file" (number mark "U       carnil@debia Dec 15   21/576   " thread-indent "\"Re: [oss-security] CVE Request: Game Music Emulators: incorrect emulation of the SPC700 audio co-processor of SNES: arbitrary code execution via malformed SPC music file\"\n") "<20161215053348.5sioflbygm3ba3h5@lorien.valinor.li>" ("<20161215053348.5sioflbygm3ba3h5@lorien.valinor.li>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3831 invoked by uid 550); 15 Dec 2016 05:38:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3804 invoked from network); 15 Dec 2016 05:38:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=9RrcK164kIUpPM1lIDbIClSWC3E4zNGeKUx15k1OJjQ=;
        b=pNT89q5KMgDJQqnWomTnbJjcBtJK8YfYN7aEVjeqA9bQa2MRAfL7dreXlzzW42EkMa
         Vb08bVXtULtBh0UiGDRpLBj3yVszgPjCZU3x0YYi7depFAvu/PJxMMtGkp9XPrNlnmDM
         0n6RD6BWMeIptL2Pf/N5pKo39GIp09SeIt2hyg+N268abEKVpIQh9C5Ga8jvYWY6GTaS
         /APCmT1oIMAVnYl7OD2meotq6P1uWujPcBYRp7gcdTEKLhhNF16/Heps0ciOjMg5OeK7
         tvKuvhh6LGKFqEd3IYwT9dJx/ZTqPIpvTgJDeBWuDDQNvTX7eFW1wgSDPLNZAHfmPsi/
         AHUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=9RrcK164kIUpPM1lIDbIClSWC3E4zNGeKUx15k1OJjQ=;
        b=fVMBb5rOU0nLhiQd2v0Sg09yGfiT7aFwpA0I1fiPGXB4XoA10z2EjpFTsYoCElAQz5
         p/l7WiUwRQz6F6lxyOBcZ8iXD89jr/ebpkjrTOGtThw6WkhUQMYPJslnaymfmPUPtyg2
         ryfMo7haPifqPINDcsrDHJJvMIZRajvfgJXG8OwhuR7dPr7Y8RVjPMj12NW2qEz2hKc6
         SKykX2bCDatxLr+nA+v5pqEdzP6LnHEHaYDxUl81QUeGuMxoVKY0fhYAIjzhcefIxsPj
         0YiJ17CB6CgdB7cuUveYYahHUyOPRNAwsyVG3cHSeo1mRSKmbXPul6jjV0HOOAVVHwSL
         /eDg==
X-Gm-Message-State: AIkVDXJhakeWfkESaQcEshEvpyTeU6kuFuLtJ+RlSvxctnxXX8xT03BOYpVyKfcsn6eKtg==
X-Received: by 10.237.44.97 with SMTP id f88mr396218qtd.11.1481780286052;
        Wed, 14 Dec 2016 21:38:06 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Thu, 15 Dec 2016 06:38:03 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20161215053803.GA2527@lorien.valinor.li>
References: <20161215053348.5sioflbygm3ba3h5@lorien.valinor.li>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161215053348.5sioflbygm3ba3h5@lorien.valinor.li>
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: [oss-security] CVE Request: Game Music Emulators: incorrect
 emulation of the SPC700 audio co-processor of SNES: arbitrary code execution
 via malformed SPC music file

H,

On Thu, Dec 15, 2016 at 06:33:48AM +0100, Salvatore Bonaccorso wrote:
> Hi
> 
> As reported by Chris Evans via
> 
> http://scarybeastsecurity.blogspot.de/2016/12/redux-compromising-linux-using-snes.html
> 
> Incorrect emulation of the SPC700 audio co-processor of the Super
> Nintendo Entertainment System allows the execution of arbitrary code
> if a malformed SPC music file is opened.
> 
> Debian released a DSA for this issue (in the qemu-music-emu source
> package):

There is an obvious typo in the above, not qemu-music-emu, but
game-music-emu.

Regards,
Salvatore
