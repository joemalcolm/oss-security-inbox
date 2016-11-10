X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["832" "Wednesday" "9" "November" "2016" "20:41:09" "-0600" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1611092039190.23214@freddy.simplesystems.org>" "29" "Re: [oss-security] Re: CVE Request: libtiff: heap buffer overflow/read outside of array" nil nil nil "11" "2016111002:41:09" "[oss-security] Re: CVE Request: libtiff: heap buffer overflow/read outside of array" (number mark "U       bfriesen@sim Nov  9   29/832   " thread-indent "\"Re: [oss-security] Re: CVE Request: libtiff: heap buffer overflow/read outside of array\"\n") "<20161110015757.20558.28D1CED1@matica.foolinux.mooo.com>" ("<CANMVOuwRRcEG2Vs0DTck_kbUjiNBQwGD6G24kj5mb0wGDUEGgw@mail.gmail.com>" "<20161110015757.20558.28D1CED1@matica.foolinux.mooo.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9308 invoked by uid 550); 10 Nov 2016 02:41:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9284 invoked from network); 10 Nov 2016 02:41:21 -0000
Date: Wed, 9 Nov 2016 20:41:09 -0600 (CST)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
X-X-Sender: bfriesen@freddy.simplesystems.org
To: oss-security@lists.openwall.com
In-Reply-To: <20161110015757.20558.28D1CED1@matica.foolinux.mooo.com>
Message-ID: <alpine.GSO.2.20.1611092039190.23214@freddy.simplesystems.org>
References: <CANMVOuwRRcEG2Vs0DTck_kbUjiNBQwGD6G24kj5mb0wGDUEGgw@mail.gmail.com> <20161110015757.20558.28D1CED1@matica.foolinux.mooo.com>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Wed, 09 Nov 2016 20:41:09 -0600 (CST)
Subject: Re: [oss-security] Re: CVE Request: libtiff: heap buffer overflow/read
 outside of array

On Wed, 9 Nov 2016, Ian Zimmerman wrote:

> On 2016-11-09 17:32, Brian 'geeknik' Carpenter wrote:
>
>> http://bugzilla.maptools.org/show_bug.cgi?id=2587
>> Fixed per
>>>> 2016-11-10 Even Rouault <even.rouault at spatialys.com>
>
> I tried to check out the sources to patch this for myself, following the
> recipe from the webpage:

At the moment, "the web page" should be one of:

  	http://www.simplesystems.org/libtiff/
  	http://libtiff.maptools.org/

And this is the description of how to obtain files from CVS:

export CVSROOT=:pserver:cvsanon@cvs.maptools.org:/cvs/maptools/cvsroot
cvs login
(use empty password)
cvs checkout libtiff
to get the stable libtiff code

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
