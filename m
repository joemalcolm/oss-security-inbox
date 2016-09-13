X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1358" "Tuesday" "13" "September" "2016" "14:57:01" "-0500" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1609131447570.990@freddy.simplesystems.org>" "34" "Re: [oss-security] libxml with CGI fix" nil nil nil "9" "2016091319:57:01" "[oss-security] libxml with CGI fix" (number mark "U       bfriesen@sim Sep 13   34/1358  " thread-indent "\"Re: [oss-security] libxml with CGI fix\"\n") "<CAFHDqJPkKJSrLp-oOdb5f94rU2yeuDrNM+MTmSn+hNz-+SqbeA@mail.gmail.com>" ("<CAFHDqJPkKJSrLp-oOdb5f94rU2yeuDrNM+MTmSn+hNz-+SqbeA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11513 invoked by uid 550); 13 Sep 2016 19:57:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11493 invoked from network); 13 Sep 2016 19:57:13 -0000
Date: Tue, 13 Sep 2016 14:57:01 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
X-X-Sender: bfriesen@freddy.simplesystems.org
To: oss-security@lists.openwall.com
In-Reply-To: <CAFHDqJPkKJSrLp-oOdb5f94rU2yeuDrNM+MTmSn+hNz-+SqbeA@mail.gmail.com>
Message-ID: <alpine.GSO.2.20.1609131447570.990@freddy.simplesystems.org>
References: <CAFHDqJPkKJSrLp-oOdb5f94rU2yeuDrNM+MTmSn+hNz-+SqbeA@mail.gmail.com>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="-559023410-1485563912-1473796621=:990"
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Tue, 13 Sep 2016 14:57:01 -0500 (CDT)
Subject: Re: [oss-security] libxml with CGI fix

---559023410-1485563912-1473796621=:990
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8BIT

On Tue, 13 Sep 2016, watashiwaher wrote:

> Hi, huys! There is a known httpoxy vulnerability ( https://httpoxy.org/ ).
> There is a problem with CGI usage in all application which use libxml2
> library. Attacker can make requests via attacker proxy from target server
> using this vulnerability. I reported this problem in the 5th august, but
> developers didn't reply me at all, and I don't know if they want to
> response.

The referenced web site provides the advice "Do it “at the edge”, 
where HTTP requests first enter your system.".  In this case libxml2 
is not the edge.  The edge is the parser which accepts the CGI 
requests.

Adding detection of "REQUEST_METHOD" to libxml2 may reduce the 
potential menace.

The libxml2 developers should have responded to you but I can see why 
they would not consider this to be their problem.

If you break libxml2 support for HTTP_PROXY (and/or http_proxy) then 
the proxy capabilty can't be used outside of CGI applications, which 
is likely to break existing valid uses.

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
---559023410-1485563912-1473796621=:990--
