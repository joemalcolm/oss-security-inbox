X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1461" "Monday" "21" "March" "2016" "10:57:51" "-0300" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdSPZ7+z-LGK1PBrmv6ozCVHhNA6XCrQpJc-YR09ickhAA@mail.gmail.com>" "36" "[oss-security] CVE request: Stack exhaustion in libxml2 parsing xml files in recover mode" "^Date:" nil nil "3" "2016032113:57:51" "[oss-security] CVE request: Stack exhaustion in libxml2 parsing xml files in recover mode" (number mark "        gustavo.grie Mar 21   36/1461  " thread-indent "\"[oss-security] CVE request: Stack exhaustion in libxml2 parsing xml files in recover mode\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17817 invoked by uid 550); 21 Mar 2016 13:58:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17799 invoked from network); 21 Mar 2016 13:58:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to;
        bh=d0QQFtRtMgKFIhPJsI+khMTRMX8jqo3HzqKubHb5chs=;
        b=w4txtAER4EMxCFh0a8tMZo8kOBmIzR+dAenPa7nj3wFXGM1IK9Dunfuki7SnA29sQO
         KbbM8Sscj0/w3A65hDdDBFcH4vwI3em6UaJZo1a9wEikaCR5s7FCuIOVsnmmmU1aImsH
         Ils4yZXzdVZfzFdUiM8bTUwuYjMt4lYbk83igu2s32yCF+0seLxKAvktEgdSRREDLcJZ
         r0URdahyvQ5zqwGSOubD934EFEq+7Fv44cxQunFdH61NlvwCk4rb/t6I7iuLyv0ShYIr
         czmqthAXLQddnztFgS0hD339okhEl6uJWXE4+m8coEsHeaaNekAD0urZsODq98tJms7q
         R6Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=d0QQFtRtMgKFIhPJsI+khMTRMX8jqo3HzqKubHb5chs=;
        b=W3ZBaiE+CPOia+AjvvwiYFdQkYN/NGRTAeus7/3U89atEaonYxIuDYECv4liFCBO38
         3XN5+5MHmT2EYog/EPI0F0j9gPrkwHt0vpT195rvWXebsePCdYcP0anVwmY30NlnPLF4
         aASIa9ilNJ2CLfRVkZGKaEv4tNweCj3tcVKiElxuK5XTd/czk90dcYiykyKvdEi6Ourm
         qwkijzZKaP5JqBW5pl3g9Gd6Zxj7OOdBQcB6JwdAZOOtxsPTEr1ZT5Lpl+hjaU/DlnFx
         t25S+khduD7FLOOqA3TdLFFk1xxrdHgJukkfNV9eD3L8I/wUy79ivUZvGHflf4GF4DE7
         puTw==
X-Gm-Message-State: AD7BkJJJB04FabbmL4R46ZfCsrAopNxzDMgqV6p2+Zpq54OSXRxs02ukoyivMm5eTGIHMVsZn2ejYrUJow/TSw==
MIME-Version: 1.0
X-Received: by 10.112.235.71 with SMTP id uk7mr10722693lbc.39.1458568671305;
 Mon, 21 Mar 2016 06:57:51 -0700 (PDT)
Message-ID: <CACn5sdSPZ7+z-LGK1PBrmv6ozCVHhNA6XCrQpJc-YR09ickhAA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11c3c5c288a761052e8f7bd4
Date: Mon, 21 Mar 2016 10:57:51 -0300
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: Stack exhaustion in libxml2 parsing xml files in recover mode
To: oss-security@lists.openwall.com

--001a11c3c5c288a761052e8f7bd4
Content-Type: text/plain; charset=UTF-8

Hello,

We found a denegation of service parsing a specially crafted xml in libxml2
if recover mode is used. It was reported to the libxml2 bug tracker some
time ago but the maintainers are quite busy, so they haven't fixed it.

$ gdb --args xmllint --recover no-recover.xml
...
Program received signal SIGSEGV, Segmentation fault.
_int_malloc (av=0x7ffff7826760 <main_arena>, bytes=2) at malloc.c:3302
3302    malloc.c: No such file or directory.
(gdb) bt
#0  _int_malloc (av=0x7ffff7826760 <main_arena>, bytes=2) at malloc.c:3302
#1  0x00007ffff74ea7b0 in __GI___libc_malloc (bytes=2) at malloc.c:2891
#2  0x00007ffff78d9c19 in xmlStrndup__internal_alias (cur=0x555556888570
"b", len=1) at ../../xmlstring.c:45
#3  0x00007ffff7882800 in xmlNewReference__internal_alias
(doc=doc@entry=0x55555577c000,
name=name@entry=0x555556888570 "b") at ../../tree.c:2609
#4  0x00007ffff78856f7 in xmlStringGetNodeList__internal_alias
(doc=doc@entry=0x55555577c000, value=<optimized out>) at ../../tree.c:1583
#5  0x00007ffff788592c in xmlStringGetNodeList__internal_alias
(doc=doc@entry=0x55555577c000, value=<optimized out>) at ../../tree.c:1591
#6  0x00007ffff788592c in xmlStringGetNodeList__internal_alias
(doc=doc@entry=0x55555577c000, value=<optimized out>) at ../../tree.c:1591
....

A reproducer is available upon request. Please assign a CVE.

Regards,
Gus.

--001a11c3c5c288a761052e8f7bd4--
