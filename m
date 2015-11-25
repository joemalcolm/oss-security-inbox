X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1732" "Wednesday" "25" "November" "2015" "22:21:03" "+0100" "Gsunde Orangen" "gsunde.orangen@gmail.com" "<5656263F.80101@gmail.com>" "57" "Re: [oss-security] Announcing https://github.com/RedHatProductSecurity/Certificates-Shipped/" "^Date:" nil nil "11" "2015112521:21:03" "[oss-security] Announcing https://github.com/RedHatProductSecurity/Certificates-Shipped/" (number mark "        gsunde.orang Nov 25   57/1732  " thread-indent "\"Re: [oss-security] Announcing https://github.com/RedHatProductSecurity/Certificates-Shipped/\"\n") "<CANO=Ty3=D5hum6sjTJhN4NjuhAH9yjLNDgDdsL3FXSeVwMOVdw@mail.gmail.com>" ("<CANO=Ty2=+8uiYPoe06j3DEVd6uSBCNiaH5LoWyCqg18jWTZu6w@mail.gmail.com>" "<20151125180702.6d3d075d@pc1>" "<CANO=Ty3=D5hum6sjTJhN4NjuhAH9yjLNDgDdsL3FXSeVwMOVdw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9870 invoked by uid 550); 25 Nov 2015 21:21:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9849 invoked from network); 25 Nov 2015 21:21:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-type:content-transfer-encoding;
        bh=aLveemrz3Nci0ABb/i1HljnI3vzozpdvv/pahBnXf/I=;
        b=N1kgYO+IjEC1fOQPBL1qXlqkj9uVs290tgIo25LMXDCW0bJMIDFoHfD8ahyoLGweUk
         usc17YFXAMv71BpRNx2d/dLoW+fLiAw4101QM2WSxiQ/VgR4wkJdTfU/tlVzNeW8huGZ
         NSHWgDUQMqthN1vE5Hgsx0GDZ260hcj/RJtl2AO8XhTDecf9LOCvwYxRfJ3T7ZgyQvRF
         jpuUgpB5GKHBRthBSuvFBtrqrzeRjdJy1YzxsT5WZrdAtr4D7CAyYy3HfPPHJxYUgaIJ
         /M16LN2nzEI/L4LvGV7agq5amKLp9t7wifs1TkqFD/kCH/ImJKQKcG/MMflSHsYbMtjz
         MwfA==
X-Received: by 10.28.46.137 with SMTP id u131mr6690152wmu.61.1448486464019;
        Wed, 25 Nov 2015 13:21:04 -0800 (PST)
References: <CANO=Ty2=+8uiYPoe06j3DEVd6uSBCNiaH5LoWyCqg18jWTZu6w@mail.gmail.com>
 <20151125180702.6d3d075d@pc1>
 <CANO=Ty3=D5hum6sjTJhN4NjuhAH9yjLNDgDdsL3FXSeVwMOVdw@mail.gmail.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <5656263F.80101@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <CANO=Ty3=D5hum6sjTJhN4NjuhAH9yjLNDgDdsL3FXSeVwMOVdw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Date: Wed, 25 Nov 2015 22:21:03 +0100
From: Gsunde Orangen <gsunde.orangen@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Announcing
 https://github.com/RedHatProductSecurity/Certificates-Shipped/
To: oss-security@lists.openwall.com

Totally reasonable, Kurt.
Where would you actually see the border between what's in and what's
out? Actually there are lots of (proprietary source) vendor products out
there that are heavily built on open source (e.g. virtually all linux
kernel based embedded devices)
Not saying someone should go through the hassles to chase for it - but
if the info is brought to you/to the repository...

Gsunde


On 2015-11-2, 18:37 Kurt Seifried wrote:> On Wed, Nov 25, 2015 at 10:07
AM, Hanno Böck <hanno@hboeck.de> wrote:
> 
>> On Tue, 24 Nov 2015 21:38:35 -0700
>> Kurt Seifried <kseifried@redhat.com> wrote:
>>
>>> https://github.com/RedHatProductSecurity/Certificates-Shipped/
>>>
>>> The idea is to create a comprehensive list of shipped certs/keys/etc
>>> by open source vendors/distributions/projects so that:
>>
>> That's good, but in this case why limit to open source vendors?
>>
> 
> Because this is the Open Source Security mailing list, and I work for a
> company (Red Hat) that does Open Source and because I have no interest in
> the hassles of dealing with proprietary software (legal
> threats/licensing/DMCA/etc.).
> 
> If you would like to work with proprietary vendors on such an effort I
> welcome you to try, you can easily setup a project on GitHUB and move ahead
> without any need to coordinate with the Open Source effort.
> 
> 
>>
>> Actually the MS certs are probably the most interesting for
>> superfish/edell-like scenarios. And I see no reason why they shouldn't
>> be transparent.
>>
> 
> Talk to Microsoft then, OSS-Security is not the forum for dealing with this
> Microsoft related issue.
> 
> 
>>
>> --
>> Hanno Böck
>> http://hboeck.de/
>>
>> mail/jabber: hanno@hboeck.de
>> GPG: BBB51E42
>>
> 
> 
> 

