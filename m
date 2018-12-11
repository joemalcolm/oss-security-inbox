X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1047" "Tuesday" "11" "December" "2018" "13:10:51" "-0800" "Alan Coopersmith" "alan.coopersmith@oracle.com" "<3f060bee-a765-4cd8-e752-e0cdfef5c6f2@oracle.com>" "21" "Re: [oss-security] Multiple telnet.c overflows" "^Date:" nil nil "12" "2018121121:10:51" "[oss-security] Multiple telnet.c overflows" (number mark "        alan.coopers Dec 11   21/1047  " thread-indent "\"Re: [oss-security] Multiple telnet.c overflows\"\n") "<CAG-OieOVQkON9yTYJcKuKGfP5XK5zitz0nTr9+ci71mTZrz-+A@mail.gmail.com>" ("<CAG-OieOVQkON9yTYJcKuKGfP5XK5zitz0nTr9+ci71mTZrz-+A@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12220 invoked by uid 550); 11 Dec 2018 21:11:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12190 invoked from network); 11 Dec 2018 21:11:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=subject : to :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2018-07-02;
 bh=mBXOar6tKNeBiIeelPh/sljAt1lEjJ84amw5W9VJSU0=;
 b=ipU9ra24MFrmVsf9gOCxnQHweBmAZo81Rt9TMIt274gW+HnrJ0D4c1Kkt3TIB//WWQEG
 fBbocZlO5gctEl1fEClojWHpQG6eOctHstcHv/T+2e8GS3sD/hfB3b9kLiJNDxkM1HIN
 7H/VVD/wMwh0Fizw57lnTN8MFcT93LJyi0jvcKrS1YJbnLq/7eKvE8ssb5ToELcSuYYw
 9HNqfy18p8QJSdgdD8kosxTm9tMme3Bk+FXUL9WJAQqxdawFozMbE7G0Q8NfL8E9DLTS
 iUTj4RSgYckI8owC4GCAWE7r9EpU5Sdv7nEe7OMBHZjVlTT1UegfRCVr+W59GZVm8b/x ZA== 
References: <CAG-OieOVQkON9yTYJcKuKGfP5XK5zitz0nTr9+ci71mTZrz-+A@mail.gmail.com>
Message-ID: <3f060bee-a765-4cd8-e752-e0cdfef5c6f2@oracle.com>
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <CAG-OieOVQkON9yTYJcKuKGfP5XK5zitz0nTr9+ci71mTZrz-+A@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9104 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1812110186
Date: Tue, 11 Dec 2018 13:10:51 -0800
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Multiple telnet.c overflows
To: oss-security@lists.openwall.com,
        Hacker Fantastic <hackerfantastic@googlemail.com>

On 12/11/18 10:39 AM, Hacker Fantastic wrote:
> When a telnet server requests environment options the sprintf on line 1002 will
> not perform bounds checking and causes an overflow of stack buffer
> temp[50] defined
> at line 990. This issue can be trivially fixed using a patch to add
> bounds checking
> to sprintf such as with a call to snprintf();

GNU inetutils telnet is a fork of the original BSD telnet code, but most of
the BSD's seem to have already switched to snprintf a while ago:

https://cvsweb.openbsd.org/cgi-bin/cvsweb/src/usr.bin/telnet/telnet.c.diff?r1=1.3&r2=1.4&f=h
https://github.com/freebsd/freebsd/commit/d2f83e4ec488ec62281318b26dad107e65d96d0c#diff-3503402e6a2ad1eb960a4f475f19fb9f

with NetBSD as the outlier:
http://cvsweb.netbsd.org/bsdweb.cgi/src/usr.bin/telnet/telnet.c?rev=1.36&content-type=text/x-cvsweb-markup&only_with_tag=MAIN

illumos also uses snprintf, in the code it inherited from OpenSolaris:
https://github.com/illumos/illumos-gate/blob/master/usr/src/cmd/cmd-inet/usr.bin/telnet/telnet.c#L955

	-alan-
