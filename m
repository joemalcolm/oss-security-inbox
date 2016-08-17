X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["706" "Wednesday" "17" "August" "2016" "17:21:27" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20160817152127.4bmib7pf4hhqc4ro@eldamar.local>" "23" "Re: [oss-security] CVE-2016-5696: linux kernel - challange ack information leak." "^Date:" nil nil "8" "2016081715:21:27" "[oss-security] CVE-2016-5696: linux kernel - challange ack information leak." (number mark "        carnil@debia Aug 17   23/706   " thread-indent "\"Re: [oss-security] CVE-2016-5696: linux kernel - challange ack information leak.\"\n") "<CAOTQaXEMKvWRH4Aexf3bXzsdx0488TkWmVq2-7+v4Ak7dar7jw@mail.gmail.com>" ("<CALJHwhTAvhAB0DPe2m7h1X_uoz9R5adTOpr-YVXUd6pX3WVNyg@mail.gmail.com>" "<b84b5a3f-9e85-e3f2-fbbd-95dac3a76518@enea.com>" "<20160814195158.GA19228@kroah.com>" "<3230301C09DEF9499B442BBE162C5E48ABE26AE4@SESTOEX04.enea.se>" "<20160815075301.GD6359@kroah.com>" "<8e047f04-5c48-aaa8-0e71-e06a44cb8a2c@enea.com>" "<20160816201908.GB10132@kroah.com>" "<3230301C09DEF9499B442BBE162C5E48ABE280AE@SESTOEX04.enea.se>" "<20160817121621.GA7146@kroah.com>" "<CAOTQaXEMKvWRH4Aexf3bXzsdx0488TkWmVq2-7+v4Ak7dar7jw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15764 invoked by uid 550); 17 Aug 2016 15:21:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15746 invoked from network); 17 Aug 2016 15:21:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Gzt6EmeGuYWl9jLBe4zpVR0kJozJNoM6jZcFtigL7Jw=;
        b=jy9s8N0S+NYcfSpmSuBRDGmTVw32qPdraRUq/kaiHrfG8uUhlOeOojOqN4ePwfCWAN
         EU5g4PZEkn0DiFnRIwBl/cxaqOEDxUw6FMJ99CtUw5C5pAIXhabTUJVyRkPKE5aHu9by
         jLHyMyddAWui5GtqTBsIF5ALQ+lCqpQW1x/I91xxKr7nq8vkdtmCab09iAn46swXbhRI
         Dfd2rcLrZvTFnsuCSeqhhVqTmRGHD6n+DQqqTlgMQQHFERzg47pfhsNhAA9GuNMTcuIF
         zoFreGavo3x7eAi649h5SLAsdbOWlgdabvaOQy1ogK0xUKZHYjztu7CL+wzuooKa0PW6
         ZShA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=Gzt6EmeGuYWl9jLBe4zpVR0kJozJNoM6jZcFtigL7Jw=;
        b=buevjLAj9BvSXstwzEWt+rVhc37HDRAu9vOBhPmRjDxmz2kpu4N7w+PfgefJ1T5zk6
         TVSWf8D57+6wT+sUJI/a0dWltIhQE55L8h75jH+5ZyRfb+eTsf1SWMfq66Ml3jDthCx4
         ENzkPvpgMGc3o0mu4BA/IvTvBXJAZffrbAMRIs1nr3omxoUnP+12NTQWVPIxYSnmDmQl
         0Ge02/nQ4bey2BqVgr37f+UWNB9eHt6cuJC/KmbRywoiplFcuw0ojaD5OHaVUPqLbaIt
         fP+flB6EghEx/8Lvk0h0SrkV6IRFzRvSbt2Zv96wSjJIrzH9wwXj26T30aG9NEfr+jV2
         mbeA==
X-Gm-Message-State: AEkooutsQHOkVM+Y/IqlgQlO2+4HirzLrSSDQLY/Plxc1OnzEWBHCo/qqwB5OWv3S2qCQg==
X-Received: by 10.28.4.194 with SMTP id 185mr28249678wme.91.1471447289751;
        Wed, 17 Aug 2016 08:21:29 -0700 (PDT)
Message-ID: <20160817152127.4bmib7pf4hhqc4ro@eldamar.local>
References: <CALJHwhTAvhAB0DPe2m7h1X_uoz9R5adTOpr-YVXUd6pX3WVNyg@mail.gmail.com>
 <b84b5a3f-9e85-e3f2-fbbd-95dac3a76518@enea.com>
 <20160814195158.GA19228@kroah.com>
 <3230301C09DEF9499B442BBE162C5E48ABE26AE4@SESTOEX04.enea.se>
 <20160815075301.GD6359@kroah.com>
 <8e047f04-5c48-aaa8-0e71-e06a44cb8a2c@enea.com>
 <20160816201908.GB10132@kroah.com>
 <3230301C09DEF9499B442BBE162C5E48ABE280AE@SESTOEX04.enea.se>
 <20160817121621.GA7146@kroah.com>
 <CAOTQaXEMKvWRH4Aexf3bXzsdx0488TkWmVq2-7+v4Ak7dar7jw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOTQaXEMKvWRH4Aexf3bXzsdx0488TkWmVq2-7+v4Ak7dar7jw@mail.gmail.com>
User-Agent: Mutt/1.6.2-neo (2016-08-08)
Date: Wed, 17 Aug 2016 17:21:27 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] CVE-2016-5696: linux kernel - challange ack
 information leak.
To: oss-security@lists.openwall.com

Hi,

On Wed, Aug 17, 2016 at 05:01:45PM +0200, Gsunde Orangen wrote:
> > > Heh, fair enough.  This fix is now in the kernels that were released
> today
> > > (4.7.1, 4.6.7, 4.4.18, and 3.14.76), hope that helps.
> It seems that Greg keeps on being bothered with questions ;-)
> Here's one more: the relevant Upstream commit
> 75ff39ccc1bd5d3c455b6822ab09e533c551f758
> is referenced in all change logs of yesterday's kernel releases...
> ... Except for: 4.7.1 (https://cdn.kernel.org/pub/
> linux/kernel/v4.x/ChangeLog-4.7.1)
> Did 4.7.1 miss the fix?

That commit was actually already part of v4.7.

$ git tag --contains 75ff39ccc1bd5d3c455b6822ab09e533c551f758
v4.7
v4.8-rc1
v4.8-rc2

Regards,
Salvatore
