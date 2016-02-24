X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["865" "Wednesday" "24" "February" "2016" "14:08:27" "-0500" "=?UTF-8?B?RmVybmFuZG8gTXXDsW96?=" "fernando@null-life.com" "<CAEr-gPHk8Q5dSh1rOmKiGEQ97X=JrAypPcVvv+NrzReuOHMoyg@mail.gmail.com>" "26" "[oss-security] CVE Request: bash-completion: dequote command injection" "^Date:" nil nil "2" "2016022419:08:27" "[oss-security] CVE Request: bash-completion: dequote command injection" (number mark "        fernando@nul Feb 24   26/865   " thread-indent "\"[oss-security] CVE Request: bash-completion: dequote command injection\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31791 invoked by uid 550); 24 Feb 2016 19:08:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31767 invoked from network); 24 Feb 2016 19:08:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=null-life-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:date:message-id:subject:from:to:content-type
         :content-transfer-encoding;
        bh=j3qMgbqoJj2+wM/lTl51B9fFeM64RHTnayJAGlpGzUY=;
        b=SH0YxIa3mqUPlqMd8DA6SR4ZjG3v3VKjVD0YSA7vXSWWTvXn3MVEFe7+34IqqBR8Br
         lwzTvWnVBGvd1vBdHecBU29zb3JSJUONqsFXFfuXD4wgA2xvzuweR66npo9vOOx8JXnQ
         zdowAeCHE0axnf7iYzM1566x2UPqpVUERlU8sJk0v4kAgsRAqMokOha4rbuNcoRRjB6O
         XWBqBxTWeTwRykwW8lxbzbp/g+W5F8FEz6BmhYeOITHvzzN96y01cd7pLuBcvJtAO5MX
         C7hp/6j3EibWaLKeEuQII7HRBd1b41mN2MZSb8PnqU8hR6MvFJX+vMfkxT18Ncl0bUV/
         X7jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type:content-transfer-encoding;
        bh=j3qMgbqoJj2+wM/lTl51B9fFeM64RHTnayJAGlpGzUY=;
        b=X+7/yFRknlDFFKAp2uZM0isHiotsZWlLQO/64qqyqcMp5iRSBUWFwjpG8SqrY2FPKk
         +jCXrDIE6/SJV6q8nt/qnbDW3yN1Eyu2pIhpdEUMJML8VME9m2pWUYEkbEOFV7Rt75c9
         cSz+LdB+ufprkBxbF1gAssdxxDl+sVQ4I/EFtgZM3lr5AzQusFD5C8Rm4vxA6Tn6ASKR
         ZpA9aAWRq4aF1FMjrdiqq5e8x0ipl40KGov4i+pXS43V6uPeE59Xzq3HyWF0oJRqbQj1
         2tNercsEFjnAa2L17qojrisq+Q8nS41V8ZUn47YNVepTYHC3S//ovjFsVkTVmZAQxhAE
         WdEQ==
X-Gm-Message-State: AG10YOSBw1LshZ2+cHakjHrd9nZo94pq8iCpc3w2BjC02H2nr/GItQlg8Ka76o69LlpaBONtO1JLnUjxq5D0kQ==
MIME-Version: 1.0
X-Received: by 10.31.12.3 with SMTP id 3mr30540106vkm.28.1456340907660; Wed,
 24 Feb 2016 11:08:27 -0800 (PST)
X-Originating-IP: [190.171.87.217]
Message-ID: <CAEr-gPHk8Q5dSh1rOmKiGEQ97X=JrAypPcVvv+NrzReuOHMoyg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 24 Feb 2016 14:08:27 -0500
From: =?UTF-8?Q?Fernando_Mu=C3=B1oz?= <fernando@null-life.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: bash-completion: dequote command injection
To: oss-security@lists.openwall.com

Marcelo Echeverria and Fernando Mu=C3=B1oz discovered that the dequote
function included in bash-completion allows to execute arbitrary
commands since it uses the eval function to call printf and perform
the actual dequoting. bash-completion is included on Debian, Ubuntu
OpenSuse [1] and probably other distros.

# type dequote
dequote is a function
dequote()
{
    eval printf %s "$1" 2> /dev/null
}

# dequote ';id'
uid=3D0(root) gid=3D0(root) groups=3D0(root)

- Issue reported to maintainers on 24/02/2016 [2]

While researching we noted that this security problem was first
identified on 2014 [3] however nobody reported the issue to
bash-completion at that time.


[1] https://lists.gnu.org/archive/html/bug-bash/2014-04/msg00057.html
[2] https://github.com/scop/bash-completion/issues/6
[3] https://lists.gnu.org/archive/html/bug-bash/2014-04/msg00058.html
