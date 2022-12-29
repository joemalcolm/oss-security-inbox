Received: (qmail 1681 invoked by uid 550); 29 Dec 2022 20:45:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32059 invoked from network); 29 Dec 2022 20:43:14 -0000
Date: Thu, 29 Dec 2022 21:43:00 +0100
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20221229204300.ehvPd%steffen@sdaoden.eu>
In-Reply-To: <CAH8yC8=p9a71AohbLtKGzb8d8yzBYyCADUJ1xthddQsyFbdSRA@mail.gmail.com>
References: <Y6SJDbKBk471KE4k@p183> <Y6TUJcr/IHrsTE0W@codewreck.org>
 <1a1963aa1036ba07@orthanc.ca> <20221228152458.6xyksrxunukjrtzx@mutt-hbsd>
 <Y6xzIR9P+a6uaaEx@itl-email>
 <b31213da-5ea2-d1f8-dcb2-2917b787ce89@oracle.com>
 <90735C03-0C34-49ED-A79A-EC0165C274CC@dwheeler.com>
 <CAH8yC8=p9a71AohbLtKGzb8d8yzBYyCADUJ1xthddQsyFbdSRA@mail.gmail.com>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.24-383-g2889cb06b9
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Subject: Re: [oss-security] [patch] proc.5: tell how to parse
 /proc/*/stat correctly

Jeffrey Walton wrote in
 <CAH8yC8=p9a71AohbLtKGzb8d8yzBYyCADUJ1xthddQsyFbdSRA@mail.gmail.com>:
 ...
 |Using \0 as the delimiter would still require encoding of \0 when it
 |is present in the data.

But it is already used in some files like /proc/self/environ. 
'Just thinking, it would be the (here optional) .nul suffix that
is new.  (It of course cannot happen in the C-style strings of
which all this is about.  For serialization of true non-humanized
binary data "as-is", yes.  I surely would go CBOR then.  Though
the libcbor that i track is a huge beast, it surely can be much
smaller than that.)

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
