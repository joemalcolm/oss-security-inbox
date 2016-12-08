X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["452" "Thursday" "8" "December" "2016" "16:00:04" "+0100" "Casper Thomsen" "ct@clearhaus.com" "<CAHzNyaB1R5s4PN3v6DgZori6Txv6tV_6WOgkcjWmLpMYafvgYQ@mail.gmail.com>" "12" "Re: [oss-security] Ruby:HTTP Header injection in 'net/http'" nil nil nil "12" "2016120815:00:04" "[oss-security] Ruby:HTTP Header injection in 'net/http'" (number mark "U       ct@clearhaus Dec  8   12/452   " thread-indent "\"Re: [oss-security] Ruby:HTTP Header injection in 'net/http'\"\n") "<CAPGxrc-M3V_ok8DFmu3fOogpX-Sr-eoy9zCMYqNGgCp73hu05Q@mail.gmail.com>" ("<CAPGxrc-M3V_ok8DFmu3fOogpX-Sr-eoy9zCMYqNGgCp73hu05Q@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11396 invoked by uid 550); 8 Dec 2016 15:10:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31940 invoked from network); 8 Dec 2016 15:00:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=clearhaus.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=wtesS6spbbVwB1eqBox/DxixmgrT80pnFHhH3F+DOPs=;
        b=kADEQUoT+6Vt0ogj6IqltwJvYBfE9r4b/k/U03V9e03Ua+j6Eur7rZO3UK9ouFMkKp
         yXS/UelWK1WMspboJStdcOk6+73qSD+VqMXxk5Z0a/1xG/DP+IUMPakzcvEpdXNMmH6Z
         z2JOZs4YXoeV9Q7gps7Y2ROkUIRa44jQXiRtU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=wtesS6spbbVwB1eqBox/DxixmgrT80pnFHhH3F+DOPs=;
        b=A2gq7Ila9cRdLFceSoQUL1CY2H9rC8t0pFrvOX5fTQyhJClu84H6eTXUzQ+cFIhf3D
         P3G0Y3dI/D4gmbrW3t6NfLT1aLqX/aEbxwFGkLlWCTKUXNz0tbRkDDh8DKBGJURsHU9R
         KQp7bsDhKaaOB9kVLVbh8R7MLowEF46DCsG77McqW+gf2EAl0dOpzty+xxdxqCUNT2m1
         eCZ06oGfbciNOniybbFYZJ/VtSxH2mzPgMcEWUGdYt3g/r1oyeL4WAWWGZgxLlOLnj87
         /+N17bcljjBUHtyNRP8trltX3uDP8L1Oub6pQPlwacac4u7rfe7NRoUH3pg1Ao5t/gtY
         XLjQ==
X-Gm-Message-State: AKaTC00ziAaKK9rKQX6EtMopLC4NapAzm81QeU28kBrHs+krx96e+sT8FlCUeA69C5sj9mAVWs3jxKHnjuR604Eb
X-Received: by 10.202.239.84 with SMTP id n81mr37761513oih.94.1481209205144;
 Thu, 08 Dec 2016 07:00:05 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CAPGxrc-M3V_ok8DFmu3fOogpX-Sr-eoy9zCMYqNGgCp73hu05Q@mail.gmail.com>
References: <CAPGxrc-M3V_ok8DFmu3fOogpX-Sr-eoy9zCMYqNGgCp73hu05Q@mail.gmail.com>
From: Casper Thomsen <ct@clearhaus.com>
Date: Thu, 8 Dec 2016 16:00:04 +0100
Message-ID: <CAHzNyaB1R5s4PN3v6DgZori6Txv6tV_6WOgkcjWmLpMYafvgYQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: Re: [oss-security] Ruby:HTTP Header injection in 'net/http'

On Sat, Jun 25, 2016 at 6:18 AM, redrain root <rootredrain@gmail.com> wrote:
> I would like to report a HTTP Header injection vulnerability in
> 'net/http' that allows attackers to inject arbitrary headers in
> request even create a new evil request.

By the way, this was fixed in Excon back then.

https://github.com/excon/excon/compare/4aa6548313188f3fa6ba6f556f49aead107b5881...107111759c945d2cac9b57ba5716e1b9a9055126

Regards,
-- 
Casper Thomsen
