X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["878" "Monday" "26" "February" "2018" "10:40:54" "+0530" "Sahil Dhar" "sdhar@securityinnovation.com" "<CA+=eHdTkJv3e+=M_oUEhiQk8tXxrNJohHMytNTskvkcbG9tieA@mail.gmail.com>" "39" "[oss-security] Re: [ANNOUNCE] CVE-2018-1286 - Apache OpenMeetings - Insufficient Access Controls" nil nil nil "2" "2018022605:10:54" "[oss-security] Re: [ANNOUNCE] CVE-2018-1286 - Apache OpenMeetings - Insufficient Access Controls" (number mark "U       sdhar@securi Feb 26   39/878   " thread-indent "\"[oss-security] Re: [ANNOUNCE] CVE-2018-1286 - Apache OpenMeetings - Insufficient Access Controls\"\n") "<CAJmbs8i241-OvnTKwC=Z-GmaNaV5BB9PwmXw668BKsamLiwntQ@mail.gmail.com>" ("<CAJmbs8i241-OvnTKwC=Z-GmaNaV5BB9PwmXw668BKsamLiwntQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22069 invoked by uid 550); 26 Feb 2018 12:41:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23755 invoked from network); 26 Feb 2018 05:11:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=securityinnovation.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=AGW+8g333dsX6cIN5RGsT2K73uihCHHcQhw/zPCMweQ=;
        b=Mm2FFdrQl474zzeGa+DGus+HEKo9iHRriYxgjmZkNSvJp0VV5YwraB23EyVR7JJESJ
         bnC3O+WsrRWwde67E2QN8csKb0dEwdn6O1drSQtVzDREYs7VDntEJOwGjRkS1mVnbULG
         G/kucgZW45vrs9cHZ0EKgNo7sFuMY9Wt7mTQE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=AGW+8g333dsX6cIN5RGsT2K73uihCHHcQhw/zPCMweQ=;
        b=gfSz4GzWU2hPOTHF1aL+f+ciTOUXtHNe21vSlrllTw+ctBMrxyZ/RdAOx1Ukh1bxw3
         G+joNzgSUguwSSDaNTSlIXFJCw9ZVfgoRhxFz/JTR/n3xCQk7MTom5+eSKoh5O6kwYNh
         tnvrGMAPfsukrU9Jee6l6BpoXhqPnCNFOIuwfPK9dmpEV/u/4biA2JNSahBYwd0pqERb
         9AgUox4rQsbqBDlyLOTPPjO+97Cp8Bm+G9Zy1eVGy7da1MF/rU5xWiVhiR4nSSH4droI
         5ArCg7IwNq6ZIPwvBmHlwe6AppdM/B1kv8P/wqV0ywWy+xo0fpV5+DMaD00Ld0G2+cz7
         oUdg==
X-Gm-Message-State: APf1xPDdgITZCdI/nmdQIHBECW2o+68aZQqvxpLJgGPxxmvFiXlHhEOh
	uJ6UDsgLASbSWtFtHvGAmSfqYWoLxz+e0XQJ+Suygg==
X-Google-Smtp-Source: AG47ELtSgutJ9k/43xVwHGrf5SXKSmPijGaXf6cSu4mGmP6TYRihAKQfzvLsc2nwSYRUUxcVjaWab5osZDw+Ro3qYWY=
X-Received: by 10.31.238.195 with SMTP id m186mr6853812vkh.92.1519621854554;
 Sun, 25 Feb 2018 21:10:54 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CAJmbs8i241-OvnTKwC=Z-GmaNaV5BB9PwmXw668BKsamLiwntQ@mail.gmail.com>
References: <CAJmbs8i241-OvnTKwC=Z-GmaNaV5BB9PwmXw668BKsamLiwntQ@mail.gmail.com>
From: Sahil Dhar <sdhar@securityinnovation.com>
Date: Mon, 26 Feb 2018 10:40:54 +0530
Message-ID: <CA+=eHdTkJv3e+=M_oUEhiQk8tXxrNJohHMytNTskvkcbG9tieA@mail.gmail.com>
To: Maxim Solodovnik <solomax@apache.org>
Cc: security@openmeetings.apache.org, 
	Openmeetings user-list <user@openmeetings.apache.org>, dev <dev@openmeetings.apache.org>, 
	user-russian@openmeetings.apache.org, Sahil <sdhar@securityinnovation.com>, 
	oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="94eb2c14c252d586a40566168887"
Subject: [oss-security] Re: [ANNOUNCE] CVE-2018-1286 - Apache OpenMeetings - Insufficient
 Access Controls

--94eb2c14c252d586a40566168887
Content-Type: text/plain; charset="UTF-8"

Hi Maxim,


I just noticed that there is a typo in the CVE-2018-1286 description, as it
states that the affected version is 3.0.0. However, the vulnerability was
reported for 4.0.1 release. Can you please update it?

Thanks,
~ Sahil






On Sun, Feb 25, 2018 at 5:20 PM, Maxim Solodovnik <solomax@apache.org>
wrote:

> Severity: Medium
>
> Vendor: The Apache Software Foundation
>
> Versions Affected: Apache OpenMeetings 3.0.0
>
> Description: CRUD operations on privileged users are not password
> protected allowing an authenticated attacker to deny service for
> privileged users.
>
>
> The issue was fixed in 4.0.2
> All users are recommended to upgrade to Apache OpenMeetings 4.0.2
>
> Credit: This issue was identified by Sahil Dhar of Security Innovation Inc
>

--94eb2c14c252d586a40566168887--
