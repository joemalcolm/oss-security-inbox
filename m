X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1695" "Monday" "16" "September" "2019" "14:34:19" "+0200" "Jiri 'Ghormoon' Novak" "ghormoon@gmail.com" "<d1f53010-1e58-c4f5-7a91-e8fa3402f984@gmail.com>" "32" "Re: [oss-security] Telegram privacy fails again." "^Date:" nil nil "9" "2019091612:34:19" "[oss-security] Telegram privacy fails again." (number mark "        ghormoon@gma Sep 16   32/1695  " thread-indent "\"Re: [oss-security] Telegram privacy fails again.\"\n") "<20190913112045.GI43354@symphytum.spacehopper.org>" ("<CAG8b5tQVkcbRqFNk0GhJRCs-kdRPYnkL0E9=mbGMikCOdi7g+w@mail.gmail.com>" "<20190912153927.GA27634@openwall.com>" "<CABMkiz5Fh9tiBgJFD8g4nZWOAz5PLGYDVuXXEa6FGWds6QY7KA@mail.gmail.com>" "<20190912222921.ozyhvh4t6gqzczrn@wrycode>" "<20190913112045.GI43354@symphytum.spacehopper.org>") nil nil nil nil nil nil nil "Re: [oss-security] Telegram privacy fails again." nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32471 invoked by uid 550); 16 Sep 2019 12:35:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31961 invoked from network); 16 Sep 2019 12:34:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=AWjyjrbb26vUGnxNHMRbvVB4YMjRbxW7aOJt42kUQus=;
        b=sXzpHuxkUYw1CdfZq3xqxbPoWgvcw4hEa8jDH9rxftEFLeQ2XBCoRYJQXT2kiKUNnW
         7hqjE8QxvyYHhshftZvVqhzYEpN5uS4Zqm1B4yKj5H+liXefizbFw52vgwcCFOA+Zi37
         kq6vJwkwi2rgZhDCmyV5dHBgxRNUlhRGFiZ9Wc3zfNT3Obz/Eue7u7jGo2PYLBEciSTP
         Ec5Kd6NigT8znmHmFrEFVmlP6zkAAsbNX0IhSrg2w412yqS4TYY1UW1ZsqFynaEOzdzi
         2yWmVsmz/YUjLY8P16QePr2nB08fFcVNNWJkL+ngPC4i4FW/0JPFsCFfZ8gb9VlQL8ZN
         bY8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=AWjyjrbb26vUGnxNHMRbvVB4YMjRbxW7aOJt42kUQus=;
        b=nydtQhFF5tXMrSUr8lIq+8y9gv1cpv2t6O2JZse6RRbxpjshW4I6+/UK77lUJUUygi
         RyjohH51MjeSVrYgaY7oXwb8cVB29mvTRyYz7sTPyJpfaI3LuAqeffzcgs4QC4Vp10Uh
         /epgS4oSeLP6OcRO6O5GCo8tM81Frcwf3sa6/YIiiZgg+qbNS9/eI3AJ/pDeW1DmVz2/
         jvsqAl/7RRNMkEq2VQlG1BIXmmet0Rh3WfcKhFzFbl/cvIyXYthmgD+E0R+uskvi8SU1
         YjLCn4HsoLcQ/yvk1+1g5kjpR4Kh/zdKn9h4ygKn6Bq3vxJdtgoDKORObN6iheAXjzmm
         d2Vw==
X-Gm-Message-State: APjAAAVXzz/niPrNtm1eQUhbSVEPlJWZHRCt2GFOszb2ImuSNILIBVwI
	sqvqlGKOWeWirsVFyMSYYw41M4MD
X-Google-Smtp-Source: APXvYqxrScOTQShYhzMbpmu2TiZK6FCmL2Mk3zHELHY+hLlf5juK9U0guqlctuCBa9N1EJ0HB6fMyQ==
X-Received: by 2002:a5d:4985:: with SMTP id r5mr9829053wrq.139.1568637262167;
        Mon, 16 Sep 2019 05:34:22 -0700 (PDT)
References: <CAG8b5tQVkcbRqFNk0GhJRCs-kdRPYnkL0E9=mbGMikCOdi7g+w@mail.gmail.com>
 <20190912153927.GA27634@openwall.com>
 <CABMkiz5Fh9tiBgJFD8g4nZWOAz5PLGYDVuXXEa6FGWds6QY7KA@mail.gmail.com>
 <20190912222921.ozyhvh4t6gqzczrn@wrycode>
 <20190913112045.GI43354@symphytum.spacehopper.org>
Message-ID: <d1f53010-1e58-c4f5-7a91-e8fa3402f984@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190913112045.GI43354@symphytum.spacehopper.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US
Date: Mon, 16 Sep 2019 14:34:19 +0200
From: Jiri 'Ghormoon' Novak <ghormoon@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Telegram privacy fails again.
To: oss-security@lists.openwall.com

Honestly, the biggest issue with that feature is that by default, the
checkbox is not ticked and if you delete it accidentally for yourself
first, you won't ever remove it for the other person.

Regarding the average user thinking the feature is secure, how would you
think it should be done? rephrase it to "try to delete" or what?

Gh.

On 9/13/19 1:20 PM, Stuart Henderson wrote:
> On 2019/09/12 18:29, notspam@mm.st wrote:
>>> IMO, If Whatsapp/Telegram wanted to take this functionality more seriously,
>>> they'd need to be writing the images to disk in an encrypted form from the
>>> outset. It increases the overhead of display, and wouldn't necessarily stop
>>> forensic recovery etc, but it would mean that other apps couldn't simply
>>> watch the directory and upload anything which appears in it in a usable
>>> form. That's a whole other can of worms though as it's another set of keys
>>> to manage.
>> There's no way to take this functionality seriously - the feature is a
>> joke. A privacy feature centered around trusting another user's
>> node to delete a file you already sent them is silly. Unfortunately,
>> it seems like nobody gets this; even Matrix clients are supposed to
>> have message redaction soon.
> It is still a useful feature as long as you don't consider it "secure".
>
>> The original email didn't contain a security vulnerability (remember
>> the name of this list?)  - it was blogspam. It didn't belong here for
>> the same reason that you don't see Snapchat bugs on this list.
> If a user of the software took the "delete" claim at face value then it
> could be considered security related .. and unlike Snapchat, the Telegram
> client *is* open source.
>
