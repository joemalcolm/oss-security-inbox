X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["807" "Friday" "22" "May" "2020" "05:54:43" "-0700" "Michal Zalewski" "lcamtuf@coredump.cx" "<CALx_OUDHZ3d9few45oqj9WTw4vEj47LF-AiJBX3GnCVHYjyAyw@mail.gmail.com>" "18" "Re: [oss-security] Short notes on qmail security guarantee" "^Date:" nil nil "5" "2020052212:54:43" "[oss-security] Short notes on qmail security guarantee" (number mark "        lcamtuf@core May 22   18/807   " thread-indent "\"Re: [oss-security] Short notes on qmail security guarantee\"\n") "<20200522121750.GA24868@openwall.com>" ("<CAGUWgD8s3DtM6sG9Pj478H06G_evwPsF49pK5Cig0VUHY_mrQg@mail.gmail.com>" "<20200522121750.GA24868@openwall.com>") nil nil nil nil nil nil nil "Re: [oss-security] Short notes on qmail security guarantee" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21880 invoked by uid 550); 22 May 2020 13:08:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15568 invoked from network); 22 May 2020 12:53:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=coredump-cx.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=rGFx5Wee/HKcsnDQv2Jk7s2RAkAB5/PsyGNSLXfua5w=;
        b=h39iNiizlsW6n2f3G8goZOXWv1NSMVa0zQwThqfMpEe3krctgzeICqEASLIAUABe9S
         csN7WRhO23I3b/kNPSrjFvN43X+ZOpecNcUWpGCm9yvUZl4HsBuycTKOP622kuazltf9
         POL7YnHqRFjZFscBG0835tDy98emGj4iN0RN/VnV955EuPRPCaG3pIsYXgXf7Su2JYbQ
         /u1t/oU4/95kJiG+ESotZ12D4KEiyy1t+QkEXu2isqWtKFd258SCFKirzT6qZs26PX4k
         YxVhPig/YiJGZQonaSk5ljiD1SBZw0vxj0CETMbgsCas9Ap1aKcC4BWT9yLWNnQKVYua
         R48g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=rGFx5Wee/HKcsnDQv2Jk7s2RAkAB5/PsyGNSLXfua5w=;
        b=LW/CY3ojiOF1+z0IIwPvsu/IFbEviuRrD7I93YJnhf15sNd6uFWurl/4tj0+kSaA0I
         xD7jJLyYfjOyXtAhA7UJQ6zC3VGIa9IFEYFf9t7iQeyLi318xbZqbifX3FmJKzzMnShe
         um3Ezj+hs2tzKI07jggSh5PJE3WnGPxhFXhNcTY74DU1IWiryoF84XGovU9DomYW3mS5
         j/leTlERwu8QBck8CLGUIybLGU2K451r1GLm6Iiusf0SyEDjOceSGJK9Q1DIIiR/FQWt
         8jLJCZg+Ld7aUGBHRWLS14zU+GXY+rzQGpkr4IRGbbeYQMc+qz+geJRSkBpLQJsfGVSw
         9lmw==
X-Gm-Message-State: AOAM5323U84CYrcN6nw+C4Wej6JNquWl9t3ZGJOGvY9x89MfNMJRk9Pp
	j//lWdQW0AQoNnjos+c/MAlKyyBhZgfD5bNT4cn9xVQK
X-Google-Smtp-Source: ABdhPJyt4U0f7PyAXknmmqecp4wC6n+s6UVrvWwTJ19Yb8hccyANk7yMF2gQ9oI/j9H1bJkapmqUcoEaK665JVtcSzM=
X-Received: by 2002:a1c:a589:: with SMTP id o131mr6077973wme.50.1590152026614;
 Fri, 22 May 2020 05:53:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAGUWgD8s3DtM6sG9Pj478H06G_evwPsF49pK5Cig0VUHY_mrQg@mail.gmail.com>
 <20200522121750.GA24868@openwall.com>
In-Reply-To: <20200522121750.GA24868@openwall.com>
Message-ID: <CALx_OUDHZ3d9few45oqj9WTw4vEj47LF-AiJBX3GnCVHYjyAyw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Fri, 22 May 2020 05:54:43 -0700
From: Michal Zalewski <lcamtuf@coredump.cx>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Short notes on qmail security guarantee
To: oss-security <oss-security@lists.openwall.com>

>> djb's main argument is that nobody gives a lot of memory
>> to qmail-smtpd (and as djb might missed to all other
>> qmail- components).
>
> The Qualys advisory quotes DJB saying "I run each qmail service under
> softlimit -m12345678", so apparently he did not miss that for his own
> use.  The issue is what recommendation was (not) provided publicly.

I think that's an extremely charitable way of looking at it; it's
perfectly OK to develop software where the security properties of the
code hinge on some non-standard constraints, but then it's
affirmatively on the developer to confirm at runtime that these
constraints are in place. I.e., setrlimit() or test and abort...

Otherwise, you really don't get to blame others, whether there is a
cautionary footnote on page 15 of the README or not.

/mz
