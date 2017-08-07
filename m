X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["931" "Monday" "7" "August" "2017" "09:57:04" "-0400" "Glenn Randers-Pehrson" "glennrp@gmail.com" "<CA+PdXcuw7YLfhHO8wydX-4yhgmnGxN7fb=b+z+DQsSgV+73Tjg@mail.gmail.com>" "29" "Re: [oss-security] Cve issue discussion" nil nil nil "8" "2017080713:57:04" "[oss-security] Cve issue discussion" (number mark "U       glennrp@gmai Aug  7   29/931   " thread-indent "\"Re: [oss-security] Cve issue discussion\"\n") "<c3f3c2ec-aee4-75db-562c-7183fa0e3a29@oracle.com>" ("<SG2PR0401MB1834CC0A72F7B7E547C0F42888B50@SG2PR0401MB1834.apcprd04.prod.outlook.com>" "<6651351.AxBd7pCpa9@wanheda>" "<SG2PR0401MB18341DCF23068229492F4B2A88B50@SG2PR0401MB1834.apcprd04.prod.outlook.com>" "<CA+PdXcspyUe_0yO1bypEWmsZNd9xng-4avjExXFnbb0pGi_X=w@mail.gmail.com>" "<20170807123756.GA27766@suse.de>" "<CA+PdXctggn-AoYVKJQZS=+jbnEga4P2AkJa6OJaAS_GUgw0b_g@mail.gmail.com>" "<c3f3c2ec-aee4-75db-562c-7183fa0e3a29@oracle.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13490 invoked by uid 550); 7 Aug 2017 13:57:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13463 invoked from network); 7 Aug 2017 13:57:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=olZs188qv3GCHRwH7GBz7/yLe2CSqpovdhbSz0rUKj8=;
        b=i/K1MZikHh8wcT9D1qT8J3qW1X6FinpgDqsvpLGDCK+u/T77Td0t2s4eDEcL8HoP1Y
         vr+4UqYoe252V7dHWxZejFJH8wVh0MyDwBgXPiAolyoVfg76mYlXFQHg1fU8rx8L8DU1
         fHaxJKyMVMyfn1M4+JctGLSS00SocntEHCpNr9mS9ZsugZ0TUZ8fbj1IyR0rdkhfUlMi
         LtFeX9LdDq3NCVPu5wdyqCecCd9V0bNQxl+dhuh62U9LKPo/P0BXZjzv4FC3PZPGgD2a
         R6SnbljNdHeJP/eZFCRDvK0Dh+0RtbAvUD3+9NuyUPB2JatlKYKpY/hDZD4ZB+MuwY91
         uZkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=olZs188qv3GCHRwH7GBz7/yLe2CSqpovdhbSz0rUKj8=;
        b=F9zWe+hRUo8EpVsThlLiJ0+bAXp5ehrqK6EYL+P0Q/Xkmu2+Nt1c5HLEuSXG0SchTk
         tCmyoUgwOo7TliYwGRTr1xJYKEgHAI91Tv6yBRlCmrtmsm4eGq7PzpUrcGteEGya9EO2
         tYo1DgvB99EaBHo3ike+kG0hJp2406kqack2ucWPpSqbKpJdzByntlFZ1AubTa4OUyuM
         H4DXjz7gM0H/1JGwDbKfXDOTtR78AThUby1qLI7C3mKjMy40LsE0vnU+3uz708iHL6UE
         MIDghu0XHsCgNJwCth03X9Rc5EKsRx6JajZhA+Dph+r+LJcZBRyxwDmr9OEG6YITb5m9
         W7OA==
X-Gm-Message-State: AIVw110+tfL/BNRLYHqwTYyVGVvGktstsD3Pk+WP/rr05aPesZxVA5Ot
	RkmNaejoveoRdG6xEfCzCmgrYQGN6w==
X-Received: by 10.36.17.20 with SMTP id 20mr945280itf.9.1502114264439; Mon, 07
 Aug 2017 06:57:44 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <c3f3c2ec-aee4-75db-562c-7183fa0e3a29@oracle.com>
References: <SG2PR0401MB1834CC0A72F7B7E547C0F42888B50@SG2PR0401MB1834.apcprd04.prod.outlook.com>
 <6651351.AxBd7pCpa9@wanheda> <SG2PR0401MB18341DCF23068229492F4B2A88B50@SG2PR0401MB1834.apcprd04.prod.outlook.com>
 <CA+PdXcspyUe_0yO1bypEWmsZNd9xng-4avjExXFnbb0pGi_X=w@mail.gmail.com>
 <20170807123756.GA27766@suse.de> <CA+PdXctggn-AoYVKJQZS=+jbnEga4P2AkJa6OJaAS_GUgw0b_g@mail.gmail.com>
 <c3f3c2ec-aee4-75db-562c-7183fa0e3a29@oracle.com>
From: Glenn Randers-Pehrson <glennrp@gmail.com>
Date: Mon, 7 Aug 2017 09:57:04 -0400
Message-ID: <CA+PdXcuw7YLfhHO8wydX-4yhgmnGxN7fb=b+z+DQsSgV+73Tjg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Cve issue discussion

OK I'll request a CVE for this libpng issue.

Glenn

On Mon, Aug 7, 2017 at 9:05 AM, John Haxby <john.haxby@oracle.com> wrote:
> On 07/08/17 13:47, Glenn Randers-Pehrson wrote:
>> It's not causing a crash, just a delay.  You'll safely get either an OOM
>> message or an EOF message.and no memory leak.
>>
>
> That's scant comfort when your browser is the one hit by the OOM killer
> and then again when you restart it.  And also while you're wondering
> what's going on because your laptop is basically completely
> non-responsive ...
>
> So yes, it's a remote DoS and definitely worth a CVE.  We have had other
> similar CVEs in the past with image handling libraries not being
> sufficiently paranoid.
>
> jch
>
>> Glenn
>>
>> On Mon, Aug 7, 2017 at 8:37 AM, Marcus Meissner <meissner@suse.de> wrote:
>>> Hi,
>>>
>>> if it could crash the image reader I would consider it "remote denial of service"
>>> classed and CVE worthy.
>
