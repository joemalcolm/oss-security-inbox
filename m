X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1131" "Sunday" "4" "October" "2015" "18:36:48" "+0200" "Jean-Baptiste Kempf" "jb@videolan.org" "<561155A0.7020400@videolan.org>" "30" "Re: [oss-security] CVE request: BD-J implementation in libbluray" nil nil nil "10" "2015100416:36:48" "[oss-security] CVE request: BD-J implementation in libbluray" (number mark "        jb@videolan. Oct  4   30/1131  " thread-indent "\"Re: [oss-security] CVE request: BD-J implementation in libbluray\"\n") "<5603C2A8.3060202@redhat.com>" ("<54EAEB47.7070106@redhat.com>" "<5603C2A8.3060202@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30075 invoked by uid 550); 4 Oct 2015 16:37:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30056 invoked from network); 4 Oct 2015 16:37:00 -0000
References: <54EAEB47.7070106@redhat.com> <5603C2A8.3060202@redhat.com>
Message-ID: <561155A0.7020400@videolan.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Icedove/38.2.0
MIME-Version: 1.0
In-Reply-To: <5603C2A8.3060202@redhat.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Date: Sun, 4 Oct 2015 18:36:48 +0200
From: Jean-Baptiste Kempf <jb@videolan.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request: BD-J implementation in libbluray
To: Florian Weimer <fweimer@redhat.com>, oss-security@lists.openwall.com,
 Assign a CVE Identifier <cve-assign@mitre.org>

On 24/09/2015 11:30, Florian Weimer wrote:
> On 02/23/2015 09:56 AM, Florian Weimer wrote:
>> Missing Java Security Manager sandboxing mechanism / feature in the
>> org.videolan.BDJLoader class
>>
>> Description:
>>
>> It was found that org.videolan.BDJLoader class implementation of
>> libbluray, a library to access Blu-Ray disks for video playback, was
>> missing Java Security Manager sandboxing.  A specially-crafted Java
>> application, utilizing the functionality of org.videolan.BDJLoader
>> class, could use this missing feature to perform actions as the user
>> running the Bluray player application.
>>
>> Note: libbluray upstream disables BD-J support by default, but some
>> downstreams (like Fedora) pass --enable-bdjava at configure time,
>> enabling it for their distribution.
>>
>> (This may affect proprietary BD-J implementations as well, I haven't
>> investigated this due to lack of hardware and documentation.)
>
> Could we finally get a CVE ID for this?  Thanks.

Btw, aren't those security issues fixed now?


-- 
Jean-Baptiste Kempf
http://www.jbkempf.com/ - +33 672 704 734
Sent from my Electronic Device
