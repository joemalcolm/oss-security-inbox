X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2133" "Monday" "26" "February" "2018" "12:18:58" "+0700" "Maxim Solodovnik" "solomax666@gmail.com" "<CAJmbs8gqAfP0QPTSggDLSHwXzpv3H1rsuuo9wE024MzwhTSXTg@mail.gmail.com>" "92" "[oss-security] Re: [ANNOUNCE] CVE-2018-1286 - Apache OpenMeetings - Insufficient Access Controls" nil nil nil "2" "2018022605:18:58" "[oss-security] Re: [ANNOUNCE] CVE-2018-1286 - Apache OpenMeetings - Insufficient Access Controls" (number mark "U       solomax666@g Feb 26   92/2133  " thread-indent "\"[oss-security] Re: [ANNOUNCE] CVE-2018-1286 - Apache OpenMeetings - Insufficient Access Controls\"\n") "<CA+=eHdR-Ym0O0kpxbjSPpNYqMhp3nCKUBHQh8GtjV4AKbJavUg@mail.gmail.com>" ("<CAJmbs8i241-OvnTKwC=Z-GmaNaV5BB9PwmXw668BKsamLiwntQ@mail.gmail.com>" "<CA+=eHdTkJv3e+=M_oUEhiQk8tXxrNJohHMytNTskvkcbG9tieA@mail.gmail.com>" "<CAJmbs8iN5uwxxs3wWvJGkBsbe026yiyeGup1w=UrmtxnV-Orfg@mail.gmail.com>" "<CA+=eHdR-Ym0O0kpxbjSPpNYqMhp3nCKUBHQh8GtjV4AKbJavUg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24013 invoked by uid 550); 26 Feb 2018 12:41:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28662 invoked from network); 26 Feb 2018 05:19:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=EeAV1rsAZvDnsGIbWV3hrfUD0pwTn8PnE7/b0AQhTwY=;
        b=Yb3onpqJNOaAPCOQfiqy4jDgaiphtttfzFM2oOh5nd7sSD7cA/aFSF+gH5xBVfXj/h
         ECK1HYnfaXvaapMGa7+CoXQFYBnUKCv7Yrudbz3dYkCBCDyf1D/yyT/U14ITnGquoQmv
         YhDsDDs0YjbZSk++1/DgohOz4E4IwaQ/OCDvBuT2rMwBtx1FLAuPba+UbqtDbtLcZLMA
         cCZPndjssaelopJemeHGZlbVlmueSAQZio8Q7G+fYZAGeFGB1yCQa87k1/NxgW+XWZDp
         d3LMD1RvdADGdj+bR827NOd/TGMm/XBuW+wUZLpr8ujXIF0hZYD4Gd3BszimndfoQFTH
         YFGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=EeAV1rsAZvDnsGIbWV3hrfUD0pwTn8PnE7/b0AQhTwY=;
        b=Y4I6BKgh6lNjTLsbpyXcznKX+G4+Dr6CevS43E9n5F2fKx5ZoerQ/OA5PlJ1IdV7ve
         pe4TYUH16eTrgYZWvotK1toumvZsA6rMSkzUe/Bz3iXGyYosiOIQ172kTMQBR8y0jKHL
         ipHzJ15lsM37iUmGDourSSE2wtnck9ZE8XYCPd74DVX64PCMpjM08WBQRkRObR4xWerV
         m/li/jPVUym6qxE6Vs7iStbLP+fYP7KyLl96Ci38XuItMmpkl/4/WnhJd038sxYxGvgB
         c+9MI+6Bm3CbQm+JW4iYtsDPV+isyFj3FyuEzM15tThYmdQ5hCV+ckr5L4Fe6lZ5AmOt
         RicQ==
X-Gm-Message-State: APf1xPCIvXBpuqWmH7gSyVQtOx+t5a1wvhYOY4Kmqo2226AOWmxqbfBp
	WlVo0cIc5EoAWYb8E4LRh/jab20C5/rvPDN5RtrvqA==
X-Google-Smtp-Source: AG47ELvCcvxytOwLH6EESIFfdm8LAzYMGdCe30iJfK+Ns8JvV9kx2iVplZeMtm8G6zd6hek80ejSTnUZ1i2vLZGwdjg=
X-Received: by 10.36.76.69 with SMTP id a66mr11180522itb.148.1519622338648;
 Sun, 25 Feb 2018 21:18:58 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CA+=eHdR-Ym0O0kpxbjSPpNYqMhp3nCKUBHQh8GtjV4AKbJavUg@mail.gmail.com>
References: <CAJmbs8i241-OvnTKwC=Z-GmaNaV5BB9PwmXw668BKsamLiwntQ@mail.gmail.com>
 <CA+=eHdTkJv3e+=M_oUEhiQk8tXxrNJohHMytNTskvkcbG9tieA@mail.gmail.com>
 <CAJmbs8iN5uwxxs3wWvJGkBsbe026yiyeGup1w=UrmtxnV-Orfg@mail.gmail.com> <CA+=eHdR-Ym0O0kpxbjSPpNYqMhp3nCKUBHQh8GtjV4AKbJavUg@mail.gmail.com>
From: Maxim Solodovnik <solomax666@gmail.com>
Date: Mon, 26 Feb 2018 12:18:58 +0700
Message-ID: <CAJmbs8gqAfP0QPTSggDLSHwXzpv3H1rsuuo9wE024MzwhTSXTg@mail.gmail.com>
To: Sahil Dhar <sdhar@securityinnovation.com>
Cc: security@openmeetings.apache.org, 
	Openmeetings user-list <user@openmeetings.apache.org>, dev <dev@openmeetings.apache.org>, 
	user-russian@openmeetings.apache.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Re: [ANNOUNCE] CVE-2018-1286 - Apache OpenMeetings - Insufficient
 Access Controls

Make sense,
I'll change it in a moment :)

On Mon, Feb 26, 2018 at 12:17 PM, Sahil Dhar
<sdhar@securityinnovation.com> wrote:
> Hi Maxim,
>
> I got your point, however, the description seems to be stating that only
> version 3.0.0 is affected instead of <=4.0.1.
>
>
> CVE-2018-1286 - Apache OpenMeetings - Insufficient Access Controls
> Severity: Medium
>
> Vendor: The Apache Software Foundation
>
> Versions Affected: Apache OpenMeetings 3.0.0
> Versions Affected: <= 4.0.1  (Corrected)
>
> Description: CRUD operations on privileged users are not password protected
> allowing an authenticated attacker to deny service for privileged users.
> CVE-2018-1286
>
> The issue was fixed in 4.0.2
> All users are recommended to upgrade to Apache OpenMeetings 4.0.2
>
>
> Thanks,
> ~ Sahil
>
> On Mon, Feb 26, 2018 at 10:43 AM, Maxim Solodovnik <solomax666@gmail.com>
> wrote:
>>
>> I have analyzed the code
>> Wysiwyg editor was introduced in 3.0.0
>> and it was vulnerable from the very beginning
>> So all versions are affected :(
>>
>> On Mon, Feb 26, 2018 at 12:10 PM, Sahil Dhar
>> <sdhar@securityinnovation.com> wrote:
>> > Hi Maxim,
>> >
>> >
>> > I just noticed that there is a typo in the CVE-2018-1286 description, as
>> > it
>> > states that the affected version is 3.0.0. However, the vulnerability
>> > was
>> > reported for 4.0.1 release. Can you please update it?
>> >
>> > Thanks,
>> > ~ Sahil
>> >
>> >
>> >
>> >
>> >
>> >
>> > On Sun, Feb 25, 2018 at 5:20 PM, Maxim Solodovnik <solomax@apache.org>
>> > wrote:
>> >>
>> >> Severity: Medium
>> >>
>> >> Vendor: The Apache Software Foundation
>> >>
>> >> Versions Affected: Apache OpenMeetings 3.0.0
>> >>
>> >> Description: CRUD operations on privileged users are not password
>> >> protected allowing an authenticated attacker to deny service for
>> >> privileged users.
>> >>
>> >>
>> >> The issue was fixed in 4.0.2
>> >> All users are recommended to upgrade to Apache OpenMeetings 4.0.2
>> >>
>> >> Credit: This issue was identified by Sahil Dhar of Security Innovation
>> >> Inc
>> >
>> >
>>
>>
>>
>> --
>> WBR
>> Maxim aka solomax
>
>



-- 
WBR
Maxim aka solomax
