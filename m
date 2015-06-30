X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["573" "Tuesday" "30" "June" "2015" "11:46:13" "+0500" "Alexander E. Patrakov" "patrakov@gmail.com" "<55923B35.4050903@gmail.com>" "24" "Re: [oss-security] Google Chrome Address Spoofing (Request For Comment)" nil nil nil "6" "2015063006:46:13" "[oss-security] Google Chrome Address Spoofing (Request For Comment)" (number mark "        patrakov@gma Jun 30   24/573   " thread-indent "\"Re: [oss-security] Google Chrome Address Spoofing (Request For Comment)\"\n") "<55923253.8020902@deusen.co.uk>" ("<55923253.8020902@deusen.co.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30510 invoked by uid 550); 30 Jun 2015 06:46:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30492 invoked from network); 30 Jun 2015 06:46:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-type:content-transfer-encoding;
        bh=VBcfhRkjmHi5ebv1huM92mK7VUudL+eT5ijsq/jRvJA=;
        b=cPkd4IDCjJXIHNgCK30io/RXdCdaTVUSte6MY85usGgH10rlp2g13qGbBwJY/D4Mix
         4o+0eYdkWfXrLKZEt9GufFhQPimN7Ea6Nt/HgllaYYHQMO6lgr2MmvoInYGTzHJczIFd
         Mf/aJGYuMQ1hXS+lTFYTG5FJPwPhLgeNp4rzSyDB7fr6GL83e6xHI/bx93gOQqzqGz8Y
         1cvbMyxicakOavaGXHMCnFyjOkeACwij5dExU3Znz2aQUBetGhtbAFrRF+ok8J8/nEmq
         FZ/Xt4Q38zaKM1oLvs55ob9Sn3WYUUyKNnKmoMIoIeolmAy7QAin6P2Mti939As8zwhH
         hp4A==
X-Received: by 10.153.7.133 with SMTP id dc5mr17891261lad.17.1435646777152;
        Mon, 29 Jun 2015 23:46:17 -0700 (PDT)
References: <55923253.8020902@deusen.co.uk>
Message-ID: <55923B35.4050903@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.0.1
MIME-Version: 1.0
In-Reply-To: <55923253.8020902@deusen.co.uk>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Date: Tue, 30 Jun 2015 11:46:13 +0500
From: "Alexander E. Patrakov" <patrakov@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Google Chrome Address Spoofing (Request For
 Comment)
To: oss-security@lists.openwall.com

30.06.2015 11:08, David Leo wrote:
> Impact:
> The "click to verify" thing is completely broken...
> Anyone can be "BBB Accredited Business" etc.
> You can make whitehouse.gov display "We love Islamic State" :-)
>
> Note:
> No user interaction on the fake page.
>
> Code:
> ***** index.html
> <script>
> function next()
> {
>      w.location.replace('http://www.oracle.com/index.html?'+n);n++;
>      setTimeout("next();",15);
>      setTimeout("next();",25);
> }

Looks like a fork bomb to me. And I had to forcefully close Firefox 
after this.

-- 
Alexander E. Patrakov
