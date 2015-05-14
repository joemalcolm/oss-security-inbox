X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1500" "Thursday" "14" "May" "2015" "14:40:57" "-0700" "Kevin McArthur" "kevin@stormtide.ca" "<55551669.5060308@stormtide.ca>" "47" "Re: [oss-security] CVE Request: Insufficient TLS Protection in Composer (PHP)" nil nil nil "5" "2015051421:40:57" "[oss-security] CVE Request: Insufficient TLS Protection in Composer (PHP)" (number mark "        kevin@stormt May 14   47/1500  " thread-indent "\"Re: [oss-security] CVE Request: Insufficient TLS Protection in Composer (PHP)\"\n") "<CALwr1G=mfjVLrsYN0Yi33UV82F3520Nsm0CpFbFx-AB1J5D+rA@mail.gmail.com>" ("<CALwr1G=mfjVLrsYN0Yi33UV82F3520Nsm0CpFbFx-AB1J5D+rA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11699 invoked by uid 550); 14 May 2015 22:06:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30106 invoked from network); 14 May 2015 21:41:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=stormtide.ca; s=google-stormtide;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=IBz//pY9msyIlD5yH+RiezPLfvhrQ8x2Pq2xK+ajhKo=;
        b=bXFhhnJ8TDUO24arPRYvxEsBM1KdNGvV/nu/HpYIxzh/C0HWBwuE/Sodx6wuHgkbrN
         bHhX8phJh8yE/BJ5aIDlO/z2HNV2KV/YLrjB3PxDaLUVi9kd+KvSwrolHkRO38ybWXEp
         DRCzAz7dxZKoCW3I3yHAZTSpg31Oi1ZzCJ3fY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to:content-type
         :content-transfer-encoding;
        bh=IBz//pY9msyIlD5yH+RiezPLfvhrQ8x2Pq2xK+ajhKo=;
        b=gzt7VgtDF0/dTwmqGSQP+ouW+wgchUC9qSSUUShlmZnE4PrP2zBmKg3G4fgrNJV9E8
         sT3FBE3VzfsRqVIfOIMleK6bYXkN8fCjg3l/KVxvf4tzPdm1mhKSmVg7d21EgYCt0v7U
         cqVEl605TBYOFmCmReo6ApVA8TlaPX1nSSZj8TXNSEfXlofIBe3SicY078V3rfJ+pzKE
         Hy57kRORIIKx0N5ibFpavfZ9ch4cslfsss/sdXgc7j+k/IzKtMDWizAzyNf+MYEwmasf
         5Sxiuy+nOvphZtFyFF+zR11UfIZghimxWElOc1we61+qQvBimUvFFooj+ugocwrHKmyI
         P5fw==
X-Gm-Message-State: ALoCoQkAQhTHcqkseKiadRLTLu2k39X3jhey1Co3gdZ/uYv25Q52/fSFnnyGLpL0OCjgyG3cO1uX
X-Received: by 10.70.40.164 with SMTP id y4mr11935176pdk.25.1431639659564;
        Thu, 14 May 2015 14:40:59 -0700 (PDT)
Message-ID: <55551669.5060308@stormtide.ca>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
References: <CALwr1G=mfjVLrsYN0Yi33UV82F3520Nsm0CpFbFx-AB1J5D+rA@mail.gmail.com>
In-Reply-To: <CALwr1G=mfjVLrsYN0Yi33UV82F3520Nsm0CpFbFx-AB1J5D+rA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Date: Thu, 14 May 2015 14:40:57 -0700
From: Kevin McArthur <kevin@stormtide.ca>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: Insufficient TLS Protection in Composer
 (PHP)
To: oss-security@lists.openwall.com

Thanks Padraic for applying for a CVE on this one. As it doesn't appear
its going to get patched, a CVE is probably the right way to go.

Not sure if its just getting lost in the shuffle, but, this
remote-code-execution vulnerability in Composer is widely deployed and
trivially exploited.

I can give it a name/branding if it'll help speed up the CVE issuance.

-- 

Kevin McArthur


On 2015-05-11 12:03 PM, Pádraic Brady wrote:
> Hi all,
>
> A brief update to clarify this is a CVE request in the subject line
> and copy the guys at MITRE. Also to clarify that this vulnerability
> occurs from relying the PHP openssl extensions default configuration.
> That default configuration disables peer verification on PHP versions
> less than PHP 5.6 (when it was significantly reworked to be more
> secure by default).
>
> On 25 April 2015 at 19:49, Pádraic Brady <padraic.brady@gmail.com> wrote:
>> My I request a CVE ID for the following, which is a publicly disclosed
>> unpatched vulnerability on Composer's issue tracker since 2012.
>> Composer is an open source package manager for PHP. The specific issue
>> pertaining to this request is a failure to perform TLS peer
>> verification on remote requests when making any API request or
>> retrieving any file, i.e. there is a singular client class.
>>
>> Ref: https://github.com/composer/composer/issues/1074
>>
>> Kind regards,
>> Paddy
>>
>> --
>> Pádraic Brady
> Kind regards,
> Paddy
>
> --
> Pádraic Brady
>
> http://blog.astrumfutura.com

