X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["895" "Wednesday" "14" "December" "2016" "16:27:57" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20161214152757.trz2hsav4mpjyoph@eldamar.local>" "25" "Re: [oss-security] Re: CVE Request: MCabber: remote attackers can modify the roster and intercept messages via a crafted roster-push IQ stanza" "^Cc:" nil nil "12" "2016121415:27:57" "[oss-security] Re: CVE Request: MCabber: remote attackers can modify the roster and intercept messages via a crafted roster-push IQ stanza" (number mark "        carnil@debia Dec 14   25/895   " thread-indent "\"Re: [oss-security] Re: CVE Request: MCabber: remote attackers can modify the roster and intercept messages via a crafted roster-push IQ stanza\"\n") "<CAHbk4RL5S3VMX375NbqUUMmfWaUUM4wP1vNnYTvO4w2QMGE9qQ@mail.gmail.com>" ("<20161209201906.ltauap7fydkc62f6@eldamar.local>" "<7b789ec9b990495db739639f907b2366@imshyb02.MITRE.ORG>" "<CAHbk4RJo3pRnwE=X--b+c=wvp6gPL1AUJm7UacoE+z7TPEXUfQ@mail.gmail.com>" "<CAHbk4RL5S3VMX375NbqUUMmfWaUUM4wP1vNnYTvO4w2QMGE9qQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21948 invoked by uid 550); 14 Dec 2016 15:28:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21867 invoked from network); 14 Dec 2016 15:28:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=VFRocpTkCaOBQAU64ceXVo4dJNn3uCflc2+oYuPOlAg=;
        b=psf0y9wdedTku2Nd4KzY0Nr1QBJxqGszsQMCqGCCYNSCip719UkRcHrr8Po0KHJKbA
         iXOxAX+qAXmWPIobo4pi7/8XXXfBlzjhFkI6bHeaudOtbUHBdw2jn/oo3wVdVYJhyMo2
         Z1Zic8loBkxdvzDCO28IFjK09NMAxIiw2ZcEXjcMief50JcAuVjs7PtTP7AC7eBNWBem
         VsemE8fTEFgNc8y+Ja20UxkKPzPvz4hkZwKu29eC6Yt/3h+S+3W2N0WZSR9Tnb4G9jIe
         zVZSIIIR3gHUVPy28tNt5unBphb1mFhfIp76EN9T+LDE8Qnfy1wmxJm1ADhfSP9iQ/SI
         ItlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=VFRocpTkCaOBQAU64ceXVo4dJNn3uCflc2+oYuPOlAg=;
        b=DRL9dvkuS0aQjxj5qXRcnhHBmRl5mwO7xS7Jd4+aI7DzqPU3a6da5lk3UxkuTdq1nA
         aSQmOc10waxt01Oxmjk7UFMvjff4qwTv+97tcV57HkavLSZH3SgD2Zf+EEJv9EEjxlme
         qC75doM9pzBXSCNp9Z16D6+Tl8gwyTqHT/auxhy1nMk6kqCtWYIILW2ckjVppT0Yhyll
         Nc3IVU6VGLiDr3++sopUTLH26uSjTvbuEgvOcfVT3jmF7SwUKZAvNxEzwOQHFzVOC3Zx
         s9hDnQKc4MP71235Jihjj6vJXhQPtlE3qnKWGXvfoYrNEUcX0O48xL3Dd4L8wGGfAyO2
         1GqQ==
X-Gm-Message-State: AKaTC00vuRSE5us7mVxcmaORr8oEETghtupLFH/GGpfocr+rYivW1eYzyzFrZkLoQTnd/A==
X-Received: by 10.28.35.14 with SMTP id j14mr7931294wmj.24.1481729279164;
        Wed, 14 Dec 2016 07:27:59 -0800 (PST)
Message-ID: <20161214152757.trz2hsav4mpjyoph@eldamar.local>
References: <20161209201906.ltauap7fydkc62f6@eldamar.local>
 <7b789ec9b990495db739639f907b2366@imshyb02.MITRE.ORG>
 <CAHbk4RJo3pRnwE=X--b+c=wvp6gPL1AUJm7UacoE+z7TPEXUfQ@mail.gmail.com>
 <CAHbk4RL5S3VMX375NbqUUMmfWaUUM4wP1vNnYTvO4w2QMGE9qQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHbk4RL5S3VMX375NbqUUMmfWaUUM4wP1vNnYTvO4w2QMGE9qQ@mail.gmail.com>
User-Agent: NeoMutt/20161126 (1.7.1)
Cc: cve-assign@mitre.org
Date: Wed, 14 Dec 2016 16:27:57 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] Re: CVE Request: MCabber: remote attackers can
 modify the roster and intercept messages via a crafted roster-push IQ stanza
To: oss-security@lists.openwall.com

Hi Sam,

On Mon, Dec 12, 2016 at 10:40:16AM -0600, Sam Whited wrote:
> Oops, I got the autoreply about not using this list to request CVEs
> after sending that message; now I'm a bit more confused about the
> current procedure; please advise.

Almost sure the autoreply came not from oss-security, but from the
cve-assign@mitre.org. But the autoreply should contain a note like:

> [...]
> In the special case of communications involving a publicly known
> vulnerability on the oss-security mailing list, please do not use
> the https://cveform.mitre.org web site at this time, and instead
> send new or followup messages directly to that mailing list. (If
> your message pertains to a topic on the oss-security mailing list,
> and you are receiving an auto-response from the cve-assign@mitre.org
> address, then you can ignore that auto-response.)

Was this the case?

HTH,

Regards,
Salvatore
