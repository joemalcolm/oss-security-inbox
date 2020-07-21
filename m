X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2161" "Tuesday" "21" "July" "2020" "10:12:44" "+0200" "Casper.Dik@Oracle.COM" "Casper.Dik@Oracle.COM" "<202007210812.06L8Ci5i010126@room101.nl.oracle.com>" "55" "Re: [oss-security] Perl 5.32.0 mishandling of rpath and runpath tokens " "^Date:" nil nil "7" "2020072108:12:44" "[oss-security] Perl 5.32.0 mishandling of rpath and runpath tokens" (number mark "        Casper.Dik@O Jul 21   55/2161  " thread-indent "\"Re: [oss-security] Perl 5.32.0 mishandling of rpath and runpath tokens \"\n") "<CAH8yC8m+ZK9AZcYZ0vrSgSTjGsi1F5=hEX9phvSSxhuMbRDEFg@mail.gmail.com>" ("<CAH8yC8m+ZK9AZcYZ0vrSgSTjGsi1F5=hEX9phvSSxhuMbRDEFg@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Perl 5.32.0 mishandling of rpath and runpath tokens " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9765 invoked by uid 550); 21 Jul 2020 09:34:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3867 invoked from network); 21 Jul 2020 08:16:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : from :
 to : subject : in-reply-to : references : mime-version : content-type :
 date; s=corp-2020-01-29; bh=pQzh5GWdOJbXHGOaVeBNOn9el6mVeBB7ceAEh9X67Ig=;
 b=A6L/mFDuQJIHAFOEahjTQpfLCG+bIrY2GRO8cSsrxPerCFZ8mOxiVvJSsoIvhboUa5SC
 G34o5ZtxcbVgP1V361gqjcPHv97j7rJL5DaNKTUrEQwnPQSZhEafYS5VkNl6vdqBRgks
 avHVQfX/mS1ZEGL9C6MYWGXZ6toF8ZABZlZfwgtoVHONo4enDUe9L49JEgb/DdXTfaZ8
 4OnJmyRW/FLKqMPfNB7OBYevFjJdlFOBECJ/j0VV21+3PRsH0uxvwm3NjlNY2joynBh4
 rWxXuLEynUeVYClVv64DKH5wgvSN5NRN1NJsKDBDCExhu5TSw0Jt4deCN1QgO6Q9rY/o mg== 
Message-Id: <202007210812.06L8Ci5i010126@room101.nl.oracle.com>
In-Reply-To: <CAH8yC8m+ZK9AZcYZ0vrSgSTjGsi1F5=hEX9phvSSxhuMbRDEFg@mail.gmail.com> 
References: <CAH8yC8m+ZK9AZcYZ0vrSgSTjGsi1F5=hEX9phvSSxhuMbRDEFg@mail.gmail.com> 
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9688 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 spamscore=0 adultscore=0
 phishscore=0 mlxscore=0 mlxlogscore=999 suspectscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2007210058
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9688 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 bulkscore=0 adultscore=0
 lowpriorityscore=0 mlxlogscore=999 malwarescore=0 clxscore=1034
 spamscore=0 mlxscore=0 impostorscore=0 phishscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2007210057
Date: Tue, 21 Jul 2020 10:12:44 +0200
From: Casper.Dik@Oracle.COM
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Perl 5.32.0 mishandling of rpath and runpath tokens 
To: oss-security@lists.openwall.com


>Hi Everyone,
>
>Perl mishandles rpath tokens $ORIGIN, $LIB and $PLATFORM. Also see
>https://man7.org/linux/man-pages/man8/ld.so.8.html.
>
>Building on Linux or Solaris with LDFLAGS that includes a rpath or runpath:
>
>    -Wl,-R,$ORIGIN/../lib -Wl,-R,$HOME/tmp/ok2delete/lib
>
>results in a rpath or runpath similar to below (Solaris is shown):
>
>    # From $HOME/perl-5.32.0 directory
>    $ elfdump libperl.so | grep PATH
>    [10]  RUNPATH         0xaf4d
>/../lib:/export/home/jwalton/tmp/ok2delete/lib
>    [11]  RPATH           0xaf4d
>/../lib:/export/home/jwalton/tmp/ok2delete/lib
>
>Now the interesting thing here is, $ORIGIN was expanded to nothing and
>/../lib is just /lib. And Solaris /lib directory contains old
>libraries, like zLib 1.2.8 and Bzip 1.0.6. zLib 1.2.8 and Bzip 1.0.6
>have CVEs against them. So rather than use the new zLib and Bzip in
>$HOME/tmp/ok2delete/lib, Perl uses the old ones with CVEs in /lib.

The current version shipped with Solaris are zlib 1.2.11  and bzip2 1.0.8.


>Perl stated they won't fix the problem. Also see
>https://github.com/Perl/perl5/issues/17534.
>
>The best workarounds I have found is to run patchelf (Linux) or
>editelf (Solaris) on all programs and libraries after 'make' and
>before 'make check', and after 'make check' and before 'make install'.
>The procedure has to happen twice because Perl rebuilds some things
>after 'make', including some shared objects built during 'make check'.

There is another possible solution on Solaris by setting the following 
variables in the environment:

	LD_UNSET="-R/../lib"    (drops -R/../lib; multiple options can be
				 given)

	LD_OPTIONS='-R$ORIGIN/../lib' (multiple options possible here too)

/tmp$  cc foo.c -o foo -R/fuz -R/bar -R/blah
/tmp$ dump -Lv foo | grep RPATH
[5]     RPATH           /fuz:/bar:/blah
/tmp$  LD_OPTIONS=-R/foo/bar LD_UNSET="-R/fuz -R/bar"  cc foo.c -o foo -R/fuz -R/bar -R/blah
ld: warning: unsetting option '-R/fuz': LD_UNSET directed
ld: warning: unsetting option '-R/bar': LD_UNSET directed
/tmp$ dump -Lv foo | grep RPATH                                                 [5]     RPATH           /foo/bar:/blah

Casper

