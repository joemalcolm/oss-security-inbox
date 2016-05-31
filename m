X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1338" "Tuesday" "31" "May" "2016" "08:56:55" "-0500" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1605310854360.4552@freddy.simplesystems.org>" "34" "Re: [oss-security] Security issues addressed in GraphicsMagick SVG reader" "^cc:" nil nil "5" "2016053113:56:55" "[oss-security] Security issues addressed in GraphicsMagick SVG reader" (number mark "        bfriesen@sim May 31   34/1338  " thread-indent "\"Re: [oss-security] Security issues addressed in GraphicsMagick SVG reader\"\n") "<20160531110944.58e24e2c@redhat.com>" ("<alpine.GSO.2.20.1605270933490.4552@freddy.simplesystems.org>" "<20160531110944.58e24e2c@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5553 invoked by uid 550); 31 May 2016 13:57:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5532 invoked from network); 31 May 2016 13:57:09 -0000
X-X-Sender: bfriesen@freddy.simplesystems.org
In-Reply-To: <20160531110944.58e24e2c@redhat.com>
Message-ID: <alpine.GSO.2.20.1605310854360.4552@freddy.simplesystems.org>
References: <alpine.GSO.2.20.1605270933490.4552@freddy.simplesystems.org> <20160531110944.58e24e2c@redhat.com>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Tue, 31 May 2016 08:56:57 -0500 (CDT)
cc: oss-security@lists.openwall.com
Date: Tue, 31 May 2016 08:56:55 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Security issues addressed in GraphicsMagick SVG
 reader
To: Stefan Cornelius <scorneli@redhat.com>

On Tue, 31 May 2016, Stefan Cornelius wrote:

> On Fri, 27 May 2016 09:37:38 -0500 (CDT)
> Bob Friesenhahn <bfriesen@simple.dallas.tx.us> wrote:
>
>> ===========================================
>> SVG Security Improvements in GraphicsMagick
>> ===========================================
>>
>> This is a summary of security improvements made to development
>> GraphicsMagick's SVG reader since the 1.3.23 release.  These
>> improvements were made in response to fuzz testing by Gustavo Grieco
>> (using Quickfuzz) which and which resulted in CVE-2016-2317 and
>> CVE-2016-2318.  We are thankful that Gustavo has been willing to
>> continue fuzz testing as improvements have been made.
>
> Hi,
>
> I'm curious, are these the CVEs for the issues that still have an
> outstanding CVE request at http://seclists.org/oss-sec/2016/q2/180 - or
> are they completely unrelated?
>
> (If they are indeed the same/related, can you give more details about
> the exact mapping?)

Gustavo Grieco's CVE request regarding DoS is completely unrelated to 
the listed CVEs (CVE-2016-2317/CVE-2016-2318).  Regardless, fixes were 
made for these two issues as well and are included in the release.

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
