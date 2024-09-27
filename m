Received: (qmail 20294 invoked by uid 550); 27 Sep 2024 00:13:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7351 invoked from network); 27 Sep 2024 00:10:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1727395797;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=XzMBVjih/oDJCfffUYdMaRuxM96m55fLrmOvs3ETlyo=;
	b=UNiagGnW11GjWnM9eYyq+afarK8dIqQNy8O8UgVIG/SNqS976vE7V0NleSOlJNXQdnkM0U
	gV39N5uMXKJldlAr3r0D6r0Oarr4zbaBjiutTLEEfNtbl3mPJO6lHLP37XEfQsqsAKoiNk
	A9KdsWm1cnjmGrJYlUIvje3xQVQ/sVY=
X-MC-Unique: JoqfNmgPP7WGgs3BvfFUYA-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727395794; x=1728000594;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XzMBVjih/oDJCfffUYdMaRuxM96m55fLrmOvs3ETlyo=;
        b=Fg+GrVqoQIC7tA8dKEnsISf3SysU080iO6ekQJjlP4ItrGgtoinQnk1UlvByvUv6Qi
         6h3Fw5N/Qm1ELCuY1SwMIYY1V/EiN3JSVoqRo3zmN5ddMcLlWo/xlhknCygbuWQ31MVr
         eLZLjUh4/jjSh7rNbncMHJrLemV6XihyJ5eUFjFYcoXydVxUr0S6KCgtSfh3M7+IXyh4
         eVjFu0y3n2BpwhUtbgWxiivfYJSuk5q+c+wwA7DeM7izc3KADduCDK+umHMZzQ+CWna/
         YhAb16RFtrQrXqvmLjsL+xLN8cUuz1TzuFSzBVISt18IP34o3hBE1gRaL1s2hUs6xDXL
         eGuQ==
X-Forwarded-Encrypted: i=1; AJvYcCWrNnJENzTytgRklAElADy3GEIM6DFLV0K0BhITEOf3bbfdZny3EjFqYettKNWDQHQRccIFexxubTOSkbQ=@lists.openwall.com
X-Gm-Message-State: AOJu0YxYQOoTDOYDrWz98PN1dkdYkp6YMpJEwfa8TQgQYT1Tf7zbuIAb
	o3rT9m6y55nDV02n/z746WR+IOfsWRF4og7NsFmUk6zYDDjdKwrfloj+fsNDnovufyMV0eVNT3U
	WQhCuzv+73zTUiN49BCnEtcqWaqWRTZtHLmKHom3iiigAi3Il1LeNc4S2P51pg2TpKEc2rGdFpg
	==
X-Received: by 2002:a05:600c:1d20:b0:42c:b995:20b6 with SMTP id 5b1f17b1804b1-42f5840e0c9mr8220705e9.2.1727395794591;
        Thu, 26 Sep 2024 17:09:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEhloCvgz/QKO2e6AhT8PnEUVD6zirwgkKqlH1a63SKsQUFoFCJ8QCjFjBbiHWs9+gh46N75A==
X-Received: by 2002:a05:600c:1d20:b0:42c:b995:20b6 with SMTP id 5b1f17b1804b1-42f5840e0c9mr8220595e9.2.1727395794132;
        Thu, 26 Sep 2024 17:09:54 -0700 (PDT)
Message-ID: <e8047bef-b5b9-40c4-8027-cf140d031559@redhat.com>
Date: Fri, 27 Sep 2024 02:09:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Solar Designer <solar@openwall.com>, oss-security@lists.openwall.com,
 Michael Sweet <msweet@msweet.org>
Cc: Simone Margaritelli <evilsocket@gmail.com>
References: <20240926221125.GA10895@openwall.com>
 <5bf73ba2-d643-40a0-9397-65a2e56dd436@oracle.com>
 <20240926234952.GA12532@openwall.com>
From: Zdenek Dohnal <zdohnal@redhat.com>
In-Reply-To: <20240926234952.GA12532@openwall.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] CUPS printing system vulnerabilities

Hi Alex,

Mike has more info about those commits, I've added him in the loop here.

I'm sorry that I cannot provide much more info - there is Fedora commit 
from Justin https://src.fedoraproject.org/rpms/cups/c/d0eba90f305d which 
should cover Mike's fixes, but I don't know which was for which issue.


Zdenek

On 9/27/24 01:49, Solar Designer wrote:
> On Thu, Sep 26, 2024 at 03:43:23PM -0700, Alan Coopersmith wrote:
>> On 9/26/24 15:11, Solar Designer wrote:
>>> A lot of drama around the disclosure of those issues was going on for
>>> maybe a month now, with public tweets about the disclosure process and
>>> the issues affecting many distros but excluding detail on the issues
>>> (not even CUPS was specifically mentioned until very recently).  Per
>>> those tweets, the issues were communicated to some distro vendors via
>>> CERT/CC VINCE and a vendor planned to bring them to the distros list on
>>> September 30 with public disclosure on October 6.  Unfortunately, the
>>> information leaked prematurely and thus Simone decided on full public
>>> disclosure today at 20:00 UTC pre-announcing it only 2 hours in advance.
>> Once it was learned that the information was leaked, the vendors suggested
>> ending the embargo today, and both evilsocket & OpenPrinting agreed to it,
>> with the coordinated end at 20:00 UTC.
> Thanks Alan!  On Twitter, Alan further clarified that "once it was clear
> the info was out there, the distro makers wanted to end the embargo so
> they could publish advisories telling users to disable cups-browsed
> instead of waiting for patches to be available - those with VINCE access
> had hours of prior notice, not just two."
>
> I apologize to Simone for the unnecessary and wrong guess on whose
> decision it was.  I didn't have that information and shouldn't have
> included a guess.
>
>> OpenPrinting has started publishing fixes as well now:
>>
>> CVE-2024-47175: https://github.com/OpenPrinting/libppd/commit/d681747ebf
>> CVE-2024-47076:
>> https://github.com/OpenPrinting/libcupsfilters/commit/95576ec3
>>
>> and a temporary workaround for CVE-2024-47176 in:
>> https://github.com/OpenPrinting/cups-browsed/commit/1debe6b140c
> Thanks.  I guess also this from a few days ago? -
>
> https://github.com/OpenPrinting/cups/commit/8361420cbbfa2e729545c4c537c49fc6322c9631
>
> "Escape localized strings in PPDs", which is similar to the last hunk in
> "Prevent PPD generation based on invalid IPP response" CVE-2024-47175
> libppd commit referenced by Alan above.
>
> Possibly unrelated to today's disclosure but also security-relevant is:
>
> https://github.com/OpenPrinting/cups/commit/e3467edf3be2d20a022495d9726a741e36768caf
>
> "Update httpConnectURI to do X.509 pinning, and use it when doing the IPP"
>
> Zdenek, I hope you will soon clarify which commits fix what issues, to
> assist with distro backports.  I understand you're still busy getting
> these in now and it's probably night time for you, so follow up when you
> have a moment later, please.
>
> Thanks,
>
> Alexander
>
-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

