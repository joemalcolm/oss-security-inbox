X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2507" "Wednesday" "25" "October" "2017" "09:29:09" "+0100" "Thomas Calderon" "calderon.thomas@gmail.com" "<CA+1ewKZdtF6+ZsXznZP43Tw0ERCV8dHOKd6oTODx2wG7OcLc7w@mail.gmail.com>" "71" "[ oss-security ] CVE-2016-10517: CSRF in redis < 3.2.7" nil nil nil "10" "2017102508:29:09" "[ oss-security ] CVE-2016-10517: CSRF in redis < 3.2.7" (number mark "U       calderon.tho Oct 25   71/2507  " thread-indent "\"[ oss-security ] CVE-2016-10517: CSRF in redis < 3.2.7\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22258 invoked by uid 550); 25 Oct 2017 09:51:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10162 invoked from network); 25 Oct 2017 08:29:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=BK6j6RE7hRrHQOL4WAMZG8QLyxcF3VQo66j5C1TjHaI=;
        b=LGFOKw6vUKMjKV/qDy3MTD2w0UxmQgGv7IdaVW1Go1en5uv84iFj+sAaQLPWQ5w7Q2
         gHClBCo8AQmrjOk4/r/uSwBHL/NB8YqvM9Cxkb8QVGkD/wqEqCK79lbKpmSocCT6Zbxk
         eD8p23gIVRB0VYG1vFhyQAf6nENNrDm9ApjC3QZGSzYS2nI0qvJKK/C5Zd4qT6D0OvcC
         XIBQrw2U2bBZS29Ms35gx8OsdHt0IB9T6KJA0PBO9YyIa/sB3I142+PXVPO7GovkL5+a
         5avPPQIkj9Hr3k4XW/U594626EK+oM9W0CD5eHvqVdHPCr47WhCT9Tmld72ty6dR8jME
         jLWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=BK6j6RE7hRrHQOL4WAMZG8QLyxcF3VQo66j5C1TjHaI=;
        b=Zkr5qNgmCwBf2yQn5OSY/1QPySJw6SIPmTx9QrkzvnnKabqjZqIJ0wi5D1J3zAAbpU
         1x235GfPfWsW9L0ZSPF2yXeHsgj932Lp/D6LoAcXHH1R8zDF2h6sm2hv5MyYIi7qbouP
         PEyc/F83MuKkreNJaagpOZ9iG54kHKawWzAEbuPuWd2ZgvGe3F6SNlGSVTU9MecAZ96N
         tPm04eLP9Qe17WzOdJVnknh6Nr1nsnlAzxMQjLAaxtBotHpF9E36JPwXUNZgNwu+BCLw
         Rv1WWDZ8OkGxH67gwQ8lWagCdJ9OPAHICeprQxAoe68SsY31Gj+xnYyY3xSl5s3lwk8w
         qjdw==
X-Gm-Message-State: AMCzsaXtZExAwdQ4t1aBeb1ZTLScIdAgla6tB+bwjlc+jrLKucNnjiru
	yEndtRgANIIJpr6MGvFK+oDP/M43auk63075uFRE2rVg
X-Google-Smtp-Source: ABhQp+RopYiIi7bCI7tZTEOKwoNmnJv1WC3gFcTYsnEwgqEaKpcM1s114KH0m1dU+zSzm4yxcBFrU74rF6ekB8+x1B8=
X-Received: by 10.157.17.52 with SMTP id g49mr674318ote.187.1508920169475;
 Wed, 25 Oct 2017 01:29:29 -0700 (PDT)
MIME-Version: 1.0
From: Thomas Calderon <calderon.thomas@gmail.com>
Date: Wed, 25 Oct 2017 09:29:09 +0100
Message-ID: <CA+1ewKZdtF6+ZsXznZP43Tw0ERCV8dHOKd6oTODx2wG7OcLc7w@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="001a1140ebf0b23581055c5ada5f"
Subject: [ oss-security ] CVE-2016-10517: CSRF in redis < 3.2.7

--001a1140ebf0b23581055c5ada5f
Content-Type: text/plain; charset="UTF-8"

Hi all,

I have requested a CVE from MITRE for an issue that was present in Redis <
3.2.7.

They have assigned CVE-2016-10517 for the following:

[Suggested description]
Redis before 3.2.7 allows "Cross Protocol Scripting" because it lacks a
check for POST and Host: strings, which are not valid in the Redis protocol
(but commonly occur when an attack triggers an HTTP request to the Redis
TCP port).

------------------------------------------

[Additional Information]
Before Redis 3.2.7 the Host: and POST could be used to process the
remaining pipeline if there are pending commands. Therefore it is possible
to perform a "Cross Scripting" attack, that usually involves trying to feed
Redis with HTTP in order to execute commands. Example: a developer is
running a local copy of Redis for development purposes.  She also runs a
web browser in the same computer. The web browser could send an HTTP
request to http://127.0.0.1:6379 in order to access the Redis instance,
since a specially crafted HTTP request may also be partially valid Redis
protocol. However if POST and Host: break the connection, this problem
should be avoided. IMPORTANT: It is important to realise that it is not
impossible that another way will be found to talk with a localhost Redis
using a Cross Protocol attack not involving sending POST or Host: so this
is only a layer of protection but not a definitive fix for this class of
issues.

------------------------------------------

[Vulnerability Type]
Cross Site Request Forgery (CSRF)

------------------------------------------

[Vendor of Product]
Pivotal Software

------------------------------------------

[Affected Product Code Base]
Redis - <3.2.7

------------------------------------------

[Affected Component]
redis_server

[Attack Vectors]
Have a user that has a local redis instance running browse an attacker
controlled website and perform a DNS rebinding attack in order to POST data
to http://127.0.0.1:6379.


------------------------------------------

[Reference]
https://github.com/antirez/redis/commit/874804da0c014a7d704b3d285aa500098a931f50
https://raw.githubusercontent.com/antirez/redis/3.2/00-RELEASENOTES
https://blog.bugreplay.com/2017/05/for-users-of-redis-running-locally-can-be-dangerous.html
https://www.reddit.com/r/redis/comments/5r8wxn/redis_327_is_out_important_security_fixes_inside/

------------------------------------------

--001a1140ebf0b23581055c5ada5f--
