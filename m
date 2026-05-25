Received: (qmail 26307 invoked by uid 550); 25 May 2026 05:41:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26163 invoked from network); 25 May 2026 05:41:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779687658; x=1780292458; darn=lists.openwall.com;
        h=in-reply-to:from:content-language:references:to:subject:reply-to
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dbk9xJqgM8+2SOZadnuU/7KqlyF5wPlIZnICcfAyIWk=;
        b=FpNmkE5Bt5ctgodl8g7U8ARCMsS2iqE0w0qRY7qMH3HCGB4u4OhuT7hPWE3SFxEW5K
         ABbF8nuYLzWUEp155R35AK7ynCvFG0xTyOQDpUzcL6/LINZBCrYmMoCa5oWobD9VNrVi
         rfqMTrHNa2smcze8h+pbkVU+b2tK7dk1mTAyr64oKshaqUu4N02D72jdAkpOm0X9hwlw
         yNWvhgq5yPcu2HbarzPSSWCAag/SlPYKGPeZ/vHl6MyoyzFoqcYONa3jXGqizrZrcTAP
         WmTgILVEj8y8a4S8ZE2DAX9GryT6KHhRXjl0Sxnwv4UQxbfABKkVgamrVNP4dOMchOaS
         zR0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779687658; x=1780292458;
        h=in-reply-to:from:content-language:references:to:subject:reply-to
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dbk9xJqgM8+2SOZadnuU/7KqlyF5wPlIZnICcfAyIWk=;
        b=cIN8JUo1UrY6vbj7Cog3pTCJUjSLbVtxSqEDLyfjQrZmCV2uQdvkkOAJOBjjuksT8s
         p/Cvd4aLe/9L8yM2N7XP18lUKl31hDNyXw8lsJfboA7zdTQF6AhXSXgOdap5Lhr0qrHG
         wBfVPobecUgv4nvG6olCZ96gGNip83iF2dWOo/d+uNuoqID9t55ROVmW+gdLFpaQMjnH
         Z69l87X6Y0odFHn88nsgWml8+Oyp64l0vwPOfjd+UCWCfwNQFgwPtnMjkXuIhH569aKZ
         zVq5RKl4hEBwGcQyZgGxHubFqijwe464gPdB51UW8FuirJwNXH42DyQRegE+Tn/Z/8Cw
         /f/A==
X-Gm-Message-State: AOJu0YxPoiLyIzfaZssdodjGPo7rQUmPn5ZgCkEU1RD31UWN6aO2dXlw
	G2USuNDjLTSoJBcVEjOfTg77/V5XZ25ZVllKqbGUYISy6ODv6NkX8BV7NXko+ZPtXbI=
X-Gm-Gg: Acq92OHH70E0ycJbubSeNEjCxQX0oK8pZAB7Mj/Sqt4kfe2axo3KOG0lPZGDw2UHJI8
	3OE3NF9KEHhLgyTQUgMA1hYOsJ9/MyQjZdi/yz4dz4yIvu1e0VA4nh4spwaJW79FPFrkiiYqx++
	sCa8CbnVUY3BHFAO81xymCJ2G6R7LYlB5leMgP6YJDKgdAm1bLX/h7j8+EgDygOwKNh4/4YG8F+
	XRkDccX3ZtBS4oAuDb3JxnHOKNL2qbjyn4tHDZzdczWi+76Q/Sxs9UICT3DWbaZ6hyhZblGJ6zn
	RPHjLxUvpOFz90iDcfXkeD5Zqg+aEzVkEiZislbnpWYmxkVFBE7c5rYTnYIPjLM9Zz4Ji+HgCk1
	ebCHABdtMyQHIivx6QOtTFwj/n81l1WtZNMFfa3gXbmRNyy5ueQ7GsAjQ+BEVNiay3uUBLIaOJM
	XAw1/IPln+s/kMoOxg2qfr
X-Received: by 2002:a05:6820:174b:b0:69d:513e:1a44 with SMTP id 006d021491bc7-69d7fa8fe93mr5643294eaf.4.1779687658258;
        Sun, 24 May 2026 22:40:58 -0700 (PDT)
Content-Type: multipart/alternative;
 boundary="------------dZapXlnhfu50rJ9SnrrYQQKa"
Message-ID: <2b91a47f-3223-4db8-82e0-50801d656908@gmail.com>
Date: Mon, 25 May 2026 00:40:54 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security <oss-security@lists.openwall.com>
References: <afDLFWVMK-r70PB0@yuggoth.org>
 <ed61471e-5674-4ad6-9b4c-729027f1073f@oracle.com>
 <19e48ffc072.20eeee58126634.4537984379441699684@roiai.ca>
 <19e494d88f3.fa2e5b9128090.8772053311417055861@roiai.ca>
 <f63f5a7e-6485-4bdc-866d-ab294a22536d@gmail.com>
 <19e4e2af936.4b7051cf156989.7683180300004644154@roiai.ca>
 <bab07bb5-aa3c-4a06-b8a7-c33efd179b41@gmail.com>
 <19e59d9cddf.5c251df4215598.6259862364259739522@roiai.ca>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <19e59d9cddf.5c251df4215598.6259862364259739522@roiai.ca>
Subject: Re: [oss-security] Coordinated Disclosure in the LLM Age

--------------dZapXlnhfu50rJ9SnrrYQQKa
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 5/24/26 06:58, ROI AI wrote:
>
> > In case you have forgotten, this discussion *started* with a maintainer
> suspecting that LLM-detected vulnerabilities
>
> I replied to this thread because I reported a dozen issues to 
> OpenStack, which the OP is a VMT lead for.  He has yet to claim any of 
> the issues I've reported are invalid or duplicate. I believe people 
> are overclaiming this.  I also believe duplicates, when found, are a 
> good sign for prioritization.
>
> I was also disappointed to see a serious security bug I reported on 
> OpenStack pushed to public.  If I had know that would happen, I 
> wouldn't have reported it.  I don't want to be a part of what I feel 
> to be negligent and unprofessional activities.  My goal was not 
> credit, but rather to improve the security of OpenStack as I wanted to 
> see it as a solution to sovereign cloud.  Pushing it to public 
> undermined that.
>
> Using LLMs, I am farming careless engineers who reveal security 
> sensitive info in bug reports, commit comments, and code reviews.  
> This 'public' attitude is just making it much easier for me to do so.
>
> Security sensitive communication should remain in a restricted 
> discussion area and teams should be using LLMs to analyze it for 
> further issues to close.
>
>
> -- Jacob


I want to make clear that the message quoted above bungled quoting in a 
way that left my signature line after what I now presume to be a 
generated response that completely ignored the point I was trying to 
make.  I am sorry but I have just run out of credible assumptions of 
good faith from ROI AI.

I also note that the list moderator is asking to curtail this thread and 
I agree that any further "debate" with the ROI AI slop machine is likely 
to be useless.  I want the record to clearly show that the *only* piece 
of that I wrote was the sentence fragment quoted in its first line: "In 
case you have forgotten, this discussion *started* with a maintainer
suspecting that LLM-detected vulnerabilities"


-- Jacob


--------------dZapXlnhfu50rJ9SnrrYQQKa--
