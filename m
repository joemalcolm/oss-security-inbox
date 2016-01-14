X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3782" "Friday" "15" "January" "2016" "06:41:29" "+1300" "Emmanuel Law" "emmanuel.law@gmail.com" "<CA+KTh2xTqQrn4NebcfB=xVB8xt8oyS8ZVROj6AXKA5ukpv1_5g@mail.gmail.com>" "117" "[oss-security] [CVE Request] Multiple PHP issues" nil nil nil "1" "2016011417:41:29" "[oss-security] [CVE Request] Multiple PHP issues" (number mark "U       emmanuel.law Jan 15  117/3782  " thread-indent "\"[oss-security] [CVE Request] Multiple PHP issues\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1514 invoked by uid 550); 14 Jan 2016 17:41:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1487 invoked from network); 14 Jan 2016 17:41:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:cc:content-type;
        bh=t7YEAPd+oInf4RtGwbh1CIzTKyiXhEGuXphR+yCKRVA=;
        b=f/9oiCvUJ0Xni9XeyK86tZ7WLR/gXpjk0JGQcLbzCzhmWGo5DDAk9HZHXBMkOtYrAd
         Z5UtSLb7neJJnq79GHmVWp59bS41kGW41V/G+euF10/XY9R9Bb1mRehstkxDKi+zuQuX
         ZMxN+nzuRY9A8CXGR82aOJ9yek7AIAMyGPS+1Fek6qjRdmlGukhSrHNF+cE6P66cuVt7
         bOZasa7A2WhJKLQlzIiz/ZtkAWw30UCorG2bpg/WS5zz19VGQcOFme9FluMfhRjhSLYE
         sop3DtYLV6Pg7Y+Z5kx2UfvBX4o93TPelIDX/Py5pZnrm41+GEcXmrxs0p3386nIzwjU
         1W9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to:cc
         :content-type;
        bh=t7YEAPd+oInf4RtGwbh1CIzTKyiXhEGuXphR+yCKRVA=;
        b=fOEq1LA/BtUTn70sxvKol74aq303jsGP/lnwExNeMKJyt+OsASmZziqKXaNHhkHgpv
         VCudDf5coPxGz1m30E4aLl/nionoAuJ82ZohiA24DFJtHnI2xaAAltQmKucV7y7G8qI3
         6TVRHyypKM23smgdroTHMOXlwUT+Wf/WOxJMjjNiFYrAi/xgE5Zz2+U0BNisz4ZVNnhu
         47JlU5+/Z6ZDrAFKJc4yvCNaV6268bhAMfyANvF1de2ECjzby5dLpc7HkspjZYVhME51
         ifGjXBNncrDmtT0gvCB02sAl7CUHqlt/6FL3wNOoMY/KV298SUehxZPJzuS9V9mDCOoQ
         3xew==
X-Gm-Message-State: ALoCoQnSZrDBRMy19DFBAN0xHrqmYfStAA2660BQvkDwlv7Yo2sll2u/hlFcMhP09I3fUPKTyvKnbexgIi5MI3jWQNKePXCxwg==
MIME-Version: 1.0
X-Received: by 10.107.34.79 with SMTP id i76mr6566202ioi.195.1452793289663;
 Thu, 14 Jan 2016 09:41:29 -0800 (PST)
Date: Fri, 15 Jan 2016 06:41:29 +1300
Message-ID: <CA+KTh2xTqQrn4NebcfB=xVB8xt8oyS8ZVROj6AXKA5ukpv1_5g@mail.gmail.com>
From: Emmanuel Law <emmanuel.law@gmail.com>
To: cve-assign@mitre.org, oss-security@lists.openwall.com
Cc: security@php.net
Content-Type: multipart/alternative; boundary=001a11407528f6695705294ecb39
Subject: [oss-security] [CVE Request] Multiple PHP issues

--001a11407528f6695705294ecb39
Content-Type: text/plain; charset=UTF-8

1) Can we assign a CVE to PHP "Memory Read via gdImageRotateInterpolated
Array Index Out of Bounds":

Bug report: https://bugs.php.net/bug.php?id=70976
It is possible to read (almost) arbitrary memory.


2) Also CVE  request for PHP "Heap BufferOver Flow in escapeshell
functions":

Bug report: https://bugs.php.net/bug.php?d=71270
Patch:
https://github.com/php/php-src/commit/2871c70efaaaa0f102557a17c727fd4d5204dd4b

=====Copy and Paste of Original Bug Report ======

- There exist a heap-based buffer over flow that allows one to write a user
tainted data pass an allocated buffer. This vulnerability lies in the
following functions:

escapeshellarg
escapeshellcmd

- On a default php installation, the memory limit is set to 128MB and this
vulnerability is not triggerable. My analysis shows that this is
triggerable when memory limit is roughly > 1024mb. A quick search on github
shows that it's not uncommon to see code like "ini_set('memory_limit', -1);"


-I've created a POC that triggers the buffer over write with
0x414141414141.....

- A string of 1024mb is created and passed into escapeshellarg. "l"
contains the length of this string:

Breakpoint 2, php_escape_shell_arg (str=0x7fffad469028 'A' <repeats 200
times>...) at /home/elaw/php-7.0.0/ext/standard/exec.c:343
343             int x, y = 0, l = (int)strlen(str);

gdb-peda$ print l
$43 = 0x40000000            // 1024mb



-This length "l" is then passed into zend_string_alloc as "4 * l + 2" which
results in an integer overflow:

Temporary breakpoint 3, php_escape_shell_arg (str=0x7fffad000018 'A'
<repeats 200 times>...) at /home/elaw/php-7.0.1/ext/standard/exec.c:348
348             cmd = zend_string_alloc(4 * l + 2, 0); /* worst case */


gdb-peda$ print 4* l + 2
$44 = 0x2   //Overflow

- Stepping into zend_string_alloc to verify the integer overflow. Notice
len=0x2:
zend_string_alloc (persistent=0x0, len=0x2) at
/home/elaw/php-7.0.0/Zend/zend_string.h:121
121             zend_string *ret = (zend_string
*)pemalloc(ZEND_MM_ALIGNED_SIZE(_ZSTR_STRUCT_SIZE(len)), persistent);

- Lets confirm the overflow again in the allocated (zend_string *) cmd.
Notice cmd.len=0x2:
gdb-peda$ p *cmd
$52 = {
  gc = {
    refcount = 0x1,
    u = {
      v = {
        type = 0x6,
        flags = 0x0,
        gc_info = 0x0
      },
      type_info = 0x6
    }
  },
  h = 0x0,
  len = 0x2,
  val = "1"
}



- The loops then writes pass the allocated buffer in

258 for (x = 0, y = 0; x < l; x++) {
....
321       ZSTR_VAL(cmd)[y++] = str[x];



- Verifying the buffer overflow in
gdb-peda$ p (zend_string *)cmd.len
$9 = (zend_string *) 0x2
gdb-peda$ x/100b (zend_string *)cmd.val
0x1625a58:      0x27    0x41    0x41    0x41    0x41    0x41    0x41    0x41
0x1625a60:      0x41    0x41    0x41    0x41    0x41    0x41    0x41    0x41
0x1625a68:      0x41    0x41    0x41    0x41    0x41    0x41    0x41    0x41
0x1625a70:      0x41    0x41    0x41    0x41    0x41    0x41    0x41    0x41
0x1625a78:      0x41    0x41    0x41    0x41    0x41    0x41    0x41    0x41
0x1625a80:      0x41    0x41    0x41    0x41    0x41    0x41    0x41    0x41
0x1625a88:      0x41    0x41    0x41    0x41    0x41    0x41    0x41    0x41
0x1625a90:      0x41    0x41    0x41    0x41    0x41    0x41    0x41    0x41
0x1625a98:      0x41    0x41    0x41    0x41    0x41    0x41    0x41    0x41
0x1625aa0:      0x41    0x41    0x41    0x41    0x41    0x41    0x41    0x41
0x1625aa8:      0x41    0x41    0x41    0x41    0x41    0x41    0x41    0x41
0x1625ab0:      0x41    0x41    0x41    0x41    0x41    0x41    0x41    0x41
0x1625ab8:      0x41    0x41    0x41    0x41


- The vulnerability for php_escape_shell_cmd is identical.

--001a11407528f6695705294ecb39--
