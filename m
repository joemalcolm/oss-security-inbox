X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["585" "Thursday" "12" "October" "2017" "19:23:10" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20171012172310.kejumlealja5qu2k@eldamar.local>" "26" "Re: [oss-security] CVE request: Two DoS vulneribilities in libextractor" "^Cc:" nil nil "10" "2017101217:23:10" "[oss-security] CVE request: Two DoS vulneribilities in libextractor" (number mark "        carnil@debia Oct 12   26/585   " thread-indent "\"Re: [oss-security] CVE request: Two DoS vulneribilities in libextractor\"\n") "<CAPwMjngHAWa4F-_hRffJRkNk1JmhKqEFojJyd0VUF+2q5sGN7A@mail.gmail.com>" ("<CAPwMjngHAWa4F-_hRffJRkNk1JmhKqEFojJyd0VUF+2q5sGN7A@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26046 invoked by uid 550); 12 Oct 2017 17:23:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26019 invoked from network); 12 Oct 2017 17:23:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ZAyMXI4l6aSAbvvVE6paccniWFf2HSUSItpssUwXzIM=;
        b=Ja89vLZ4ImWAXu9N8GBqPentu88xsdTxT1lXIkIT2DmD/Epk1oYhHtngEAIRfE44rs
         rv+T7+9D0H7/iB5w4Opz+QYSMg/WkdlMdzJLcONNvsnPhP8CNj96+OZR9aBBk0/pmZ2X
         FpWkD0buDfyF687fsPhkYKF3ZqFWWurhEVez5H7s0dlE2OHgF5DsiOFr1h50C/qfXQTl
         K80RHJM+GyEFbQEiIPKDvhlRc3DZJZ44p7xltl1cfg+DdPHmqvU+u68tIez5+10JzgTW
         nJJvZpcQZasVfWI2YORgLWXkpL3MLuWjEbCrbeKM/3Nkev0fjrYJ9OuvBsH34tnBSeks
         O/4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=ZAyMXI4l6aSAbvvVE6paccniWFf2HSUSItpssUwXzIM=;
        b=dm/B5hDFQR9PxnZfzM5tkf7jcTKghodCcLh6hYCIgGnjMQxg8U5iTHk6lQHuBg6yyl
         BT86xDb9EQ62ajDOZVLZrj8Vnzw7k5L3nAbyl1emmv3gwcgwHPmjgLz4BOiy1v/iiwUK
         q4AYXWJLbnMJswwn54zyTGvjCoflSjZJ5q4XXksTFyDMSby4ux+amTS4/5T1OtsWo6+E
         z1ChzN5iGDvEDqvHKD9yz2pHhOgJNc4TFBTf/Ttz9cqu41Bg73Hj54PAACm1yIpF/Bv6
         ZuSWhEy4Gy0oSMSYApNerPQDw3SXr83pmhNuEXUaYSpG+bAT/d3npOVen69u32U8/rgD
         VVyg==
X-Gm-Message-State: AMCzsaXIngun28kCTevmvZaoU6GFMQ1Zsg4BP3PjU5qmDkJ4fu1wBmyg
	6Ubr9lB0+QvWv3RU8ViL/sOjTQ==
X-Google-Smtp-Source: AOwi7QDODmzuctHpEfkDqri/xaTleg+6Nblnx5YGVMPHEf16RatIEk8qYKL/oFT+B3mKUVoHtOZDJw==
X-Received: by 10.28.51.19 with SMTP id z19mr2272310wmz.18.1507828991689;
        Thu, 12 Oct 2017 10:23:11 -0700 (PDT)
Message-ID: <20171012172310.kejumlealja5qu2k@eldamar.local>
References: <CAPwMjngHAWa4F-_hRffJRkNk1JmhKqEFojJyd0VUF+2q5sGN7A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAPwMjngHAWa4F-_hRffJRkNk1JmhKqEFojJyd0VUF+2q5sGN7A@mail.gmail.com>
User-Agent: NeoMutt/20170609 (1.8.3)
Cc: oss-security@lists.openwall.com
Date: Thu, 12 Oct 2017 19:23:10 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] CVE request: Two DoS vulneribilities in
 libextractor
To: Leon Zhao <leon.zhao.7@gmail.com>

Hi

On Wed, Oct 11, 2017 at 11:40:33AM +0800, Leon Zhao wrote:
> Hello oss security,
> 
> I found two DoS vulneribilities in libextractor,
> 
> Affected version
> 1.4
> 
> 1. Divide-By-Zero
> https://bugzilla.redhat.com/show_bug.cgi?id=1499599
> http://lists.gnu.org/archive/html/bug-libextractor/2017-10/msg00002.html
> Fixed

This was assigned CVE-2017-15266.

> 2. Null Pointer Dereference
> https://bugzilla.redhat.com/show_bug.cgi?id=1499600
> http://lists.gnu.org/archive/html/bug-libextractor/2017-10/msg00003.html
> Fixed

This was assigned CVE-2017-15267.

Regards,
Salvatore
