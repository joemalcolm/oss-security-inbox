X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1225" "Wednesday" "3" "May" "2017" "16:42:25" "-0500" "Sam Pizzey" "sam@pizzey.me" "<2e47f3de-a154-ff6d-a596-6c7766a96e34@pizzey.me>" "37" "Re: [oss-security] [white-paper] Pwning PHP mail() function For Fun And RCE (ver 1.0)" "^Date:" nil nil "5" "2017050321:42:25" "[oss-security] [white-paper] Pwning PHP mail() function For Fun And RCE (ver 1.0)" (number mark "        sam@pizzey.m May  3   37/1225  " thread-indent "\"Re: [oss-security] [white-paper] Pwning PHP mail() function For Fun And RCE (ver 1.0)\"\n") "<CADSYzstfctEZTo4GKGR-H2WXC3kZRSAj7sj7ZHCAu9C7Ff5BYw@mail.gmail.com>" ("<CADSYzstfctEZTo4GKGR-H2WXC3kZRSAj7sj7ZHCAu9C7Ff5BYw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3381 invoked by uid 550); 4 May 2017 06:31:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22049 invoked from network); 3 May 2017 21:42:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pizzey-me.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding;
        bh=w82W7JJTmIuZ2/IKY49jd8tZAoOoHpb955MD2uY//AY=;
        b=CXzKLowuNEI9zim41GZylfiNlLkuoK0Gam9ZAhSckRQcwcs3MeVznDV5p+cA+ArOdu
         CVdJPSmCvKVodWz9weamTcork0Y/CcJkHjd1FAnT6xL5VsH2PKlcNtohx0XG4DJNyj1g
         RzUBtQQh8Egjzu5r/3DXqGd869VPZmfWimh+1CGTdVInSgXJLlAd8dHRgi/ZT8PAIMJv
         ta3C1lQn2XOy1jO6/wdJVgIZye1cDTtS4I6Oq7My0C+pJLULnBWLHBTzM0ZARnQ2IO6q
         nIxVOwRspo56Flgk22WbbEYvM33QSMrh5uEMEUuAV4iMCysGKT83T4Tw5MPmyENf8LMt
         BpBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding;
        bh=w82W7JJTmIuZ2/IKY49jd8tZAoOoHpb955MD2uY//AY=;
        b=ZRjy1URoB3yy6LaJHtSThmmtgXmq9AREQ+knfKETlT7T0uH8jILqf9En6lRpfutpYi
         hUhfgfBM2UWo39w3e+VA80uGq3lEqAi9QA5yPgSyrsHMmond+wcIlSDCEHga/fxhyvgi
         YqU8J87vjvVI2rtOkIx5dZVX9CTok4r0AnnX1SKIYfqameB96TRBh457NPt8bvuQuWJ4
         VxyEukKTXzsAnf/wEP6LtzwDOrjuVLQn/w+TeOpRoqijFZq2Lasi5XzrZKfEH0akh78E
         e6rbgJQCKX8GXOM1VqyHgs33HoncMEizhK0RlwrkROqLybx89jO08jfSC1tE/NoxgEuK
         alfg==
X-Gm-Message-State: AN3rC/7vXwO4J/SoRf8RpRTk+6WKCg+h7O7/kJU6f7+DaHM3gODlmtlo
	uTfnOCEQ53L9PCfI3sY=
X-Received: by 10.107.136.204 with SMTP id s73mr9672890ioi.224.1493847751762;
        Wed, 03 May 2017 14:42:31 -0700 (PDT)
References: <CADSYzstfctEZTo4GKGR-H2WXC3kZRSAj7sj7ZHCAu9C7Ff5BYw@mail.gmail.com>
Message-ID: <2e47f3de-a154-ff6d-a596-6c7766a96e34@pizzey.me>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
 Gecko/20100101 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <CADSYzstfctEZTo4GKGR-H2WXC3kZRSAj7sj7ZHCAu9C7Ff5BYw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Date: Wed, 3 May 2017 16:42:25 -0500
From: Sam Pizzey <sam@pizzey.me>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] [white-paper] Pwning PHP mail() function For Fun
 And RCE (ver 1.0)
To: oss-security@lists.openwall.com

Looks good! Especially the Exim RCE technique which I now need to go 
play with.

However:

'Also note that the output log file contains a lot of debug information
added by Sendmail MTA. This might'

Might ..?

On 03/05/2017 15:32, Dawid Golunski wrote:
> Here's a paper I wrote back in December.  It was originally meant to go
> into Phrack but the team wanted a more general article on parameter injection
> as mail() was supposedly an outdated technique.
> Meanwhile, the RCE-chain continues :) So I decided to post it as it is without
> changing it as mail() injection deserves a separate article imho.
>
> https://exploitbox.io/paper/Pwning-PHP-Mail-Function-For-Fun-And-RCE.html
>
> I reveal some exim code-execution vectors in there that should change
> the whole game slightly :)
>
> See my exploit for WordPress Core that is based on it:
> https://exploitbox.io/vuln/WordPress-Exploit-4-6-RCE-CODE-EXEC-CVE-2016-10033.html
>
>
> I'll attach copies of the white-paper here in the next revision as I
> haven't slept for 3 nights and need to double check on everything
> before it goes into the archive forever :)
>
>
> Regards,
> Dawid Golunski
> https://legalhackers.com
> https://ExploitBox.io
> t: @dawid_golunski

