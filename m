X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["153" "Wednesday" "8" "June" "2016" "19:13:42" "+0300" "Billy Brumley" "bbrumley@gmail.com" "<CAFeDd5bHaNYaKjfe5oYqiY4m56pKJ4bNuDvKxyfuqgwqPVGqHw@mail.gmail.com>" "4" "Re: [oss-security] CVE-2016-2178: OpenSSL DSA follows a non-constant time codepath for certain operations" "^Date:" nil nil "6" "2016060816:13:42" "[oss-security] CVE-2016-2178: OpenSSL DSA follows a non-constant time codepath for certain operations" (number mark "        bbrumley@gma Jun  8    4/153   " thread-indent "\"Re: [oss-security] CVE-2016-2178: OpenSSL DSA follows a non-constant time codepath for certain operations\"\n") "<CAFRnB2UaY54U2VdmXR=dRSU7HtjgfjQMgOZ0w55jL4AYTng5oA@mail.gmail.com>" ("<20160608085431.GA4278@openwall.com>" "<CAOTQaXHLe6ST5SOQhH_hig1KD9UyhzMUvr4iXiJz5szm5hsUow@mail.gmail.com>" "<CAFRnB2UaY54U2VdmXR=dRSU7HtjgfjQMgOZ0w55jL4AYTng5oA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32159 invoked by uid 550); 8 Jun 2016 17:14:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32274 invoked from network); 8 Jun 2016 16:13:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=DNWx4v7y/C0nc844p/vT5MNmvRC5quBUcKG7JYjZJCM=;
        b=vSiiEJHNbbUa8ZKffcK9C4iRCBYhjLznD8sryu7pQXdE7I6Y7/K9nyD3Vw2CWqOo5d
         +rhDdtgm1PGusepORatJ86nRv5Fhg1nbFWHpEGGQIzdvBX743gHTgGYM6RhdlaXEz9fr
         /Rsb7niwqS/lobU0K/86oMRRxhUQkbykVlU4NOHt7hQLlBipTkPi5yBSpSrdD/DsYGNq
         PF6t3fMCiru3U196JLbZQC7ISuiEaJEESCy9zS8yS3/Xwqz5Mt07e3Fbdo7G+nIzEkvv
         xsnksROO0r7qQdEsWY/Zgk7uTXsOSgN80IPpaAywTmux+MvxIPRo5B8UH9x8XV0m/eyG
         P/EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=DNWx4v7y/C0nc844p/vT5MNmvRC5quBUcKG7JYjZJCM=;
        b=LYoRTUUC/3/XRcrVZK+1kAhjnaiZXLJIfcHJcgj6gjC0tbDL+Jzmul8Z+W+vCwaq9z
         gUWso4yWBM8jho1Jdj0LGSQibp5NgTWshNhHt6rj0ofZTwW3b53G9/mdmr5O/ElG/CWI
         NaaUgu2Oo656flwuefsy2oACMj9PngYiCOOWACaAqLNGHefyfNKBI4+Eow5n16zrs+gR
         ybRgeXRcfHwsuvDSWMbhQIxBu3/IPFVD4Y/huS1sKe8+vsVxfbLIwxcNCxVxdsPfkasD
         Vys5gnKpIE7bRn6gjrYuH8CgeLxpYc3LwyusXW4VhX+Nlrx+ahVPIPbMT7p3ZAQFkqJt
         0J6g==
X-Gm-Message-State: ALyK8tLZodKnIVe6YaLUXBTqmoTm/qicWlKd61+YO+HNqYfS7b0bmiivIHifD9+ojliYTQULQs5IyDgIV6y9RQ==
X-Received: by 10.55.143.129 with SMTP id r123mr5459325qkd.170.1465402423223;
 Wed, 08 Jun 2016 09:13:43 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAFRnB2UaY54U2VdmXR=dRSU7HtjgfjQMgOZ0w55jL4AYTng5oA@mail.gmail.com>
References: <20160608085431.GA4278@openwall.com> <CAOTQaXHLe6ST5SOQhH_hig1KD9UyhzMUvr4iXiJz5szm5hsUow@mail.gmail.com>
 <CAFRnB2UaY54U2VdmXR=dRSU7HtjgfjQMgOZ0w55jL4AYTng5oA@mail.gmail.com>
Message-ID: <CAFeDd5bHaNYaKjfe5oYqiY4m56pKJ4bNuDvKxyfuqgwqPVGqHw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Wed, 8 Jun 2016 19:13:42 +0300
From: Billy Brumley <bbrumley@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2016-2178: OpenSSL DSA follows a non-constant
 time codepath for certain operations
To: oss-security@lists.openwall.com

> I assume the OpenSSL team considers this vulnerability to be LOW severity:
> https://www.openssl.org/policies/secpolicy.html

Yes this is correct. BBB
