Received: (qmail 21736 invoked by uid 550); 13 Jul 2024 11:59:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28353 invoked from network); 12 Jul 2024 23:15:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720826110; x=1721430910; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:references:subject:to
         :mime-version:user-agent:reply-to:from:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HNNHo9146C/1yvCGLFoxKFpsYwHeEZeE0QwnIXR/4hM=;
        b=TZwDMwc8YKG5qaM/JjF8ldn71Ry/OZ7StMChBXpnR5tUo0V8HDiHlHqmTok4WamfDI
         ac20h1WrwaasAgQqIsYVZliWKWHhOk953pEjv2WdmTDSZMTGR+53atJd0DjORN5G3na2
         /C9F0JqOn3lrMsv1AeEcyWn19Ad2Bpx5Fa3GOzGk/G1T7XagCit/d5RLcroAKTxFeQhw
         iyZJiU5yA5HxGtN33f1cXpjCiPh3sCre4GtV9oEijdHTqjZjWvcFmrmG7jsxWS52ga2T
         0XEzs0UARTFWw4k6ZXuY6tN/nj7JUR5mvlJ7XLOz702NTxTHjxaUke+0vY7XRWjqJr5P
         otfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720826110; x=1721430910;
        h=content-transfer-encoding:in-reply-to:references:subject:to
         :mime-version:user-agent:reply-to:from:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HNNHo9146C/1yvCGLFoxKFpsYwHeEZeE0QwnIXR/4hM=;
        b=qU9BSarh659I/7m4895LFEXRMuhGRcv8mNKDTF3yQvRDCLROnavGZYsnO7LNcOFOJH
         DdnH8RZSO/+CJdXwErw+jRngwu2lCrkzf/0g8PeEGnv+eOEL89+mP7cBuCnxXUvjL1ht
         3ojZAVXSA9coWvGW+VRyuee84H3+pYD2NnV1KKwD1Sn/nM4rjt/C46IpbJiBKGUjUp2h
         jY1l6wCr1MDYWrXnltzAznX3DIeMoo4fXDtnii4TTfnFRe7rFwrwr23RoAShO991xcZq
         N5Srk7FZeLHl7agnR2iQqGq96LXWc2kf9qKm+GJ1jiIdt9kIFUGB/OtXnJlUteS8Unaz
         cSIw==
X-Gm-Message-State: AOJu0Ywwo9Mb7WbvpJaOaqXmgruuuizeIs+9fKNp31UHncia1MlwOByL
	dJypWXnyAR2yHmAJLhqDRqP9HpeklHVyPuUQH0Mk4DkiRcV9SnBbPFofWg==
X-Google-Smtp-Source: AGHT+IGWG0jrdm4NayKi39Fndkdbihw30Pzez+J7XXkiR7glPCVTeO1xRTKlTHGplBzkAxV9lvP5Tw==
X-Received: by 2002:a05:6830:11c2:b0:703:79c6:a9ba with SMTP id 46e09a7af769-70379c6ac98mr11143717a34.7.1720826109793;
        Fri, 12 Jul 2024 16:15:09 -0700 (PDT)
Message-ID: <6691B8FB.1040403@gmail.com>
Date: Fri, 12 Jul 2024 18:15:07 -0500
From: Jacob Bachmeyer <jcb62281@gmail.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.22) Gecko/20090807 SeaMonkey/1.1.17 Mnenhy/0.7.6.0
MIME-Version: 1.0
To: oss-security@lists.openwall.com
References: <CAN_LGv0tC7ef+0BV=m7i_9caO2g+B-SkqENT=w-=uif7ntsqjw@mail.gmail.com>
In-Reply-To: <CAN_LGv0tC7ef+0BV=m7i_9caO2g+B-SkqENT=w-=uif7ntsqjw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] backtrace_symbols() misuse by Ceph and its supposedly-safe
 use

Alexander Patrakov wrote:
> [...]
> What would be a good solution (as in: something that does not convert
> crashes into deadlocks) here? I understand that, after memory
> corruption, we are already in the UB territory, but is there anything
> better possible than what is implemented?

I would suggest a monitor daemon that runs GDB to get the backtrace.  
The simplest way to do this would require Ceph to have its own 
supervisor (not unique; PostgreSQL has long had a "postmaster" process 
that manages the worker "postgres" backend processes) and provide each 
daemon with a pipe back to the supervisor; the fatal error handler need 
only write(2) to the pipe from a static string and/or fixed buffer (to 
report a signal number) and then enter an infinite loop; the supervisor 
then kills the crashed process, possibly after attaching GDB and 
collecting a backtrace.

Alternately, simply run the Ceph daemons with `ulimit -c` nonzero and 
collect the core files.  The core files can be analyzed using GDB after 
the fact.  No dedicated supervisor needed here, only kernel facilities.

The central problem here, as I understand it, is trying to do too much 
in a process that has gone into undefined behavior.  Attaching GDB or 
dumping a core file both sidestep that problem.


-- Jacob

