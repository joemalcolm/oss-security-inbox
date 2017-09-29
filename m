X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1736" "Friday" "29" "September" "2017" "08:42:08" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty1WTxQjjqZt6KALD2hrfubJYG2gbZKaLVewG1o9KMA2XA@mail.gmail.com>" "47" "Re: [oss-security] The Internet Bug Bounty: Data Processing (hackerone.com)" "^Date:" nil nil "9" "2017092914:42:08" "[oss-security] The Internet Bug Bounty: Data Processing (hackerone.com)" (number mark "        kseifried@re Sep 29   47/1736  " thread-indent "\"Re: [oss-security] The Internet Bug Bounty: Data Processing (hackerone.com)\"\n") "<CAO5O-EL=MsSrj39-A_yf9_NmE-m7hrF6YfC+SOFnAw41Ae4g8Q@mail.gmail.com>" ("<20170928182541.r7dzm3epg7txsplh@tunkki.bugs.fi>" "<CAO5O-EL=MsSrj39-A_yf9_NmE-m7hrF6YfC+SOFnAw41Ae4g8Q@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32588 invoked by uid 550); 29 Sep 2017 14:42:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32562 invoked from network); 29 Sep 2017 14:42:21 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=NruHQLQ345XAozz0x/h0OkR1reTkdfJkjz/P94kIrZI=;
        b=eSsNTzG4RJTA+/iN4ln7UMjJ4GfoHDiRmpUNNOXjF8jBiL8SQ6LVyO06h5CEH+Qf3r
         FyDLBK2O/lM8eUux1L6Yvy6nA6KBG+i2AskXCZlJ6tLIEaLfokva0K9WyDnWMhXimBmw
         CBkqVulYWV2yeMkUopmQDew84ndxU52EocLe3g54rQ5hs7MvJ/BeVEJW4xheKQ0chQts
         RB2wxF0kW7McKw2C+7w/VbNtqS5eGlFkd3pNxvg5JUqGISEaKrQq1q32kSozXNcg+qT/
         nHLClr7gL7GHsmiv543pUwcDM5RFQexE0QiAanqcMNsf4CMWJzQ488M++LGKYhO1/PlC
         7JSw==
X-Gm-Message-State: AMCzsaV7FX+ZXiDHt4m5ZqV/KGwX8vJX3aWuhFqaj99mNWUWrEUNMa/C
	kMbBfnmo29gJdREo79wVAXqiHlNTpPYwbEuQIfMF63M8TiY=
X-Google-Smtp-Source: AOwi7QC1e/cNeLqguVYqNy8uqa0v1MtIiCy4HHeSTG6jDoN3o9V0fL9lW3iu/TntmDeyg8AP94P0T3TCgDsgZnqt0ZA=
X-Received: by 10.157.18.232 with SMTP id g95mr2977993otg.375.1506696129110;
 Fri, 29 Sep 2017 07:42:09 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAO5O-EL=MsSrj39-A_yf9_NmE-m7hrF6YfC+SOFnAw41Ae4g8Q@mail.gmail.com>
References: <20170928182541.r7dzm3epg7txsplh@tunkki.bugs.fi> <CAO5O-EL=MsSrj39-A_yf9_NmE-m7hrF6YfC+SOFnAw41Ae4g8Q@mail.gmail.com>
Message-ID: <CANO=Ty1WTxQjjqZt6KALD2hrfubJYG2gbZKaLVewG1o9KMA2XA@mail.gmail.com>
Content-Type: multipart/alternative; boundary="94eb2c08ef548f8644055a55075c"
Date: Fri, 29 Sep 2017 08:42:08 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] The Internet Bug Bounty: Data Processing (hackerone.com)
To: oss-security <oss-security@lists.openwall.com>

--94eb2c08ef548f8644055a55075c
Content-Type: text/plain; charset="UTF-8"

On Thu, Sep 28, 2017 at 5:03 PM, Guido Vranken <guidovranken@gmail.com>
wrote:

> I found a buffer overflow in one of the projects within 30 minutes,
> and there are probably many more issues to be found (as in virtually
> any large, unaudited project). What makes this project special
> compared to other bug bounties for C libraries (such as the regular
> Internet Big Bounty programs) is that they require a full, reliable
> exploit.
>
> If they would be willing to be lenient in their qualification of what
> constitutes a working exploit, such as exploitation of a binary
> without advanced anti-exploit protections such ASLR, I might bother,
> otherwise I won't. Enhancing open source projects is a honourable
>

The simple reason being is it gets rid of all the chaff and time wasters.
Anyone can run a fuzzer and find a crash case. That's not what we need, we
need a root cause analysis that identifies where in the code it failed, or
a reliable exploit that causes code exec so we can do the research and
actually figure out if this is exploitable or not. Their money, their rules.



>
> All in all I think they should reconsider their current program
> stipulations, if only to increase their own return-on-investment
> (making the internet safer with a limited funding).
>
> Guido
>

I think you're forgetting about the cost of analyzing a lot of false
positives. This is why I push back and ask for more information on a lot of
CVE requests now.


-- 

Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--94eb2c08ef548f8644055a55075c--
