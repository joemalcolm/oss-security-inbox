X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["851" "Tuesday" "31" "August" "2021" "17:37:55" "+0200" "Daniel Bevenius" "dbeveniu@redhat.com" nil "26" "[oss-security] Fwd: Node.js security updates for versions 12.x, and 14.x releases lines, August 31 2021" nil nil nil "8" nil nil (number mark "U       dbeveniu@red Aug 31   26/851   " thread-indent "\"[oss-security] Fwd: Node.js security updates for versions 12.x, and 14.x releases lines, August 31 2021\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Fwd: Node.js security updates for versions 12.x, and 14.x releases lines, August 31 2021" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5162 invoked by uid 550); 31 Aug 2021 16:17:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20471 invoked from network); 31 Aug 2021 15:38:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630424290;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=xb+68TrOHH0fSahAnGN2uTb+4JH9WV++RUxg1luNxec=;
	b=bPkIZjoX+mVW8Q3zVwib+clwroJQVf8HPQApzBTy2Mzi6ajkrzIlQwGrI1nWg5YbhvwY8m
	SaJ+Q2/86TU6vsebiZGJi6GKAY+hIybfFgld3m20lw5LeMXN6cHtHYp+S5bUFPYNIFqWL/
	pUUOAlWDEbBQaMUetRZC2Q77l9CadHw=
X-MC-Unique: DmbEl13yMy-Lbt-OxZdgVQ-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=xb+68TrOHH0fSahAnGN2uTb+4JH9WV++RUxg1luNxec=;
        b=rsxKPR3hCytIP2KrymT17u+c3eztJeENGruWSWeV5M1zVQadwSB6wdDOK4zVYRGcBx
         zF7z+lqLkoJ92wq7u9zfB5oMSsHVd6CyShhpCChk8EIVCvOb5FH8LDgMy4xgQdWNBQ9B
         +hcCY3xllysTUHfeScZQgZ2VTe40BLVI35DCB9dVlWIpCkjpa++oRksPmQykQArJNRIP
         dWLj4uttEXot4rqI7IzX/CjFG//eKo+NFM1l2gfcASbrPer2gCoSNrDs+E3u749aOH91
         XvEwcESWwJ1t1BSVCpUoIvkjuMRFtsC5wcg6b/Ob1trSGOsfiztDd7ApH6zqMr9y8GWp
         SP7A==
X-Gm-Message-State: AOAM532NIV+3pggnlvxjok5DJ97MfP+vnA/LOH29uVzwHtDKxP0QxO+o
	119lWXpQ+WhgRLpjiJeNHsk717MW3gtbYC/2m1qtDg9jLKLMz9kqCpGLc+yJX1wkVs2GS8d2x/z
	+t6BYgxVk8TGEOE1/G180GU4380DZfbBkcqFmq5w039bE
X-Received: by 2002:a17:906:ce24:: with SMTP id sd4mr31204108ejb.329.1630424286374;
        Tue, 31 Aug 2021 08:38:06 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxfYLjeF22KveZdnTl1LRrI/tK/Sr4xH1OfTqLYsaHvLoZaJu/NZ4U9Qn6F+J4VN0jd1VSgtZp9vFRUJbhQh9s=
X-Received: by 2002:a17:906:ce24:: with SMTP id sd4mr31204090ejb.329.1630424286126;
 Tue, 31 Aug 2021 08:38:06 -0700 (PDT)
MIME-Version: 1.0
References: <33aabbe7-ef8d-49ef-b5b1-fa1bfd40d07bn@googlegroups.com> <d2b6592b-c7e0-43ed-8f14-9eb07b8077ecn@googlegroups.com>
In-Reply-To: <d2b6592b-c7e0-43ed-8f14-9eb07b8077ecn@googlegroups.com>
From: Daniel Bevenius <dbeveniu@redhat.com>
Date: Tue, 31 Aug 2021 17:37:55 +0200
Message-ID: <CA+4-CWyqf=PE5S6pYVctCUoyq8rNi+odqg2YnS7aF5ADbu+kTw@mail.gmail.com>
To: oss-security@lists.openwall.com
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=dbeveniu@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="0000000000006888ed05cadcbc08"
Subject: [oss-security] Fwd: Node.js security updates for versions 12.x, and 14.x releases
 lines, August 31 2021

--0000000000006888ed05cadcbc08
Content-Type: text/plain; charset="UTF-8"

---------- Forwarded message ---------
From: Daniel Bevenius <dbeveniu@redhat.com>
Date: Tue, Aug 31, 2021 at 5:36 PM
Subject: Re: Node.js security updates for versions 12.x, and 14.x releases
lines, August 31 2021
To: nodejs-sec <nodejs-sec@googlegroups.com>


The Node.js project has now released new versions of v14, and v12 release
lines.
For more information see:
https://nodejs.org/en/blog/vulnerability/aug-2021-security-releases2/

On Friday, August 27, 2021 at 7:58:18 AM UTC+2 Daniel Bevenius wrote:

> The Node.js project will release new versions of 12.x, and 14.x releases
> lines on or shortly after Tuesday August 31th, 2021.
> For more information see:
> https://nodejs.org/en/blog/vulnerability/aug-2021-security-releases2
>

--0000000000006888ed05cadcbc08--

