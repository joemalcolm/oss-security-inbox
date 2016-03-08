X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["771" "Tuesday" "8" "March" "2016" "09:26:59" "+0100" "FEIST Josselin" "josselin.feist@gmail.com" "<56DE8CD3.9010004@gmail.com>" "32" "Re: [oss-security] CVE Request : Use-after-free in accel-ppp" nil nil nil "3" "2016030808:26:59" "[oss-security] CVE Request : Use-after-free in accel-ppp" (number mark "U       josselin.fei Mar  8   32/771   " thread-indent "\"Re: [oss-security] CVE Request : Use-after-free in accel-ppp\"\n") "<56BBAA64.4050701@gmail.com>" ("<56BBAA64.4050701@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11535 invoked by uid 550); 8 Mar 2016 08:27:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11514 invoked from network); 8 Mar 2016 08:27:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding;
        bh=nH/0ZTbP9Kb+vs9pA5kl/vNNWQce61XLRw2vlkXMsCM=;
        b=fpSYg63NFNw8CV6nTlZ434QjTWiqIHYK5hKSSahQUMA1++0F3WngBuUaZSHwXQyRCf
         2woAZoniWmBJ5UjIYL/Apz5mMRe5v1jS+sUCZ2mApEydrhGUtorZLIJRmSK9lIJGQ6Fv
         XKXGWJVjibPgOZ93y2Edq5W953gzFsjtggM0QmKVx362xj5Fk/x0f9GaymldeqB8wGYO
         pRFwUqKe5E63MFkTAuDFpuhB6mPeIfVAq+eUxvk29LObh7Bo6dKqJoBk6cVip3qy3FBH
         YXgxthB/ODrbQFu90xNm/EmEnBPfGmcCw0f/ZQLiN2GiM5xaDyR4d5dj6YfcKY/WJ8tw
         lS2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding;
        bh=nH/0ZTbP9Kb+vs9pA5kl/vNNWQce61XLRw2vlkXMsCM=;
        b=V7C/f3ODtMxys2NlNmiI1IF0ryvnP3mr6BmHpx63eNlPegaIc4Pj/6gjCn8B48XzO2
         aWvrT8KGw8GUMXG/k1/0LEe0BAlLQHsUc1e3I55p6I9ZZkKerzrW+eewxqqsWn+ZCrbC
         d0+iyzBMnRUJdvIqFoM+NTLeEwGkEEjTqXRk/gzRKT+OEKPF6hoDt2blJLWP0arbSaCZ
         GWXKHM43AbGgniS+TnlKeq7m/Q9kPBVjqDLw/WzmOFBxUVmWg5NBlupYY1q+wmvlsLdA
         AoaCL9cO0A49ut8ty/tPAcRCl0fcuf/RYkbZzH+tlUCIY0ygWdeMvV5qfX5o/OZJEX7J
         a91g==
X-Gm-Message-State: AD7BkJLIjAZFOPJ0RcHVjgdhKCW9v17tFubuJ69J+/mrAlJTm8RN7KraCMr5s/PQ4gqiCg==
X-Received: by 10.28.105.136 with SMTP id z8mr17899415wmh.71.1457425621329;
        Tue, 08 Mar 2016 00:27:01 -0800 (PST)
To: oss-security@lists.openwall.com
References: <56BBAA64.4050701@gmail.com>
From: FEIST Josselin <josselin.feist@gmail.com>
Message-ID: <56DE8CD3.9010004@gmail.com>
Date: Tue, 8 Mar 2016 09:26:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <56BBAA64.4050701@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] CVE Request : Use-after-free in accel-ppp

Hi,

For information, the vuln was fixed on release 1.10.1
The fix:
https://sourceforge.net/p/accel-ppp/code/ci/74c8c4a91551fe91e224c29882fac55250fc94e3/

Best regards,
Josselin Feist

#### timeline ####
- 18/01/2016: Vuln reported (affect 1.10.0)
- 04/03/2016: Vuln fixed (release 1.10.1)



On 10/02/2016 22:23, FEIST Josselin wrote:
> Hi,
>
> A use-after-free in accel-ppp was reported one month ago. accel-ppp is a
> VPN server (https://accel-ppp.org)
> Since I got no news from the dev (neither by email or through the
> forum), I would suggest to use this service carefully.
>
> More details about the vuln here :
> http://accel-ppp.org/forum/viewtopic.php?f=18&t=581
>
> The vuln was found with the help of the analyzer GUEB.
>
> Best regards,
> Josselin Feist
>

