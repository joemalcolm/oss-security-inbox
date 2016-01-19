X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2832" "Wednesday" "20" "January" "2016" "02:44:16" "+0800" "Pray3r" "pray3r.z@gmail.com" "<569E8400.2090107@gmail.com>" "75" "Re: [oss-security] CVE-2015-8088: Heap Overflow Vulnerability in the HIFI Driver of Huawei Smart Phone" "^Date:" nil nil "1" "2016011918:44:16" "[oss-security] CVE-2015-8088: Heap Overflow Vulnerability in the HIFI Driver of Huawei Smart Phone" (number mark "U       pray3r.z@gma Jan 20   75/2832  " thread-indent "\"Re: [oss-security] CVE-2015-8088: Heap Overflow Vulnerability in the HIFI Driver of Huawei Smart Phone\"\n") "<56733FE4.3080100@gmail.com>" ("<etPan.566c348a.736a8748.22f4@s3cur1ty-lab.local>" "<56733FE4.3080100@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22127 invoked by uid 550); 19 Jan 2016 19:06:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11688 invoked from network); 19 Jan 2016 18:44:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-type:content-transfer-encoding;
        bh=9Fo0QgFA1/IkgrGye5WKbRCxpYUCZcjHI3LJuFArZdQ=;
        b=jSD1CZ1xROzwbQ5K4ySUxaWELW2T5cQx3Ndj3YhJEax8znfUG3P6rHElSZYMnm0hza
         IAY4Rb19TCyFYh/gvsu2/HZ9OCOnE/RhrH4+5MwDRG7Pze5UHz0oP2dmiv9r7t4YRE+I
         IvT88uLhGNiY7+DfoAl8MBLVviZNW2/yQ7+0heae65bTfSKxRcY12NV7HePCUFqXfj3b
         K2R0EE8F8yyB+LSuD1okNZalBTYzVVereGYltujgCQey8xbAUurYaTMXkCbq98TYgWZD
         6Lqq7faJNekWR7A2PpqaF5m7gUy6Sm8kRBo718ZhMfnVO4LofzygRpYzjDj4nBwOe4a9
         UJUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-type
         :content-transfer-encoding;
        bh=9Fo0QgFA1/IkgrGye5WKbRCxpYUCZcjHI3LJuFArZdQ=;
        b=GuDGjxpnBogdkVIR7CAwl6OZBt+YCLiE+10fxAwMWldca82S5hA/yF9KQazmpGVM3e
         9fzzz2RapuyNof1q5SZl7gxHbi6jlriAjI0oBByI679yQNEz+kZK+6FfYFoZLS2vHhAH
         eMsSfEWixU7vWxHpLFie8YLO8LlLV2uQnwHas8h787fg9fhs1LiaN0GsJRPpUHIQBMZK
         YzWHhDYkCfIYiWfSgV4vPW5um+ahzgTRjtVNvX8qYdB7+eDrj+AOZtkUGtM/TAhlqgYn
         c2qKkpg/GPg7tqacLEa4R2FGGiJ/U234W/ZbERTEzT8PnemU/uE3TTE3sAd7ikaGlNWy
         fJ8w==
X-Gm-Message-State: ALoCoQk1OLXCA00jygcM4hWBip5KqWW8N9Y4L8iJL98hHdGO90zteiYUeYcU9BBCUdnWbWPjg8WmvknpiojInyN80TJ+Y0kUbA==
X-Received: by 10.66.182.202 with SMTP id eg10mr46891928pac.50.1453229060737;
        Tue, 19 Jan 2016 10:44:20 -0800 (PST)
References: <etPan.566c348a.736a8748.22f4@s3cur1ty-lab.local>
 <56733FE4.3080100@gmail.com>
Message-ID: <569E8400.2090107@gmail.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
 Gecko/20100101 Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <56733FE4.3080100@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Wed, 20 Jan 2016 02:44:16 +0800
From: Pray3r <pray3r.z@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2015-8088: Heap Overflow Vulnerability in the
 HIFI Driver of Huawei Smart Phone
To: Dan Rosenberg <dan.j.rosenberg@gmail.com>, oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

I reviewed the code(ioremap()) in kernel[1], found get_vm_area_node()
called ioremap(), and the function always allocate a guard PAGE_SIZE
page.You are right. ;-)

Thanks for your pointing.

[1]. http://lxr.free-electrons.com/source/mm/vmalloc.c#L1351


On 15/12/18 07:06, Dan Rosenberg wrote:
> Comments inline below.
> 
> On 12/12/2015 09:51 AM, Pray3r wrote:
> 
>> First, with a large value set to para.para_size, the smart phone 
>> will break down because of heap overflow inside kernel space. 
>> Second, this vulnerability could be used as a kernel information 
>> disclosure if para.para_in points to kernel objects and the
>> exploit is wrapped with heap fengshui technique.  Third,
>> sophisticated exploitation methodology such as heap spray of
>> thread_info published by Keen Team, an attacker could build a
>> workable exploit gaining the root privilege of the smart phone.
> 
> If para.para_in points to a kernel object, the copy_from_user()
> call will gracefully fail due to the access_ok() check, so there is
> no possibility for an information leak like you described. Heap
> fengshui has nothing to do with it.
> 
> The thread_info struct is allocated using the alloc_pages() buddy 
> allocator, which is different from ioremap(), so this technique
> does not apply here.
> 
> Finally, this bug is most likely not exploitable at all (beyond a
> local DoS), because ioremap() pages are followed by a guard page,
> meaning your heap overflow would cause a kernel fault/panic before
> overwriting anything that could be used to violate kernel
> integrity.
> 
>> Security is a bitch!
> 
> True.
> 
>> |=-----------------------------------------------------------------=|
>>
>> 
|=-----=[ D O   N O T   F U C K   W I T H   A   H A C K E R ]=-----=|
>> |=-----------------------------------------------------------------=|
>
>> 
> Sorry for fucking with a hacker, Dan
> 

- -- 
Security is a bitch!
-----BEGIN PGP SIGNATURE-----
Version: GnuPG/MacGPG2 v2.0
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJWnoQAAAoJEM+cWi9WgY1efBQP/3KwwT+Ap1HoobbGVun6LnHn
khf0XOhLthXnXIK15iWDihhv+vMNZiXs8htPHBLBtODSTYAmiwBEb2MexQwNGfnW
ioTzzM1kdhfPyrZiV12gX26/VXWq1vg3gYcRDdGxuGyXJZmsr1QwUXUj5DAdt9X1
cjWtlw3ZgvSMVBvt0eRomHV+ATkVuPoaGgNpEJMaM0zYH7s5RC9IkevAq64GXsWp
v2OuuvQK75Qxu13Fvp2tO3+9OemuscnNt7FxYvhh410ExeydFbczACAZvZeD382i
DGbCq3DwAyTRcY2gqghRNnOnnQyzn3ZrOoDBrCI2pqIj6Gjnvsqli0O27JfeukqS
juadFPXPnt/kM/BKAkzhn9Z0+98iII2ucnj07evmBiasG7HVw2J/XMX6AOpZ4yjI
XElX8xW7qOAYUMcb0nPNB5ZdrDHvLf2BMbZszFwra+l+ltyT3AyfSaRmzqfRL492
eEI1uzdYquKCGqf4RrsqHQ2my7K9t75AyLh0EZYZ2iYTVjJ5A1VFsub/FBWI3fLo
jzmmweP4sTiIMCT7lcNMtBIslCdiMp3m+ECNCFwWkMVMVw4NzBoov+apBzAwRPVj
aAR3YZED4G/K5Sanp7NyEagLKH+fmUqca8bsz7sdM1bnMk3z7fxBdslAfCJgk5vt
/lz/7QCz0b/Z5kNNWWG0
=BrNh
-----END PGP SIGNATURE-----
