X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["886" "Sunday" "28" "June" "2015" "12:20:52" "+0100" "Matthew Wilkes" "matt@matthewwilkes.name" "<558FD894.7060901@matthewwilkes.name>" "26" "[oss-security] Re: CVE Request: Django CMS" nil nil nil "6" "2015062811:20:52" "[oss-security] Re: CVE Request: Django CMS" (number mark "        matt@matthew Jun 28   26/886   " thread-indent "\"[oss-security] Re: CVE Request: Django CMS\"\n") "<20150628105507.210D96C00E7@smtpvmsrv1.mitre.org>" ("<20150628105507.210D96C00E7@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1956 invoked by uid 550); 28 Jun 2015 11:25:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32686 invoked from network); 28 Jun 2015 11:21:07 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-type
         :content-transfer-encoding;
        bh=2dLR9iweeN6Qdaf2PZojx9NjaBuG/KX0QfhfWtr/SZI=;
        b=jzBQSRNK9KEtTPSFOgAyhvqdXWsNRA0uyYhBvDFaNSY73HtlcjCqBw4KWcyoxbXNFl
         YrRrecCIusqJb33DdTZF08oN3e5iIM7bwXgjVNhZYmol834dP0ar4ZQFxI2WdICLSPPw
         PBlGtURqQ4v6JL5ohNz3Q+4Bl6t0C/3dOHPMxgqe/BtujgEk78Zw7JE4QFZZAmGCd/Vq
         hZ9RGlbDLyVNG3U8wKoMNc2pKwm3h7aYM4sJbAoNNyrnHffEhmORyMySaNP+K1iVRnKT
         XnF0/e7BOTrvwlhNV8D3ZzUWJYj7qhbIT7Q+KUNttFkS7QDFK59I6ka0loz9kHc1GZuV
         pJHQ==
X-Gm-Message-State: ALoCoQlyVEZDJKW/ITD1e5hBx04cQ22mj40a+Rz1SWA5bLOxs0LYQwsyO6tDB5WiSZNUDeWB5eYQ
X-Received: by 10.195.13.113 with SMTP id ex17mr20210787wjd.17.1435490454870;
        Sun, 28 Jun 2015 04:20:54 -0700 (PDT)
References: <20150628105507.210D96C00E7@smtpvmsrv1.mitre.org>
Message-ID: <558FD894.7060901@matthewwilkes.name>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:40.0)
 Gecko/20100101 Thunderbird/40.0a2
MIME-Version: 1.0
In-Reply-To: <20150628105507.210D96C00E7@smtpvmsrv1.mitre.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: oss-security@lists.openwall.com
Date: Sun, 28 Jun 2015 12:20:52 +0100
From: Matthew Wilkes <matt@matthewwilkes.name>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Django CMS
To: cve-assign@mitre.org, matthew@matthewwilkes.co.uk

> Use CVE-2015-5081 for the CSRF issue.

Thank you!

> The cms.changelist.js and cms.toolbar.js changes include a comment
> "send post request to prevent xss attacks." The "xss" word choice
> might be a mistake. We are not currently assigning a CVE ID for a
> separate XSS issue.

I believe you are correct.

> CVE IDs were not assigned on a per-discoverer basis here because there
> was no available information suggesting that different persons
> independently discovered different CSRF problems.

I don't believe that they were different, having read the public 
information. I've asked for clarification from the vendor, though.

If anything, my logic for including the information about credit was to 
emphasise that it was one issue reported by two people and make us both 
searchable, in case there is confusion if one or both of us write up the 
issue in future.

Thanks,

Matt
