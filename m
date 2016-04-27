X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1105" "Wednesday" "27" "April" "2016" "16:54:41" "-0500" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1604271646030.9720@freddy.simplesystems.org>" "29" "Re: [oss-security] 3 bugs refer to buffer overflow in in libtiff 4.0.6" nil nil nil "4" "2016042721:54:41" "[oss-security] 3 bugs refer to buffer overflow in in libtiff 4.0.6" (number mark "U       bfriesen@sim Apr 27   29/1105  " thread-indent "\"Re: [oss-security] 3 bugs refer to buffer overflow in in libtiff 4.0.6\"\n") "<CABfY0L3+qV-Q_L2awb-PSXzy=fPWyQFMkZwfbjHSXyxCkfrEbA@mail.gmail.com>" ("<tencent_62222EFF74B667984E9F8E5B@qq.com>" "<CABfY0L3+qV-Q_L2awb-PSXzy=fPWyQFMkZwfbjHSXyxCkfrEbA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5413 invoked by uid 550); 27 Apr 2016 21:54:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5395 invoked from network); 27 Apr 2016 21:54:53 -0000
Date: Wed, 27 Apr 2016 16:54:41 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
X-X-Sender: bfriesen@freddy.simplesystems.org
To: oss-security@lists.openwall.com
In-Reply-To: <CABfY0L3+qV-Q_L2awb-PSXzy=fPWyQFMkZwfbjHSXyxCkfrEbA@mail.gmail.com>
Message-ID: <alpine.GSO.2.20.1604271646030.9720@freddy.simplesystems.org>
References: <tencent_62222EFF74B667984E9F8E5B@qq.com> <CABfY0L3+qV-Q_L2awb-PSXzy=fPWyQFMkZwfbjHSXyxCkfrEbA@mail.gmail.com>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Wed, 27 Apr 2016 16:54:41 -0500 (CDT)
Subject: Re: [oss-security] 3 bugs refer to buffer overflow in in libtiff
 4.0.6

On Tue, 26 Apr 2016, Jodie Cunningham wrote:
>>
>> Running each poc file crashes thumbnail and bmp2tiff made with
>> AddressSanitizer in tiff-4.0.6. I have attached poc and log files .
>> ------------------
>> From Debug_Orz
>>
> Is there a patch upstream?

To my knowledge, none of the issues recently posted on this list have 
been addressed yet in libtiff.

It is always our priority to fix issues occuring in libtiff itself 
before addressing issues in the libtiff utilities.  Some of the 
libtiff maintainers care about only a few of the utilities.  We are 
all volunteers and available time is limited.

It is my intention to spend time addressing the libtiff utility issues 
(some of which might be due to issues in core libtiff) once I have 
addressed the remaining CVEs in GraphicsMagick.  Issues appearing to 
be due to problems in libtiff itself will get attention first.

Well-formulated source patches are welcomed for the issues.

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
