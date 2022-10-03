Received: (qmail 9867 invoked by uid 550); 3 Oct 2022 16:11:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9846 invoked from network); 3 Oct 2022 16:11:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date;
        bh=BbUoqpIXsLG1yd39NdzNg9O65UKxLZJ7UW1rZ2sIdoA=;
        b=g9ofnt21+84srhW3JffQUjzmPZSBEKkIoE1F2qXgHLfzPP94oSee/yxG44Mp8GEnmI
         v26hGZgqdSHk2weSHw6xCXNCJgAfrFddaVnm2ElhDj0nSXsC5ZoXCYuqdQK9lAucwoQA
         kHQkth88fSfQrS9k94QsyF5OAyUJQQ9NBCpdfuiRvHZyiJxap9eUSmWBZl0aMovUL5y+
         ByM1JJ/Kz37iXKl9c/uoW58Qd5TYutldCRRDowENG0tq9Rk/8M9mxIJGY2SaLntkRWGI
         pRJvowvacK4d9YOlsYL939O0W64MocQWCK2JKfVKil3fyB6oSHI6WL4ib6CFaLdNcitE
         b+/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date;
        bh=BbUoqpIXsLG1yd39NdzNg9O65UKxLZJ7UW1rZ2sIdoA=;
        b=04I8602mFKbHNrt6kUk8qH/LowADYh92Q9hiHDD1Q5CcPRV/6V/fVZC6pAtKg7hPxY
         awDsIShkMeIbfCk7PqLmcFkC5pEw4cp1KLOtfHkhUD/KrdJ08mFvZzrho91uTEBFdSlI
         bg1otd7S1r66xz3yvS4CzfkWouA+ZwUDaYsHYNaHoVBGLHXmNmtzepvwanotlm0J0srA
         iMguMh7wZR/jd9qyIZZNNJg3kzqOQ1dFL2uOpAzJwidoqqth3jLXItBP/Cfk0RAOpjhH
         R3U4gp0qAgxuuSFw9L+g6cv72gTUqpi7p0Mh9DKvKsjtJdgH2W9y6wD1zLFfqRkI7nDA
         JNxw==
X-Gm-Message-State: ACrzQf1TpDiOERqQWAW9rz4UzYwUI8hAnUYlFpJTtZFAYeOE360EPAJ6
	/rFLQg9cmYSvYpPQO2TFcJZZxE/Z8G/GnMNVT2IMO0Bq
X-Google-Smtp-Source: AMsMyM4Hi3ICY8JM7jJwH74WPXW9cQcj4fF37q49STbPNBj5l31gvbyqY+992+BCV+8o9rjWXUp+ra61lsYduPqQJtQ=
X-Received: by 2002:a67:ef8d:0:b0:3a6:5309:afad with SMTP id
 r13-20020a67ef8d000000b003a65309afadmr3401442vsp.54.1664813491597; Mon, 03
 Oct 2022 09:11:31 -0700 (PDT)
MIME-Version: 1.0
References: <bb4f8cbe-d7d8-ba66-101c-f754f2e3d9cb@vulndisco.cc>
In-Reply-To: <bb4f8cbe-d7d8-ba66-101c-f754f2e3d9cb@vulndisco.cc>
From: Alex Gaynor <alex.gaynor@gmail.com>
Date: Mon, 3 Oct 2022 12:11:20 -0400
Message-ID: <CAFRnB2UAs-6DcLOkqwbhtV9DNDL87GS52QAHnYATKoi7DQrf9w@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] MySQL Cluster 8.0.30 overflow

Was this previously disclosed to the MySQL team (Oracle, I suppose)
and is it fixed upstream, or is this the initial disclosure?

Alex

On Mon, Oct 3, 2022 at 12:08 PM Evgeny Legerov <admin@vulndisco.cc> wrote:
>
> Hi,
>
> There is a heap overflow in ndbd.
>
> Bug details:
> void Dbdih::execSTART_MECONF(Signal* signal)
> {
>    jamEntry();
>    StartMeConf * const startMe = (StartMeConf *)&signal->theData[0];
>    Uint32 nodeId = startMe->startingNodeId;
> [1]  const Uint32 startWord = startMe->startWord;
>
>    CRASH_INSERTION(7130);
>    ndbrequire(nodeId == cownNodeId);
>    bool v2_format = true;
>    Uint32 cdata_size_in_words;
> [2]  if
> (ndbd_send_node_bitmask_in_section(getNodeInfo(cmasterNodeId).m_version))
>    {
>      jam();
>      ndbrequire(signal->getNoOfSections() == 1);
>      SegmentedSectionPtr ptr;
>      SectionHandle handle(this, signal);
>      ndbrequire(handle.getSection(ptr, 0));
>      ndbrequire(ptr.sz <= (sizeof(cdata)/4));
>      copy(cdata, ptr);
>      cdata_size_in_words = ptr.sz;
>      releaseSections(handle);
>    }
>    else
>    {
>      jam();
>      v2_format = false;
> [3]    arrGuard(startWord + StartMeConf::DATA_SIZE, sizeof(cdata)/4);
>      for(Uint32 i = 0; i < StartMeConf::DATA_SIZE; i++)
>      {
> [4]      cdata[startWord+i] = startMe->data[i];
>      }
>
>
> }
>
> We control the contents of signal->theData buffer.
> If master node is an old 7.6 version, which is still supported, check on
> line #2 fails and we go to line #3.
> This check can be easily bypassed if startWord is negative.
> On line #4 we have nice heap overflow.
>
> Instructions and code to reproduce -
> https://github.com/ivd38/mysql_overflow1
>
>
> regards,
>
> -e
>


-- 
All that is necessary for evil to succeed is for good people to do nothing.
